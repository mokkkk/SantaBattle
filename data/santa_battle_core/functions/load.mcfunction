#> santa_battle_core:load
#
# load時に毎回実行される処理群

# スコア定義

# 共通処理用
    scoreboard objectives add player.timer dummy
    scoreboard objectives add player.id dummy

# プレイヤー行動検知
    scoreboard objectives add player.used.coas minecraft.used:minecraft.carrot_on_a_stick

# ソリの処理用
    scoreboard objectives add player.sled_type dummy
    scoreboard objectives add player.sled_summon_count dummy


# プレイヤーID未設定のプレイヤーにIDを割り当てる
    execute as @a unless score @s player.id matches 0.. run function santa_battle_core:player/load
