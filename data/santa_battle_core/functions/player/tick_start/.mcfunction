#> santa_battle_core:player/tick_start/
#
# プレイヤー tick開始時の処理

# 行動検知
    function santa_battle_core:player/tick_start/get_data

# 必須エフェクトの付与
    effect give @s saturation infinite 0 true

# 無敵時間処理
    # 無敵エフェクト
        execute unless score #game_manager game.phase matches 4 if score @s player.invulnerable_timer matches 1.. run particle happy_villager ~ ~1 ~ 0.5 0.8 0.5 0 1 force
    # 減算
        execute if score @s player.invulnerable_timer matches 1.. run scoreboard players remove @s player.invulnerable_timer 1
