#> santa_battle_core:game_main/phase1/start
#
# ロビーの開始処理

# phase変更
    scoreboard players set #game_manager game.phase 1

# 終了処理
    tag @a remove Player.Ghost
    tag @a remove Player.Winner
    tag @a remove Player.WinnerTeam
    tag @a remove Player.Loser
    tag @a remove Player.Draw
    execute as @a at @s run function santa_battle_core:player/sled/end_ride_without_delta
    scoreboard objectives setdisplay sidebar
    execute as @e[type=interaction] run data remove entity @s interaction

# ロビーに戻す
    gamemode adventure @a
    tp @a 56.0 -59 16.0
    spawnpoint @a 56 -59 16
    setworldspawn 56 -59 16
