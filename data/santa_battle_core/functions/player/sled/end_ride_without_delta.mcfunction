#> santa_battle_core:player/sled/end_ride_without_delta
#
# ソリ騎乗解除処理

# ソリと動物を消去
    tp @e[tag=Temp.Target] ~ ~-1000 ~
    kill @e[tag=Temp.Target]

# 終了
    scoreboard players set @s player.sled_status.current_speed 0
    tag @s remove Player.OnSled
