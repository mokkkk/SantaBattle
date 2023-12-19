#> santa_battle_core:other/item/tick
#
# アイテムの処理

# タイマー増加
    scoreboard players add @s player.timer 1
    scoreboard players add @s player.help_timer 1
    particle electric_spark ~ ~ ~ 0.8 0.8 0.8 0 1

# 移動
    execute if score @s player.help_timer matches ..20 run tp @s ~ ~0.01 ~ ~-2 ~
    execute if score @s player.help_timer matches 21..40 run tp @s ~ ~0.005 ~ ~-2 ~
    execute if score @s player.help_timer matches 41..60 run tp @s ~ ~-0.01 ~ ~-2 ~
    execute if score @s player.help_timer matches 61.. run tp @s ~ ~-0.005 ~ ~-2 ~
    execute if score @s player.help_timer matches 80.. run scoreboard players set @s player.help_timer 0

# 近くにプレイヤーがいる場合，取得処理
    execute if entity @a[tag=!Player.Ghost,distance=..2.5] run function santa_battle_core:other/item/pickup_by_player

# 消去
    execute if score @s player.timer matches 600.. run tag @e[type=marker,tag=Mob.ItemPointMarker,tag=Mob.ItemPointMarker.Disabled,sort=nearest,limit=1] remove Mob.ItemPointMarker.Disabled
    execute if score @s player.timer matches 600.. run kill @s
