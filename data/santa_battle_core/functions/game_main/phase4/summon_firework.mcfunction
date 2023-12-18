#> santa_battle_core:game_main/phase4/summon_firework
#
# 花火召喚

# ステータス決定
    execute store result storage santa_battle_core: Temp.X float 0.01 run random roll -800..800
    execute store result storage santa_battle_core: Temp.Y float 0.01 run random roll -500..500
    execute store result storage santa_battle_core: Temp.Z float 0.01 run random roll -800..800
    execute store result storage santa_battle_core: Temp.LifeTime float 0.01 run random roll 20..80
# 召喚
    execute positioned ^ ^7 ^4 run function santa_battle_core:game_main/phase4/m_summon_firework with storage santa_battle_core: Temp

# 終了
    data remove storage santa_battle_core: Temp
