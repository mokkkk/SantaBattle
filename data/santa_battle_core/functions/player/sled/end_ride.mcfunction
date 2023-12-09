#> santa_battle_core:player/sled/end_ride
#
# ソリ騎乗解除処理


# ソリと動物を消去
    scoreboard players operation #temporary_player_id player.id = @s player.id
    execute as @e[type=goat] if score @s player.id = #temporary_player_id player.id run tag @s add Target
    execute as @e[type=minecart] if score @s player.id = #temporary_player_id player.id run tag @s add Target
    tp @e[tag=Target] ~ ~-1000 ~
    kill @e[tag=Target]

# 演出
    particle firework ~ ~ ~ 0.3 0.3 0.3 1 30

# 召喚可能カウント減少
    scoreboard players remove @s player.sled_summon_count 1

# 終了
    tag @s remove Player.OnSled
    scoreboard players reset #temporary_player_id
