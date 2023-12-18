#> santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/start
#
# ジングル・ベル 使用開始処理

# バトル中の処理
    execute if score #game_manager game.phase matches 3 if score @s player.sled_summon_count matches ..0 run tellraw @s {"text":"もうソリは呼べません"}
    execute if score #game_manager game.phase matches 3 if score @s player.sled_summon_count matches ..0 run return 0

# 動物種別validate
    execute unless score @s player.sled_type matches 1..8 run scoreboard players set @s player.sled_type 1

# ソリ召喚
    execute at @s rotated ~ 0 anchored eyes positioned ^ ^ ^2 run summon minecart ^ ^ ^ {Tags:["Temp.Start"],NoGravity:1b,Silent:1b,Passengers:[{id:"minecraft:marker",Tags:["Mob.SledRotationMarker"]},{id:"minecraft:item_display",teleport_duration:3,Tags:["Mob.SledDisplay","Temp.Start"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0.1f],scale:[1f,1f,1f]},item:{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:50}}}]}
    execute if entity @s[tag=Player.BlueTeam] run data modify entity @e[type=item_display,tag=Mob.SledDisplay,tag=Temp.Start,limit=1,sort=nearest] item.tag.CustomModelData set value 51
    execute if entity @s[tag=Player.GreenTeam] run data modify entity @e[type=item_display,tag=Mob.SledDisplay,tag=Temp.Start,limit=1,sort=nearest] item.tag.CustomModelData set value 52
    execute if entity @s[tag=Player.YellowTeam] run data modify entity @e[type=item_display,tag=Mob.SledDisplay,tag=Temp.Start,limit=1,sort=nearest] item.tag.CustomModelData set value 53
    execute as @e[type=minecart,tag=Temp.Start] positioned as @s run tp @s ~ ~ ~ ~ ~
    execute as @e[type=minecart,tag=Temp.Start] on passengers run tp @s ~ ~ ~ ~ ~
    scoreboard players operation @e[type=minecart,tag=Temp.Start] player.id = @s player.id
    team join NoCollition @e[type=minecart,tag=Temp.Start]
    team join NoCollition @e[type=marker,tag=Mob.SledRotationMarker,tag=Temp.Start]
# 動物召喚
    execute if score @s player.sled_type matches 1 run function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/goat
    execute if score @s player.sled_type matches 2 run function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/allay
    execute if score @s player.sled_type matches 3 run function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/sniffer
    execute if score @s player.sled_type matches 4 run function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/dolphin
    execute if score @s player.sled_type matches 5 run function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/wolf
    execute if score @s player.sled_type matches 6 run function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/chicken
    execute if score @s player.sled_type matches 7 run function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/skeleton
    execute if score @s player.sled_type matches 8 run function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/hogera
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
