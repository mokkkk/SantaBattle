#> santa_battle_core:player/tick_start/check_phase
#
# プレイヤー tick開始時の処理 game_managerのphaseとプレイヤー記録のphaseが違う場合の処理

# phase_1
    execute if score #game_manager game.phase matches 1 run function santa_battle_core:player/tick_start/check_phase_1

# phase_2
    # 特に処理はしない
        execute if score #game_manager game.phase matches 2 run scoreboard players set @s player.game_phase 2

# phase_3
    execute if score #game_manager game.phase matches 3 run function santa_battle_core:player/tick_start/check_phase_3

# phase_4
    execute if score #game_manager game.phase matches 4 run function santa_battle_core:player/tick_start/check_phase_4
