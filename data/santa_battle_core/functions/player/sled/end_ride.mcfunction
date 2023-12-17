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

# storageにステータスを保存
    execute store result storage santa_battle_core: Temp.Speed float 0.001 run scoreboard players get @s player.sled_status.current_speed

# プレイヤー移動
    execute at @s run function santa_battle_core:player/sled/end/m_apply_player_motion with storage santa_battle_core: Temp

# 終了
    data remove storage santa_battle_core: Temp
    scoreboard players set @s player.sled_status.current_speed 0
    tag @s remove Player.OnSled
    scoreboard players reset #temporary_player_id
