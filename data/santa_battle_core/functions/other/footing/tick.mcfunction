#> santa_battle_core:other/footing/tick
#
# 足場markerの処理

# タイマー増加
    scoreboard players add @s player.timer 1
    
# 消去
    execute if score @s player.timer matches 100.. run fill ~ ~-1 ~ ~ ~-1 ~ air replace white_stained_glass
    execute if score @s player.timer matches 100.. run kill @s
