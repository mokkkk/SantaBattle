#> santa_battle_core:other/marker_particle
#
# 演出用markerの処理

# タイマー増加
    scoreboard players add @s player.timer 1
    execute if score @s player.timer matches 12.. run kill @s

# 移動・パーティクル
    particle end_rod ~ ~ ~ 0 0 0 0.05 1
    tp @s ^ ^0.4 ^1 ~16 ~
