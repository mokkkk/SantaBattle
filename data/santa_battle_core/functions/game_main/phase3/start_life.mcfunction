#> santa_battle_core:game_main/phase3/start_life
#
# バトルの開始処理・ストック戦用

# スコア表示
    scoreboard objectives setdisplay sidebar player.game_score.life

# 初期スコア設定
    execute as @a[tag=!Player.GhostTeam] run scoreboard players operation @s player.game_score.life = #game_manager game.setting.max_life

# スコア表示形式変更
    scoreboard objectives modify player.game_score.life numberformat styled {"color":"white","bold":true}

# 枠線表示
    scoreboard players set upper_line player.game_score.life 1000000
    scoreboard players display name upper_line player.game_score.life {"text":"------------------------","color":"gray","bold":true}
    scoreboard players display numberformat upper_line player.game_score.life blank
    scoreboard players set lower_line player.game_score.life -1000000
    scoreboard players display name lower_line player.game_score.life {"text":"------------------------","color":"gray","bold":true}
    scoreboard players display numberformat lower_line player.game_score.life blank
