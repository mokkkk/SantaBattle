#> santa_battle_core:player/sled/move/animal
#
# ソリの移動処理 動物

# 正面が地面の場合は，上下に角度をずらす
    execute unless block ^ ^ ^1 #santa_battle_core:no_collision run function santa_battle_core:player/sled/move/animal_check
    execute unless entity @s[tag=IsHit] if score @s player.sled_status.current_speed matches 1001.. unless block ^ ^ ^2 #santa_battle_core:no_collision run function santa_battle_core:player/sled/move/animal_check
    execute unless entity @s[tag=IsHit] if score @s player.sled_status.current_speed matches 2001.. unless block ^ ^ ^3 #santa_battle_core:no_collision run function santa_battle_core:player/sled/move/animal_check

# 正面が地面じゃなければその位置
    execute unless entity @s[tag=IsHit] positioned ^ ^ ^2.8 run tp @s ~ ~-1 ~ ~ 0

# 終了
    tag @s remove IsHit
