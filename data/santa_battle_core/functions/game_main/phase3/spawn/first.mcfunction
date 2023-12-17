#> santa_battle_core:game_main/phase3/spawn/first
#
# バトルフィールドへの移動 個人戦

# プレイヤー数を元に角度計算
    execute store result score #temp_player_count temp if entity @a[tag=!Player.Ghost]
    scoreboard players set #temp_angle temp 36000
    scoreboard players operation #temp_angle temp /= #temp_player_count temp
    execute store result storage santa_battle_core: Temp.Rotation float 0.01 run scoreboard players get #temp_angle temp

# 配置
    execute positioned 319 132 15 rotated as @r rotated ~ 0 run function santa_battle_core:game_main/phase3/spawn/m_first with storage santa_battle_core: Temp

# 配置完了
    tag @a remove Temp.Moved

# 終了
    scoreboard players reset #temp_angle
    scoreboard players reset #temp_player_count
    data remove storage santa_battle_core: Temp
