#> santa_battle_core:game_main/phase1/settings/m_enable_team_apply
#
# ゲーム設定 チーム戦有無

# UI更新
    execute if score #game_manager game.setting.is_team matches 0 run data modify entity @s text set value '{"text":"<<個人戦>>","color":"green","bold":true}'
    execute if score #game_manager game.setting.is_team matches 1 run data modify entity @s text set value '{"text":"<<チーム戦>>","color":"green","bold":true}'
