#> santa_battle_core:game_main/phase3/score/update_winner_team
#
# バトルの勝利チーム更新処理

# チームのスコアに加算
    execute if entity @s[team=redTeam] store result score #temp_team_score temp run scoreboard players add #game_manager game.team_score.red 1
    execute if entity @s[team=blueTeam] store result score #temp_team_score temp run scoreboard players add #game_manager game.team_score.blue 1
    execute if entity @s[team=greenTeam] store result score #temp_team_score temp run scoreboard players add #game_manager game.team_score.green 1
    execute if entity @s[team=yellowTeam] store result score #temp_team_score temp run scoreboard players add #game_manager game.team_score.yellow 1

# killerチームのスコア > 最高スコアの場合，タグを付与
    execute if score #temp_team_score temp > #game_manager game.max_team_score run tag @s add Temp.Winner

# 通知
    execute if entity @s[tag=Temp.Winner,tag=!Player.Winner] as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1
    execute if entity @s[tag=Temp.Winner,tag=!Player.Winner,team=redTeam] run tellraw @a [{"text":"赤チーム","color": "red"},{"text": " がトップに躍り出た!","color": "gold","bold": true}]
    execute if entity @s[tag=Temp.Winner,tag=!Player.Winner,team=blueTeam] run tellraw @a [{"text":"青チーム","color": "blue"},{"text": " がトップに躍り出た!","color": "gold","bold": true}]
    execute if entity @s[tag=Temp.Winner,tag=!Player.Winner,team=greenTeam] run tellraw @a [{"text":"緑チーム","color": "green"},{"text": " がトップに躍り出た!","color": "gold","bold": true}]
    execute if entity @s[tag=Temp.Winner,tag=!Player.Winner,team=yellowTeam] run tellraw @a [{"text":"黄チーム","color": "yellow"},{"text": " がトップに躍り出た!","color": "gold","bold": true}]

# 勝者タグ更新
    execute if entity @s[tag=Temp.Winner] run tag @a remove Player.Winner
    execute if entity @s[tag=Temp.Winner,team=redTeam] run tag @a[team=redTeam] add Player.Winner
    execute if entity @s[tag=Temp.Winner,team=blueTeam] run tag @a[team=blueTeam] add Player.Winner
    execute if entity @s[tag=Temp.Winner,team=greenTeam] run tag @a[team=greenTeam] add Player.Winner
    execute if entity @s[tag=Temp.Winner,team=yellowTeam] run tag @a[team=yellowTeam] add Player.Winner

# 最高スコア更新
    execute if entity @s[tag=Temp.Winner] run scoreboard players operation #game_manager game.max_team_score = #temp_team_score temp

# 終了
    tag @s remove Temp.Winner
    scoreboard players reset #temp_team_score
