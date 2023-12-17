#> santa_battle_core:game_main/phase4/get_winner_score_team
#
# スコア制の勝者確認

# 勝者がいない場合，引き分け
    execute unless entity @a[tag=Player.Winner] run tag @a add Player.Draw

# 敗者
    execute if entity @a[tag=Player.Winner] run tag @a[tag=!Player.Winner] add Player.Loser

# 引き分け
    scoreboard players set #temp_player_count temp 0
    execute if entity @a[tag=Player.Winner,team=redTeam] run scoreboard players add #temp_player_count temp 1
    execute if entity @a[tag=Player.Winner,team=blueTeam] run scoreboard players add #temp_player_count temp 1
    execute if entity @a[tag=Player.Winner,team=greenTeam] run scoreboard players add #temp_player_count temp 1
    execute if entity @a[tag=Player.Winner,team=yellowTeam] run scoreboard players add #temp_player_count temp 1
    execute if score #temp_player_count temp matches 2.. run tag @a[tag=Player.Winner] add Player.Draw
    execute if score #temp_player_count temp matches 2.. run tag @a[tag=Player.Winner] remove Player.Winner
