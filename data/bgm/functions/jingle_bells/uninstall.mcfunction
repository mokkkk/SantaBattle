tag @e remove nbs_JingleBell
scoreboard objectives remove nbs_JingleBell
scoreboard objectives remove nbs_JingleBell_t
datapack disable "file/Jingle Bells.zip"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":"true"},{"text":"Data pack ","color":"yellow"},{"text":"Jingle Bells.zip","color":"gold","underlined":"true"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]