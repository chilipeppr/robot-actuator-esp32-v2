-- Test TMC2130

m = {}

step = require("stepper_ctrl_jog_tmc2130_v2")
-- pprint = require('pprint')

function m.onStall()
  print("Got parent onStall")
end

function m.statusGet()
  local tbl = {}
  -- get steps 
  tbl.Step = step.getSteps()
  -- get frequency 
  tbl.Freq = step.getFreq()
  -- get current
  tbl.Motor = step.motor.readDRV_STATUS()
  -- get tstep
  tbl.TSTEP = step.motor.readTSTEP().TSTEP
  -- get lost steps
  tbl.LOST_STEPS = step.motor.readLOST_STEPS().LOST_STEPS
  print(sjson.encode(tbl))
  -- pprint(tbl)
  return tbl
end 

function m.testStart()
  -- Start test where we jog fwd for 1 second
  -- Then we jog rev for 1 second
  step.jogStart(300)
  m._testTmr = tmr.create()
  m._testTmr:alarm(2000, tmr.ALARM_AUTO, function()
    step.motor.dirToggle()
    -- m.getSteps()
    m.statusGet()
  end)
end 

function m.testStop()
  step.jogStop()
  if m._testTmr then
    local running, mode = m._testTmr:state()
    if running then
      m._testTmr:unregister()
      
      local ctr = 0
      m._testTmr2 = tmr.create()
      m._testTmr2:alarm(2000, tmr.ALARM_AUTO, function()
        
        local tbl = m.statusGet()
        -- exit timer loop if got to zero current
        if tbl.Motor.CSACTUAL == 0 then ctr = 10 end
        
        ctr = ctr + 1
        if ctr > 6 then
          m._testTmr2:unregister()
        end
      end)
    end
  end
end

step.init({
  IRUN=31,
  initAsStealthChop = true,
  isDebug=false, 
  onStall=m.onStall
}) -- run stepper at lowest amps for small actuator
-- m.init()
-- step.jogStart(100)
-- localTime = time.getlocal()
-- print(string.format("%02d:%02d:%02d",  localTime["hour"], localTime["min"], localTime["sec"]))
-- statusGet()
m.testStart()
