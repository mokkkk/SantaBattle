#> santa_battle_core:player/sled/end_ride
#
# ソリ騎乗解除処理

# ソリと動物を消去
    tp @e[tag=Temp.Target] ~ ~-1000 ~
    kill @e[tag=Temp.Target]

# 演出
    particle firework ~ ~ ~ 0.3 0.3 0.3 1 30

# 召喚可能カウント減少
    scoreboard players remove @s player.sled_summon_count 1

# 終了
    tag @s remove Player.OnSled
    scoreboard players reset #temporary_player_id
