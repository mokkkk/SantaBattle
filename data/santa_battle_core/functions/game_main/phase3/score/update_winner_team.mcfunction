#> santa_battle_core:game_main/phase3/score/update_winner_team
#
# バトルの勝者更新処理

# チームスコア計算
    scoreboard players set #game_manager game.team_score.red 0
    scoreboard players set #game_manager game.team_score.blue 0
    scoreboard players set #game_manager game.team_score.green 0
    scoreboard players set #game_manager game.team_score.yellow 0
    execute as @a[tag=!Player.Ghost] run function santa_battle_core:game_main/phase3/score/calc_team_score
    scoreboard players operation @e[type=marker,tag=Mob.TeamDummyEntity,tag=Mob.TeamRed] player.game_score.kill = #game_manager game.team_score.red
    scoreboard players operation @e[type=marker,tag=Mob.TeamDummyEntity,tag=Mob.TeamBlue] player.game_score.kill = #game_manager game.team_score.blue
    scoreboard players operation @e[type=marker,tag=Mob.TeamDummyEntity,tag=Mob.TeamGreen] player.game_score.kill = #game_manager game.team_score.green
    scoreboard players operation @e[type=marker,tag=Mob.TeamDummyEntity,tag=Mob.TeamYellow] player.game_score.kill = #game_manager game.team_score.yellow

# 最高スコア更新
    scoreboard players set #game_manager game.max_score 0
    execute as @e[type=marker,tag=Mob.TeamDummyEntity] run function santa_battle_core:game_main/phase3/score/update_max_score

# 優勝者取得
    execute as @e[type=marker,tag=Mob.TeamDummyEntity] if score @s player.game_score.kill matches 1.. if score @s player.game_score.kill = #game_manager game.max_score run tag @s add Temp.Winner

# 優勝者がいない場合は通知しない
    execute unless entity @e[type=marker,tag=Mob.TeamDummyEntity,tag=Temp.Winner] run return 0

# 優勝者が変わらない場合は通知しない
    execute if entity @e[type=marker,tag=Mob.TeamDummyEntity,tag=Player.Winner] unless entity @e[type=marker,tag=Mob.TeamDummyEntity,tag=Temp.Winner,tag=!Player.Winner] unless entity @e[type=marker,tag=Mob.TeamDummyEntity,tag=!Temp.Winner,tag=Player.Winner] run return 0

# 優勝者が変わる場合，通知
    tag @e[type=marker,tag=Mob.TeamDummyEntity] remove Player.Winner
    tag @e[type=marker,tag=Mob.TeamDummyEntity,tag=Temp.Winner] add Player.Winner
    execute store result score #temp_playercount temp if entity @e[type=marker,tag=Mob.TeamDummyEntity,tag=Player.Winner]
    execute if score #temp_playercount temp matches 2.. run tellraw @a [{"selector":"@e[tag=Player.Winner]"},{"text": " が同率1位になった!","color": "gold","bold": true}]
    execute if score #temp_playercount temp matches ..1 run tellraw @a [{"selector":"@e[tag=Player.Winner]"},{"text": " がトップに躍り出た!","color": "red","bold": true}]

# 終了
    tag @a remove Temp.Winner
    scoreboard players reset #temp_playercount
