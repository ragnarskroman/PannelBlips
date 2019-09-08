#########################################################
## Done by Huatweni ##
## https://github.com/RagnarPannel ##
## Do not repost without my permission! ##
#########################################################




local blips = {
    
     {title="Blip 1", colour=20, id=226, x = 0, y = 0, z = 0},
     {title="Blip 2", colour=29, id=60, x = 0, y = 0, z = 0},
     {title="Blip3", colour=29, id=60, x = 0, y = 0, z = 0},
  }
      
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 1.0)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)