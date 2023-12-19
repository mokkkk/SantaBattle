#> santa_battle_core:tick
#
# 毎tick実行される処理群

# ゲーム処理
    function santa_battle_core:game_main/tick

# プレイヤー処理
    execute as @a at @s run function santa_battle_core:player/

# 弾処理
    execute as @e[type=item_display,tag=Mob.Bullet] at @s run function santa_battle_core:bullet/

# その他処理
    execute as @e[type=marker,tag=Mob.ParticleMarker] at @s run function santa_battle_core:other/marker_particle
    execute as @e[type=marker,tag=Mob.FootingMarker] at @s run function santa_battle_core:other/footing/tick
    execute as @e[type=item_display,tag=Mob.ItemEntity] at @s run function santa_battle_core:other/item/tick
    kill @e[type=item,nbt={Item:{id:"minecraft:lead"}}]
