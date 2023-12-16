#> santa_battle_core:player/sled/move/animal_tp_skeleton
#
# ソリの移動処理 動物 実際の移動処理

# 3匹
    tp @s ^ ^ ^ ~ ~
    execute as @e[type=skeleton,tag=Mob.SledMob.Sub1,tag=Temp.Target] run tp @s ~ ~ ~ ~ ~

# ride
    ride @e[type=skeleton,tag=Temp.Target,tag=Mob.SledMob.Sub1,limit=1] mount @e[type=skeleton_horse,tag=Temp.Target,tag=Mob.SledMob.Main,limit=1]
