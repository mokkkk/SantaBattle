#> santa_battle_core:tick
#
# 毎tick実行される処理群

# プレイヤー処理
    execute as @a at @s run function santa_battle_core:player/

# その他処理
    execute as @e[type=marker,tag=Mob.ParticleMarker] at @s run function santa_battle_core:other/marker_particle
