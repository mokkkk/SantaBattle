#> santa_battle_core:player/tick_end/
#
# プレイヤー tick終了時の処理

# タグ消去
    execute if score @s player.flag.death matches 1.. run scoreboard players set @s player.flag.death 0
    execute if entity @s[tag=Player.Flag.Death] run tag @s remove Player.Flag.Death
    execute if score @s player.used.coas matches 1.. run scoreboard players set @s player.used.coas 0
    execute if entity @s[tag=Player.Used.Coas] run tag @s remove Player.Used.Coas
    execute if score @s player.used.snowball matches 1.. run scoreboard players set @s player.used.snowball 0
    execute if entity @s[tag=Player.Used.Snowball] run tag @s remove Player.Used.Snowball
