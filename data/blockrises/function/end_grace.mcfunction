scoreboard players set grace_timer RisingVars -1

bossbar set grace_period players 0

scoreboard players operation rising_timer RisingVars = interval RisingSettings

# Announce to all players
playsound minecraft:block.bell.use master @a

title @a title {"text":"Grace Period is Over!","color":"dark_red"}
title @a subtitle {"text":"Good luck...","color":"red"}

# Rising timer bossbar
execute if score show_progress RisingSettings matches 0 run return 1

execute store result bossbar rising_timer value run scoreboard players get interval RisingSettings

bossbar set rising_timer players @a
