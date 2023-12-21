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
    # UIクリック後のヘルプ非表示のタイマーを減少
        execute if score @s player.help_timer matches 1.. run scoreboard players remove @s player.help_timer 1

# Phase確認処理
    execute unless score @s player.game_phase = #game_manager game.phase run function santa_battle_core:player/tick_start/check_phase

# ロビー中処理
    execute if score #game_manager game.phase matches 1 unless score #game_manager game.setting.is_team matches 1.. run function santa_battle_core:player/tick_start/on_phase_1
    execute if score #game_manager game.phase matches 1 if score #game_manager game.setting.is_team matches 1.. run function santa_battle_core:player/tick_start/on_phase_1_team

# アイテムの有効タイマー減少
    execute if score @s player.item.count matches 1..1000 run scoreboard players remove @s player.item.count 1
    execute if score @s player.item.count matches ..0 run scoreboard players set @s player.item.having 0
    execute if score @s player.item.using.crucker matches 1.. run scoreboard players remove @s player.item.using.crucker 1
