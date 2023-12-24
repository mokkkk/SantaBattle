#> santa_battle_core:game_main/phase3/spawn/respawn
#
# バトル中リスポーン処理

# 中心から等距離にmarker配置
    execute positioned 319 132 15 rotated 0 0 positioned ^ ^ ^60 run summon marker ~ ~ ~ {Tags:["Mob.SpawnPointMarker"]}
    execute positioned 319 132 15 rotated 30 0 positioned ^ ^ ^60 run summon marker ~ ~ ~ {Tags:["Mob.SpawnPointMarker"]}
    execute positioned 319 132 15 rotated 60 0 positioned ^ ^ ^60 run summon marker ~ ~ ~ {Tags:["Mob.SpawnPointMarker"]}
    execute positioned 319 132 15 rotated 90 0 positioned ^ ^ ^60 run summon marker ~ ~ ~ {Tags:["Mob.SpawnPointMarker"]}
    execute positioned 319 132 15 rotated 120 0 positioned ^ ^ ^60 run summon marker ~ ~ ~ {Tags:["Mob.SpawnPointMarker"]}
    execute positioned 319 132 15 rotated 150 0 positioned ^ ^ ^60 run summon marker ~ ~ ~ {Tags:["Mob.SpawnPointMarker"]}
    execute positioned 319 132 15 rotated 180 0 positioned ^ ^ ^60 run summon marker ~ ~ ~ {Tags:["Mob.SpawnPointMarker"]}
    execute positioned 319 132 15 rotated 210 0 positioned ^ ^ ^60 run summon marker ~ ~ ~ {Tags:["Mob.SpawnPointMarker"]}
    execute positioned 319 132 15 rotated 240 0 positioned ^ ^ ^60 run summon marker ~ ~ ~ {Tags:["Mob.SpawnPointMarker"]}
    execute positioned 319 132 15 rotated 270 0 positioned ^ ^ ^60 run summon marker ~ ~ ~ {Tags:["Mob.SpawnPointMarker"]}
    execute positioned 319 132 15 rotated 300 0 positioned ^ ^ ^60 run summon marker ~ ~ ~ {Tags:["Mob.SpawnPointMarker"]}
    execute positioned 319 132 15 rotated 330 0 positioned ^ ^ ^60 run summon marker ~ ~ ~ {Tags:["Mob.SpawnPointMarker"]}

# 各プレイヤーから最も遠いマーカーのスコアを増加
    execute as @a at @s run scoreboard players add @e[type=marker,tag=Mob.SpawnPointMarker,sort=furthest,limit=1] temp 1

# マーカーを減らす
    scoreboard players set #temp_current temp 0
    scoreboard players set #temp_current_plus_1 temp 1
    execute as @e[type=marker,tag=Mob.SpawnPointMarker] if score @s temp >= #temp_current_plus_1 temp run tag @s add Temp.Target
    # execute if entity @e[type=marker,tag=Mob.SpawnPointMarker,tag=Temp.Target] run function santa_battle_core:game_main/phase3/spawn/respawn_reduce_marker
    tag @e[type=marker,tag=Mob.SpawnPointMarker,tag=Temp.Target] remove Temp.Target

# 残ったマーカーのどこかに移動
    execute as @e[type=marker,tag=Mob.SpawnPointMarker,sort=random,limit=1] run tag @s add Temp.Target
    execute positioned as @e[type=marker,tag=Mob.SpawnPointMarker,tag=Temp.Target] run spawnpoint @s ~ ~1 ~
    # execute positioned as @e[type=marker,tag=Mob.SpawnPointMarker,tag=Temp.Target] positioned ~ ~-1 ~ run function santa_battle_core:other/footing/summon

# 低速落下
    effect give @s slow_falling 1 0 true

# 終了
    kill @e[type=marker,tag=Mob.SpawnPointMarker]
