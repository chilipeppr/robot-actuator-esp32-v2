-- Fan control
-- Send out PWM signal to control on/off and speed of fan
-- 10Khz is supported for PWM

local fan = {}
-- fan = {}

fan.pinFan = 16 --16 is default on pcb --23

fan._ch = nil

function fan.init()
  -- turn on GPIO port to out
  -- gpio.config( { gpio=fan.pinFan, dir=gpio.OUT } )
  
  -- gpio.write(fan.pinFan, 1)
  
  -- Using LEDC library
  fan._ch = ledc.newChannel({
    gpio=fan.pinFan,
    bits=ledc.TIMER_12_BIT,
    mode=ledc.HIGH_SPEED,
    timer=ledc.TIMER_2,
    channel=ledc.CHANNEL_7,
    frequency=10,
    duty=0
  });

  -- sigma_delta.setprescale(0, 255) -- channel, 1 to 255
  -- sigma_delta.setduty(0, -128) -- channel, duty -128 to 127
  -- sigma_delta.setup(0, fan.pinFan)
  
  print("Initted fan. Freq:"..fan.getFreq()..", Duty:"..fan.getDuty())
  
end

function fan.off()
  -- gpio.write(fan.pinFan, 0)
  -- fan._ch:stop(ledc.IDLE_LOW)
  fan._ch:setduty(0)
  -- sigma_delta.setduty(0, -128) -- channel, duty -128 to 127
  fan.getStatus()
end

function fan.slow()
  fan.setDuty(700)
  fan.getStatus()
end

function fan.half()
  fan.setDuty(2048)
  fan.getStatus()
end

function fan.getStatus()
  print("Fan Freq:"..fan.getFreq()..", Duty:"..fan.getDuty())
end

function fan.getFreq()
  return fan._ch:getfreq()
end

function fan.getDuty()
  return fan._ch:getduty()
end

function fan.setDuty(duty)
  -- gpio.write(fan.pinFan, 0)
  
  -- Channel duty, the duty range is [0, (2**bit_num) - 1]. 
  -- Example: if ledc.TIMER_13_BIT is used maximum value is 
  -- 2^13 = 8192, 8192 -1 = 8191
  -- With TIMER_12_BIT, 2^12 = 4096, 4096 - 1 = 4095

  -- Turn fan on full power, then back down to the duty, because
  -- starting at lower power may not spin it up with enough start force
  fan.on()
  if not tmr.create():alarm(1000, tmr.ALARM_SINGLE, function()
    print("Setting fan to " .. duty .. " duty cycle")
    fan._ch:setduty(duty)
    -- sigma_delta.setduty(0, duty) -- channel, duty -128 to 127
  end)
  then
    print("Error starting fan timer")
  end
  
end

function fan.on()
  -- gpio.write(fan.pinFan, 1)
  -- fan._ch:stop(ledc.IDLE_HIGH)
  fan._ch:setduty(4096)
  -- sigma_delta.setduty(0, 127) -- channel, duty -128 to 127
  fan.getStatus()
end

fan.init()
fan.off()
-- fan.on()
-- fan.half()
return fan
