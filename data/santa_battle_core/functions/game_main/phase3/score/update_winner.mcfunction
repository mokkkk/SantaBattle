#> santa_battle_core:game_main/phase3/score/update_winner
#
# バトルの勝者更新処理

# killerのスコア > 最高スコアの場合，タグを付与
    execute if score @s player.game_score.kill matches 1.. if score @s player.game_score.kill >= #game_manager game.max_score run tag @s add Temp.Winner

# 通知
    execute if entity @s[tag=Temp.Winner,tag=!Player.Winner] as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
    execute if entity @s[tag=Temp.Winner,tag=!Player.Winner] if score @s player.game_score.kill = #game_manager game.max_score run tellraw @a [{"selector":"@s"},{"text": " が同率1位になった!","color": "gold","bold": true}]
    execute if entity @s[tag=Temp.Winner,tag=!Player.Winner] if score @s player.game_score.kill > #game_manager game.max_score run tellraw @a [{"selector":"@s"},{"text": " がトップに躍り出た!","color": "gold","bold": true}]

# 勝者タグ更新
    execute if entity @s[tag=Temp.Winner] run tag @a remove Player.Winner
    execute if entity @s[tag=Temp.Winner] if score @s player.game_score.kill > #game_manager game.max_score run tag @s add Player.Winner

# 最高スコア更新
    execute if entity @s[tag=Temp.Winner] run scoreboard players operation #game_manager game.max_score = @s player.game_score.kill

# 終了
    tag @s remove Temp.Winner
