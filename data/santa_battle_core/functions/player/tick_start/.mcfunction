#> santa_battle_core:player/tick_start/
#
# プレイヤー tick開始時の処理

# 行動検知
    function santa_battle_core:player/tick_start/get_data

# 必須エフェクトの付与
    effect give @s saturation infinite 0 true

# 無敵時間処理
    # 無敵エフェクト
        execute if entity @s[tag=!Player.Ghost] unless score #game_manager game.phase matches 4 if score @s player.invulnerable_timer matches 1.. run particle composter ~ ~1 ~ 0.5 0.8 0.5 0 1 force
    # 減算
        execute if score @s player.invulnerable_timer matches 1.. run scoreboard players remove @s player.invulnerable_timer 1

# ヘルプ処理
    execute if score @s player.help_timer matches 1.. run scoreboard players remove @s player.help_timer 1