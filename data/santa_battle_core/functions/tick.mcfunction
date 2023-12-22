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
    execute as @e[type=item_display,tag=Mob.SpBox] at @s run function santa_battle_core:other/spbox/tick
    execute as @e[type=minecart] at @s run function santa_battle_core:other/sled
    # リードが残るバグ対策
        kill @e[type=item,nbt={Item:{id:"minecraft:lead"}}]
    # バトルフィールドの雪演出
        particle minecraft:snowflake 319 196 15 50 50 50 0 100 force
    # おまけ・リースをくぐった際の花火
        execute as @e[type=marker,tag=Mob.Omake.Ring] at @s run function santa_battle_core:other/omake_ring

# アイテムスポーン位置確認用
    # execute at @e[type=marker,tag=Mob.ItemPointMarker] run particle end_rod ~ ~ ~ 0.1 0.1 0.1 1 4 force
