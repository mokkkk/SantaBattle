#> santa_battle_core:game_main/phase3/start_battleroyale
#
# バトルの開始処理・個人戦用

# スコア表示
    scoreboard objectives setdisplay sidebar player.game_score.kill

# 初期スコア設定
    scoreboard players set @a[tag=!Player.GhostTeam] player.game_score.kill 0

# スコア表示形式変更
    scoreboard objectives modify player.game_score.kill numberformat styled {"color":"white","bold":true}

# 枠線表示
    scoreboard players set upper_line player.game_score.kill 1000000
    scoreboard players display name upper_line player.game_score.kill {"text":"------------------------","color":"gray","bold":true}
    scoreboard players display numberformat upper_line player.game_score.kill blank
    scoreboard players set lower_line player.game_score.kill -1000000
    scoreboard players display name lower_line player.game_score.kill {"text":"------------------------","color":"gray","bold":true}
    scoreboard players display numberformat lower_line player.game_score.kill blank
