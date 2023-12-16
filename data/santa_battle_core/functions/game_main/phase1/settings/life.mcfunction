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
    execute if score #game_manager game.setting.max_life matches 0 run title @a actionbar [{"text": "【復活回数を","color": "white","bold": true},{"text":"<<無制限>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.max_life matches 1 run title @a actionbar [{"text": "【復活回数を","color": "white","bold": true},{"text":"<<1回まで>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.max_life matches 2 run title @a actionbar [{"text": "【復活回数を","color": "white","bold": true},{"text":"<<2回まで>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.max_life matches 3 run title @a actionbar [{"text": "【復活回数を","color": "white","bold": true},{"text":"<<3回まで>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]

# UI更新
    execute on passengers if entity @s[tag=vaDisplay_Lore] run function santa_battle_core:game_main/phase1/settings/m_life_apply
