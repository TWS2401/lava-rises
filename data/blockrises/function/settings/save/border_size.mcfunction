$scoreboard players set border_size RisingSettings $(border_size)

scoreboard players operation border_radius RisingVars = border_size RisingSettings
scoreboard players operation border_radius RisingVars /= $2 RisingVars

function blockrises:settings/exit_settings
