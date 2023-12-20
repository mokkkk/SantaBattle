#> santa_battle_core:game_main/phase1/settings/item
#
# ゲーム設定 タイマー

# 設定変更
    scoreboard players add #game_manager game.setting.max_item_timer 100
    execute if score #game_manager game.setting.max_item_timer matches ..200 run scoreboard players set #game_manager game.setting.max_item_timer 200
    execute if score #game_manager game.setting.max_item_timer matches 201..400 run scoreboard players set #game_manager game.setting.max_item_timer 400
    execute if score #game_manager game.setting.max_item_timer matches 401..800 run scoreboard players set #game_manager game.setting.max_item_timer 800
    execute if score #game_manager game.setting.max_item_timer matches 801..100000 run scoreboard players set #game_manager game.setting.max_item_timer 100000
    execute if score #game_manager game.setting.max_item_timer matches 100001.. run scoreboard players set #game_manager game.setting.max_item_timer 200

# 通知
    execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 2
    execute if score #game_manager game.setting.max_item_timer matches 200 run title @a actionbar [{"text": "【アイテム出現数を","color": "white","bold": true},{"text":"<<多め>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.max_item_timer matches 400 run title @a actionbar [{"text": "【アイテム出現数を","color": "white","bold": true},{"text":"<<それなり>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.max_item_timer matches 800 run title @a actionbar [{"text": "【アイテム出現数を","color": "white","bold": true},{"text":"<<少なめ>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.max_item_timer matches 100000 run title @a actionbar [{"text": "【アイテム出現数を","color": "white","bold": true},{"text":"<<出ない>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]

# UI更新
    execute on passengers if entity @s[tag=vaDisplay_Lore] run function santa_battle_core:game_main/phase1/settings/m_item_apply
