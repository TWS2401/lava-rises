scoreboard players set grace_timer RisingVars -1
scoreboard players set rising_timer RisingVars -1
scoreboard players operation current_level RisingVars = starting_level RisingSettings
scoreboard players set increment RisingVars 1

bossbar set grace_period players 0
bossbar set rising_timer players 0

worldborder set 59999968
worldborder center 0 0
