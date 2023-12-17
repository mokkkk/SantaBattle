#> santa_battle_core:game_main/tick
#
# 毎tick実行されるゲームの基本処理

# phase:1 ロビー
    execute if score #game_manager game.phase matches 1 run function santa_battle_core:game_main/phase1/tick

# phase:2 ロビー→バトル
    execute if score #game_manager game.phase matches 2 run function santa_battle_core:game_main/phase2/tick

# phase:3 バトル
    execute if score #game_manager game.phase matches 3 run function santa_battle_core:game_main/phase3/tick

# phase:4 バトル→ロビー
    execute if score #game_manager game.phase matches 4 run function santa_battle_core:game_main/phase4/tick
