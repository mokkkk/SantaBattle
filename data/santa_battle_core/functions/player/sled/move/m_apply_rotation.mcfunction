#> santa_battle_core:player/sled/move/m_apply_rotation
#
# ソリの移動処理

# 角度計算
    execute on vehicle on passengers if entity @s[tag=Mob.SledRotationMarker] rotated as @s positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["Temp.Calc"]}
    $execute facing entity @e[type=marker,tag=Temp.Calc,limit=1] feet positioned ^ ^ ^$(Handling) rotated as @s positioned ^ ^ ^1 facing entity @s feet facing ^ ^ ^-1 on vehicle on passengers if entity @s[tag=Mob.SledRotationMarker] positioned as @s run tp @s ~ ~ ~ ~ ~
    kill @e[type=marker,tag=Temp.Calc]
    execute at @s on vehicle on passengers if entity @s[tag=Mob.SledRotationMarker] rotated as @s positioned ^ ^ ^1 on vehicle on passengers if entity @s[type=player] rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.7] run tag @s add Temp.SameRotation
