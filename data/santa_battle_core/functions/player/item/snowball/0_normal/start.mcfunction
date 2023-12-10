#> santa_battle_core:player/item/snowball/0_normal/start
#
# 雪玉 使用開始処理

# 開始
    tag @s add Temp.Target

# 弾召喚
    execute anchored eyes run summon item_display ^ ^ ^1 {teleport_duration:3,Tags:["Temp.Start","Mob.Bullet","Mob.Bullet.Normal"],transformation:[0.5000f,0.0000f,0.0000f,-0.2500f,0.0000f,0.5000f,0.0000f,-0.2500f,0.0000f,0.0000f,0.5000f,-0.2500f,0.0000f,0.0000f,0.0000f,1.0000f],item:{id:"minecraft:chest",Count:1b}}

# 弾速計算用marker召喚
    execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["Temp.Calc"]}
    data modify storage santa_battle_core: Temp.Pos set from entity @e[type=marker,tag=Temp.Calc,limit=1] Pos

# 重力加速度設定
    scoreboard players set @e[type=item_display,tag=Temp.Start,tag=Mob.Bullet] bullet.status.speed_g 980

# 初期化
    execute as @e[type=item_display,tag=Temp.Start,tag=Mob.Bullet] run function santa_battle_core:player/item/snowball/init

# 終了
    tag @s remove Temp.Target
    kill @e[type=marker,tag=Temp.Calc]
    tag @e[tag=Temp.Start] remove Temp.Start
