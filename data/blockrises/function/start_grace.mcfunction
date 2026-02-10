scoreboard players operation grace_timer RisingVars = grace_period RisingSettings

# Grace period bossbar
execute if score show_progress RisingSettings matches 0 run return 1

execute store result bossbar grace_period value run scoreboard players get grace_period RisingSettings

bossbar set grace_period players @a

