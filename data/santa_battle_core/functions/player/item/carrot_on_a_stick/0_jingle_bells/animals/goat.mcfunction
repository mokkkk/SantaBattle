#> santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/goat
#
# ジングル・ベル 使用開始処理

# 動物を召喚
    execute at @s anchored eyes positioned ^ ^ ^1 run summon goat ^ ^ ^2.8 {Tags:["Temp.Start","Mob.SledMob"],NoGravity:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
    execute as @e[type=goat,tag=Temp.Start] positioned as @s run tp @s ~ ~ ~ ~ ~
    team join NoCollition @e[type=goat,tag=Temp.Start]

# id設定
    scoreboard players operation @e[type=goat,tag=Temp.Start] player.id = @s player.id

# ステータス設定
    scoreboard players set @s player.sled_status.min_speed 500
    scoreboard players set @s player.sled_status.current_speed 500
    scoreboard players set @s player.sled_status.max_speed 1500
    scoreboard players set @s player.sled_status.acceleration 10

# 演出
    playsound entity.goat.ambient master @a ~ ~ ~ 2 2
