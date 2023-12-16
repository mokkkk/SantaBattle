#> santa_battle_core:game_main/phase1/start
#
# ロビーの開始処理

# validate
    execute unless score #game_manager game.phase matches 4 run tellraw @a {"text": "【不正なモード遷移です：phase1】","color": "red"}
    execute unless score #game_manager game.phase matches 4 run return -1

# phase変更
    scoreboard players set #game_manager game.phase 1

# 終了処理
    tag @a remove Player.Ghost
    tag @a remove Player.Winner
    tag @a remove Player.WinnerTeam
    execute as @a at @s run function santa_battle_core:player/sled/end_ride_without_delta

# ロビーに戻す
    gamemode adventure @a
    tp @a 64.0 -57 16.0
    spawnpoint @a 64 -57 16
