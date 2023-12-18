#> santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/animals/hogera
#
# ジングル・ベル 使用開始処理
# ほげら：召喚のたびにステータスがランダムで変わる

# 動物を召喚
    execute store result score #temp_random temp run random roll 0..4
    execute if score #temp_random temp matches ..0 at @s anchored eyes positioned ^ ^ ^1 positioned ^ ^ ^2.8 run function animated_java:hogera/summon
    execute if score #temp_random temp matches 1 at @s anchored eyes positioned ^ ^ ^1 positioned ^ ^ ^2.8 run function animated_java:hogera/summon/blue
    execute if score #temp_random temp matches 2 at @s anchored eyes positioned ^ ^ ^1 positioned ^ ^ ^2.8 run function animated_java:hogera/summon/green
    execute if score #temp_random temp matches 3 at @s anchored eyes positioned ^ ^ ^1 positioned ^ ^ ^2.8 run function animated_java:hogera/summon/yellow
    execute if score #temp_random temp matches 4.. at @s anchored eyes positioned ^ ^ ^1 positioned ^ ^ ^2.8 run function animated_java:hogera/summon/purple
    execute as @e[type=item_display,tag=Temp.Start] positioned as @s run tp @s ~ ~ ~ ~ ~
    execute as @e[type=item_display,tag=Temp.Start] on passengers if entity @s[tag=aj.hogera.locator_origin.leashed_point] on origin run tag @s add Mob.SledMob
    execute as @e[type=item_display,tag=Temp.Start] on passengers if entity @s[tag=aj.hogera.locator_origin.leashed_point] on origin run tag @s add Mob.SledMob.Sub1
    execute as @e[type=item_display,tag=Temp.Start] on passengers if entity @s[tag=aj.hogera.locator_origin.leashed_point] on origin run tag @s add Temp.Start
    execute as @e[type=item_display,tag=Mob.Hogera,tag=Temp.Start] run function animated_java:hogera/animations/move/play
    team join NoCollition @e[type=item_display,tag=Temp.Start]

# id設定
    scoreboard players operation @e[type=item_display,tag=Temp.Start] player.id = @s player.id

# ステータス設定
    execute store result score #temp_random temp run random roll 10..150
    scoreboard players operation @s player.sled_status.min_speed = #temp_random temp
    scoreboard players operation @s player.sled_status.current_speed = @s player.sled_status.min_speed
    execute store result score #temp_random temp run random roll 600..1800
    scoreboard players operation @s player.sled_status.max_speed = #temp_random temp
    execute store result score #temp_random temp run random roll 5..60
    scoreboard players operation @s player.sled_status.acceleration = #temp_random temp
    execute store result score #temp_random temp run random roll 10..100
    scoreboard players operation @s player.sled_status.attack_deceleration = #temp_random temp
    execute store result score #temp_random temp run random roll 3000..6500
    scoreboard players operation @s player.sled_status.handling = #temp_random temp

# 演出
    playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 2 2

# 終了
    scoreboard players reset #temp_random