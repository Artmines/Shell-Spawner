local shellModel = "k4meth_shell"

-- Define the position and rotation of the shell
local shellPos = vector3(1407.76, -5814.33, 321.88)
local shellRot = vector3(0.0, 0.0, 0.0)

-- Function to spawn the shell
function SpawnShell()
  local shellObj = CreateObject(GetHashKey(shellModel), shellPos.x, shellPos.y, shellPos.z, true, true, true)
  SetEntityRotation(shellObj, shellRot.x, shellRot.y, shellRot.z, 0, true)
  SetEntityAsMissionEntity(shellObj, true, true)
  FreezeEntityPosition(shellObj, true)
end

-- Event handler to spawn the shell when the resource starts
AddEventHandler("onResourceStart", function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    return
  end

  SpawnShell()
end)