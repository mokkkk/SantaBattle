#> santa_battle_core:player/sled/move/
#
# ソリの移動処理

# 速度計算
    scoreboard players operation @s player.sled_status.current_speed += @s player.sled_status.acceleration
    execute if score @s player.sled_status.current_speed > @s player.sled_status.max_speed run scoreboard players operation @s player.sled_status.current_speed = @s player.sled_status.max_speed
    scoreboard players operation @e[tag=Mob.SledMob.Main,tag=Temp.Target] player.sled_status.current_speed = @s player.sled_status.current_speed
# storageにステータスを保存
    execute store result storage santa_battle_core: Temp.Speed float 0.001 run scoreboard players get @s player.sled_status.current_speed
    execute store result storage santa_battle_core: Temp.Handling float 0.001 run scoreboard players get @s player.sled_status.handling

# 角度計算
    execute at @s run function santa_battle_core:player/sled/move/m_apply_rotation with storage santa_battle_core: Temp

# 動物を移動
    execute on vehicle on passengers if entity @s[tag=Mob.SledRotationMarker] rotated as @s on vehicle positioned as @s as @e[tag=Mob.SledMob.Main,tag=Temp.Target] run function santa_battle_core:player/sled/move/animal

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

# ニワトリ：特殊減速処理
    execute if score @s player.sled_particle_timer matches 2 if score @s player.sled_type matches 6 if score @s player.sled_status.max_speed matches 500.. run scoreboard players remove @s player.sled_status.max_speed 4
    execute if score @s player.sled_particle_timer matches 3 if score @s player.sled_type matches 6 if score @s player.sled_status.max_speed matches 500.. run scoreboard players remove @s player.sled_status.max_speed 4
    execute if score @s player.sled_particle_timer matches 1 if score @s player.sled_type matches 6 if score @s player.sled_status.max_speed matches ..800 as @e[tag=Mob.SledMob.Main,tag=Temp.Target] at @s positioned ~ ~1 ~ run particle angry_villager ~ ~ ~ 0.5 0.5 0.5 0 1
# スケルトン：特殊減速処理
    execute if entity @s[tag=!Temp.SameRotation] if score @s player.sled_type matches 7 run scoreboard players remove @s player.sled_status.current_speed 200
    execute if score @s player.sled_type matches 7 if score @s player.sled_status.current_speed matches ..-301 run scoreboard players set @s player.sled_status.current_speed -300

# 時速計算
    scoreboard players operation #km_h const = @s player.sled_status.current_speed
    scoreboard players operation #km_h const *= #const_20 const
    scoreboard players operation #km_h const *= #const_3600 const
    scoreboard players operation #km_h const /= #const_100 const
    execute store result score #km_h_s const run scoreboard players operation #km_h const /= #const_60 const
    scoreboard players operation #km_h const /= #const_1000 const
    scoreboard players operation #km_h_s const %= #const_1000 const

    title @s actionbar [{"text":"SPEED:","color": "red"},{"score":{"name":"#km_h","objective":"const"}},{"text":"."},{"score":{"name":"#km_h_s","objective":"const"}},{"text":"km/h"}]

# 終了
    tag @s remove Temp.SameRotation
    data remove storage santa_battle_core: Temp
