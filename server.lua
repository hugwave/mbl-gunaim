ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


RegisterCommand('aim', function(source)

	TriggerClientEvent( 'mbl-gunaim:aim', source )
	
end)
