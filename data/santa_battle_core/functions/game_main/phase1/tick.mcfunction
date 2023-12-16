#> santa_battle_core:game_main/phase1/tick
#
# ロビーのtick処理

# プレイヤーID未設定のプレイヤーにIDを割り当てる
    execute as @a unless score @s player.id matches 0.. run function santa_battle_core:player/load
