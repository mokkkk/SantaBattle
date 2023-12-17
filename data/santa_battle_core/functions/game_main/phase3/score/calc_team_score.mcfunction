#> santa_battle_core:game_main/phase3/score/calc_team_score
#
# バトルの勝者更新処理

# スコア加算
    execute if entity @s[team=redTeam] run scoreboard players operation #game_manager game.team_score.red += @s player.game_score.kill
    execute if entity @s[team=blueTeam] run scoreboard players operation #game_manager game.team_score.blue += @s player.game_score.kill
    execute if entity @s[team=greenTeam] run scoreboard players operation #game_manager game.team_score.green += @s player.game_score.kill
    execute if entity @s[team=yellowTeam] run scoreboard players operation #game_manager game.team_score.yellow += @s player.game_score.kill
