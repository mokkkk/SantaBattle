#> santa_battle_core:player/item/
#
# プレイヤー アイテム使用処理

# ニンジン棒
    execute if entity @s[tag=Player.Used.Coas] run function santa_battle_core:player/item/carrot_on_a_stick/start

# 雪玉
    execute if entity @s[tag=Player.Used.Snowball] run function santa_battle_core:player/item/snowball/start
