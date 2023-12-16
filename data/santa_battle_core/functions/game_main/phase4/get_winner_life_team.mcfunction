#> santa_battle_core:game_main/phase4/get_winner_life_team
#
# ストック制の勝者確認

# チームの合計ストック計算
    scoreboard players set #temp_sum_life_red temp 0
    scoreboard players set #temp_sum_life_blue temp 0
    scoreboard players set #temp_sum_life_green temp 0
    scoreboard players set #temp_sum_life_yellow temp 0
    execute as @a[tag=!Player.Ghost] run function santa_battle_core:game_main/phase4/get_winner_life_team_calc_team_life

# 残機の最も多いチームを取得
    scoreboard players set #temp_max_life temp 0
    execute if score #temp_sum_life_red temp > #temp_max_life temp run scoreboard players operation #temp_max_life temp = #temp_sum_life_red temp
    execute if score #temp_sum_life_blue temp > #temp_max_life temp run scoreboard players operation #temp_max_life temp = #temp_sum_life_blue temp
    execute if score #temp_sum_life_green temp > #temp_max_life temp run scoreboard players operation #temp_max_life temp = #temp_sum_life_green temp
    execute if score #temp_sum_life_yellow temp > #temp_max_life temp run scoreboard players operation #temp_max_life temp = #temp_sum_life_yellow temp

# 勝者
    execute if score #temp_sum_life_red temp = #temp_max_life temp run tag @a[team=redTeam] add Player.Winner
    execute if score #temp_sum_life_blue temp = #temp_max_life temp run tag @a[team=blueTeam] add Player.Winner
    execute if score #temp_sum_life_green temp = #temp_max_life temp run tag @a[team=greenTeam] add Player.Winner
    execute if score #temp_sum_life_yellow temp = #temp_max_life temp run tag @a[team=yellowTeam] add Player.Winner

# 敗者
    execute as @a[tag=!Player.Winner] run tag @s add Player.Loser

# 引き分け
    scoreboard players set #temp_player_count temp 0
    execute if entity @a[tag=Player.Winner,team=redTeam] run scoreboard players add #temp_player_count temp 1
    execute if entity @a[tag=Player.Winner,team=blueTeam] run scoreboard players add #temp_player_count temp 1
    execute if entity @a[tag=Player.Winner,team=greenTeam] run scoreboard players add #temp_player_count temp 1
    execute if entity @a[tag=Player.Winner,team=yellowTeam] run scoreboard players add #temp_player_count temp 1

# 終了
    scoreboard players reset #temp_max_life
    scoreboard players reset #temp_player_count
    scoreboard players reset #temp_sum_life_red
    scoreboard players reset #temp_sum_life_blue
    scoreboard players reset #temp_sum_life_green
    scoreboard players reset #temp_sum_life_yellow
