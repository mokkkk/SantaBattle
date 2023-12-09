#> santa_battle_core:player/sled/move/animal
#
# ソリの移動処理 動物

# 正面が地面じゃなければその位置
    $execute if block ^ ^ ^$(Speed) #santa_battle_core:no_collision positioned ^ ^ ^2.8 run tp @s ~ ~ ~ ~ 0

# 正面が地面の場合は，上下に角度をずらす
    $execute unless block ^ ^ ^$(Speed) #santa_battle_core:no_collision run function santa_battle_core:player/sled/move/animal_check
