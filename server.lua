-- Get QBCore framework object to access server-side functions
local QBCore = exports['qb-core']:GetCoreObject()

-- Create a useable item that players can right-click in inventory
-- When player uses "armor" item, this function will be executed
QBCore.Functions.CreateUseableItem("armor", function(source, item)
    -- 'source' is the player's server ID who used the item
    -- 'item' contains information about the used item
    
    -- Trigger client-side event to handle armor application
    -- This sends the event to the specific player who used the item
    TriggerClientEvent("customarmor:useArmor", source)
end)
