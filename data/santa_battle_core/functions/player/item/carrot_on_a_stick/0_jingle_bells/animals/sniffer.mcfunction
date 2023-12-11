#> santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/sniffer
#
# ジングル・ベル 使用開始処理

# 動物を召喚
    execute at @s anchored eyes positioned ^ ^ ^1 run summon sniffer ^ ^ ^2.8 {Tags:["Temp.Start","Mob.SledMob","Mob.SledMob.Main"],NoGravity:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
    execute as @e[type=sniffer,tag=Temp.Start] positioned as @s run tp @s ~ ~ ~ ~ ~
    team join NoCollition @e[type=sniffer,tag=Temp.Start]

# id設定
    scoreboard players operation @e[type=sniffer,tag=Temp.Start] player.id = @s player.id

# ステータス設定
    scoreboard players set @s player.sled_status.min_speed 500
    scoreboard players set @s player.sled_status.current_speed 500
    scoreboard players set @s player.sled_status.max_speed 1000
    scoreboard players set @s player.sled_status.acceleration 20
    scoreboard players set @s player.sled_status.attack_deceleration 20

# 演出
    playsound entity.sniffer.scenting master @a ~ ~ ~ 2 1
