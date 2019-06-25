-- Main entry point for ChiliPeppr Robot Actuator
-- Stepper jogging/homing, Fan control, Temperature
-- We also report back status on a 1 second interval (temperature, fan, steps, current)

cayenn = require("cayenn_esp32_v3")
queue = require("queue")
json = sjson
step = require("stepper_ctrl_jog_tmc2130")
-- step.init({IRUN=1}) -- run stepper at lowest amps for small actuator
tmp = require("tmp36")
tmp.init(false) -- no debug
fan = require("fan")
fan.init()
led = require("ws281x_leds_pulse")
led.fill(100,0,100)

opts = {}
opts.Name = "Wrist2"
opts.Desc = "Actuator controller"
opts.Icon = "https://raw.githubusercontent.com/chilipeppr/widget-robot-axes/master/Wrist2.jpg"

-- Store SPJS server ip's (can be more than one)
servers = {}
ignoreIp = "10.0.0.56"

-- Define commands supported by your device. They will appear
-- inside the Cayenn widget in ChiliPeppr as buttons.
cmds = {
  "ResetCtr", "GetCtr", "GetCmds", "GetQ", "WipeQ", "CmdQ", "Mem",
  "TestStart", "TestStop", "DirToggle", "DirFwd", "DirRev", --"Sleep", "Wake",
  "Home", "ZeroOut",
  "StatusGet", "StatusStart", "StatusStop",
  "JogStart {Freq}", "JogStop", "JogFreq {Freq}",
  "GetSteps", "G0 {Steps}", "G1 {Steps,Fr}",
  "SetAsMaster", "SetAsSlave", "GetMasterOrSlave",
  "Play", "Pause", "Stop",
  "Receipt {DeviceId, Ctr}",
  -- 'SetAValue {Hz,Duty} (Max Hz:1000, Max Duty:1023)',
  -- 'SetA2ndValue {Brightness}',
}

-- we can be set as master from ChiliPeppr
-- if we are, it's our job to send the signal wire high/lows
-- we should also get all the receipts back from each slave device 
-- for each command so we know we can send the signal for the next cmd 
isMaster = false

function JogStart(payload)
  local desc = "Started jog "
  if payload.Freq ~= nil and payload.Freq > 0 then
    step.motor.dirFwd()
    step.jogStart(payload.Freq)
    desc = desc .. "fwd at "..payload.Freq.."Hz"
  elseif payload.Freq ~= nil and payload.Freq < 0 then
    step.motor.dirRev()
    payload.Freq = math.abs(payload.Freq)
    step.jogStart(payload.Freq)
    desc = desc .. "rev at "..payload.Freq.."Hz"
  else
    desc = "Freq was 0 so did nothing"
  end
  cayenn.send({["TransId"] = payload.TransId, ["Desc"] = desc, ["Resp"] = payload.Cmd})
  led.pulse(100,0,0)
end

function JogStop(payload)
  step.jogStop()
  cayenn.send({["TransId"] = payload.TransId, ["Desc"] = "Stopped jog", ["Resp"] = payload.Cmd})
  led.pulse(0,0,55)
end

function JogFreq(payload)
  payload.Freq = math.abs(payload.Freq)
  step.setfreq(payload.Freq, true) --override dampen
  cayenn.send({["TransId"] = payload.TransId, ["Desc"] = "Set jog freq to "..payload.Freq, ["Freq"] = payload.Freq, ["Resp"] = payload.Cmd})
  led.fill(0,255,0)
end

function StatusGet(payload)
  local tbl = statusGet()
  -- send it off to listeners
  tbl.TransId = payload.TransId
  tbl.Resp = payload.Cmd 
  cayenn.send(tbl)
  led.fill(0,10,0)
end

function StatusStart(payload)
  desc = "Started status loop every 1 sec"
  if not statusStart() then
    desc = "Status loop already running"
  end
  cayenn.send({["TransId"] = payload.TransId, ["Desc"] = desc, ["Resp"] = payload.Cmd})
  led.fill(0,10,0)
end

function StatusStop(payload)
  statusStop()
  cayenn.send({["TransId"] = payload.TransId, ["Desc"] = "Stopped status loop", ["Resp"] = payload.Cmd})
  led.fill(0,10,0)
end

function GetCmds(payload)
  local resp = {}
  resp.Resp = "GetCmds"
  resp.Cmds = cmds
  resp.TransId = payload.TransId
  cayenn.send(resp)
  led.fill(0,10,10)
end

-- This is called when an incoming cmd comes in
-- from the network, i.e. from SPJS. These are TCP commands so
-- they are guaranteed to come in (vs UDP which could drop and has
-- its own callback function further down.)
function onCmd(payload)
  
  if (type(payload) == "table") then
    
    if payload.Cmd ~= nil then
      print("Got incoming Cayenn cmd: " .. payload.Cmd .. ", JSON: " .. json.encode(payload))
      -- see if we have a function to handle this. _G has all global functions in it
      if _G[payload.Cmd] then
        _G[payload.Cmd](payload)
        print("Handled by global func")
        return
      end
    else 
      print("Got incoming Cayenn with no cmd. JSON: " .. json.encode(payload))
    end 
    
    -- These are your custom commands you are implementing
    -- for this Cayenn device
    if payload.Cmd == "SetAsMaster" then
      -- If we are master, we have to get a "Play" command,
      -- a "Pause" command, and a "Stop" command.
      
    elseif payload.Cmd == "DirToggle" then
    
      step.motor.dirToggle()
      cayenn.send({["TransId"] = payload.TransId, ["Resp"] = payload.Cmd})
      print("Toggled direction of stepper")
    
    elseif payload.Cmd == "DirFwd" then
    
      step.motor.dirFwd()
      cayenn.send({["TransId"] = payload.TransId, ["Resp"] = payload.Cmd})
      print("Stepper dir fwd")
    
    elseif payload.Cmd == "DirRev" then
    
      step.motor.dirRev()
      cayenn.send({["TransId"] = payload.TransId, ["Resp"] = payload.Cmd})
      print("Stepper dir rev")
    
    elseif payload.Cmd == "TestStart" then
    
      -- Start loop on stepper 
      step.testStart()
      -- cayenn.send({["TransId"] = payload.TransId, ["Resp"] = payload.Cmd, ["Hz"] = payload.Hz, ["Duty"] = actualDuty})
      cayenn.send({["TransId"] = payload.TransId, ["Resp"] = payload.Cmd})
      print("Started loop test on stepper")
      
    elseif payload.Cmd == "TestStop" then
    
      step.testStop()
      cayenn.send({["TransId"] = payload.TransId, ["Resp"] = payload.Cmd})
      print("Stopped loop test on stepper")

    -- Below are more standard commands you should always support
    elseif payload.Cmd == "ResetCtr" then
      -- cnc.resetIdCounter()
      cayenn.send({["TransId"] = payload.TransId, ["Resp"] = payload.Cmd, ["Ctr"] = cnc.getIdCounter()})
    elseif payload.Cmd == "GetCtr" then
      cayenn.send({["TransId"] = payload.TransId, ["Resp"] = payload.Cmd, ["Ctr"] = cnc.getIdCounter()})
    elseif payload.Cmd == "GetCmds" then
      local resp = {}
      resp.Resp = "GetCmds"
      resp.Cmds = cmds
      resp.TransId = payload.TransId
      cayenn.send(resp)
    elseif payload.Cmd == "GetQ" then
      -- this method will send slowly as not to overwhelm
      queue.send(function(t) cayenn.send(t); end, payload.TransId)
    elseif payload.Cmd == "WipeQ" then
      queue.wipe()
      cayenn.send({["TransId"] = payload.TransId, ["Resp"] = payload.Cmd})
    elseif payload.Cmd == "CmdQ" then
      -- queuing cmd. we must have ID.
      if payload.Id == nil then
        -- print("Error queuing command. It must have an ID")
        return
      end
      if payload.RunCmd == nil then
        -- print("Error queuing command. It must have a RunCmd like RunCmd:{Cmd:AugerOn,Speed:10}.")
        return
      end
      -- wipe the peerIp cuz don't need it
      payload.peerIp = nil
      -- print("Queing command")
      --queue[payload.Id] = payload.RunCmd
      payload.RunCmd.Id = payload.Id
      queue.add(payload.RunCmd)
      -- print("New queue: " .. cjson.encode(queue))
      cayenn.send({["TransId"] = payload.TransId, ["Resp"] = payload.Cmd, ["Id"] = payload.Id})
    elseif payload.Cmd == "Mem" then
      cayenn.send({["TransId"] = payload.TransId, ["Resp"] = payload.Cmd, ["MemRemain"] = node.heap()})
    elseif payload["Announce"] ~= nil then
      -- do nothing. 
      if payload.Announce == "i-am-your-server" then
        -- store this ip
        -- so we know what our SPJS server is
        
        -- see if in ignore list
        if (payload.ServerIp == ignoreIp) then
          print("Got server to ignore: "..payload.ServerIp)
        else
          
          -- we got a server we want, see if we already
          -- got this server and initted our TCP connection back 
          if servers[payload.ServerIp] then 
            print("We are already connected back to this server.")
          else 
            servers[payload.ServerIp] = true
            print("Got a server:" .. json.encode(servers))
            -- connect tcp_client back to the server 
            cayenn.initTcpSend(payload.ServerIp)
            
            -- start sending status
            -- statusStart()
            led.pulse(0,0,80)
          end
        end
      end
    else
      cayenn.send({["TransId"] = payload.TransId, ["Resp"] = payload.Cmd, ["Err"] = "Unsupported cmd"})
      -- print("Got cmd we do not understand. Huh?")
    end
  else
    -- If we are sent Cayenn commands that aren't JSON, they
    -- will get here. However, JSON should always be used.
    -- print("is string")
    -- print("Got incoming Cayenn cmd. str: ", payload)
  end
  
end

-- This callback is called when an incoming UDP broadcast 
-- comes in to this device. Typically this is just for 
-- Cayenn Discover requests to figure out what devices are on 
-- the network
function onIncomingBroadcast(cmd)
  -- print("Got incoming UDP cmd: ", cmd)
  if (type(cmd) == "table") then
    if cmd["Cayenn"] ~= nil then
      if cmd.Cayenn == "Discover" then
        -- somebody is asking me to announce myself
        cayenn.sendAnnounceBroadcast()
      else
        -- print("Do not understand incoming Cayenn cmd")
      end
    -- elseif cmd["Announce"] ~= nil then
    --   if cmd.Announce == "i-am-your-server" then
    --     -- we should store the server address so we can send
    --     -- back TCP
    --     print("Got a server announcement. Cool. Store it.")
    --     print("cmd:" .. json.encode(cmd))
    --     servers[cmd.ip] = true
    --     print("Got a server:" .. json.encode(servers))
    --   else 
    --     -- print("Got announce but not from a server. Huh?")
    --   end 
    -- else 
    --   -- print("Do not understand incoming UDP cmd")
    end
    
  else 
    -- print("Got incoming UDP as string")
  end
end

-- We get this callback when we are Wifi connected
function onConnected()
  -- print("Got callback after connected.")
  -- led.fill(255,255,0)
  print("Initting tmc2130 spi bus, etc")
  step.init({IRUN=1})
  led.pulse(0,80,0)
end

-- Status report loop 
function statusGet()
  local tbl = {}
  -- get steps 
  tbl.Step = step.getSteps()
  -- get frequency 
  tbl.Freq = step.getFreq()
  -- get temp 
  tbl.Temp, isWarning, isEmergency = tmp.read()
  if isWarning then tbl.IsTempWarning = true end
  if isEmergency then tbl.IsTempEmergency = true end
  -- get current
  tbl.Motor = step.motor.readDRV_STATUS()
  -- get fan 
  tbl.FanSpeed = fan.getDuty()
  return {["Stat"] = tbl}
end 

function statusStart()
  if tmrStatus and tmrStatus:state() then 
    print("Status already running")
    return false
  end 
  
  tmrStatus = tmr.create()
  -- TODO only send updates, so keep last status and debounce
  tmrStatus:alarm(1000, tmr.ALARM_AUTO, function()
    local tbl = statusGet()
    -- send it off to listeners
    cayenn.send(tbl)
  end)
  
  return true
end 

function statusStop()
  if tmrStatus and tmrStatus:state() then 
    tmrStatus:unregister()
  end 
end

cnc = {}
cnc.getIdCounter = function() return 0 end

-- Add listener to incoming Cayenn network commands
cayenn.addListenerOnIncomingCmd(onCmd)
cayenn.addListenerOnIncomingUdpCmd(onIncomingBroadcast)
cayenn.addListenerOnConnected(onConnected)

-- Init Cayenn
cayenn.init(opts)

-- Setup our command queue
queue.init()

print("Mem:" .. node.heap())


