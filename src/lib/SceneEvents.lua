--# Global Dispatcher

local composer = require("composer")

local dispatcher = composer.getVariable("dispatcher")

--Global event listener
local function onEvent( evt )
  print("On " .. evt.type .. " Event")
end

dispatcher:addEventListener("OnEvent", onEvent)

return dispatcher