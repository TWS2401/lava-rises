scoreboard objectives add RisingSettings dummy
scoreboard objectives add RisingVars dummy

scoreboard players set height_limit RisingVars 320

execute unless score border_size RisingSettings matches 1.. run scoreboard players set border_size RisingSettings 150
execute unless score show_progress RisingSettings matches 0.. run scoreboard players set show_progress RisingSettings 1
execute unless score grace_period RisingSettings matches 0.. run scoreboard players set grace_period RisingSettings 12000
execute unless score starting_level RisingSettings matches -63.. run scoreboard players set starting_level RisingSettings -54
execute unless score interval RisingSettings matches 1.. run scoreboard players set interval RisingSettings 1200
execute unless score base_increment RisingSettings matches 1.. run scoreboard players set base_increment RisingSettings 5
execute unless score rise_exp RisingSettings matches 0.. run scoreboard players set rise_exp RisingSettings 0

execute unless score grace_timer RisingVars matches 0.. run scoreboard players set grace_timer RisingVars -1
execute unless score rising_timer RisingVars matches 0.. run scoreboard players set rising_timer RisingVars -1
execute unless score current_level RisingVars matches -63.. run scoreboard players operation current_level RisingVars = starting_level RisingSettings
execute unless score increment RisingVars matches 0.. run scoreboard players operation current_level RisingVars = base_increment RisingSettings

scoreboard players set $2 RisingVars 2
scoreboard players operation border_radius RisingVars = border_size RisingSettings
scoreboard players operation border_radius RisingVars /= $2 RisingVars

data modify storage blockrises:data block_type set value "minecraft:lava"

bossbar add grace_period "Grace Period"
bossbar set grace_period color blue

bossbar add rising_timer "Time Until Next Layer Rises"
bossbar set rising_timer color red
