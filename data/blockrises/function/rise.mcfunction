execute store result storage blockrises:data current_level int 1 run scoreboard players get current_level RisingVars

function blockrises:macro_fill with storage blockrises:data

scoreboard players operation current_level RisingVars += increment RisingVars

scoreboard players add increment RisingVars 1
