-- Configuration file for armor script
-- This file contains all customizable settings
Config = {}

-- Armor Settings
-- These settings control how the armor system works
Config.Armor = {
    -- Amount of armor to apply (0-100, where 100 is maximum armor)
    targetAmount = 75,
    
    -- Time in milliseconds to wait before applying armor (8000ms = 8 seconds)
    useTime = 8000,
    
    -- Name of the item in database and inventory
    itemName = 'armor',
    
    -- Whether to remove item from inventory after use (false = keep item)
    removeOnUse = false,
    
    -- Maximum possible armor value in the game
    maxArmor = 100
}

-- Notification Messages
-- Customize all messages shown to players
Config.Messages = {
    -- Message when player doesn't have the armor item
    noItem = "You don't have any armor!",
    
    -- Message when player already has sufficient armor
    alreadyGood = "Your armor is already good!",
    
    -- Message shown during waiting period
    using = "Using armor... Please wait 8 seconds",
    
    -- Message shown when armor is successfully applied
    success = "Armor applied successfully!"
}

-- Additional Settings
-- Extra configuration options for advanced users
Config.Settings = {
    -- Enable debug messages in server console (true/false)
    enableLogging = false,
    
    -- Allow players to use armor while in vehicles (true/false)
    allowInVehicle = true,
    
    -- Minimum armor level required before allowing new armor use
    minimumArmorCheck = true
}
