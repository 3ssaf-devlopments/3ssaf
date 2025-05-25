-- FiveM Resource Manifest File
-- This file defines resource metadata and file structure

-- FiveM version compatibility
fx_version 'cerulean'

-- Target game (Grand Theft Auto V)
game 'gta5'

-- Resource Information
author 'YourName'                           -- Replace with your name
description 'Simple Armor Script for FiveM' -- Resource description
version '1.0.0'                            -- Current version

-- Client-side scripts (runs on player's game client)
client_scripts {
    'config.lua',    -- Load configuration first
    'client.lua'     -- Main client logic
}

-- Server-side scripts (runs on game server)
server_scripts {
    'config.lua',    -- Load configuration first  
    'server.lua'     -- Main server logic
}
