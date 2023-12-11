#> santa_battle_core:player/tick_start/get_data
#
# プレイヤー tick開始時の処理 行動検知関連

# 死亡
    execute if score @s player.flag.death matches 1.. run tag @s add Player.Flag.Death

# ニンジン棒使用
    execute if score @s player.used.coas matches 1.. run tag @s add Player.Used.Coas

# 雪玉使用
    execute if score @s player.used.snowball matches 1.. run tag @s add Player.Used.Snowball
