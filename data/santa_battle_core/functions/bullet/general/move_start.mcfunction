#> santa_battle_core:bullet/general/move_start
#
# 弾 共通移動処理

# 重力加速
    scoreboard players operation #temp_speed_y const = @s bullet.timer
    scoreboard players operation #temp_speed_y const *= @s bullet.status.speed_g
    scoreboard players operation #temp_speed_y const /= #const_20 const
    scoreboard players operation #temp_speed_y const *= #const_minus const
    scoreboard players operation #temp_speed_y const += @s bullet.status.speed_y

# storageにステータスを保存
    execute store result storage santa_battle_core: Temp.Speed.X float 0.001 run scoreboard players get @s bullet.status.speed_x
    execute store result storage santa_battle_core: Temp.Speed.Y float 0.001 run scoreboard players get #temp_speed_y const
    execute store result storage santa_battle_core: Temp.Speed.Z float 0.001 run scoreboard players get @s bullet.status.speed_z

# 移動
    function santa_battle_core:bullet/general/m_move_apply with storage santa_battle_core: Temp.Speed

# 終了
    data remove storage santa_battle_core: Temp.Speed
    scoreboard players reset #temp_speed_y
