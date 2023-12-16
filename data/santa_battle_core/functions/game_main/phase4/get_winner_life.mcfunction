#> santa_battle_core:game_main/phase4/get_winner_life
#
# ストック制の勝者確認

# 残機の最も多いプレイヤーを取得
    scoreboard players set #temp_max_life temp 0
    execute as @a[tag=!Player.Ghost] run function santa_battle_core:game_main/phase4/get_winner_life_get_max_life

# 勝者
    execute as @a if score @s player.game_score.life = #temp_max_life temp run tag @s add Player.Winner

# 敗者
    execute as @a[tag=!Player.Winner] run tag @s add Player.Loser

# 引き分け
    execute store result score #temp_player_count temp if entity @a[tag=Player.Winner]
    execute if score #temp_player_count temp matches 2.. run tag @a[tag=Player.Winner] add Player.Draw
    execute if score #temp_player_count temp matches 2.. run tag @a[tag=Player.Winner] remove Player.Winner

# 終了
    scoreboard players reset #temp_max_life
    scoreboard players reset #temp_player_count
