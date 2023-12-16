#> santa_battle_core:game_main/phase4/get_winner_score
#
# スコア制の勝者確認

# 引き分け
    execute unless entity @a[tag=Player.Winner] run tag @a add Player.Draw

# 敗者
    execute if entity @a[tag=Player.Winner] run tag @a[tag=!Player.Winner] add Player.Loser
