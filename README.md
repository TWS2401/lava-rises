# Lava Rises
Minecraft, but every minute lava rises. Or water rises. Or any block you want!

## Installation
- Download [latest release](https://github.com/TWS2401/lava-rises/releases)
- Locate your world's datapack folder (`.minecraft/saves/[your_world_name]/datapacks`)
- Place the datapack into the datapack folder
- Make sure the datapack is enabled by using `/datapack list`. If it isn't, enable it with `/datapack enable "file/lava-rises_(version_number).zip"`

## How to Use
Upon loading the datapack, a menu will appear with the options to start the game or configure the settings. While a game is active, the menu will have the option to cancel the current game. This menu can be brought up at any time by doing `/reload`.

When a game starts, players are teleported to a random location in the map with a small world border, and depending on how the datapack is configured, are given a grace period. After the grace period is over, the lava will begin to rise.

This datapack is recommended to be played in an Amplified world on Hardcore mode.

## Settings
This datapack is very configurable, allowing the user to change the following settings:

* Block type (lava, water, or any block of your choice)
* Border size
* Progress bar
* Grace period
* Starting level (which y-level the rising starts at)
* Rising interval (how often the blocks rise)
* Layer increment (how many layers up the blocks will rise each time)
* Rise exponentially (whether the increment itself will increase each time e.g. one layer the first, two layers the next, three the one afterwards etc.)
