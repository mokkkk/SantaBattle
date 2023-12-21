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
    tag @e[type=marker,tag=Mob.ItemPointMarker] remove Mob.ItemPointMarker.Disabled

# ロビーに戻す
    gamemode adventure @a
    tp @a 87 84 15
    spawnpoint @a 87 84 15
    setworldspawn 87 84 15
