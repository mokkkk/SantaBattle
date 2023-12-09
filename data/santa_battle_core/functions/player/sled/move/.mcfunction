#> santa_battle_core:player/sled/move/
#
# ソリの移動処理

# 動物を移動
    execute positioned ^ ^0.1 ^2.8 as @e[tag=Mob.SledMob,tag=Temp.Target] run tp @s ~ ~ ~ ~ ~

# 速度計算
    scoreboard players operation @s player.sled_status.current_speed += @s player.sled_status.acceleration
    execute if score @s player.sled_status.current_speed > @s player.sled_status.max_speed run scoreboard players operation @s player.sled_status.current_speed = @s player.sled_status.max_speed

# storageにステータスを保存
    execute store result storage santa_battle_core: Temp.Speed float 0.001 run scoreboard players get @s player.sled_status.current_speed

# ソリの速度適用
    function santa_battle_core:player/sled/move/m_apply_speed with storage santa_battle_core: Temp

# 演出
    scoreboard players add @s player.sled_particle_timer 1
    execute if score @s player.sled_particle_timer matches 7.. at @s run playsound block.amethyst_block.chime master @a ~ ~ ~ 2 1.2
    execute if score @s player.sled_particle_timer matches 7.. at @s run playsound block.amethyst_block.chime master @a ~ ~ ~ 2 1.5
    execute if score @s player.sled_particle_timer matches 7.. at @s run scoreboard players set @s player.sled_particle_timer 0
    execute if score @s player.sled_particle_timer matches 2 as @e[type=minecart,tag=Temp.Target] at @s rotated ~ 0 run function santa_battle_core:player/sled/move/particle
    execute if score @s player.sled_particle_timer matches 4 as @e[type=minecart,tag=Temp.Target] at @s rotated ~ 0 run function santa_battle_core:player/sled/move/particle
    execute if score @s player.sled_particle_timer matches 6 as @e[type=minecart,tag=Temp.Target] at @s rotated ~ 0 run function santa_battle_core:player/sled/move/particle

    tellraw @a ["",{"text":"X:"},{"score":{"name":"@s","objective":"player.sled_status.current_speed"}}]

# 終了
    data remove storage santa_battle_core: Temp
