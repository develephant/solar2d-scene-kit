--# Default Scene Engine
--# Solar2D Scene Kit
--# 2021 develephant
local events = require("lib.SceneEvents")

local DefaultScene = {}

-----

function DefaultScene.onCreate( view )
  events:dispatchEvent({name="OnEvent", type="DefaultSceneCreate"})
end

function DefaultScene.onWillShow( view )
  events:dispatchEvent({name="OnEvent", type="DefaultSceneWillShow"})
end

function DefaultScene.onDidShow( view )
  events:dispatchEvent({name="OnEvent", type="DefaultSceneDidShow"})  
end

function DefaultScene.onWillHide( view )
  events:dispatchEvent({name="OnEvent", type="DefaultSceneWillHide"})
end

function DefaultScene.onDidHide( view )
  events:dispatchEvent({name="OnEvent", type="DefaultSceneDidHide"})
end

function DefaultScene.onDestroy( view )
  events:dispatchEvent({name="OnEvent", type="DefaultSceneDestroy"})
end


return DefaultScene