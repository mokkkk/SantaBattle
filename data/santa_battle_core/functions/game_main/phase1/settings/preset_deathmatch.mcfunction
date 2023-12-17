#> santa_battle_core:game_main/phase1/settings/preset_deathmatch
#
# ゲーム設定 プリセット：デスマッチ

# 設定変更
    scoreboard players set #game_manager game.setting.is_team 0
    scoreboard players set #game_manager game.setting.timer 12000
    scoreboard players set #game_manager game.setting.max_life 1
    scoreboard players set #game_manager game.setting.is_life 1

# 通知
    execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 2
    title @a actionbar [{"text": "【プリセット","color": "white","bold": true},{"text":"<<サバイバル>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]

# UI更新
    execute as @e[tag=vaDisplay_TeamMode] on passengers if entity @s[tag=vaDisplay_Lore] run function santa_battle_core:game_main/phase1/settings/m_enable_team_apply
    execute as @e[tag=vaDisplay_Timer] on passengers if entity @s[tag=vaDisplay_Lore] run function santa_battle_core:game_main/phase1/settings/m_timer_apply
    execute as @e[tag=vaDisplay_Life] on passengers if entity @s[tag=vaDisplay_Lore] run function santa_battle_core:game_main/phase1/settings/m_life_apply
