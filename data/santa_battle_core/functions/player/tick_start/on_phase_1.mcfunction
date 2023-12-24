#> santa_battle_core:player/tick_start/on_phase_1
#
# プレイヤー tick開始時のロビー処理

# チーム参加・参加解除
    team leave @s
    execute if entity @s[tag=Player.GhostTeam] run team join ghostTeam @s
