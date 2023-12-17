#> santa_battle_core:game_main/phase3/spawn/m_first_team_player
#
# バトルフィールドへの移動 チーム戦

# ターゲット決定
    tag @a[tag=Temp.Target,tag=!Temp.Moved,tag=!Player.Ghost,sort=random,limit=1] add Temp.TargetSub

# 移動
    execute positioned ^ ^ ^4 run tp @a[tag=Temp.TargetSub] ~ ~1 ~

# 移動完了
    tag @a[tag=Temp.TargetSub] add Temp.Moved
    tag @a[tag=Temp.Moved] remove Temp.TargetSub

# 角度を変えて移動
    $execute if entity @a[tag=Temp.Target,tag=!Player.Ghost,tag=!Temp.Moved] rotated ~$(RotationSub) 0 run function santa_battle_core:game_main/phase3/spawn/m_first_team_player with storage santa_battle_core: Temp
