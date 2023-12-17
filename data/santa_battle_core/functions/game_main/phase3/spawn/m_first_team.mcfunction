#> santa_battle_core:game_main/phase3/spawn/m_first_team
#
# バトルフィールドへの移動 チーム戦

# ターゲットのチーム決定
    execute unless entity @a[tag=Temp.Target] if entity @a[tag=Player.RedTeam,tag=!Temp.Moved,tag=!Player.Ghost] run tag @a[tag=Player.RedTeam] add Temp.Target
    execute unless entity @a[tag=Temp.Target] if entity @a[tag=Player.BlueTeam,tag=!Temp.Moved,tag=!Player.Ghost] run tag @a[tag=Player.BlueTeam] add Temp.Target
    execute unless entity @a[tag=Temp.Target] if entity @a[tag=Player.GreenTeam,tag=!Temp.Moved,tag=!Player.Ghost] run tag @a[tag=Player.GreenTeam] add Temp.Target
    execute unless entity @a[tag=Temp.Target] if entity @a[tag=Player.YellowTeam,tag=!Temp.Moved,tag=!Player.Ghost] run tag @a[tag=Player.YellowTeam] add Temp.Target

# プレイヤー数を元に角度計算
    execute store result score #temp_player_count temp if entity @a[tag=Temp.Target,tag=!Player.Ghost]
    scoreboard players set #temp_angle_sub temp 36000
    scoreboard players operation #temp_angle_sub temp /= #temp_player_count temp
    execute store result storage santa_battle_core: Temp.RotationSub float 0.01 run scoreboard players get #temp_angle_sub temp

# 移動
    execute positioned ^ ^ ^60 run function santa_battle_core:game_main/phase3/spawn/m_first_team_player with storage santa_battle_core: Temp

# 移動完了
    tag @a[tag=Temp.Moved] remove Temp.Target

# 角度を変えて移動
    $execute if entity @a[tag=!Player.Ghost,tag=!Temp.Moved] rotated ~$(Rotation) 0 run function santa_battle_core:game_main/phase3/spawn/m_first_team with storage santa_battle_core: Temp

