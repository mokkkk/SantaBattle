#> santa_battle_core:game_main/phase1/start
#
# ロビーの開始処理

# phase変更
    scoreboard players set #game_manager game.phase 1
    scoreboard players set @a player.game_phase 1

# 終了処理
    execute as @a run function santa_battle_core:game_main/phase1/start_player
    scoreboard objectives setdisplay sidebar
    execute as @e[type=interaction] run data remove entity @s interaction
    kill @e[type=marker,tag=Mob.ItemPointMarker]

# ロビーに戻す
    gamemode adventure @a
    tp @a 56.0 -59 16.0
    spawnpoint @a 56 -59 16
    setworldspawn 56 -59 16
