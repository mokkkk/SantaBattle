#> santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/wolf
#
# ジングル・ベル 使用開始処理
# オオカミ：召喚のたびに数が減っていく，数が多いほど最高速が速く，少ないほど加速が速い

# 動物を召喚
    execute at @s anchored eyes positioned ^ ^ ^1 run summon wolf ^ ^ ^2.8 {Tags:["Temp.Start","Mob.SledMob","Mob.SledMob.Main"],NoGravity:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
    execute if score @s player.sled_summon_count matches 3.. at @s anchored eyes positioned ^-2 ^ ^1 run summon wolf ^ ^ ^2.8 {Tags:["Temp.Start","Mob.SledMob","Mob.SledMob.Sub1"],NoGravity:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
    execute if score @s player.sled_summon_count matches 2.. at @s anchored eyes positioned ^2 ^ ^1 run summon wolf ^ ^ ^2.8 {Tags:["Temp.Start","Mob.SledMob","Mob.SledMob.Sub2"],NoGravity:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
    execute as @e[type=wolf,tag=Temp.Start] positioned as @s run tp @s ~ ~ ~ ~ ~
    team join NoCollition @e[type=wolf,tag=Temp.Start]

# id設定
    scoreboard players operation @e[type=wolf,tag=Temp.Start] player.id = @s player.id
    scoreboard players operation @e[type=wolf,tag=Temp.Start] player.sled_type = @s player.sled_type
    scoreboard players operation @e[type=wolf,tag=Temp.Start] player.sled_summon_count = @s player.sled_summon_count

# ステータス設定
    scoreboard players set @s player.sled_status.min_speed 100
    scoreboard players set @s player.sled_status.current_speed 100
    execute if score @s player.sled_summon_count matches 3.. run scoreboard players set @s player.sled_status.max_speed 1400
    execute if score @s player.sled_summon_count matches 2 run scoreboard players set @s player.sled_status.max_speed 1100
    execute if score @s player.sled_summon_count matches ..1 run scoreboard players set @s player.sled_status.max_speed 750
    execute if score @s player.sled_summon_count matches 3.. run scoreboard players set @s player.sled_status.acceleration 18
    execute if score @s player.sled_summon_count matches 2 run scoreboard players set @s player.sled_status.acceleration 40
    execute if score @s player.sled_summon_count matches ..1 run scoreboard players set @s player.sled_status.acceleration 80
    scoreboard players set @s player.sled_status.attack_deceleration 50
    scoreboard players set @s player.sled_status.handling 5000

# 演出
    playsound entity.wolf.ambient master @a ~ ~ ~ 2 1
