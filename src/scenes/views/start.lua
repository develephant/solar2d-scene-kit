--#############################################################################
--# Scene View Template
--# Require the proper sceneClass here (only change the `require` path!):
--#############################################################################
local sceneClass = require("scenes.classes.Start")

--#############################################################################
--#############################################################################
--# /!\ Don't change anything below /!\
--#############################################################################

local composer = require("composer")
local scene = composer.newScene()

function scene:create( evt )
  if sceneClass.onCreate then
    sceneClass.onCreate( self.view )
  end
end

function scene:show( evt )
  if evt.phase == "will" then
    if sceneClass.onWillShow then
      sceneClass.onWillShow( self.view )
    end
  elseif evt.phase == "did" then
    if sceneClass.onDidShow then
      sceneClass.onDidShow( self.view )
    end
  end
end

function scene:hide( evt )
  if evt.phase == "will" then
    if sceneClass.onWillHide then
      sceneClass.onWillHide( self.view )
    end
  elseif evt.phase == "did" then
    if sceneClass.onDidHide then
      sceneClass.onDidHide( self.view )
    end
  end
end

function scene:destroy( evt )
  if sceneClass.onDestroy then
    sceneClass.onDestroy( self.view )
  end
end

scene:addEventListener( "create", scene)
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

return scene
