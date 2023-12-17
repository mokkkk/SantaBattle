#> santa_battle_core:game_main/phase3/spawn/first
#
# バトルフィールドへの移動 個人戦

# プレイヤー数を元に角度計算
    execute store result score #temp_player_count temp if entity @a[tag=!Player.Ghost]
    scoreboard players set #temp_angle temp 360
    scoreboard players operation #temp_angle temp /= #temp_player_count temp
