# Reset values
scoreboard players set grace_timer RisingVars -1
scoreboard players set rising_timer RisingVars -1
scoreboard players operation current_level RisingVars = starting_level RisingSettings
scoreboard players set increment RisingVars 1

time set noon
weather clear

bossbar set grace_period players 0
bossbar set rising_timer players 0

# Set up world border
execute store result storage blockrises:data border_size int 1 run scoreboard players get border_size RisingSettings
function blockrises:macro_border with storage blockrises:data

spreadplayers 0 0 1 29999884 false @a
execute at @p run worldborder center ~ ~

# Get corners of world border
execute store result score x_1 RisingVars run data get entity @p Pos[0]
execute store result score z_1 RisingVars run data get entity @p Pos[2]
execute store result score x_2 RisingVars run data get entity @p Pos[0]
execute store result score z_2 RisingVars run data get entity @p Pos[2]

scoreboard players operation x_1 RisingVars += border_radius RisingVars
scoreboard players operation z_1 RisingVars += border_radius RisingVars
scoreboard players operation x_2 RisingVars -= border_radius RisingVars
scoreboard players operation z_2 RisingVars -= border_radius RisingVars

execute store result storage blockrises:data x_1 int 1 run scoreboard players get x_1 RisingVars
execute store result storage blockrises:data z_1 int 1 run scoreboard players get z_1 RisingVars
execute store result storage blockrises:data x_2 int 1 run scoreboard players get x_2 RisingVars
execute store result storage blockrises:data z_2 int 1 run scoreboard players get z_2 RisingVars

# Reset players
effect give @a saturation 1 255 true
effect give @a instant_health 1 255 true

clear @a

# Start timer
scoreboard players set started RisingVars 1

execute if score grace_period RisingSettings matches 1.. run function blockrises:start_grace
execute if score grace_period RisingSettings matches ..0 run scoreboard players operation rising_timer RisingVars = interval RisingSettings
