#> santa_battle_core:game_main/phase3/spawn/respawn_reduce_marker
#
# バトル中リスポーン処理

# 開始
    tag @e[type=marker,tag=Mob.SpawnPointMarker,tag=Temp.Target] remove Temp.Target
    
# スコアが低いmarkerを削除
    execute as @e[type=marker,tag=Mob.SpawnPointMarker] if score @s temp = #temp_current temp run kill @s

# インクリメント
    scoreboard players add #temp_current temp 1
    scoreboard players add #temp_current_plus_1 temp 1

# 続行
    execute as @e[type=marker,tag=Mob.SpawnPointMarker] if score @s temp >= #temp_current_plus_1 temp run tag @s add Temp.Target
    execute if entity @e[type=marker,tag=Mob.SpawnPointMarker,tag=Temp.Target] run function santa_battle_core:game_main/phase3/spawn/respawn_reduce_marker
