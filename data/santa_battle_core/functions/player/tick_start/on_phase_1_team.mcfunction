#> santa_battle_core:player/tick_start/on_phase_1_team
#
# プレイヤー tick開始時のロビー処理

# 強制チーム参加
    execute if entity @s[tag=!Player.RedTeam,tag=!Player.BlueTeam,tag=!Player.GreenTeam,tag=!Player.YellowTeam,tag=!Player.GhostTeam] run tag @s add Player.RedTeam

# チーム参加
    execute if entity @s[tag=Player.RedTeam] run team join redTeam @s
    execute if entity @s[tag=Player.BlueTeam] run team join blueTeam @s
    execute if entity @s[tag=Player.GreenTeam] run team join greenTeam @s
    execute if entity @s[tag=Player.YellowTeam] run team join yellowTeam @s
    execute if entity @s[tag=Player.GhostTeam] run team join ghostTeam @s
