#> santa_battle_core:game_main/phase3/score/remove_score
#
# バトルのscore更新処理

# killerのスコア増加
    scoreboard players add @a[tag=Temp.Killer] player.game_score.kill 1

# 自身のスコア減少
    scoreboard players remove @s player.game_score.kill 1
    scoreboard players remove @s player.game_score.life 1

# チームのスコア減算
    execute if entity @s[team=redTeam] run scoreboard players remove #game_manager game.team_score.red 1
    execute if entity @s[team=blueTeam] run scoreboard players remove #game_manager game.team_score.blue 1
    execute if entity @s[team=greenTeam] run scoreboard players remove #game_manager game.team_score.green 1
    execute if entity @s[team=yellowTeam] run scoreboard players remove #game_manager game.team_score.yellow 1

# 自身が優勝者の場合，最大スコアを減らす
    execute if entity @s[tag=Player.Winner] unless score #game_manager game.setting.is_team matches 1.. run scoreboard players remove #game_manager game.max_score 1
    execute if entity @s[tag=Player.Winner] if score #game_manager game.setting.is_team matches 1.. run scoreboard players remove #game_manager game.max_team_score 1
# スコアが0以下になった場合は勝利を剥奪
    execute if entity @s[tag=Player.Winner] if score #game_manager game.setting.is_team matches 1.. if score @s player.game_score.kill matches ..0 run tag @a remove Player.WinnerTeam
    execute if entity @s[tag=Player.Winner] if score @s player.game_score.kill matches ..0 run tag @a remove Player.Winner

# 優勝者更新
    execute unless score #game_manager game.setting.is_team matches 1.. as @a run function santa_battle_core:game_main/phase3/score/update_winner
    execute if score #game_manager game.setting.is_team matches 1.. as @a run function santa_battle_core:game_main/phase3/score/update_winner_team
 