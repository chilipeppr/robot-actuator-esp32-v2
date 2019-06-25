-- TMC2130 driver
-- Communicating with the TMC2130 happens over SPI. Trinamic expects
-- 40 bits sent in (5 bytes) and then 40 bits are sent back. So,
-- even if you want to just update one flag, you have to send all
-- of the other parameters for that register as well. This library
-- makes all of that easy for you.

local m = {}
-- m = {}

bitstr = require("bitstr_v2")

-- for version 1.2
m.pinSdi = 19
m.pinSck = 18
m.pinCs = 5
m.pinSdo = 23

-- for original 1.0
-- m.pinSdi = 12
-- m.pinSck = 13
-- m.pinCs = 15
-- m.pinSdo = 5

-- for version 1.2
m.pinStep = 22 -- GPIO22, pin36 on esp32-wroom-32d, Orig 2
m.pinDir = 21 -- pin33 on esp32-wroom-32d, Orig 14
m.pinSleep = 4 --17 -- ENN pin28 GPIO17 on esp32-wroom-32d, Orig 15 or 0

-- for original 1.0 design
-- m.pinStep = 2 
-- m.pinDir = 14
-- m.pinSleep = 0 --15

m.IRUN = 1

m.isDebug = false

m._isInitted = false
-- Pass in a table of settings
-- @param tbl.initStepDirEnPins  Defaults to false
-- @param tbl.initAsStealthChop  Defaults to false
-- @param tbl.IRUN  Defaults to 1 for lowest current. Can go to 31.
-- @param tbl.pinStep  Defaults to 22
-- @param tbl.pinDir   Defaults to 21
-- @param tbl.pinEn    Defaults to 4
-- @param tbl.isDebug  Defaults to false. Turn on for extra logging.
-- Example motor.init({initStepDirEnPins=true, initAsStealthChop=true, IRUN=2})
function m.init(tbl)
  
  if m._isInitted then 
    print("TMC2130 already initted")
    return 
  end
  
  m._isInitted = true
  
  if tbl.IRUN ~= nil then m.IRUN = tbl.IRUN end
  if tbl.pinStep ~= nil then m.pinStep = tbl.pinStep end
  if tbl.pinDir ~= nil then m.pinDir = tbl.pinDir end
  if tbl.pinEn ~= nil then m.pinSleep = tbl.pinEn end
  if tbl.isDebug == true then m.isDebug = true end
  
  -- defaults to false
  if tbl.initStepDirEnPins == true then
    
    
    gpio.config({
      gpio= {
        m.pinStep, m.pinSleep, m.pinDir
      },
      dir=gpio.IN_OUT,
      -- pull=gpio.PULL_UP
    })
    gpio.write(m.pinStep, 0)
    gpio.write(m.pinSleep, 0) -- needs to be low for TMC2130 to go into spi mode
    gpio.write(m.pinDir, 1)
    
    -- use pull up approach so the pulse counter can read this
    -- port value without chewing up a 2nd input port
    -- gpio.config( { gpio=m.pinDir, dir=gpio.IN_OUT, pull=gpio.PULL_UP } )

  end
  
  -- Make sure ENABLE pin is set to LOW (not HIGH) correctly for TMC2130 before
  -- trying to do SPI to it, or it won't respond
  
  -- Setup spi bus
  local busmaster_config = {
    sclk = m.pinSck, 
    mosi = m.pinSdi, 
    miso = m.pinSdo
  }
  m.busmaster = spi.master(spi.HSPI, busmaster_config)
  
  local device_config = {
    cs = m.pinCs,
    mode = 3, 
    freq = 16000000/8, --, MSBFIRST, SPI_MODE3,
    -- command_bits = 
    
  }
  m.dev1 = m.busmaster:device(device_config)
  
  -- read GSTAT cuz it can nicely reset stuff
  m.readGSTAT()
  
  -- See if they want stealthchop init
  if tbl.initAsStealthChop then
    m.initAsStealthChop()
  end
  
end

-- Sets up motor for stealthChop operation which is the default
function m.initAsStealthChop()
  --  enables stealthChop (with default PWM_CONF)
  m.writeGCONF({
    en_pwm_mode=true, -- 1: stealthChop voltage PWM mode enabled (depending on velocity thresholds).
    direct_mode=false, 
    stop_enable=false,
    I_scale_analog=1, -- 1: Use voltage supplied to AIN as current reference, 0: Normal operation, use internal reference voltage
    internal_Rsense=0, -- 0: Normal operation, 1: Internal sense resistors. Use current supplied into AIN as reference for internal sense resistor, 
  })
  
  -- IRUN current to run motors at. 0..31, so 10 is 1/3rd of 2a or 600ma
  -- the small steppers expect 150ma, so running it at intense current
  -- IHOLD should be 0 for no current at standstill
  -- IHOLDDELAY is 0..15 Controls the number of clock cycles for motor
  -- power down after a motion as soon as standstill is
  -- detected (stst=1) and TPOWERDOWN has expired.
  -- The smooth transition avoids a motor jerk upon
  -- power down.
  -- : 0x9000061F0A; // IHOLD_IRUN: IHOLD=10, IRUN=31 (max. current), IHOLDDELAY=6
  m.writeIHOLD_IRUN({
    IRUN=m.IRUN, -- 1 to 31
    IHOLD=0, -- 0 is no current at standstill
    IHOLDDELAY=15
  })
  
  -- motor.readCHOPCONF()
  -- : 0xEC000100C3; // CHOPCONF: TOFF=3, HSTRT=4, HEND=1, TBL=2, CHM=0 (spreadCycle)
  -- 
  m.STEPS = 1
  m.writeCHOPCONF({
    intpol=1, 
    MRES=m.STEPFULL, 
    CHM=1, -- chm Chopper Mode. 0 = Standard mode (spreadCycle). 1 = Constant off time with fast decay time. 
    TOFF=3, 
    HSTRT=4, 
    HEND=1, 
    TBL=2, 
    vsense=1 -- vsense=1 allows 55% of current setting for vsense=0
  })
  
  -- Delay before power down in stand still. 255 is 4 seconds. 127 is 2 seconds.
  -- TPOWERDOWN sets the delay time after stand still (stst) of the
  -- motor to motor current power down. Time range is about 0 to
  -- 4 seconds.
  m.writeTPOWERDOWN(127) 
  
  -- turn on freewheeling and pwm_autoscale so we enable automatic current control
  -- this also lets us freewheel with IHOLD=0 
  -- motor.FREEWHEEL_FREEWHEEL or motor.FREEWHEEL_SHORT_LS or motor.FREEWHEEL_SHORT_HS, or FREEWHEEL_NORMAL
  m.writePWMCONF({
    freewheel=m.FREEWHEEL_FREEWHEEL, 
    pwm_autoscale=1
  })
  
  m.enable()
end 

m.DIR_FWD = 1
m.DIR_REV = 0
m._dir = nil
function m.setDir(dir)
  if dir == m.DIR_FWD then
    if m._dir == m.DIR_FWD then
      -- already set. ignore.
      if m.isDebug then print("Dir fwd already set. Ignoring.") end
      return
    end
    gpio.write(m.pinDir,1)
    -- use pull up approach so the pulse counter can read this
    -- port value without chewing up a 2nd input port
    -- gpio.config( { gpio=m.pinDir, dir=gpio.IN, pull=gpio.PULL_UP } )
    m._dir = m.DIR_FWD
    if m.isDebug then print("Set dir fwd") end
  else
    if m._dir == m.DIR_REV then
      -- already set. ignore.
      if m.isDebug then print("Dir rev already set. Ignoring.") end
      return
    end
    gpio.write(m.pinDir,0)
    -- use pull up approach so the pulse counter can read this
    -- port value without chewing up a 2nd input port
    -- gpio.config( { gpio=m.pinDir, dir=gpio.IN, pull=gpio.PULL_DOWN } )
    m._dir = m.DIR_REV
    if m.isDebug then print("Set dir rev") end
  end
end

function m.dirFwd()
  m.setDir(m.DIR_FWD)
end

function m.dirRev()
  m.setDir(m.DIR_REV)
end

function m.dirToggle()
  if m._dir == m.DIR_FWD then
    m.dirRev()
  else
    m.dirFwd()
  end
end

function m.disable()
  gpio.write(m.pinSleep, 1)
end 

function m.enable()
  gpio.write(m.pinSleep, 0)
end

function m.readGCONF()
  -- print("readGCONF")
  local rx = m.send2130(0x00)
  local r = {}
  
  local b 
  
  -- get 5th byte, bits 0 to 7
  b = string.byte(rx,5)
  r.I_scale_analog = bit.isset(b, 0)
  r.internal_Rsense = bit.isset(b, 1)
  r.en_pwm_mode = bit.isset(b, 2)
  r.enc_commutation = bit.isset(b, 3)
  r.shaft = bit.isset(b, 4)
  r.diag0_error = bit.isset(b, 5) 
  r.diag0_otpw = bit.isset(b, 6) 
  r.diag0_stall = bit.isset(b, 7) 
  
  -- get 4th byte, bits 8 to 15
  b = string.byte(rx,4)
  r.diag1_stall = bit.isset(b, 0)
  r.diag1_index = bit.isset(b, 1)
  r.diag1_onstate = bit.isset(b, 2)
  r.diag1_steps_skipped = bit.isset(b, 3)
  r.diag0_int_pushpull = bit.isset(b, 4)
  r.diag1_pushpull = bit.isset(b, 5) 
  r.small_hysteresis = bit.isset(b, 6) 
  r.stop_enable = bit.isset(b, 7) 
  
  -- get 3rd byte, bits 16 to 23
  b = string.byte(rx,4)
  r.direct_mode = bit.isset(b, 0)
  r.test_mode = bit.isset(b, 1)
  
  if m.isDebug then print("GCONF:", sjson.encode(r)) end
  return r

end

function m.writeGCONF(tbl)
  
  -- get current settings by reading, then we can override
  local r = m.readGCONF()

  if m.isDebug then print("writeGCONF. tbl:", sjson.encode(tbl)) end
  
  -- copy vals from passed in table to the readGCONF table to override
  -- settings so we can generate bits from this 
  for key,val in pairs(tbl) do
    -- print("Key:", key, "val:", val)
     r[key] = val
  end

  -- print("New table of vals to set bits from:", sjson.encode(r))
  -- now set our 40 bits
  -- first byte is 0x0 for GCONF but we set write bit 7 of 1st byte (AND 0x80)
  -- the next 4 bytes we'll set to 0 and then do per bit setting below
  
  -- get 5th byte, bits 0 to 7
  local b = 0x00
  if r.I_scale_analog then b = bit.set(b, 0) end
  if r.internal_Rsense then b = bit.set(b, 1) end
  if r.en_pwm_mode then b = bit.set(b, 2) end
  if r.enc_commutation then b = bit.set(b, 3) end
  if r.shaft then b = bit.set(b, 4) end
  if r.diag0_error then b = bit.set(b, 5) end
  if r.diag0_otpw then b = bit.set(b, 6) end
  if r.diag0_stall then b = bit.set(b, 7) end
  -- print("Bits for 0..7")
  -- bitstr.charStrToBits(string.char(b))
  local b0to7 = b 
  
  -- get 4th byte, bits 8 to 15
  local b = 0x00
  if r.diag1_stall then b = bit.set(b, 0) end
  if r.diag1_index then b = bit.set(b, 1) end
  if r.diag1_onstate then b = bit.set(b, 2) end
  if r.diag1_steps_skipped then b = bit.set(b, 3) end
  if r.diag0_int_pushpull then b = bit.set(b, 4) end
  if r.diag1_pushpull then b = bit.set(b, 5) end
  if r.small_hysteresis then b = bit.set(b, 6) end
  if r.stop_enable then b = bit.set(b, 7) end
  -- print("Bits for 8..15")
  -- bitstr.charStrToBits(string.char(b))
  local b8to15 = b 

  -- get 3rd byte, bits 16 to 23
  local b = 0x00
  if r.direct_mode then b = bit.set(b, 0) end
  if r.test_mode then b = bit.set(b, 1) end
  -- print("Bits for 16..17")
  -- bitstr.charStrToBits(string.char(b))
  local b16to23 = b 
  
  local bStr = string.char(bit.set(0x00, 7), 0x0, b16to23, b8to15, b0to7)
  -- print("GCONF bit str with write flag")
  -- bitstr.charStrToBits(bStr)
  
  m.send(bStr)

end

function m.readGSTAT()
  -- print("readGSTAT")
  local rx = m.send2130(0x01)
end

function m.readIHOLD_IRUN()
  -- print("readIHOLD_IRUN")
  local rx = m.send2130(0x10)
  local r = {}
  
  local b 
  
  -- get 5th byte, bits 0 to 7
  b = string.byte(rx,5)
  -- IHOLD is bits 0..4, so 5 bits is 0x1f with an AND
  r.IHOLD = bit.band(b, 0x1f) -- Standstill current (0=1/32…31=32/32)

  -- get 4th byte, bits 8 to 15
  b = string.byte(rx,4)
  -- IRUN is bits 8..12, so 5 bits is 0x1f with an AND
  r.IRUN = bit.band(b, 0x1f) -- Motor run current (0=1/32…31=32/32)

  -- get 3rd byte, bits 16 to 23
  b = string.byte(rx,3)
  -- IHOLDDELAY is bits 16..19, so 4 bits is 0x0f with an AND
  r.IHOLDDELAY = bit.band(b, 0x0f) -- 0: instant power down, 1..15: Delay per current reduction step in multiple of 2^18 clocks

  if m.isDebug then print("IHOLD_IRUN:", sjson.encode(r)) end
  return r
end

function m.writeIHOLD_IRUN(tbl)
  -- get current settings by reading, then we can override
  local r = m.readIHOLD_IRUN()
  
  if m.isDebug then print("writeIHOLD_IRUN. tbl:", sjson.encode(tbl)) end

  -- copy vals from passed in table to the readIHOLD_IRUN table to override
  -- settings so we can generate bits from this 
  for key,val in pairs(tbl) do
    -- print("Key:", key, "val:", val)
     r[key] = val
  end

  -- print("New table of vals to set bits from:", sjson.encode(r))
  -- now set our 40 bits
  -- first byte is 0x10 for IHOLD_IRUN but we set write bit 7 of 1st byte (AND 0x80)
  -- the next 4 bytes we'll set to 0 and then do per bit setting below
  
  -- get 5th byte, bits 0 to 7
  local b = 0x00
  
  -- IHOLD is bit 0..4
  if r.IHOLD < 0 or r.IHOLD > 31 then
    error("IHOLD allows 1 to 31.")
  end
  b = r.IHOLD
  
  local b0to7 = b
  
  -- get 4th byte, bits 8 to 15
  
  -- IRUN is bit 8..12 
  if r.IRUN < 0 or r.IRUN > 31 then
    error("IRUN allows 1 to 31.")
  end
  local b8to15 = r.IRUN

  -- get 3rd byte, bits 16 to 23
  
  -- IHOLDDELAY is bit 16..19
  if r.IHOLDDELAY < 0 or r.IHOLDDELAY > 15 then
    error("IHOLDDELAY allows 1 to 15.")
  end
  local b16to23 = r.IHOLDDELAY
  
  local bStr = string.char(bit.set(0x10, 7), 0x0, b16to23, b8to15, b0to7)
  -- print("IHOLD_IRUN bit str with write flag")
  -- bitstr.charStrToBits(bStr)
  
  m.send(bStr)
end 

--- Reads the state of all input pins available
function m.readIOIN()
  local rx = m.send2130(0x04)
  -- 0 STEP
  -- 1 DIR
  -- 2 DCEN_CFG4
  -- 3 DCIN_CFG5
  -- 4 DRV_ENN_CFG6
  -- 5 DCO
  -- 6 This bit always shows 1.
  -- 7 Don’t care.
  -- 31..
  -- 24
  -- VERSION: 0x11=first version of the IC
  -- Identical numbers mean full digital compatibility.
  local r = {}
  
  local b = string.byte(rx,5)
  r.STEP = bit.isset(b, 0)
  r.DIR = bit.isset(b, 1)
  r.DCEN_CFG4 = bit.isset(b, 2)
  r.DCIN_CFG5 = bit.isset(b, 3)
  r.DRV_ENN_CFG6 = bit.isset(b, 4)
  r.DCO = bit.isset(b, 5) 
  
  -- get bits 24 to 31 which is the version of the chip
  b = string.byte(rx,2)
  -- print("type of string.byte:", type(b))
  r.VERSION = "0x"..encoder.toHex(string.char(b))
  
  if m.isDebug then print("IOIN:", sjson.encode(r)) end
  return r
end

function m.readCHOPCONF()
  -- print("readCHOPCONF")
  local rx = m.send2130(0x6C)
  local r = {}
  
  local b 
  
  -- combine 2nd, 3rd, 4th, and 5th bytes to a 32-bit integer
  b = string.byte(rx,2) * 256 * 256 * 256
  b = b + (string.byte(rx,3) * 256 * 256)
  b = b + (string.byte(rx,4) * 256)
  b = b + string.byte(rx,5)
  
  -- print("rx as 32bit integer:", b, string.format('0x%08x',b))

  -- Off time setting controls duration of slow decay phase
  -- NCLK= 12 + 32*TOFF
  -- %0000: Driver disable, all bridges off
  -- %0001: 1 – use only with TBL ≥ 2
  -- %0010 … %1111: 2 … 15
  r.TOFF =    bit.band(b, 0x0000000f) -- get bits 0..3 (AND 00001111/0x0f) for val
  r.HSTRT =   bit.band(b, 0x00000070) -- get bits 4..6 (AND 01110000/0x70) for val
  r.HSTRT = bit.rshift(r.HSTRT,4) -- + 1 -- since 1-based not 0-based
  r.HEND =    bit.band(b, 0x00000780) -- get bits 7..10 
  r.HEND = bit.rshift(r.HEND,7) -- - 3 -- since -3 is start of hysteresis, but we store 0 as -3
  r.fd3 =     bit.band(b, 0x00000800) -- get bit 11
  r.fd3 = bit.rshift(r.fd3,11)
  r.disfdcc = bit.band(b, 0x00001000) -- get bit 12
  r.disfdcc = bit.rshift(r.fd3,12)
  r.rndtf =   bit.band(b, 0x00002000) -- get bit 13
  r.rndtf = bit.rshift(r.rndtf,13)
  r.chm =     bit.band(b, 0x00004000) -- get bit 14
  r.chm = bit.rshift(r.chm,14)
  r.TBL =     bit.band(b, 0x00018000) -- get bit 15 and 16
  r.TBL = bit.rshift(r.TBL,15)
  r.vsense =  bit.band(b, 0x00020000) -- get bit 17
  r.vsense = bit.rshift(r.vsense,17)
  r.vhighfs = bit.band(b, 0x00040000) -- get bit 18
  r.vhighfs = bit.rshift(r.vhighfs,18)
  r.vhighchm =bit.band(b, 0x00080000) -- get bit 19
  r.vhighchm = bit.rshift(r.vhighchm,19)
  r.SYNC =    bit.band(b, 0x00F00000) -- get bit 20..23
  r.SYNC = bit.rshift(r.SYNC,20)
  r.MRES =    bit.band(b, 0x0F000000) -- get bit 24..27
  r.MRES = bit.rshift(r.MRES,24)
  r.intpol =  bit.band(b, 0x10000000) -- get bit 28
  r.intpol = bit.rshift(r.intpol,28)
  r.dedge =   bit.band(b, 0x20000000) -- get bit 29
  r.dedge = bit.rshift(r.dedge,29)
  r.diss2g =  bit.band(b, 0x40000000) -- get bit 30
  r.diss2g = bit.rshift(r.diss2g,30)

  if m.isDebug then print("CHOPCONF:", sjson.encode(r)) end
  return r

end

function m.writeCHOPCONF(tbl)
  
  -- get current settings by reading, then we can override
  local r = m.readCHOPCONF()

  if m.isDebug then print("writeCHOPCONF. tbl:", sjson.encode(tbl)) end
  
  -- copy vals from passed in table to the readCHOPCONF table to override
  -- settings so we can generate bits from this 
  for key,val in pairs(tbl) do
    -- print("Key:", key, "val:", val)
     r[key] = val
  end

  -- print("New table of vals to set bits from:", sjson.encode(r))
  
  -- now set our 40 bits
  -- first byte is 0x6c for CHOPCONF but we set write bit 7 of 1st byte (AND 0x80)
  -- the next 4 bytes we'll set to 0 and then do per bit setting below
  
  -- get 5th byte, bits 0 to 7
  local b = 0x00
  
  -- TOFF is bit 0..3
  if r.TOFF < 0 or r.TOFF > 15 then
    error("TOFF allows 0 to 15.")
  end 
  if bit.isset(r.TOFF,0) then b = bit.set(b,0) end
  if bit.isset(r.TOFF,1) then b = bit.set(b,1) end
  if bit.isset(r.TOFF,2) then b = bit.set(b,2) end
  if bit.isset(r.TOFF,3) then b = bit.set(b,3) end
  
  -- HSTRT is bit 4..6 
  if r.HSTRT < 0 or r.HSTRT > 7 then
    error("HSTRT allows 0 to 7")
  end
  local HSTRT = r.HSTRT -- - 1 -- need to get this to 0 to 7, instead of 1 to 8
  if bit.isset(HSTRT,0) then b = bit.set(b,4) end
  if bit.isset(HSTRT,1) then b = bit.set(b,5) end
  if bit.isset(HSTRT,2) then b = bit.set(b,6) end

  -- HEND is bit 7..10 
  if r.HEND < 0 or r.HEND > 15 then
    error("HEND allows 0 to 15")
  end 
  local HEND = r.HEND -- + 3 -- since -3 is the 1st val, but store as 0
  if bit.isset(HEND,0) then b = bit.set(b,7) end -- bit 7

  -- print("Bits for 0..7")
  -- bitstr.charStrToBits(string.char(b))
  local b0to7 = b 
  
  -- get 4th byte, bits 8 to 15
  b = 0x00

  -- continue HEND
  if bit.isset(HEND,1) then b = bit.set(b,0) end -- bit 8
  if bit.isset(HEND,2) then b = bit.set(b,1) end -- bit 9
  if bit.isset(HEND,3) then b = bit.set(b,2) end -- bit 10
  
  if r.fd3 == 1 then b = bit.set(b,3) end -- bit 11 
  if r.disfdcc == 1 then b = bit.set(b,4) end -- bit 12
  if r.rndtf == 1 then b = bit.set(b,5) end -- bit 13
  if r.chm == 1 then b = bit.set(b,6) end -- bit 14
  
  if r.TBL < 0 or r.TBL > 3 then
    error("TBL allows 0 to 3")
  end 
  if bit.isset(r.TBL,0) then b = bit.set(b,7) end -- bit 15
  
  -- print("Bits for 8..15")
  -- bitstr.charStrToBits(string.char(b))
  local b8to15 = b 

  -- get 3rd byte, bits 16 to 23
  b = 0x00

  -- continue TBL 
  if bit.isset(r.TBL,1) then b = bit.set(b,0) end -- bit 16

  if r.vsense == 1 then b = bit.set(b,1) end -- bit 17 
  if r.vhighfs == 1 then b = bit.set(b,2) end -- bit 18
  if r.vhighchm == 1 then b = bit.set(b,3) end -- bit 19
  
  -- SYNC
  if r.SYNC < 0 or r.SYNC > 15 then
    error("SYNC allows 0 to 15")
  end 
  if bit.isset(r.SYNC,0) then b = bit.set(b,4) end -- bit 20 
  if bit.isset(r.SYNC,1) then b = bit.set(b,5) end -- bit 21
  if bit.isset(r.SYNC,2) then b = bit.set(b,6) end -- bit 22
  if bit.isset(r.SYNC,3) then b = bit.set(b,7) end -- bit 23
  
  -- print("Bits for 16..23")
  -- bitstr.charStrToBits(string.char(b))
  local b16to23 = b
  
  -- get 2nd byte, bits 24 to 31
  b = 0x00
  
  -- MRES
  if r.MRES < 0 or r.MRES > 15 then
    error("MRES allows 0 to 15")
  end 
  b = r.MRES -- set bit 24 to 27 (we get lucky it starts at this byte)

  if r.intpol == 1 then b = bit.set(b,4) end -- bit 28
  if r.dedge == 1 then b = bit.set(b,5) end -- bit 29
  if r.diss2g == 1 then b = bit.set(b,6) end -- bit 30 
  
  -- print("Bits for 24..31")
  -- bitstr.charStrToBits(string.char(b))
  local b24to31 = b
  

  local bStr = string.char(bit.set(0x6C, 7), b24to31, b16to23, b8to15, b0to7)
  -- print("CHOPCONF bit str with write flag")
  -- bitstr.charStrToBits(bStr)
  
  m.send(bStr)

end

--- TPOWERDOWN sets the delay time after stand still (stst) of the
-- motor to motor current power down. Time range is about 0 to
-- 4 seconds.
-- 0…((2^8)-1) * 2^18 tCLK
-- @param delayTime 0..255
-- @return nil
function m.writeTPOWERDOWN(delayTime)
  if m.isDebug then print("writeTPOWERDOWN. delayTime:", delayTime) end
  local bStr = string.char(bit.set(0x11, 7), 0x0, 0x0, 0x0, delayTime)
  -- print("TPOWERDOWN bit str with write flag")
  -- bitstr.charStrToBits(bStr)
  m.send(bStr)
end

function m.writePWMCONF(tbl)
  -- reset default=0x00050480

  if m.isDebug then print("writePWMCONF. tbl:", sjson.encode(tbl)) end

  -- fill table with all fields and their defaults 
  if tbl.PWM_AMPL == nil then tbl.PWM_AMPL = 0x80 end 
  if tbl.PWM_GRAD == nil then tbl.PWM_GRAD = 0x04 end 
  if tbl.pwm_freq == nil then tbl.pwm_freq = 0x01 end 
  if tbl.pwm_autoscale == nil then tbl.pwm_autoscale = 1 end 
  if tbl.pwm_symmetric == nil then tbl.pwm_symmetric = 0 end 
  if tbl.freewheel == nil then tbl.freewheel = 0 end 

  -- now set our 40 bits
  -- first byte is 0x70 for PWMCONF but we set write bit 7 of 1st byte (AND 0x80)
  -- the next 4 bytes we'll set to 0 and then do per bit setting below
  
  -- 22 BITS ARE SET FOR PWMCONF
  
  -- get 5th byte, bits 0 to 7
  local b = 0x00
  
  -- PWM_AMPL is bit 0..7
  if tbl.PWM_AMPL < 0 or tbl.PWM_AMPL > 255 then
    error("PWM_AMPL allows 0 to 255.")
  end 
  b = tbl.PWM_AMPL
  
  -- print("Bits for 0..7")
  -- bitstr.charStrToBits(string.char(b))
  local b0to7 = b 
  
  -- get 4th byte, bits 8 to 15
  b = 0x00

  -- PWM_GRAD is bit 8..15
  if tbl.PWM_GRAD < 0 or tbl.PWM_GRAD > 255 then
    error("PWM_GRAD allows 0 to 255")
  end 
  b = tbl.PWM_GRAD
  
  -- print("Bits for 8..15")
  -- bitstr.charStrToBits(string.char(b))
  local b8to15 = b 

  -- get 3rd byte, bits 16 to 23
  b = 0x00

  -- PWM_FREQ is bit 16..17
  if tbl.pwm_freq < 0 or tbl.pwm_freq > 3 then
    error("pwm_freq allows 0 to 3")
  end 
  b = tbl.pwm_freq
  
  -- pwm_autoscale is bit 18
  if tbl.pwm_autoscale < 0 or tbl.pwm_autoscale > 1 then
    error("pwm_autoscale allows 0 or 1")
  end 
  if tbl.pwm_autoscale == 1 then b = bit.set(b,2) end -- 0pos is bit 16, 1pos:17, 2pos:18
    
  -- pwm_symmetric is bit 19
  if tbl.pwm_symmetric < 0 or tbl.pwm_symmetric > 1 then
    error("pwm_symmetric allows 0 or 1")
  end 
  if tbl.pwm_symmetric == 1 then b = bit.set(b,3) end -- 0pos is bit 16, 1pos:17, 2pos:18
  
  -- freewheel is bit 20..21 
  if tbl.freewheel < 0 or tbl.freewheel > 3 then
    error("freewheel allows 0, 1, 2 or 3")
  end 
  if bit.isset(tbl.freewheel, 0) == true then b = bit.set(b,4) end -- 0pos is bit 16, 1pos:17, 2pos:18, 3pos:19, 4pos:20
  if bit.isset(tbl.freewheel, 1) == true then b = bit.set(b,5) end -- 0pos is bit 16, 1pos:17, 2pos:18, 3pos:19, 4pos:20
  
  -- print("Bits for 16..23")
  -- bitstr.charStrToBits(string.char(b))
  local b16to23 = b
  
  -- get 2nd byte, bits 24 to 31
  b = 0x00
  
  -- print("Bits for 24..31")
  -- bitstr.charStrToBits(string.char(b))
  local b24to31 = b
  
  -- the bit.set() in first byte is to mark write flag
  local bStr = string.char(bit.set(0x70, 7), b24to31, b16to23, b8to15, b0to7)
  -- print("PWMCONF bit str with write flag")
  -- bitstr.charStrToBits(bStr)
  
  m.send(bStr)

end

--- Read stallGuard2 Value and Driver Error Flags
function m.readDRV_STATUS()
  -- print("readDRV_STATUS")
  local rx = m.send2130(0x6f)
  local r = {}
  
  local b 
  
  -- combine 2nd, 3rd, 4th, and 5th bytes to a 32-bit integer
  b = string.byte(rx,2) * 256 * 256 * 256
  b = b + (string.byte(rx,3) * 256 * 256)
  b = b + (string.byte(rx,4) * 256)
  b = b + string.byte(rx,5)
  
  -- print("rx as 32bit integer:", b, string.format('0x%08x',b))

  r.SG_RESULT = bit.band(b, 0x000003ff) -- get bits 0..9 (10 bits total)
  
  -- fsactive is bit 15
  if bit.isset(b,15) == true then r.fsactive = 1 else r.fsactive = 0 end
  
  -- CSACTUAL bit 16..20 
  r.CSACTUAL =    bit.band(b, 0x001f0000) -- get bits 16..20 
  r.CSACTUAL = bit.rshift(r.CSACTUAL,16) -- right shift 16 positions 
  
  -- stallGuard bit 24 stallGuard2 status
  if bit.isset(b,24) == true then r.stallGuard = 1 else r.stallGuard = 0 end

  -- ot bit 25 overtemperature flag
  if bit.isset(b,25) == true then r.ot = 1 else r.ot = 0 end

  -- otpw bit 26 overtemperature prewarning flag
  if bit.isset(b,26) == true then r.otpw = 1 else r.otpw = 0 end

  -- s2ga bit 27 short to ground indicator phase A
  if bit.isset(b,27) == true then r.s2ga = 1 else r.s2ga = 0 end

  -- s2gb bit 28 short to ground indicator phase B
  if bit.isset(b,28) == true then r.s2gb = 1 else r.s2gb = 0 end

  -- ola bit 29 open load indicator phase A
  if bit.isset(b,29) == true then r.ola = 1 else r.ola = 0 end

  -- olb bit 30 open load indicator phase B
  if bit.isset(b,30) == true then r.olb = 1 else r.olb = 0 end

  -- stst bit 31 standstill indicator 
  if bit.isset(b,31) == true then r.stst = 1 else r.stst = 0 end

  if m.isDebug then print("DRV_STATUS:", sjson.encode(r)) end
  return r

end

--- SMART ENERGY CONTROL COOLSTEP AND STALLGUARD2
-- writeCOOLCONF({SEMIN=0}) -- smart current control coolStep off
-- writeCOOLCONF({SEMIN=1,SEUP=1,SEMAX=15,SEDN=0,SEIMIN=0,SGT=-64,sfilt=0}) 
-- writeCOOLCONF({SGT=-64}) -- Lowest value makes stallGuard2 super sensitive and requires less torque to indicate a stall 
function m.writeCOOLCONF(tbl)
  -- reset default=0x00050480

  if m.isDebug then print("writeCOOLCONF. tbl:", sjson.encode(tbl)) end

  -- fill table with all fields and their defaults 
  if tbl.SEMIN == nil then tbl.SEMIN = 0x0 end 
  if tbl.SEUP == nil then tbl.SEUP = 0x0 end 
  if tbl.SEMAX == nil then tbl.SEMAX = 0x0 end 
  if tbl.SEDN == nil then tbl.SEDN = 0x0 end 
  if tbl.SEIMIN == nil then tbl.SEIMIN = 0 end 
  if tbl.SGT == nil then tbl.SGT = 0 end 
  if tbl.sfilt == nil then tbl.sfilt = 0 end

  -- now set our 40 bits
  -- first byte is 0x6d for COOLCONF but we set write bit 7 of 1st byte (AND 0x80)
  -- the next 4 bytes we'll set to 0 and then do per bit setting below
  
  -- 24 BITS ARE SET FOR COOLCONF
  
  -- get 5th byte, bits 0 to 7
  local b = 0x00
  
  -- SEMIN is bit 0..3
  if tbl.SEMIN < 0 or tbl.SEMIN > 15 then
    error("SEMIN allows 0 to 15.")
  end 
  b = tbl.SEMIN
  
  -- SEUP is bit 5..6
  if tbl.SEUP < 0 or tbl.SEUP > 3 then
    error("SEUP allows 0 to 3.")
  end 
  if bit.isset(tbl.SEUP,0) == true then b = bit.set(b,5) end 
  if bit.isset(tbl.SEUP,1) == true then b = bit.set(b,6) end 
  
  -- print("Bits for 0..7")
  -- bitstr.charStrToBits(string.char(b))
  local b0to7 = b 
  
  -- get 4th byte, bits 8 to 15
  b = 0x00

  -- SEMAX is bit 8..11
  if tbl.SEMAX < 0 or tbl.SEMAX > 15 then
    error("SEMAX allows 0 to 15")
  end 
  b = tbl.SEMAX
  
  -- SEDN is bit 13..14
  if tbl.SEDN < 0 or tbl.SEDN > 3 then
    error("SEDN allows 0 to 3.")
  end 
  if bit.isset(tbl.SEDN,0) == true then b = bit.set(b,5) end 
  if bit.isset(tbl.SEDN,1) == true then b = bit.set(b,6) end 

  -- seimin is bit 15
  if tbl.SEIMIN < 0 or tbl.SEIMIN > 1 then
    error("SEIMIN allows 0 or 1.")
  end 
  if bit.isset(tbl.SEIMIN,0) == true then b = bit.set(b,7) end 

  -- print("Bits for 8..15")
  -- bitstr.charStrToBits(string.char(b))
  local b8to15 = b 

  -- get 3rd byte, bits 16 to 23
  b = 0x00

  -- SGT is bit 16..22
  if tbl.SGT < -64 or tbl.SGT > 63 then
    error("SGT allows -64 to 63")
  end 
  b = bit.band(tbl.SGT,0xff) -- this converts negatives to two's complement
  -- bit 23, which is the 7th pos in this byte 
  -- needs set to 0 cuz only 7-bit number for SGT and pos7 is reserved to 0
  b = bit.clear(b,7)
  
  -- print("Bits for 16..23")
  -- bitstr.charStrToBits(string.char(b))
  local b16to23 = b
  
  -- get 2nd byte, bits 24 to 31
  b = 0x00
  
  -- sfilt is bit 24
  if tbl.sfilt < 0 or tbl.sfilt > 1 then
    error("sfilt allows 0 or 1.")
  end 
  if bit.isset(tbl.sfilt,0) == true then b = bit.set(b,0) end 

  -- print("Bits for 24..31")
  -- bitstr.charStrToBits(string.char(b))
  local b24to31 = b
  
  -- the bit.set() in first byte is to mark write flag
  local bStr = string.char(bit.set(0x6d, 7), b24to31, b16to23, b8to15, b0to7)
  -- print("COOLCONF bit str with write flag")
  -- bitstr.charStrToBits(bStr)
  
  m.send(bStr)

end

--- This is the lower threshold velocity for switching on smart
-- energy coolStep and stallGuard feature. (unsigned) 
-- microstep velocity time reference t for velocities: TSTEP = fCLK / fSTEP
function m.writeTCOOLTHRS(velocity)

  if m.isDebug then print("writeTCOOLTHRS. velocity:", velocity) end
  
  if velocity < 0 or velocity > 1048576 then
    error("velocity allows 0 to 1048576")
  end

  -- now set our 40 bits
  -- first byte is 0x14 for TCOOLTHRS but we set write bit 7 of 1st byte (AND 0x80)
  -- the next 4 bytes we'll set to 0 and then do per bit setting below
  
  -- 20 BITS ARE SET FOR TCOOLTHRS
  local b0to7 = velocity
  b0to7 = bit.band(b0to7, 0xff) -- wipe out everything but first byte
  local b8to15 = bit.rshift(velocity,8)
  b8to15 = bit.band(b8to15, 0xff) -- wipe out everything but first byte
  local b16to23 = bit.rshift(velocity,16)
  b16to23 = bit.band(b16to23, 0xff) -- wipe out everything but first byte
  local b24to31 = 0x0 

  -- the bit.set() in first byte is to mark write flag
  local bStr = string.char(bit.set(0x14, 7), b24to31, b16to23, b8to15, b0to7)
  -- print("TCOOLTHRS bit str with write flag")
  -- bitstr.charStrToBits(bStr)
  
  m.send(bStr)

end

--- This velocity setting allows velocity dependent switching into
-- a different chopper mode and fullstepping to maximize torque. (unsigned)
-- The stall detection feature becomes switched off for 2-3
-- electrical periods whenever passing THIGH threshold to
-- compensate for the effect of switching modes.
function m.writeTHIGH(velocity)

  if m.isDebug then print("writeTHIGH. velocity:", velocity) end
  
  if velocity < 0 or velocity > 1048576 then
    error("velocity allows 0 to 1048576")
  end

  -- now set our 40 bits
  -- first byte is 0x15 for THIGH but we set write bit 7 of 1st byte (AND 0x80)
  -- the next 4 bytes we'll set to 0 and then do per bit setting below
  
  -- 20 BITS ARE SET FOR THIGH
  local b0to7 = velocity
  b0to7 = bit.band(b0to7, 0xff) -- wipe out everything but first byte
  local b8to15 = bit.rshift(velocity,8)
  b8to15 = bit.band(b8to15, 0xff) -- wipe out everything but first byte
  local b16to23 = bit.rshift(velocity,16)
  b16to23 = bit.band(b16to23, 0xff) -- wipe out everything but first byte
  local b24to31 = 0x0 

  -- the bit.set() in first byte is to mark write flag
  local bStr = string.char(bit.set(0x15, 7), b24to31, b16to23, b8to15, b0to7)
  -- print("THIGH bit str with write flag")
  -- bitstr.charStrToBits(bStr)
  
  m.send(bStr)

end

--- Read actual measured time between two 1/256 microsteps derived
-- from the step input frequency in units of 1/fCLK. Measured
-- value is (2^20)-1 in case of overflow or stand still.
function m.readTSTEP()
  -- print("readTSTEP")
  local rx = m.send2130(0x12)
  local r = {}
  
  local b 
  
  -- combine 2nd, 3rd, 4th, and 5th bytes to a 32-bit integer
  b = string.byte(rx,2) * 256 * 256 * 256
  b = b + (string.byte(rx,3) * 256 * 256)
  b = b + (string.byte(rx,4) * 256)
  b = b + string.byte(rx,5)
  
  -- print("rx as 32bit integer:", b, string.format('0x%08x',b))

  -- probably don't need to do the AND, but to be safe
  r.TSTEP = bit.band(b, 0x0000fffff) -- get bits 0..19 (20 bits total)
  
  if m.isDebug then print("TSTEP:", sjson.encode(r)) end
  return r

end

--- Number of input steps skipped due to higher
-- load in dcStep operation, if step input does
-- not stop when DC_OUT is low. This counter
-- wraps around after 2^20 steps. Counts up or
-- down depending on direction. Only with
-- SDMODE=1.
function m.readLOST_STEPS()
  if m.isDebug then print("readLOST_STEPS") end
  local rx = m.send2130(0x73)
  local r = {}
  
  local b 
  
  -- combine 2nd, 3rd, 4th, and 5th bytes to a 32-bit integer
  b = string.byte(rx,2) * 256 * 256 * 256
  b = b + (string.byte(rx,3) * 256 * 256)
  b = b + (string.byte(rx,4) * 256)
  b = b + string.byte(rx,5)
  
  if m.isDebug then print("rx as 32bit integer:", b, string.format('0x%08x',b)) end

  -- probably don't need to do the AND, but to be safe
  r.LOST_STEPS = bit.band(b, 0x0000fffff) -- get bits 0..19 (20 bits total)
  
  if m.isDebug then print("LOST_STEPS:", sjson.encode(r)) end
  return r

end

--- Send read command to TMC2130
-- It sends the command twice because TMC2130 returns
-- a cached response first, and the real response 2nd
-- @param charStrAddressByte string of one byte or one byte
-- @return string of bytes of the final read data 
function m.send2130(charStrAddressByte)
  -- print("send2130. Type:",type(charStrAddressByte))
  if type(charStrAddressByte) == "number" then
    charStrAddressByte = string.char(charStrAddressByte)
  end 
  -- print("send2130: Reading for 0x"..encoder.toHex(charStrAddressByte))
  m.send(string.char(string.byte(charStrAddressByte),0,0,0,0 ))
  -- send addressByte again and 4 empty bytes
  local rxdata = m.send(string.char(string.byte(charStrAddressByte),0,0,0,0 ))
  return rxdata
end

--- Send raw command to TMC2130
-- @return string of bytes
function m.send(charStr)
  
  -- print("Sending:", "0x"..encoder.toHex(charStr))
  rxdata = m.dev1:transfer(charStr)
  if m.isDebug then 
    print("rxdata:", rxdata, "0x"..encoder.toHex(rxdata) )
    bitstr.charStrToBits(rxdata)
  end
  return rxdata
end

function m.test()
  local durSlow = 600 * 10
  local durFast = 100 * 10
  local durIncrement = 2 * 20
  local steps = 360 / 7.5 * 10
  -- local durMain = 100 
  for i=durSlow,durFast,-1*durIncrement do
    -- print(i)
    stepper.writeSteps( {pin=m.pinStep, steps=4, dur=i } ); 
  end
  stepper.writeSteps( {pin=m.pinStep, steps=steps, dur=durFast } ); 
  for i=durFast,durSlow,durIncrement do
    -- print(i)
    stepper.writeSteps( {pin=m.pinStep, steps=4, dur=i } ); 
  end
  
  -- print("done")
  -- stepper.write({pin=12, dur=10000, data=string.char(0xAA)})
  print("did stepper write")
end

-- Constants for microstepping
m.STEP256 = 0 -- Default native 256 microstep setting.
m.STEP128 = 1
m.STEP64 = 2
m.STEP32 = 3 
m.STEP16 = 4 
m.STEP8 = 5 
m.STEP4 = 6 
m.STEP2 = 7 
m.STEPFULL = 8

-- Constants for what to do at Standstill, but when in current pwm_autoscale mode
m.FREEWHEEL_NORMAL = 0 
m.FREEWHEEL_FREEWHEEL = 1 
m.FREEWHEEL_SHORT_LS = 2 
m.FREEWHEEL_SHORT_HS = 3 

-- TBL blank time select
-- %00 … %11:
-- Set comparator blank time to 16, 24, 36 or 54 clocks
-- Hint: %01 or %10 is recommended for most applications
m.TBL_16 = 0
m.TBL_24 = 1
m.TBL_36 = 2
m.TBL_54 = 3


-- m.init()
-- m.readStatus()
-- read IOIN
-- m.send2130(string.char(0x04))
-- m.readIOIN()
-- gpio.write(m.pinStep, 0)
-- -- m.send2130(string.char(0x04))
-- m.readIOIN()
-- gpio.write(m.pinDir, 0)
-- -- m.send2130(string.char(0x04))
-- m.readIOIN()
-- m.readGCONF()
-- -- m.writeGCONF({en_pwm_mode=true, direct_mode=true, stop_enable=true})
-- m.readGCONF()

-- m.writeIHOLD_IRUN({IRUN=10,IHOLD=0,IHOLDDELAY=1})

-- m.writeIHOLD_IRUN({IRUN=31,IHOLD=10,IHOLDDELAY=6})
-- : 0x9000061F0A; // IHOLD_IRUN: IHOLD=10, IRUN=31 (max. current), IHOLDDELAY=6

-- m.readIHOLD_IRUN()
-- -- m.readCHOPCONF()
-- m.writeCHOPCONF({TOFF=3, HSTRT=4, HEND=1, TBL=2, MRES=m.STEPFULL})
-- : 0xEC000100C3; // CHOPCONF: TOFF=3, HSTRT=4, HEND=1, TBL=2, CHM=0 (spreadCycle)
-- m.readCHOPCONF()
-- m.test()
-- m.writeTPOWERDOWN(1) -- about 2 seconds
-- m.test() 
-- m.disable()
-- m.writeCOOLCONF({SGT=-64})

return m
