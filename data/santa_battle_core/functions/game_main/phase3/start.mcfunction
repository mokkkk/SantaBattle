#> santa_battle_core:game_main/phase3/start
#
# バトルの開始処理

# validate
    execute unless score #game_manager game.phase matches 2 run tellraw @a {"text": "【不正なモード遷移です：phase3】","color": "red"}
    execute unless score #game_manager game.phase matches 2 run return -1

# phase変更
    scoreboard players set #game_manager game.phase 3

# タイマー設定
    scoreboard players operation #game_manager game.timer = #game_manager game.setting.timer
    bossbar add santa_battle_core:timer {"text": "タイマー"}
    execute store result bossbar santa_battle_core:timer max run scoreboard players get #game_manager game.timer
    execute store result bossbar santa_battle_core:timer value run scoreboard players get #game_manager game.timer
    bossbar set santa_battle_core:timer players @a
    bossbar set santa_battle_core:timer color green
    scoreboard players set #game_manager game.is_hurryup 0

# title設定
    title @a times 5t 100t 5t

# スコア設定
    scoreboard players set #game_manager game.winner_player_id -1
    scoreboard players set #game_manager game.winner_team_id -1
    scoreboard players set #game_manager game.max_score 0
