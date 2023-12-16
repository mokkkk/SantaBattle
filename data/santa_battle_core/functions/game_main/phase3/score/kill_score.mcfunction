#> santa_battle_core:game_main/phase3/score/kill_score
#
# バトルのscore更新処理

# killerのスコア増加
    scoreboard players add @a[tag=Temp.Killer] player.game_score.kill 1

# 自身のスコア減少
    scoreboard players remove @s player.game_score.life 1

# 優勝者更新
    execute unless score #game_manager game.setting.is_life matches 1.. unless score #game_manager game.setting.is_team matches 1.. run function santa_battle_core:game_main/phase3/score/update_winner
    tag @a remove Temp.Winner
    execute if score #game_manager game.setting.is_team matches 1.. run function santa_battle_core:game_main/phase3/score/update_winner_team
    tag @a remove Temp.Winner

# 残機がなくなった場合
    execute if score #game_manager game.setting.is_life matches 1.. if score @s player.game_score.life matches ..0 run tag @s add Player.Ghost
    # 通知
        execute if entity @s[tag=Player.Ghost] run tellraw @a [{"text": "<"},{"selector":"@s"},{"text": "> は活動限界を迎えた"}]
    # 勝利確認
        execute as @a[tag=Temp.Killer] run function santa_battle_core:game_main/phase3/score/check_life
        execute as @a[tag=Temp.Killer] run function santa_battle_core:game_main/phase3/score/check_life_team
