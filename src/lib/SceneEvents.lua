--# Global Dispatcher

local composer = require("composer")

local events = composer.getVariable("events")

--Global event listener
local function onEvent( evt )
  print("On " .. evt.type .. " Event")
end

events:addEventListener("OnEvent", onEvent)

return events