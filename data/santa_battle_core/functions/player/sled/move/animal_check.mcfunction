#> santa_battle_core:player/sled/move/animal_check
#
# ソリの移動処理 動物 壁激突時

# 速度を落とす
    execute on leasher on passengers if entity @s[type=player] run scoreboard players operation @s player.sled_status.current_speed = @s player.sled_status.min_speed

# 初期化
    execute store result score @s player.function_count run data get entity @s Rotation[1] 1

# 上下判定
    execute as @p facing entity @e[tag=Mob.SledMob,tag=Temp.Target,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^ ^4.0 ^ if entity @s[distance=..5.0] run tag @s add IsUp

# ヤギが上にいる場合，角度を下にずらす
    execute if entity @s[tag=IsUp] run function santa_battle_core:player/sled/move/animal_check_up
# ヤギが下にいる場合，角度を上にずらす
    execute if entity @s[tag=!IsUp] run function santa_battle_core:player/sled/move/animal_check_down

# 終了
    scoreboard players reset @s player.function_count
    tag @s remove TpEnd
    tag @s remove IsUp
