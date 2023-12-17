#> santa_battle_core:game_main/phase3/start_team
#
# バトルの開始処理・チーム戦用

# スコア表示
    scoreboard objectives setdisplay sidebar game.team_score_for_display

# 表示用ダミープレイヤー設定
    execute if entity @a[team=redTeam] run scoreboard players set dummy_score_red game.team_score_for_display 0
    execute if entity @a[team=blueTeam] run scoreboard players set dummy_score_blue game.team_score_for_display 0
    execute if entity @a[team=greenTeam] run scoreboard players set dummy_score_green game.team_score_for_display 0
    execute if entity @a[team=yellowTeam] run scoreboard players set dummy_score_yellow game.team_score_for_display 0
    execute if entity @a[team=redTeam] run scoreboard players display name dummy_score_red game.team_score_for_display {"text":"赤チーム","color":"red","bold":true}
    execute if entity @a[team=blueTeam] run scoreboard players display name dummy_score_blue game.team_score_for_display {"text":"青チーム","color":"blue","bold":true}
    execute if entity @a[team=greenTeam] run scoreboard players display name dummy_score_green game.team_score_for_display {"text":"緑チーム","color":"green","bold":true}
    execute if entity @a[team=yellowTeam] run scoreboard players display name dummy_score_yellow game.team_score_for_display {"text":"黄チーム","color":"yellow","bold":true}

# スコア表示形式変更
    scoreboard objectives modify game.team_score_for_display numberformat styled {"color":"white","bold":true}

# 枠線表示
    scoreboard players set upper_line game.team_score_for_display 1000000
    scoreboard players display name upper_line game.team_score_for_display {"text":"------------------------","color":"gray","bold":true}
    scoreboard players display numberformat upper_line game.team_score_for_display blank
    scoreboard players set lower_line game.team_score_for_display -1000000
    scoreboard players display name lower_line game.team_score_for_display {"text":"------------------------","color":"gray","bold":true}
    scoreboard players display numberformat lower_line game.team_score_for_display blank
