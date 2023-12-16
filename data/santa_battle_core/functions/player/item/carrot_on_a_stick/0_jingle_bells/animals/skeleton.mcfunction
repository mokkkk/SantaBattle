#> santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/skeleton
#
# ジングル・ベル 使用開始処理
# スケルトン：性能は非常に高いが，急な角度変化の際に大きく減速する

# 動物を召喚
    execute at @s anchored eyes positioned ^ ^ ^1 run summon skeleton_horse ^ ^ ^2.8 {Tags:["Temp.Start","Mob.SledMob","Mob.SledMob.Main"],NoGravity:1b,Silent:1b,NoAI:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty",Passengers:[{id:"minecraft:skeleton",Tags:["Temp.Start","Mob.SledMob","Mob.SledMob.Sub1"],NoGravity:1b,Silent:1b,NoAI:1b,Invulnerable:1b,DeathLootTable:"minecraft:empty"}]}
    execute as @e[type=skeleton_horse,tag=Temp.Start] positioned as @s run tp @s ~ ~ ~ ~ ~
    team join NoCollition @e[type=skeleton_horse,tag=Temp.Start]

# id設定
    scoreboard players operation @e[type=skeleton_horse,tag=Temp.Start] player.id = @s player.id
    scoreboard players operation @e[type=skeleton_horse,tag=Temp.Start] player.sled_type = @s player.sled_type
    scoreboard players operation @e[type=skeleton,tag=Temp.Start] player.id = @s player.id
    tag @e[type=skeleton,tag=Temp.Start] remove Temp.Start

# ステータス設定
    scoreboard players set @s player.sled_status.min_speed 100
    scoreboard players set @s player.sled_status.current_speed 100
    scoreboard players set @s player.sled_status.max_speed 2000
    scoreboard players set @s player.sled_status.acceleration 20
    scoreboard players set @s player.sled_status.attack_deceleration 10
    scoreboard players set @s player.sled_status.handling 3500

# 演出
    playsound entity.skeleton_horse.ambient master @a ~ ~ ~ 2 1
