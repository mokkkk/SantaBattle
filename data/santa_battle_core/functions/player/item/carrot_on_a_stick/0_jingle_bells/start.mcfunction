#> santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/start
#
# ジングル・ベル 使用開始処理

# ソリ召喚
    execute at @s rotated ~ 0 anchored eyes positioned ^ ^ ^2 run summon minecart ^ ^ ^ {Tags:["Temp.Start"],NoGravity:1b,Silent:1b,Passengers:[{id:"minecraft:marker",Tags:["Mob.SledRotationMarker"]}]}
    execute as @e[type=minecart,tag=Temp.Start] positioned as @s run tp @s ~ ~ ~ ~ ~
    execute as @e[type=minecart,tag=Temp.Start] on passengers run tp @s ~ ~ ~ ~ ~
    scoreboard players operation @e[type=minecart,tag=Temp.Start] player.id = @s player.id
    team join NoCollition @e[type=minecart,tag=Temp.Start]
    team join NoCollition @e[type=marker,tag=Mob.SledRotationMarker,tag=Temp.Start]
# 動物召喚
    function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/goat
# 動物とソリをリードで繋ぐ
    execute as @e[tag=Mob.SledMob,tag=Temp.Start] run data modify entity @s Leash.UUID set from entity @e[type=minecart,tag=Temp.Start,limit=1] UUID

# プレイヤーをソリに載せる
    ride @s mount @e[type=minecart,tag=Temp.Start,sort=nearest,limit=1]

# 演出
    execute rotated ~ 0 positioned ^ ^1 ^2 run function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/effect

# 終了
    tag @e[tag=Temp.Start] remove Temp.Start
    scoreboard players set @s SvPlayerTimer 0
    tag @s add Player.OnSled
