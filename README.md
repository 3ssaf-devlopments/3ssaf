# FiveM Armor Script

A simple and reliable armor script for FiveM servers using QBCore framework.

## Features

- ✅ **8-Second Delay** - Realistic waiting time before armor application
- ✅ **No Item Removal** - Items remain in inventory after use (reusable)
- ✅ **No Animations** - Simple and clean armor application
- ✅ **QBCore Compatible** - Full integration with QBCore framework
- ✅ **Configurable** - Easy to customize settings
- ✅ **Lightweight** - Minimal resource usage

## Installation

### 1. Download and Extract
1. Download the script files
2. Create folder: `resources/[qb]/qb-armor/`
3. Place all files in the folder

### 2. Database Setup
Add the armor item to your database:
```sql
INSERT INTO `items` (`name`, `label`, `weight`, `rare`, `can_remove`) 
VALUES ('armor', 'Body Armor', 1, 0, 1);
```

### 3. Server Configuration
Add to your `server.cfg`:
```
ensure qb-armor
```

### 4. Restart Server
Restart your server or use:
```
refresh
start qb-armor
```

## Usage

1. Give armor item to player: `/giveitem [player_id] armor 1`
2. Player right-clicks armor item in inventory
3. Wait 8 seconds for armor to be applied
4. Armor level will be set to 75/100

## Configuration

Edit `config.lua` to customize:

```lua
Config.Armor = {
    targetAmount = 75,        -- Armor amount (0-100)
    useTime = 8000,          -- Wait time in milliseconds
    itemName = 'armor',      -- Item name in database
    removeOnUse = false,     -- Keep item after use
    maxArmor = 100          -- Maximum armor value
}
```

## File Structure

```
qb-armor/
├── fxmanifest.lua    # Resource configuration
├── config.lua        # Script settings
├── client.lua        # Client-side logic
├── server.lua        # Server-side logic
├── README.md         # Documentation
└── LICENSE           # License file
```

## How It Works

1. **Server Side**: Registers armor as useable item
2. **Client Side**: Handles armor application with delay
3. **Database**: Checks if player has armor item
4. **Application**: Sets player armor to configured amount

## Requirements

- QBCore Framework
- FiveM Server
- MySQL Database

## Support

For issues or questions:
1. Check the configuration file
2. Verify item exists in database  
3. Check server console for errors
4. Ensure QBCore is running properly

## Customization

### Different Wait Times
```lua
Config.Armor.useTime = 5000  -- 5 seconds
Config.Armor.useTime = 10000 -- 10 seconds
```

### Different Armor Amounts
```lua
Config.Armor.targetAmount = 50   -- Light armor
Config.Armor.targetAmount = 100  -- Heavy armor
```

### Custom Messages
```lua
Config.Messages.success = "Your custom success message!"
```

## Version History

- **v1.0.0** - Initial release with basic functionality

## License

This project is licensed under the MIT License - see the LICENSE file for details.

---

**Made with ❤️ for the FiveM community**
