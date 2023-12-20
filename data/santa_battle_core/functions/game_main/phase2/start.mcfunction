#> santa_battle_core:game_main/phase2/start
#
# ロビー→バトルの開始処理

# validate
    execute unless score #game_manager game.phase matches 1 run return -1
    execute if score #game_manager game.setting.is_team matches 1.. run function santa_battle_core:game_main/phase2/start_error
    execute if score #game_manager game.setting.is_team matches 1.. if entity @a[team=!redTeam,team=!blueTeam,team=!greenTeam,team=!yellowTeam,team=!ghostTeam] run return -1

# phase変更
    scoreboard players set #game_manager game.phase 2
    scoreboard players set @a player.game_phase 2

# カウントダウン設定
    scoreboard players set #game_manager game.timer 200

# title設定
    title @a times 0t 20t 5t

# メッセージ
    execute as @a at @s run playsound block.bell.use master @a ~ ~ ~ 3 1
    tellraw @a {"text": "【10秒後にゲームを開始します！】"}
    setworldspawn 319 196 15
