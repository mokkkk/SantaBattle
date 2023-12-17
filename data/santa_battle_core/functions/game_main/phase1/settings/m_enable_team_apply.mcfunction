#> santa_battle_core:game_main/phase1/settings/m_enable_team_apply
#
# ゲーム設定 チーム戦有無

# UI更新
    execute if score #game_manager game.setting.is_team matches 0 run data modify entity @s text set value '[{"text":"ルール\\n<<","color":"aqua","bold":true},{"text":"個人戦","color":"aqua","bold":true},{"text":">>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.is_team matches 1 run data modify entity @s text set value '[{"text":"ルール\\n<<","color":"aqua","bold":true},{"text":"チーム戦","color":"aqua","bold":true},{"text":">>","color":"aqua","bold":true}]'

# チーム適用
    execute if score #game_manager game.setting.is_team matches 0 run function santa_battle_core:game_main/phase1/team/disable_team
    execute if score #game_manager game.setting.is_team matches 1 run function santa_battle_core:game_main/phase1/team/enable_team
