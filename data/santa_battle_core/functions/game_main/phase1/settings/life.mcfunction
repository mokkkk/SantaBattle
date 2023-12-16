#> santa_battle_core:game_main/phase1/settings/life
#
# ゲーム設定 タイマー

# 設定変更
    scoreboard players add #game_manager game.setting.max_life 1
    execute if score #game_manager game.setting.max_life matches 4.. run scoreboard players set #game_manager game.setting.max_life 0
    execute if score #game_manager game.setting.max_life matches 0 run scoreboard players set #game_manager game.setting.is_life 0
    execute if score #game_manager game.setting.max_life matches 1.. run scoreboard players set #game_manager game.setting.is_life 1

# 通知
    execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 2
    execute if score #game_manager game.setting.max_life matches 0 run title @a actionbar [{"text": "【復活回数を","color": "light_purple","bold": true},{"text":"[無制限]","color": "gold"},{"text":"に設定しました】","color": "light_purple","bold": true}]
    execute if score #game_manager game.setting.max_life matches 1 run title @a actionbar [{"text": "【復活回数を","color": "light_purple","bold": true},{"text":"[1回まで]","color": "gold"},{"text":"に設定しました】","color": "light_purple","bold": true}]
    execute if score #game_manager game.setting.max_life matches 2 run title @a actionbar [{"text": "【復活回数を","color": "light_purple","bold": true},{"text":"[2回まで]","color": "gold"},{"text":"に設定しました】","color": "light_purple","bold": true}]
    execute if score #game_manager game.setting.max_life matches 3 run title @a actionbar [{"text": "【復活回数を","color": "light_purple","bold": true},{"text":"[3回まで]","color": "gold"},{"text":"に設定しました】","color": "light_purple","bold": true}]

# UI更新
    function santa_battle_core:game_main/phase1/settings/m_life_apply with storage santa_battle_core: Data.Ui.Life.Pos

# setblock ~ ~1 ~ dark_oak_wall_sign[facing=west]{front_text:{messages:['{"text":""}','{"text":"復活回数","bold":true,"color":"white"}','{"text":"[無制限]","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/life"}}','{"text":""}']}} replace