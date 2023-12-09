#> santa_battle_core:player/sled/move/animal_check_up
#
# ソリの移動処理 動物 壁激突時 上昇

# スコア増加
    scoreboard players add @s player.function_count 1
# tp可能な場合は，tpする
    execute if entity @s[tag=!TpEnd] if block ^ ^ ^1 #santa_battle_core:no_collision positioned ^ ^ ^3 run tp @s ~ ~ ~ ~ 0
    execute if entity @s[tag=!TpEnd] if block ^ ^ ^1 #santa_battle_core:no_collision run tag @s add TpEnd
# 角度を1°下にずらして再帰
    execute if entity @s[tag=!TpEnd] if score @s player.function_count matches ..90 unless block ^ ^ ^1 #santa_battle_core:no_collision rotated ~ ~1 run function santa_battle_core:player/sled/move/animal_check_up
