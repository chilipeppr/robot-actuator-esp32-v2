-- ChiliPeppr - WS2812/WS2813 LED library

-- local ZLed = {}
ZLed = {}

ZLed.pin = 4 --26 --4
ZLed.strandLength = 1

ZLed.tmrMs = 20 -- ms per update to LED 200ms default

ZLed.buffer = ws2812.newBuffer(ZLed.strandLength, 3); 
ZLed.t = tmr.create()

ZLed.isBusy = false

function ZLed.pulse(r, g, b)
  
  print("Starting pulse animation")

  -- normal run  
  -- local isRun, mode = ZLed.t:state()
  -- if isRun == true then return end
  if ZLed.isBusy then 
    ZLed.stop()
    ZLed.t:unregister()
    print("Led was busy. Stopped it.")
    -- return 
  end

  ZLed.isBusy = true

  if r == nil then r = 0 end
  if g == nil then g = 0 end
  if b == nil then b = 15 end
  local pulseCtr = 0
  local direction = 2
  -- buffer:fill(g, r, b);
  -- buffer:fade(5)
  ws2812.write({pin = ZLed.pin, data = ZLed.buffer})
  print("About to start AUTO alarm on pulse")
  ZLed.t:alarm(ZLed.tmrMs, tmr.ALARM_AUTO, function()
    pulseCtr = pulseCtr + direction
    
    local r2 = 0
    local g2 = 0
    local b2 = 0
    
    if pulseCtr <= 3 then 
      direction = 2 
      -- print("Fading in")
    end
    if pulseCtr >= 30 then 
      direction = -2 
      -- print("Fading out")
    end
    if pulseCtr <= r then r2 = pulseCtr end
    if pulseCtr <= g then g2 = pulseCtr end
    if pulseCtr <= b then b2 = pulseCtr end
    
    ZLed.buffer:fill(g2, r2, b2);
    
    ws2812.write({pin = ZLed.pin, data = ZLed.buffer})
    
  end)
  -- buffer:fade(2, ws2812.FADE_IN)
end

function ZLed.stop()
  if ZLed.isBusy then
    ZLed.t:stop()
    print("Paused LED anim")
    ZLed.isBusy = false
  end
end

function ZLed.resume()
  if ZLed.isBusy == false then
    local running, mode = ZLed.t:state()
    if running ~= nil then
      -- means is registered
      ZLed.isBusy = true
      ZLed.t:start()
      print("Resumed LED anim")
    end
  end
end

function ZLed.fill(r, g, b)
  if r == nil then r = 0 end
  if g == nil then g = 0 end
  if b == nil then b = 0 end
  ZLed.buffer:fill(g, r, b);
  ws2812.write({pin = ZLed.pin, data = ZLed.buffer})
end
    
function ZLed.stop2()
  print("ZLed stop. Stopping other LED ops.")
  
  -- if ZLed.isBusy == false then
  --   print("Being asked to stop LED anim, but not running")
  --   return
  -- end
  
  local isRun, mode = ZLed.t:state()
  if isRun == true then ZLed.t:stop() end
  if isRun ~= nil then 
    ZLed.t:unregister()
  end
  ZLed.isBusy = false
  
  -- just do set color without fade to resolve possible bug
  ZLed.fill(7, 3, 0) -- just enough to show we're on
  if true then return end
  
  local i = 0
  local tmrFadeBack = tmr.create()
  tmrFadeBack:alarm(100, tmr.ALARM_AUTO, function()
    i = i + 1
    ZLed.buffer:fade(2)
    ws2812.write({pin = ZLed.pin, data = ZLed.buffer})
    if i > 30 then 
      tmrFadeBack:stop()
      tmrFadeBack:unregister()
      -- ZLed.fill(3, 2, 0) -- just enough to show we are on
      ZLed.fill(7, 3, 0) -- just enough to show we are on
    end
  end)
  -- buffer:fill(0, 0, 0);
  -- ws2812.write({pin = ZLed.pin, data = buffer})
end

ZLed.fill(0,0,0)
-- ZLed.pulse(50, 50, 50)
ZLed.pulse(100, 0, 100)
return ZLed


