QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('exter-barber:shaveHair', function(targetId)
    TriggerClientEvent('exter-barber:shaveClient', targetId)
end)

QBCore.Functions.CreateUseableItem(Config.ItemName, function(source)
    TriggerClientEvent('exter-barber:useClippers', source)
end)
