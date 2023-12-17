#> santa_battle_core:game_main/phase1/start_player
#
# ロビーの開始処理 各プレイヤーで実行

# phase変更
    scoreboard players set @s player.game_phase 1

# 終了処理
    tag @s remove Player.Winner
    tag @s remove Player.WinnerTeam
    tag @s remove Player.Loser
    tag @s remove Player.Draw
    tag @s remove Player.Ghost
    tag @s remove Player.Visitor
    execute at @s run function santa_battle_core:player/sled/end_ride_without_delta

# ロビーに戻す
    gamemode adventure @s
    tp @s 56.0 -59 16.0
    spawnpoint @s 56 -59 16
    setworldspawn 56 -59 16
