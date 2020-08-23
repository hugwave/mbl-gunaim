ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj)
            ESX = obj
        end)
        Citizen.Wait(0)
    end
    while ESX.GetPlayerData().job == nil do
        Citizen.Wait(10)
    end
    PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer   
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

RegisterNetEvent('mbl-gunaim:aim')
AddEventHandler('mbl-gunaim:aim', function()

local pedxd = GetPlayerPed( -1 )
	
if PlayerData.job.name == 'grove' or PlayerData.job.name == "ballas" or PlayerData.job.name == "vagos" then
if ( DoesEntityExist( pedxd ) and not IsEntityDead( pedxd ) ) then 

Citizen.CreateThread( function()
	RequestAnimDict( "combat@aim_variations@1h@gang")
	   while ( not HasAnimDictLoaded( "combat@aim_variations@1h@gang" ) ) do 
                Citizen.Wait( 100 )
            end
				if IsEntityPlayingAnim(pedxd, "combat@aim_variations@1h@gang", "aim_variation_a", 3) then
				ClearPedSecondaryTask(pedxd)
				else
				TaskPlayAnim(pedxd, "combat@aim_variations@1h@gang", "aim_variation_a", 8.0, 2.5, -1, 49, 0, 0, 0, 0 )
				ESX.ShowNotification('GANG ANİM: GunRP Yok Koçum Unutma!') --Gun rp yapanı sikiyorlar.
            end 
		end )
	end
    end 
end )