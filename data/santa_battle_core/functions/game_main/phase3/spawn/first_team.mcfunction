#> santa_battle_core:game_main/phase3/spawn/first_team
#
# バトルフィールドへの移動 チーム戦

# チーム数を元に角度計算
    scoreboard players set #temp_team_count temp 0
    execute if entity @a[tag=Player.RedTeam,tag=!Player.Ghost] run scoreboard players add #temp_team_count temp 1
    execute if entity @a[tag=Player.BlueTeam,tag=!Player.Ghost] run scoreboard players add #temp_team_count temp 1
    execute if entity @a[tag=Player.GreenTeam,tag=!Player.Ghost] run scoreboard players add #temp_team_count temp 1
    execute if entity @a[tag=Player.YellowTeam,tag=!Player.Ghost] run scoreboard players add #temp_team_count temp 1
    scoreboard players set #temp_angle temp 36000
    scoreboard players operation #temp_angle temp /= #temp_team_count temp
    execute store result storage santa_battle_core: Temp.Rotation float 0.01 run scoreboard players get #temp_angle temp

# 配置
    execute positioned 319 132 15 rotated as @r rotated ~ 0 run function santa_battle_core:game_main/phase3/spawn/m_first_team with storage santa_battle_core: Temp

# 配置完了
    tag @a remove Temp.Moved

# 終了
    scoreboard players reset #temp_angle
    scoreboard players reset #temp_team_count
    data remove storage santa_battle_core: Temp
