# Reset values
time set noon
weather clear

# Set up world border
execute store result storage blockrises:data border_size int 1 run scoreboard players get border_size RisingSettings
function blockrises:macro_border with storage blockrises:data

spreadplayers 0 0 1 29999884 false @a
execute at @p run worldborder center ~ ~
execute at @p run summon marker ~-99.5 ~ ~-99.5 {Tags:["corner_1"]}
execute at @p run summon marker ~99.5 ~ ~99.5 {Tags:["corner_2"]}

execute store result storage blockrises:data x_1 int 1 run data get entity @n[tag=corner_1,type=marker] Pos[0]
execute store result storage blockrises:data z_1 int 1 run data get entity @n[tag=corner_1,type=marker] Pos[2]
execute store result storage blockrises:data x_2 int 1 run data get entity @n[tag=corner_2,type=marker] Pos[0]
execute store result storage blockrises:data z_2 int 1 run data get entity @n[tag=corner_2,type=marker] Pos[2]

# Reset players
effect give @a saturation 1 255 true
effect give @a instant_health 1 255 true

clear @a

# Start countdown
execute if score grace_period RisingSettings matches 1.. run scoreboard players operation grace_timer RisingVars = grace_period RisingSettings
execute if score grace_period RisingSettings matches ..0 run scoreboard players operation rising_timer RisingVars = interval RisingSettings
