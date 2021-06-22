--#############################################################################
--# Evented Scene Template
--#############################################################################

local events = require("lib.SceneEvents")

local composer = require("composer")
local scene = composer.newScene()

function scene:create( evt )
  events:dispatchEvent({name="OnEvent", type="did_create"})
end

function scene:show( evt )
  if evt.phase == "will" then
    events:dispatchEvent({name="OnEvent", type="will_show"})
  elseif evt.phase == "did" then
    events:dispatchEvent({name="OnEvent", type="did_show"})
  end
end

function scene:hide( evt )
  if evt.phase == "will" then
    events:dispatchEvent({name="OnEvent", type="will_hide"})
  elseif evt.phase == "did" then
    events:dispatchEvent({name="OnEvent", type="did_hide"})
  end
end

function scene:destroy( evt )
  events:dispatchEvent({name="OnEvent", type="did_destroy"})
end

--#############################################################################
--# Scene Listeners
--#############################################################################

scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene