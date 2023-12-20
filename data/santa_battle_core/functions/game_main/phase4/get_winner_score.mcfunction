#> santa_battle_core:game_main/phase4/get_winner_score
#
# スコア制の勝者確認

# 敗者
    execute if entity @a[tag=Player.Winner] run tag @a[tag=!Player.Winner] add Player.Loser

# 引き分け
    execute unless entity @a[tag=Player.Winner] run tag @a add Player.Draw
    execute store result score #temp_player_count temp if entity @a[tag=Player.Winner]
    execute if score #temp_player_count temp matches 2.. run tag @a[tag=Player.Winner] add Player.Draw
    execute if score #temp_player_count temp matches 2.. run tag @a[tag=Player.Winner] remove Player.Winner
