#> santa_battle_core:other/spbox/tick
#
# アイテムの処理

# タイマー増加
    scoreboard players add @s player.timer 1
    scoreboard players add @s player.help_timer 1
    particle composter ~ ~ ~ 0.8 0.8 0.8 0 1

# 移動
    execute if score @s player.help_timer matches ..20 run tp @s ~ ~ ~ ~2 ~
    execute if score @s player.help_timer matches 21..40 run tp @s ~ ~ ~ ~2 ~
    execute if score @s player.help_timer matches 41..60 run tp @s ~ ~ ~ ~2 ~
    execute if score @s player.help_timer matches 61.. run tp @s ~ ~ ~ ~2 ~
    execute if score @s player.help_timer matches 80.. run scoreboard players set @s player.help_timer 0

# 演出
    particle minecraft:flame ~ ~ ~ 0 2 0 0.001 10 force @a

# 近くにプレイヤーがいる場合，取得処理
    execute if entity @a[tag=!Player.Ghost,distance=..2.5] run function santa_battle_core:other/spbox/pickup_by_player

# 消去
    execute if score @s player.timer matches 600.. run kill @s
