#> santa_battle_core:game_main/phase1/settings/timer
#
# ゲーム設定 タイマー

# 設定変更
    scoreboard players add #game_manager game.setting.timer 1200
    execute if score #game_manager game.setting.timer matches 12001.. run scoreboard players set #game_manager game.setting.timer 1200

# 通知
    execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 2
    execute if score #game_manager game.setting.timer matches 1200 run title @a actionbar [{"text": "【制限時間を","color": "white","bold": true},{"text":"<<1分>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.timer matches 2400 run title @a actionbar [{"text": "【制限時間を","color": "white","bold": true},{"text":"<<2分>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.timer matches 3600 run title @a actionbar [{"text": "【制限時間を","color": "white","bold": true},{"text":"<<3分>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.timer matches 4800 run title @a actionbar [{"text": "【制限時間を","color": "white","bold": true},{"text":"<<4分>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.timer matches 6000 run title @a actionbar [{"text": "【制限時間を","color": "white","bold": true},{"text":"<<5分>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.timer matches 7200 run title @a actionbar [{"text": "【制限時間を","color": "white","bold": true},{"text":"<<6分>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.timer matches 8400 run title @a actionbar [{"text": "【制限時間を","color": "white","bold": true},{"text":"<<7分>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.timer matches 9600 run title @a actionbar [{"text": "【制限時間を","color": "white","bold": true},{"text":"<<8分>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.timer matches 10800 run title @a actionbar [{"text": "【制限時間を","color": "white","bold": true},{"text":"<<9分>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
    execute if score #game_manager game.setting.timer matches 12000 run title @a actionbar [{"text": "【制限時間を","color": "white","bold": true},{"text":"<<10分>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]

# UI更新
    execute on passengers if entity @s[tag=vaDisplay_Lore] run function santa_battle_core:game_main/phase1/settings/m_timer_apply
