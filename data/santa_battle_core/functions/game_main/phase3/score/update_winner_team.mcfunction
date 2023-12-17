#> santa_battle_core:game_main/phase3/score/update_winner_team
#
# バトルの勝者更新処理

# チームスコア計算
    scoreboard players set #game_manager game.team_score.red 0
    scoreboard players set #game_manager game.team_score.blue 0
    scoreboard players set #game_manager game.team_score.green 0
    scoreboard players set #game_manager game.team_score.yellow 0
    execute as @a[tag=!Player.Ghost] run function santa_battle_core:game_main/phase3/score/calc_team_score

# 最高スコア更新
    scoreboard players set #game_manager game.max_score 0
    execute if score #game_manager game.team_score.red > #game_manager game.max_score run scoreboard players operation #game_manager game.max_score = #game_manager game.team_score.red
    execute if score #game_manager game.team_score.blue > #game_manager game.max_score run scoreboard players operation #game_manager game.max_score = #game_manager game.team_score.blue
    execute if score #game_manager game.team_score.green > #game_manager game.max_score run scoreboard players operation #game_manager game.max_score = #game_manager game.team_score.green
    execute if score #game_manager game.team_score.yellow > #game_manager game.max_score run scoreboard players operation #game_manager game.max_score = #game_manager game.team_score.yellow

# 最高スコアが0の場合，勝者を消す
    execute if score #game_manager game.max_score matches ..0 run tag @a remove Player.Winner

# 優勝チーム取得
    execute if score #game_manager game.team_score.red matches 1.. if score #game_manager game.team_score.red = #game_manager game.max_score run tag @a[team=redTeam] add Temp.Winner
    execute if score #game_manager game.team_score.blue matches 1.. if score #game_manager game.team_score.blue = #game_manager game.max_score run tag @a[team=blueTeam] add Temp.Winner
    execute if score #game_manager game.team_score.green matches 1.. if score #game_manager game.team_score.green = #game_manager game.max_score run tag @a[team=greenTeam] add Temp.Winner
    execute if score #game_manager game.team_score.yellow matches 1.. if score #game_manager game.team_score.yellow = #game_manager game.max_score run tag @a[team=yellowTeam] add Temp.Winner
    data modify storage santa_battle_core: Temp.WinnerTeam set value []
    execute if entity @a[tag=Temp.Winner,team=redTeam] run data modify storage santa_battle_core: Temp.WinnerTeam append value '{"text":"赤チーム","color":"red"}'
    execute if entity @a[tag=Temp.Winner,team=blueTeam] run data modify storage santa_battle_core: Temp.WinnerTeam append value '{"text":"青チーム","color":"blue"}'
    execute if entity @a[tag=Temp.Winner,team=greenTeam] run data modify storage santa_battle_core: Temp.WinnerTeam append value '{"text":"緑チーム","color":"green"}'
    execute if entity @a[tag=Temp.Winner,team=yellowTeam] run data modify storage santa_battle_core: Temp.WinnerTeam append value '{"text":"黄チーム","color":"yellow"}'

 # スコアボード表示を設定
    function santa_battle_core:game_main/phase3/score/scoreboard_update_team
    
# 優勝者がいない場合は通知しない
    execute unless entity @a[tag=Temp.Winner] run return 0

# 優勝者が変わらない場合は通知しない
    execute if entity @a[tag=Player.Winner] unless entity @a[tag=Temp.Winner,tag=!Player.Winner] unless entity @a[tag=!Temp.Winner,tag=Player.Winner] run return 0

# 優勝者が変わる場合，通知
    tag @a remove Player.Winner
    tag @a[tag=Temp.Winner] add Player.Winner
    execute store result score #temp_playercount temp if data storage santa_battle_core: Temp.WinnerTeam[]
    execute if score #temp_playercount temp matches 2 run tellraw @a [{"interpret":true,"nbt":"Temp.WinnerTeam[0]","storage":"santa_battle_core:"},{"text": ",","color": "white"},{"interpret":true,"nbt":"Temp.WinnerTeam[1]","storage":"santa_battle_core:"},{"text": " が同率1位になった!","color": "gold","bold": true}]
    execute if score #temp_playercount temp matches 3 run tellraw @a [{"interpret":true,"nbt":"Temp.WinnerTeam[0]","storage":"santa_battle_core:"},{"text": ",","color": "white"},{"interpret":true,"nbt":"Temp.WinnerTeam[1]","storage":"santa_battle_core:"},{"text": ",","color": "white"},{"interpret":true,"nbt":"Temp.WinnerTeam[2]","storage":"santa_battle_core:"},{"text": " が同率1位になった!","color": "gold","bold": true}]
    execute if score #temp_playercount temp matches 4 run tellraw @a [{"interpret":true,"nbt":"Temp.WinnerTeam[0]","storage":"santa_battle_core:"},{"text": ",","color": "white"},{"interpret":true,"nbt":"Temp.WinnerTeam[1]","storage":"santa_battle_core:"},{"text": ",","color": "white"},{"interpret":true,"nbt":"Temp.WinnerTeam[2]","storage":"santa_battle_core:"},{"text": ",","color": "white"},{"interpret":true,"nbt":"Temp.WinnerTeam[3]","storage":"santa_battle_core:"},{"text": " が同率1位になった!","color": "gold","bold": true}]
    execute if score #temp_playercount temp matches ..1 run tellraw @a [{"interpret":true,"nbt":"Temp.WinnerTeam[0]","storage":"santa_battle_core:"},{"text": " がトップに躍り出た!","color": "red","bold": true}]

# 終了 
    tag @a remove Temp.Winner
    scoreboard players reset #temp_playercount
    data remove storage santa_battle_core: Temp.WinnerTeam
