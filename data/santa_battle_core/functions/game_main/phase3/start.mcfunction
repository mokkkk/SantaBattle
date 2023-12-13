#> santa_battle_core:game_main/phase3/start
#
# ロビーの開始処理

# validate
    execute unless score #game_manager game.phase matches 2 run tellraw @a {"text": "【不正なモード遷移です：phase3】","color": "red"}
    execute unless score #game_manager game.phase matches 2 run return -1

# phase変更
    scoreboard players set #game_manager game.phase 3
