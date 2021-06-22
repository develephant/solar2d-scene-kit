--#############################################################################
--# Scene Class Template
--#############################################################################

local Scene = {
  id = "Start" --Assign a Scene Class name here.
}

function Scene.onCreate( view )
  print("did create it")
end

function Scene.onWillShow( view )
  print("will show")
end

function Scene.onDidShow( view )
  print("did show")
end

function Scene.onWillHide( view )
  print("will hide")
end

function Scene.onDidHide( view )
  print("did hide")
end

function Scene.onDestroy( view )
  print("did destroy")
end

return Scene