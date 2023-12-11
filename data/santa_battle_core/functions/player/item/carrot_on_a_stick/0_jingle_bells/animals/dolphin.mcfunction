#> santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/dolphin
#
# ジングル・ベル 使用開始処理

# 動物を召喚
    execute at @s anchored eyes positioned ^ ^ ^1 run summon dolphin ^ ^ ^2.8 {Tags:["Temp.Start","Mob.SledMob","Mob.SledMob.Main"],NoGravity:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
    execute as @e[type=dolphin,tag=Temp.Start] positioned as @s run tp @s ~ ~ ~ ~ ~
    team join NoCollition @e[type=dolphin,tag=Temp.Start]

# id設定
    scoreboard players operation @e[type=dolphin,tag=Temp.Start] player.id = @s player.id

# ステータス設定
    scoreboard players set @s player.sled_status.min_speed 100
    scoreboard players set @s player.sled_status.current_speed 100
    scoreboard players set @s player.sled_status.max_speed 1500
    scoreboard players set @s player.sled_status.acceleration 50
    scoreboard players set @s player.sled_status.attack_deceleration 200

# 演出
    playsound entity.dolphin.ambient_water master @a ~ ~ ~ 2 1
