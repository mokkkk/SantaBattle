#> santa_battle_core:game_main/phase3/score/scoreboard_update_life
#
# スコアボードの表示更新

# ライフが無い者はグレーにする
    execute as @a[tag=!Player.GhostTeam] if score @s player.game_score.life matches ..0 run scoreboard players display numberformat @s player.game_score.life fixed {"text":"KNOCKOUT!!!","color":"dark_gray","bold":true}
# その他は白色にする
    execute as @a[tag=!Player.GhostTeam] if score @s player.game_score.life matches 1.. run scoreboard players display numberformat @s player.game_score.life styled {"color":"white","bold":true}
