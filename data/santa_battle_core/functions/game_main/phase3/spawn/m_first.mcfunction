#> santa_battle_core:game_main/phase3/spawn/m_first
#
# バトルフィールドへの移動 個人戦

# ターゲット決定
    tag @a[tag=!Temp.Moved,tag=!Player.Ghost,sort=random,limit=1] add Temp.Target

# 移動
    execute positioned ^ ^ ^60 run tp @a[tag=Temp.Target] ~ ~1 ~

# 移動完了
    tag @a[tag=Temp.Target] add Temp.Moved
    tag @a[tag=Temp.Moved] remove Temp.Target

# 角度を変えて移動
    $execute if entity @a[tag=!Player.Ghost,tag=!Temp.Moved] rotated ~$(Rotation) 0 run function santa_battle_core:game_main/phase3/spawn/m_first with storage santa_battle_core: Temp
