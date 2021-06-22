--#############################################################################
--# Evented Scene Template
--#############################################################################

local composer = require("composer")
local events = composer.getVariable("events")
local scene = composer.newScene()

function scene:create( evt )
  print("did create")
  events:dispatchEvent({name="did_create"})
end

function scene:show( evt )
  if evt.phase == "will" then
    print("will show")
    events:dispatchEvent({name="will_show"})
  elseif evt.phase == "did" then
    print("did show")
    events:dispatchEvent({name="did_show"})
  end
end

function scene:hide( evt )
  if evt.phase == "will" then
    print("will hide")
    events:dispatchEvent({name="will_hide"})
  elseif evt.phase == "did" then
    print("did hide")
    events:dispatchEvent({name="did_hide"})
  end
end

function scene:destroy( evt )
  print("did destroy")
  events:dispatchEvent({name="did_destroy"})
end

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene