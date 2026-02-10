tellraw @a [{"text":"\n"},{"text":"----------------------------------------","color":"aqua","bold":true}]
tellraw @a [{"text":"Block Rises v1.0.0","color":"aqua"}]

tellraw @a ""
execute unless score started RisingVars matches 1 run tellraw @a {"text":"<[Start Game]>","color":"green","bold":true,"click_event":{"action":"run_command","command":"/function blockrises:start_game"}}
execute if score started RisingVars matches 1 run tellraw @a {"text":"<[Cancel Game]>","color":"dark_red","bold":true,"click_event":{"action":"run_command","command":"/function blockrises:end_game"}}

tellraw @a ""
tellraw @a {"text":"<Settings Menu>","color":"white","underlined":true,"click_event":{"action":"run_command","command":"/function blockrises:settings/settings_menu"}}

tellraw @a ""
tellraw @a {"text":"Datapack created by TGM2401.","color":"dark_gray"}
tellraw @a {"text":"You can get this menu at any time by doing the command \"/reload\".","color":"dark_gray"}

tellraw @a {"text":"----------------------------------------","color":"aqua","bold":true}
