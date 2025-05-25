-- Get QBCore framework object to access all QBCore functions
local QBCore = exports['qb-core']:GetCoreObject()

-- Register network event that will be triggered when player uses armor item
RegisterNetEvent('customarmor:useArmor', function()
    -- Get the player's character/ped ID
    local playerPed = PlayerPedId()
    
    -- Define the item name that should exist in database and inventory
    local armorItem = 'armor'
    
    -- Set target armor amount (75 out of 100 maximum)
    local targetArmor = 75
    
    -- Set waiting time in milliseconds (8000ms = 8 seconds)
    local useTime = 8000
    
    -- Check if player actually has the armor item in their inventory
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(hasItem)
        -- If player has the item, proceed with armor application
        if hasItem then
            -- Get player's current armor level (0-100)
            local currentArmor = GetPedArmour(playerPed)
            
            -- Check if current armor is already at or above target level
            if currentArmor >= targetArmor then
                -- Show error message if armor is already sufficient
                QBCore.Functions.Notify("Your armor is already good!", "error")
                return -- Exit function early
            end
            
            -- Show waiting message to inform player about delay
            QBCore.Functions.Notify("Using armor... Please wait 8 seconds", "primary")
            
            -- Wait for specified time (8 seconds) before applying armor
            Wait(useTime)
            
            -- Apply armor to player after waiting period
            SetPedArmour(playerPed, targetArmor)
            
            -- Show success message to confirm armor application
            QBCore.Functions.Notify("Armor applied successfully!", "success")
        else
            -- Show error message if player doesn't have the required item
            QBCore.Functions.Notify("You don't have any armor!", "error")
        end
    end, armorItem) -- Pass item name to check
end)
