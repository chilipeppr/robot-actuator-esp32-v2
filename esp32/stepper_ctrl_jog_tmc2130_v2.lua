-- Stepper Jog for TMC2130
-- This library lets you jog your TMC2130 stepper using variable
-- frequency PWM, but it keeps track of your step counter so you
-- know your final position

local m = {}
-- m = {}
m.motor = require("tmc2130_spi")

m.pinStep = 22 -- GPIO22, pin36 on esp32-wroom-32d, Orig 2
m.pinDir = 21 -- pin33 on esp32-wroom-32d, Orig 14
m.pinSleep = 4 -- Is 17 on JLCPCB board. ENN pin28 GPIO17 on esp32-wroom-32d, Orig 15 or 0
m.pinPulseIn = 36 --2 -- 36 STEP Pulse In (Sens_VP), Pin 24 (Touch2)

m.bits = 9
m.dutyStart = 0 
m.dutyAtRun = 256 -- Since using 9bits 2^9=512, so 256 is 50% duty
m.freqStart = 100

m.stepMax = 32000
m.stepMin = -32000

m.IRUN = 1 -- 1 to 31 allowed. 31 is 2 amps. 15 is 1.5amps

m._freq = 100
m._isOn = false 

m.isDebug = false

-- StallGuard Threshold
-- You should set this between -63 and 63. 0 works for most motors.
-- At 150RPM 6 is a good value.
m.SGT = 40 -- 40 BEST FOR SMALL ACTUATOR 
m.sfilt = 0 -- Turn on filtering if you are getting lots of noise

-- version 1.2
m.pinMotorStall = 26
m._onStall = nil

m.initAsSpreadCycle = false
m.initAsStealthChop = false

-- You can pass in override settings to init including
-- stepper_ctrl_jog.init({IRUN=4})
function m.init(tbl)
  
  if tbl ~= nil then
    if tbl.IRUN ~= nil then m.IRUN = tbl.IRUN end
    if tbl.isDebug ~= nil then m.isDebug = tbl.isDebug end
    if tbl.onStall ~= nil then m._onStall = tbl.onStall end
    if tbl.initAsSpreadCycle ~= nil then m.initAsSpreadCycle = tbl.initAsSpreadCycle end
    if tbl.initAsStealthChop ~= nil then m.initAsStealthChop = tbl.initAsStealthChop end
  end
  
  -- init the TMC2130 library
  m.motor.init({
    initStepDirEnPins=true,
    pinStep = m.pinStep,
    pinDir = m.pinDir,
    pinEn = m.pinSleep,
    initAsStealthChop = false, 
    IRUN = m.IRUN,
    isDebug = m.isDebug
  })

  if m.initAsSpreadCycle == true then
    m.initSpreadCycle()
  else
    m.initStealthChop()
  end

  -- Start counting pulses before turning on pwm
  m.initPulseCtr()
  
  -- After you init the pulsecnt library, you need to override 
  -- the gpio settings that it applies to the ctrl_gpio_num to 
  -- make it not just be an output pin 
  gpio.config( { gpio=m.pinDir, dir=gpio.IN_OUT, pull=gpio.PULL_UP } )

  -- Start the PWM module, but at duty 0 so like it's off
  m.start()
  -- Pause it like what we do on joystick at center pos
  m.pause()
  
  print("Initted stepper_ctrl_jog. IRUN: "..m.IRUN)

end

-- Sets up motor for stealthChop operation which is the default
function m.initStealthChop()
  print("initAsStealthChop")
  --  enables stealthChop (with default PWM_CONF)
  m.motor.writeGCONF({
    en_pwm_mode=true, -- 1: stealthChop voltage PWM mode enabled (depending on velocity thresholds).
    direct_mode=false, 
    stop_enable=false,
    I_scale_analog=0, -- 1: Use voltage supplied to AIN as current reference, 0: Normal operation, use internal reference voltage
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
  m.motor.writeIHOLD_IRUN({
    IRUN=m.IRUN, -- 1 to 31
    IHOLD=0, -- 0 is no current at standstill
    IHOLDDELAY=15
  })
  
  -- motor.readCHOPCONF()
  -- : 0xEC000100C3; // CHOPCONF: TOFF=3, HSTRT=4, HEND=1, TBL=2, CHM=0 (spreadCycle)
  -- 
  m.STEPS = 1
  m.motor.writeCHOPCONF({
    intpol=1, 
    MRES=m.motor.STEPFULL, 
    CHM=1, -- chm Chopper Mode. 0 = Standard mode (spreadCycle). 1 = Constant off time with fast decay time. 
    TOFF=3, 
    HSTRT=4, 
    HEND=1, 
    TBL=2, 
    vsense=0 -- vsense=1 allows 55% of current setting for vsense=0
  })
  
  -- Delay before power down in stand still. 255 is 4 seconds. 127 is 2 seconds.
  -- TPOWERDOWN sets the delay time after stand still (stst) of the
  -- motor to motor current power down. Time range is about 0 to
  -- 4 seconds.
  m.motor.writeTPOWERDOWN(127) 
  
  -- turn on freewheeling and pwm_autoscale so we enable automatic current control
  -- this also lets us freewheel with IHOLD=0 
  -- motor.FREEWHEEL_FREEWHEEL or motor.FREEWHEEL_SHORT_LS or motor.FREEWHEEL_SHORT_HS, or FREEWHEEL_NORMAL
  m.motor.writePWMCONF({
    freewheel=m.motor.FREEWHEEL_FREEWHEEL, 
    pwm_autoscale=1
  })

  -- we only get SG_RESULT when spreadcycle is on
  -- make sure we can stay in stealthcop mode by setting TCOOLTHRS low
  -- cuz stealthChop also is disabled if TSTEP falls
  -- below TCOOLTHRS or THIGH
  m.motor.writeTCOOLTHRS(10)
  
  -- write 0 to THIGH so TCOOLTHRS (200,000) ≥ TSTEP (around 600) ≥ THIGH (0)
  m.motor.writeTHIGH(0)
  
  -- m.motor.enable()
end 

function m.initSpreadCycle()
  print("initAsSpreadCycle")
    -- Configure pin to detect stall immediately
  -- The TMC2130 will go high on it's diag1 pin, which is mapped
  -- to the m.pinMotorStall. So we setup an interrupt to trigger on 
  -- rising edge.
  gpio.config({
    gpio=m.pinMotorStall,
    dir=gpio.IN,
  })
  gpio.trig(m.pinMotorStall, gpio.INTR_UP, m.onStall)
  
  -- StallGuard Settings mimicking 
  -- https://github.com/teemuatlut/TMC2130Stepper/blob/master/examples/StallGuard/StallGuard.ino
  
  -- Make sure microstepping
  -- STEP256, STEPFULL, STEP16
  -- teemuatlut does not turn on step interpolation intpol=1 or CHM=0,
  local MRES = m.motor.STEPFULL

  m.motor.writeCHOPCONF({
    MRES=MRES, 
    TOFF=3, 
    HSTRT=3, 
    HEND=1, 
    TBL=1
  })
  
  -- make sure stealthchop is off to do stealthGuard2 mode for sensorless homing
  -- diag1_stall=true gives us a high on that pin when sensorless homing
  -- diag1_pushpull=true gives us active high on pin 
  -- teemuatlut does not set en_pwm_mode=true, direct_mode=false, stop_enable=false
  m.motor.writeGCONF({
    en_pwm_mode=false,
    diag1_stall=true, 
    diag1_pushpull=true,
    direct_mode=false, 
    stop_enable=false,
    I_scale_analog=0, -- 1: Use voltage supplied to AIN as current reference, 0: Normal operation, use internal reference voltage
    internal_Rsense=0, -- 0: Normal operation, 1: Internal sense resistors. Use current supplied into AIN as reference for internal sense resistor, 
  })
  
  -- local IRUN = 4
  m.motor.writeIHOLD_IRUN({
    IRUN=m.IRUN,
    IHOLD=0,
    IHOLDDELAY=6})
  m.motor.writeTPOWERDOWN(10)
  -- FREEWHEEL_NORMAL, FREEWHEEL_FREEWHEEL
  -- teemuatlut does not turn on , pwm_autoscale=1
  m.motor.writePWMCONF({
    freewheel=m.motor.FREEWHEEL_FREEWHEEL,
    pwm_autoscale=0
  })
  
  -- Tune the SGT parameter, but start with 0 
  -- Maybe turn on sfilt=1 during tuning for cleaner plotting
  -- SEMIN=5, SEMAX=2, SEDN=1 is like teemuatlut's settings 
  -- local SGT = 6
  -- local sfilt = 0
  m.motor.writeCOOLCONF({
    SGT=m.SGT, 
    sfilt=m.sfilt, 
    SEMIN=5, 
    SEMAX=2, 
    SEDN=1
  })
  
  -- TPWM_THRS=500 yields a switching velocity about 35000 = ca. 30RPM
  -- motor.send(string.char(0x93, 0x00, 0x00, 0x01, 0xF4))
  -- motor.readTSTEP()
  -- motor.readLOST_STEPS()
  
  -- The stall detection and stallGuard output
  -- signal becomes enabled when exceeding this velocity. 
  -- At 100RPM the TSTEP is 608
  -- At 150RPM the TSTEP is 405
  -- TCOOLTHRS > TSTEP stallGuard status output signal is enabled
  TCOOLTHRS = 200000 -- make sure higher than TSTEP
  m.motor.writeTCOOLTHRS(TCOOLTHRS)
  
  -- write 0 to THIGH so TCOOLTHRS (200,000) ≥ TSTEP (around 600) ≥ THIGH (0)
  m.motor.writeTHIGH(0)
end

function m.onStall()
  -- m.jogStop()
  if m._onStall ~= nil then
    m._onStall()
  end
  print("Got stall")
end

function m.initPulseCtr()
  
  -- Setup the pulse counter to watch the steps
  -- Adhere to the direction pin as well to know automatically fwd/rev
  -- so our steps are accurate to where the motor is
  m.pcnt = pulsecnt.create(0, m.onPulseCnt, false)
  m.pcnt:chan0Config(
    36, -- 36 (sens_vp), 39 (sens_vn), m.pinStep, m.pinPulseIn, --pinPulseIn --pulse_gpio_num
    m.pinDir, --ctrl_gpio_num If no control is desired specify PCNT_PIN_NOT_USED 
    pulsecnt.PCNT_COUNT_INC, --pos_mode PCNT positive edge count mode
    pulsecnt.PCNT_COUNT_DIS, --neg_mode PCNT negative edge count mode
    pulsecnt.PCNT_MODE_REVERSE, --lctrl_mode PCNT_MODE_KEEP, PCNT_MODE_REVERSE, PCNT_MODE_DISABLE
    pulsecnt.PCNT_MODE_KEEP, --hctrl_mode PCNT_MODE_KEEP, PCNT_MODE_REVERSE, PCNT_MODE_DISABLE
    -32768, --counter_l_lim
    32767  --counter_h_lim
  )
  m.pcnt:setThres(m.stepMin, m.stepMax)
  m.pcnt:clear()
  
end

function m.onPulseCnt(unit, isThr0, isThr1, isLLim, isHLim, isZero)
  
  print("Got pulse counter.")
  print("unit:", unit, "isThr0:", isThr0, "isThr1:", isThr1)
  print("isLLim:", isLLim, "isHLim:", isHLim, "isZero:", isZero)
  
  if isThr0 then
    m.pause()
    m.stop()
    print("Hit endstop in negative direction")
  elseif isThr1 then
    m.pause()
    m.stop()
    print("HIt endstop in positive direction")
  end
end

function m.round(num, numDecimalPlaces)
  local mult = 10^(numDecimalPlaces or 0)
  return math.floor(num * mult + 0.5) / mult
end

m._lastFreq = 0
m._maxDelta = 20
function m.setfreq(fr, isOverrideAccel)
  if fr == m._lastFreq then
    -- print("Already at freq. Ignoring.")
    return
  end
  
  if fr < 1 then
    print("Err on freq:", fr)
    return
  end
  
  -- Check last freq and don't let them change too fast
  if isOverrideAccel ~= true then
    
    if fr > m._lastFreq then
      -- they want faster
      if fr - m._lastFreq > m._maxDelta then
        local askedFr = fr
        fr = m._lastFreq + m._maxDelta
        print("Dampened accel from fr:",askedFr,"to fr:",fr)
      end
    elseif fr < m._lastFreq then
      -- they want slower
      if m._lastFreq - fr > m._maxDelta then
        local askedFr = fr
        fr = m._lastFreq - m._maxDelta
        print("Dampened decel from fr:",askedFr,"to fr:",fr)
      end
    end
    
  end
  
  print("Setting freq to:", fr)
  pcall(m._channel:setfreq(fr))
  m._lastFreq = fr
end

function m.setduty(duty)
  m._channel:setduty(duty)
  -- print("Set duty:", duty)
end

function m.getFreq()
  return m._channel:getfreq()
end

function m.getSteps()
  local steps = m.pcnt:getCnt()
  print("Steps: "..steps)
  return steps
end


function m.start()
  m._channel = ledc.newChannel({
    gpio=m.pinStep,
    bits=m.bits,
    mode=ledc.HIGH_SPEED,
    timer=ledc.TIMER_1,
    channel=ledc.CHANNEL_1,
    frequency=m.freqStart, -- Hz
    -- 2^11 = 2048
    -- 2^9 = 512
    duty=m.dutyStart --512 -- 2**10 = 1024, so 50% duty is 512
  });
  m._isOn = true
  print("Start... freq:", m.freqStart, "duty", m.dutyStart)
end

function m.stop()
  m._channel:stop(ledc.IDLE_LOW)
  -- m.setfreq(m.freqStart)
  -- m.setduty(0)
  m._isOn = false
  print("Stopped")
end

m._isPaused = false
function m.pause()
  m.setfreq(10, true) --override dampening
  m.setduty(0)
  m._isPaused = true
  print("Paused")
end

function m.resume()
  if m._isOn == false then return end
  if m._isPaused == false then return end
  m.setduty(m.dutyAtRun)
  m._isPaused = false
  print("Resumed")
end

function m.jogStart(freq)
  -- m.motor.dirFwd()
  m.setfreq(freq, true) --override dampen
  m.resume()
  m.motor.readDRV_STATUS()
end

function m.jogStop()
  m.pause()
  m.getSteps()
  m.motor.readDRV_STATUS()
end 

function m.testStart()
  -- Start test where we jog fwd for 1 second
  -- Then we jog rev for 1 second
  m.jogStart(200)
  m._testTmr = tmr.create()
  m._testTmr:alarm(10000, tmr.ALARM_AUTO, function()
    m.motor.dirToggle()
  end)
end 

function m.testStop()
  m.jogStop()
  if m._testTmr then
    local running, mode = m._testTmr:state()
    if running then
      m._testTmr:unregister()
    end
  end
end

-- m.init()
-- m.jogStart(100)
-- localTime = time.getlocal()
-- print(string.format("%02d:%02d:%02d",  localTime["hour"], localTime["min"], localTime["sec"]))

return m


