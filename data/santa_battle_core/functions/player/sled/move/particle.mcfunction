#> santa_battle_core:player/sled/move/particle
#
# ソリの移動演出

# 演出
    particle firework ^-0.35 ^ ^ 0 0 0 0 1
    particle firework ^0.35 ^ ^ 0 0 0 0 1
    execute if score @s player.item.using.cake matches 1.. run particle flame ^ ^ ^ 0.1 0.1 0.1 0.1 3
