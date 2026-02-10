execute if score grace_timer RisingVars matches 1.. run scoreboard players remove grace_timer RisingVars 1

execute if score show_progress RisingSettings matches 1 store result bossbar grace_period value run scoreboard players get grace_timer RisingVars

execute if score grace_timer RisingVars matches 0 run function blockrises:end_grace


execute if score rising_timer RisingVars matches 1.. run scoreboard players remove rising_timer RisingVars 1

execute if score show_progress RisingSettings matches 1 store result bossbar rising_timer value run scoreboard players get rising_timer RisingVars

execute if score rising_timer RisingVars matches 0 run function blockrises:rise
