scoreboard players operation grace_period RisingSettings /= $20 RisingVars
scoreboard players operation grace_period RisingSettings /= $60 RisingVars
scoreboard players operation interval RisingSettings /= $20 RisingVars

execute store result storage blockrises:data border_size int 1 run scoreboard players get border_size RisingSettings
execute store result storage blockrises:data show_progress int 1 run scoreboard players get show_progress RisingSettings
execute store result storage blockrises:data grace_period int 1 run scoreboard players get grace_period RisingSettings
execute store result storage blockrises:data starting_level int 1 run scoreboard players get starting_level RisingSettings
execute store result storage blockrises:data interval int 1 run scoreboard players get interval RisingSettings
execute store result storage blockrises:data base_increment int 1 run scoreboard players get base_increment RisingSettings
execute store result storage blockrises:data rise_exp int 1 run scoreboard players get rise_exp RisingSettings

function blockrises:settings/macro_settings with storage blockrises:data
