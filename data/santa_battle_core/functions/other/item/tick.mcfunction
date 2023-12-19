#> santa_battle_core:other/item/tick
#
# アイテムの処理

# タイマー増加
    scoreboard players add @s player.timer 1
    particle electric_spark ~ ~ ~ 0.8 0.8 0.8 0 1

# 移動
    tp @s ~ ~ ~ ~-2 ~
    
# 消去
    execute if score @s player.timer matches 300.. run tag @e[type=marker,tag=Mob.ItemPointMarker,tag=Mob.ItemPointMarker.Disabled,sort=nearest,limit=1] remove Mob.ItemPointMarker.Disabled
    execute if score @s player.timer matches 300.. run kill @s
