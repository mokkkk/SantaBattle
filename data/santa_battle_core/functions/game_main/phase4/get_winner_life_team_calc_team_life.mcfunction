#> santa_battle_core:game_main/phase4/get_winner_life_team_calc_team_life
#
# ストック制の勝者確認

# スコアを加算
    execute if entity @s[team=redTeam] run scoreboard players operation #temp_sum_life_red temp += @s player.game_score.life
    execute if entity @s[team=blueTeam] run scoreboard players operation #temp_sum_life_blue temp += @s player.game_score.life
    execute if entity @s[team=greenTeam] run scoreboard players operation #temp_sum_life_green temp += @s player.game_score.life
    execute if entity @s[team=yellowTeam] run scoreboard players operation #temp_sum_life_yellow temp += @s player.game_score.life
