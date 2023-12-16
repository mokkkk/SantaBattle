#> santa_battle_core:game_main/phase2/start
#
# ロビー→バトルの開始処理

# phase変更
    scoreboard players set #game_manager game.phase 2

# カウントダウン設定
    scoreboard players set #game_manager game.timer 200

# title設定
    title @a times 0t 20t 5t

# メッセージ
    tellraw @a {"text": "【10秒後にゲームを開始します！】"}
