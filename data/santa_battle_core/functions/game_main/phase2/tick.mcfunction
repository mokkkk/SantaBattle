#> santa_battle_core:game_main/phase2/tick
#
# ロビー→バトルのtick処理

# カウントダウン
    scoreboard players remove #game_manager game.timer 1

# 画面表示
    execute if score #game_manager game.timer matches 100 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 100 run title @a title {"text": "5","bold": true,"color": "green"}
    execute if score #game_manager game.timer matches 80 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 80 run title @a title {"text": "4","bold": true,"color": "green"}
    execute if score #game_manager game.timer matches 60 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 60 run title @a title {"text": "3","bold": true,"color": "green"}
    execute if score #game_manager game.timer matches 40 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 40 run title @a title {"text": "2","bold": true,"color": "yellow"}
    execute if score #game_manager game.timer matches 20 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 20 run title @a title {"text": "1","bold": true,"color": "red"}
    execute if score #game_manager game.timer matches ..0 run title @a title {"text": "START!!!","bold": true,"color": "gold","underlined": true}

# フェーズ移行
    execute if score #game_manager game.timer matches ..0 run function santa_battle_core:game_main/phase3/start
