#> santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/chicken
#
# ジングル・ベル 使用開始処理
# チキン：最高速・加速ともに高水準だが，ずっとソリを引いていると疲れて遅くなる

# 動物を召喚
    execute at @s anchored eyes positioned ^ ^ ^1 run summon chicken ^ ^ ^2.8 {Tags:["Temp.Start","Mob.SledMob","Mob.SledMob.Main"],NoGravity:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
    execute as @e[type=chicken,tag=Temp.Start] positioned as @s run tp @s ~ ~ ~ ~ ~
    team join NoCollition @e[type=chicken,tag=Temp.Start]

# id設定
    scoreboard players operation @e[type=chicken,tag=Temp.Start] player.id = @s player.id

# ステータス設定
    scoreboard players set @s player.sled_status.min_speed 100
    scoreboard players set @s player.sled_status.current_speed 100
    scoreboard players set @s player.sled_status.max_speed 1600
    scoreboard players set @s player.sled_status.acceleration 80
    scoreboard players set @s player.sled_status.attack_deceleration 50
    scoreboard players set @s player.sled_status.handling 6200

# 演出
    playsound entity.chicken.death master @a ~ ~ ~ 2 1
