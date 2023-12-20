#> santa_battle_core:game_main/phase1/team/join_red
#
# ロビーのtick処理

# leave
    function santa_battle_core:game_main/phase1/team/leave

# 赤チームにjoin
    tag @s add Player.RedTeam

# チーム有効化
    execute if score #game_manager game.setting.is_team matches 1.. run function santa_battle_core:game_main/phase1/team/enable_team

# 通知
    execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 2
    title @a actionbar [{"text": "【","color": "white","bold": true},{"text": "赤チーム","color": "red","bold": true},{"text":"に加入しました】","color": "white","bold": true}]
