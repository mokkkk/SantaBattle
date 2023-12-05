#> santa_battle_core:load
#
# load時に毎回実行される処理群

# スコア定義

# プレイヤー行動検知
    scoreboard objectives add player.used.coas minecraft.used:minecraft.carrot_on_a_stick

# ソリの処理用
    scoreboard objectives add player.sled_type dummy
