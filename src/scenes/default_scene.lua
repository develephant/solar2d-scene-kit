--# Default Scene
--# Solar2D Scene Kit
--# 2021 develephant
local composer = require( "composer" )
local scene = composer.newScene()

local DefaultScene = require("events.DefaultScene")

-- Scene event functions

-- create()
function scene:create( event )
  DefaultScene.onCreate( self.view )
end

-- show()
function scene:show( event )
  if ( event.phase == "will" ) then
    -- Runs when the scene is still off screen (but is about to come on screen)
    DefaultScene.onWillShow( self.view )
  elseif ( event.phase == "did" ) then
    DefaultScene.onDidShow( self.view )
  end
end

-- hide()
function scene:hide( event )
  if ( event.phase == "will" ) then
    -- Runs when the scene is on screen (but is about to go off screen)
    DefaultScene.onWillHide( self.view )
  elseif ( event.phase == "did" ) then
    -- Runs immediately after the scene goes entirely off screen
    DefaultScene.onDidHide( self.view )
  end
end

-- destroy()
function scene:destroy( event )
  DefaultScene.onDestroy( self.view )
end

-- Scene event function listeners
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----

return scene