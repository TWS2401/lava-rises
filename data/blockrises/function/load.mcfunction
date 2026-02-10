scoreboard objectives add RisingSettings dummy
scoreboard objectives add RisingVars dummy

execute unless score border_size RisingSettings matches 1.. run scoreboard players set border_size RisingSettings 200
execute unless score show_progress RisingSettings matches 0.. run scoreboard players set show_progress RisingSettings 1
execute unless score grace_period RisingSettings matches 0.. run scoreboard players set grace_period RisingSettings 600
execute unless score starting_level RisingSettings matches -64.. run scoreboard players set starting_level RisingSettings -63
execute unless score interval RisingSettings matches 1.. run scoreboard players set interval RisingSettings 60
execute unless score rise_exp RisingSettings matches 0.. run scoreboard players set rise_exp RisingSettings 1

execute unless score grace_timer RisingVars matches 1.. run scoreboard players set grace_timer RisingVars 0
execute unless score rising_timer RisingVars matches 1.. run scoreboard players set rising_timer RisingVars 0
execute unless score current_level RisingVars matches 0.. run scoreboard players operation current_level RisingVars > starting_level RisingSettings
execute unless score increment RisingVars matches 0.. run scoreboard players set increment RisingVars 1

data modify storage blockrises:data block_type set value "minecraft:lava"
