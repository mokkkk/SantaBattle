#> santa_battle_core:player/sled/end_ride
#
# ソリ騎乗解除処理

# ソリと動物を消去
    execute as @e[type=item_display,tag=Mob.Hogera,tag=Temp.Target] run function animated_java:hogera/remove/this
    execute unless entity @e[type=item_display,tag=Mob.Hogera] run kill @e[type=chicken,tag=Mob.SledMob.Sub1]
    tp @e[tag=Temp.Target] ~ ~-1000 ~
    kill @e[tag=Temp.Target]
    

# 演出
    particle firework ~ ~ ~ 0.3 0.3 0.3 1 30

# 召喚可能カウント減少
    scoreboard players remove @s player.sled_summon_count 1
    execute if score @s player.sled_summon_count matches ..0 if score #game_manager game.phase matches 1 run scoreboard players set @s player.sled_summon_count 3

# storageにステータスを保存
    execute store result storage santa_battle_core: Temp.Speed float 0.001 run scoreboard players get @s player.sled_status.current_speed

# プレイヤー移動
    execute at @s run function santa_battle_core:player/sled/end/m_apply_player_motion with storage santa_battle_core: Temp

# 終了
    data remove storage santa_battle_core: Temp
    scoreboard players set @s player.sled_status.current_speed 0
    tag @s remove Player.OnSled
    scoreboard players reset #temporary_player_id
