local QBCore = exports['qb-core']:GetCoreObject()

local function GetClosestPlayer()
    local players = GetActivePlayers()
    local closestPlayer, closestDistance = nil, 2.0
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)

    for _, player in ipairs(players) do
        local targetPed = GetPlayerPed(player)
        if targetPed ~= ped then
            local targetCoords = GetEntityCoords(targetPed)
            local distance = #(coords - targetCoords)
            if distance < closestDistance then
                closestPlayer = player
                closestDistance = distance
            end
        end
    end
    return closestPlayer
end

RegisterNetEvent('exter-barber:useClippers', function()
    local player = GetClosestPlayer()
    if player then
        local targetPed = GetPlayerPed(player)
        TaskStartScenarioInPlace(PlayerPedId(), "WORLD_HUMAN_CLIPBOARD", 0, true)
        QBCore.Functions.Progressbar("shave_hair", "Shaving hair...", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
            ClearPedTasks(PlayerPedId())
            TriggerServerEvent('exter-barber:shaveHair', GetPlayerServerId(player))
        end, function()
            ClearPedTasks(PlayerPedId())
            QBCore.Functions.Notify("Failed to shave!", "error")
        end)
    else
        QBCore.Functions.Notify("There is no one near you!", "error")
    end
end)

RegisterNetEvent('exter-barber:shaveClient', function()
    local ped = PlayerPedId()
    ClearPedDecorations(ped)
    SetPedComponentVariation(ped, 2, 0, 0, 2) -- Botak
    QBCore.Functions.Notify("Your head has been shaved bald!")
end)