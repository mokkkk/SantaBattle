#> santa_battle_core:player/sled/move/animal_tp
#
# ソリの移動処理 動物 実際の移動処理

# メイン動物
    execute unless score @s player.sled_type matches 5 run tp @s ~ ~ ~ ~ ~

# オオカミのみ特殊処理
    execute if score @s player.sled_type matches 5 run function santa_battle_core:player/sled/move/animal_tp_wolf