#> santa_battle_core:game_main/phase1/start
#
# ロビーの開始処理

# validate
    execute unless score #game_manager game.phase matches 4 run tellraw @a {"text": "【不正なモード遷移です：phase1】","color": "red"}
    execute unless score #game_manager game.phase matches 4 run return -1

# phase変更
    scoreboard players set #game_manager game.phase 1
