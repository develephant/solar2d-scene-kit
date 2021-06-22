--#############################################################################
--# Solar2D Scene Kit
--#############################################################################
io.output():setvbuf("no")
display.setStatusBar(display.HiddenStatusBar)

local composer = require( "composer" )

-- Main Event Dispatcher
local dispatcher = system.newEventDispatcher()
composer.setVariable("dispatcher", dispatcher)

--

composer:gotoScene("scenes.default_scene")
