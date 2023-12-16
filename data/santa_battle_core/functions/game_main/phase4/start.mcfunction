#> santa_battle_core:game_main/phase4/start
#
# ロビーの開始処理

# validate
    execute unless score #game_manager game.phase matches 3 run tellraw @a {"text": "【不正なモード遷移です：phase4】","color": "red"}
    execute unless score #game_manager game.phase matches 3 run return -1

# phase変更
    scoreboard players set #game_manager game.phase 4

# bossbar消去
    bossbar remove santa_battle_core:timer

# タイマー設定
    scoreboard players set #game_manager game.timer 600


