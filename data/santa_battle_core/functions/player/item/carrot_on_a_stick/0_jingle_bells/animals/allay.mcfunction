#> santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/allay
#
# ジングル・ベル 使用開始処理
# アレイ：加速は遅いが，最高速は非常に速い

# 動物を召喚
    execute at @s anchored eyes positioned ^ ^ ^1 run summon allay ^ ^ ^2.8 {Tags:["Temp.Start","Mob.SledMob","Mob.SledMob.Main"],NoGravity:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
    execute as @e[type=allay,tag=Temp.Start] positioned as @s run tp @s ~ ~ ~ ~ ~
    team join NoCollition @e[type=allay,tag=Temp.Start]

# id設定
    scoreboard players operation @e[type=allay,tag=Temp.Start] player.id = @s player.id

# ステータス設定
    scoreboard players set @s player.sled_status.min_speed 100
    scoreboard players set @s player.sled_status.current_speed 100
    scoreboard players set @s player.sled_status.max_speed 1600
    scoreboard players set @s player.sled_status.acceleration 10
    scoreboard players set @s player.sled_status.attack_deceleration 50

# 演出
    playsound entity.allay.ambient_with_item master @a ~ ~ ~ 2 1
