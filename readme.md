# QBCore Barber Clippers

## Description
This script adds a **hair clipper tool** feature to the **QBCore** server using **Ox Inventory**. With this script, players can use the "clippers" item to shave other players' hair completely bald.

## Features
- Uses **Ox Inventory** for the "clippers" item.
- Realistic animation while shaving.
- Shaving process includes a **progress bar**.
- The shaved player will instantly become bald.
- Easy to install and configure.

## Requirements
Ensure your server has the following resources installed:
- [QBCore Framework](https://github.com/qbcore-framework)
- [Ox Inventory](https://github.com/overextended/ox_inventory)
- [Ox MySQL](https://github.com/overextended/oxmysql)
- [Ox Lib](https://github.com/overextended/ox_lib)

## Installation
1. **Download & Extract**
   - Download this script and extract it into your server's `resources` folder.

2. **Add to server.cfg**
   Add the following line to `server.cfg` to ensure the script loads:
   ```cfg
   ensure exter-barber
   ```

3. **Configure the item in Ox Inventory**
   Make sure the "clippers" item is registered in `items.lua` as follows:
   ```lua
   ["clippers"] = {
       label = "Clippers",
       weight = 50,
       stack = true,
       close = true,
       description = "Hair clipper tool",
       client = {
           image = "np_scissors.png"
       }
   },
   ```

4. **Restart the Server**
   Run `restart exter-barber` in the console or restart the server to apply the changes.

## How to Use
- Players must have the "clippers" item in their inventory.
- Hold the "clippers" item and press the `E` key on the keyboard.
- The nearest player will be shaved completely bald.
- If no player is nearby, an error notification will appear.

## Credits
Created by **SOBING** for **ExterCore**.

## License
This script is distributed under the **MIT License**. It is free to use and modify, but credit to the original creator must be maintained.