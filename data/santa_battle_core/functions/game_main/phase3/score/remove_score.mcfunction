#> santa_battle_core:game_main/phase3/score/remove_score
#
# バトルのscore更新処理

# 自身のスコア減少
    execute if score @s player.game_score.kill matches 1.. run scoreboard players remove @s player.game_score.kill 1
    scoreboard players remove @s player.game_score.life 1

# スコアが0以下になった場合は勝利を剥奪
    execute if entity @s[tag=Player.Winner] unless score #game_manager game.setting.is_team matches 1.. if score @s player.game_score.kill matches ..0 run tag @a remove Player.Winner

# 優勝者更新
    execute unless score #game_manager game.setting.is_life matches 1.. unless score #game_manager game.setting.is_team matches 1.. run function santa_battle_core:game_main/phase3/score/update_winner
    tag @a remove Temp.Winner
    execute unless score #game_manager game.setting.is_life matches 1.. if score #game_manager game.setting.is_team matches 1.. run function santa_battle_core:game_main/phase3/score/update_winner_team
    tag @a remove Temp.Winner

# スコア表示更新
    execute if score #game_manager game.setting.is_life matches 1.. run function santa_battle_core:game_main/phase3/score/scoreboard_update_life

# 残機がなくなった場合
    execute if score #game_manager game.setting.is_life matches 1.. if score @s player.game_score.life matches ..0 run tag @s add Player.Ghost
    # 通知
        execute if entity @s[tag=Player.Ghost] run tellraw @a [{"text": "-- <"},{"selector":"@s"},{"text": "> は活動限界を迎えた"}]
    # 勝利確認
        execute as @a[tag=!Player.Ghost] run function santa_battle_core:game_main/phase3/score/check_life
        execute as @a[tag=!Player.Ghost] run function santa_battle_core:game_main/phase3/score/check_life_team
