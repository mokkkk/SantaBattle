#> santa_battle_core:game_main/phase3/score/update_winner
#
# バトルの勝者更新処理

# 最高スコア更新
    scoreboard players set #game_manager game.max_score 0
    execute as @a[tag=!Player.Ghost] run function santa_battle_core:game_main/phase3/score/update_max_score

# 優勝者取得
    execute as @a if score @s player.game_score.kill matches 1.. if score @s player.game_score.kill = #game_manager game.max_score run tag @s add Temp.Winner

# 優勝者がいない場合は通知しない
    execute unless entity @a[tag=Temp.Winner] run return 0

# 優勝者が変わらない場合は通知しない
    execute if entity @a[tag=Player.Winner] unless entity @a[tag=Temp.Winner,tag=!Player.Winner] unless entity @a[tag=!Temp.Winner,tag=Player.Winner] run return 0

# 優勝者が変わる場合，通知
    tag @a remove Player.Winner
    tag @a[tag=Temp.Winner] add Player.Winner
    execute store result score #temp_playercount temp if entity @a[tag=Player.Winner]
    execute if score #temp_playercount temp matches 2.. run tellraw @a [{"selector":"@a[tag=Player.Winner]"},{"text": " が同率1位になった!","color": "gold","bold": true}]
    execute if score #temp_playercount temp matches ..1 run tellraw @a [{"selector":"@a[tag=Player.Winner]"},{"text": " がトップに躍り出た!","color": "red","bold": true}]

# 終了
    tag @a remove Temp.Winner
    scoreboard players reset #temp_playercount
