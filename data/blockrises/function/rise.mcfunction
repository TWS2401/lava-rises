execute store result storage blockrises:data current_level int 1 run scoreboard players get current_level RisingVars

function blockrises:macro_fill with storage blockrises:data

scoreboard players operation current_level RisingVars += increment RisingVars
scoreboard players operation current_level RisingVars < height_limit RisingVars

execute if score rise_exp RisingSettings matches 1 run scoreboard players add increment RisingVars 1

# Reset timer
execute if score current_level RisingVars matches 320.. run return run function blockrises:deathmatch

scoreboard players operation rising_timer RisingVars = interval RisingSettings
