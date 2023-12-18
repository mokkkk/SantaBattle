#> santa_battle_core:game_main/phase3/score/scoreboard_update_team
#
# スコアボードの表示更新

# スコア反映
    execute if entity @a[team=redTeam] run scoreboard players operation dummy_score_red game.team_score_for_display = #game_manager game.team_score.red
    execute if entity @a[team=blueTeam] run scoreboard players operation dummy_score_blue game.team_score_for_display = #game_manager game.team_score.blue
    execute if entity @a[team=greenTeam] run scoreboard players operation dummy_score_green game.team_score_for_display = #game_manager game.team_score.green
    execute if entity @a[team=yellowTeam] run scoreboard players operation dummy_score_yellow game.team_score_for_display = #game_manager game.team_score.yellow

# 白色にリセット
    execute if entity @a[team=redTeam] run scoreboard players display numberformat dummy_score_red game.team_score_for_display styled {"color":"white","bold":true}
    execute if entity @a[team=blueTeam] run scoreboard players display numberformat dummy_score_blue game.team_score_for_display styled {"color":"white","bold":true}
    execute if entity @a[team=greenTeam] run scoreboard players display numberformat dummy_score_green game.team_score_for_display styled {"color":"white","bold":true}
    execute if entity @a[team=yellowTeam] run scoreboard players display numberformat dummy_score_yellow game.team_score_for_display styled {"color":"white","bold":true}

# 暫定優勝チームは金色にする
    execute if entity @a[team=redTeam,tag=Temp.Winner] run scoreboard players display numberformat dummy_score_red game.team_score_for_display styled {"color":"gold","bold":true}
    execute if entity @a[team=blueTeam,tag=Temp.Winner] run scoreboard players display numberformat dummy_score_blue game.team_score_for_display styled {"color":"gold","bold":true}
    execute if entity @a[team=greenTeam,tag=Temp.Winner] run scoreboard players display numberformat dummy_score_green game.team_score_for_display styled {"color":"gold","bold":true}
    execute if entity @a[team=yellowTeam,tag=Temp.Winner] run scoreboard players display numberformat dummy_score_yellow game.team_score_for_display styled {"color":"gold","bold":true}
