#> santa_battle_core:player/tick_start/get_data
#
# プレイヤー tick開始時の処理 行動検知関連

# ニンジン棒使用
    execute if score @s player.used.coas matches 1.. run tag @s add Player.Used.Coas
