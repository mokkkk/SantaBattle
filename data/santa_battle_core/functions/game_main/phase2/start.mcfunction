#> santa_battle_core:game_main/phase2/start
#
# ロビー→バトルの開始処理

# validate
    execute unless score #game_manager game.phase matches 1 run tellraw @a {"text": "【不正なモード遷移です：phase2】","color": "red"}
    execute unless score #game_manager game.phase matches 1 run return -1

# phase変更
    scoreboard players set #game_manager game.phase 2