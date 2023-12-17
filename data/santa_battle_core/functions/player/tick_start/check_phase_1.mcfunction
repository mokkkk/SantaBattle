#> santa_battle_core:player/tick_start/check_phase_1
#
# プレイヤー tick開始時の処理 game_managerのphaseとプレイヤー記録のphaseが違う場合の処理

# phase1以外から
    execute if score @s player.game_phase matches 3 run tellraw @s {"text": "【参加していたゲームは終了しました。ロビーに戻ります。】"}
    execute if score @s player.game_phase matches 4 run tellraw @s {"text": "【参加していたゲームは終了しました。ロビーに戻ります。】"}

# 移動
    tp @s 

# phase1の終了処理実行
    function santa_battle_core:game_main/phase1/start_player

# phase更新
    scoreboard players set @s player.game_phase 1
