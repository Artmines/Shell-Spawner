-- Define an array of shell models, positions, and rotations
local shellSpawnPoints = {
    {model = "k4coke_shell", pos = vector3(1380.88, -5681.09, 307.2), rot = vector3(0.0, 0.0, 0.0)},
    {model = "k4weed_shell", pos = vector3(-3771.15, -5796.7, 492.11), rot = vector3(0.0, 0.0, 0.0)},
    {model = "k4meth_shell", pos = vector3(-5546.97, -1988.14, 382.11), rot = vector3(0.0, 0.0, 0.0)}
    --{model = "prop_shell_04", pos = vector3(0.0, 0.0, 10.0), rot = vector3(0.0, 0.0, 0.0)}
  }
  
  -- Function to spawn the shells
  function SpawnShells()
    for _, shell in ipairs(shellSpawnPoints) do
      local shellObj = CreateObject(GetHashKey(shell.model), shell.pos.x, shell.pos.y, shell.pos.z, true, true, true)
      SetEntityRotation(shellObj, shell.rot.x, shell.rot.y, shell.rot.z, 0, true)
      SetEntityAsMissionEntity(shellObj, true, true)
      FreezeEntityPosition(shellObj, true)
    end
  end
  
  -- Event handler to spawn the shells when the resource starts
  AddEventHandler("onResourceStart", function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
      return
    end
  
    SpawnShells()
  end)
  
