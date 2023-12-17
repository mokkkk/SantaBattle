#> santa_battle_core:game_main/phase3/score/scoreboard_update_battleroyale
#
# スコアボードの表示更新

# 暫定優勝者は金色にする
    execute as @a[tag=Temp.Winner,tag=!Player.Ghost] run scoreboard players display numberformat @s player.game_score.kill styled {"color":"gold","bold":true}
# その他は白色にする
    execute as @a[tag=!Temp.Winner,tag=!Player.Ghost] run scoreboard players display numberformat @s player.game_score.kill styled {"color":"white","bold":true}
