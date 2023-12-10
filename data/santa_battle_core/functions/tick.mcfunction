#> santa_battle_core:tick
#
# 毎tick実行される処理群

# プレイヤー処理
    execute as @a at @s run function santa_battle_core:player/

# 弾処理
    execute as @e[type=item_display,tag=Mob.Bullet] at @s run function santa_battle_core:bullet/

# その他処理
    execute as @e[type=marker,tag=Mob.ParticleMarker] at @s run function santa_battle_core:other/marker_particle


# テスト
    # execute as @e[type=snowball] run summon marker ~ ~ ~ {Tags:["TestBullet","Temp.Start"]}
    # execute as @e[type=snowball] at @s rotated as @p run tp @e[type=marker,tag=TestBullet,tag=Temp.Start] ~ ~ ~ ~ ~-10
    # execute as @e[type=snowball] run kill @s
    # tag @e[type=marker,tag=TestBullet,tag=Temp.Start] remove Temp.Start
    # execute as @e[type=marker,tag=TestBullet] at @s run tp @s ^ ^ ^1.5 ~ ~1
    # execute as @e[type=marker,tag=TestBullet] at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force
    # execute as @e[type=marker,tag=TestBullet] run scoreboard players add @s player.timer 1
    # execute as @e[type=marker,tag=TestBullet] if score @s player.timer matches 3.. at @s if entity @e[type=player,distance=..2] run playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
    # execute as @e[type=marker,tag=TestBullet] if score @s player.timer matches 3.. at @s if entity @e[type=player,distance=..2] run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
    # execute as @e[type=marker,tag=TestBullet] if score @s player.timer matches 3.. at @s run kill @e[type=player,distance=..2]
    # execute as @e[type=marker,tag=TestBullet] if score @s player.timer matches 40.. run kill @s
