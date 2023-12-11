#> santa_battle_core:player/sled/move/m_apply_speed
#
# ソリの移動処理

# ソリ移動
    $execute facing entity @e[tag=Mob.SledMob.Main,tag=Temp.Target,limit=1,sort=nearest] feet as @e[type=minecart,tag=Temp.Target] positioned as @s run tp @s ^ ^ ^$(Speed) ~90 0
