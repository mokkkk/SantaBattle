#> santa_battle_core:player/sled/end/m_apply_player_motion
#
# ソリ降り時のプレイヤー移動処理

# 移動速度計算用marker召喚
    $execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^$(Speed) run summon marker ~ ~ ~ {Tags:["Temp.Calc.PlayerSpeed"]}
    data modify storage santa_battle_core: Temp.PlayerSpeed set from entity @e[type=marker,tag=Temp.Calc.PlayerSpeed,limit=1] Pos

# 移動速度計算
    execute store result score $x delta.api.launch run data get storage santa_battle_core: Temp.PlayerSpeed[0] 15000
    execute store result score $y delta.api.launch run data get storage santa_battle_core: Temp.PlayerSpeed[1] 10000
    execute store result score $z delta.api.launch run data get storage santa_battle_core: Temp.PlayerSpeed[2] 15000
# 上昇分加算
    scoreboard players add $y delta.api.launch 10000

# 移動
    function delta:api/launch_xyz

# 終了
    kill @e[type=marker,tag=Temp.Calc.PlayerSpeed]
