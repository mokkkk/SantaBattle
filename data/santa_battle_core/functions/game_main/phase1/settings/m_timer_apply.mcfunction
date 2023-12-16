#> santa_battle_core:game_main/phase1/settings/m_timer_apply
#
# ゲーム設定 チーム戦有無

# UI更新
    execute if score #game_manager game.setting.timer matches 1200 run data modify entity @s text set value '[{"text":"制限時間\\n","color":"aqua","bold":true},{"text":"<<1分>>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.timer matches 2400 run data modify entity @s text set value '[{"text":"制限時間\\n","color":"aqua","bold":true},{"text":"<<2分>>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.timer matches 3600 run data modify entity @s text set value '[{"text":"制限時間\\n","color":"aqua","bold":true},{"text":"<<3分>>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.timer matches 4800 run data modify entity @s text set value '[{"text":"制限時間\\n","color":"aqua","bold":true},{"text":"<<4分>>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.timer matches 6000 run data modify entity @s text set value '[{"text":"制限時間\\n","color":"aqua","bold":true},{"text":"<<5分>>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.timer matches 7200 run data modify entity @s text set value '[{"text":"制限時間\\n","color":"aqua","bold":true},{"text":"<<6分>>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.timer matches 8400 run data modify entity @s text set value '[{"text":"制限時間\\n","color":"aqua","bold":true},{"text":"<<7分>>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.timer matches 9600 run data modify entity @s text set value '[{"text":"制限時間\\n","color":"aqua","bold":true},{"text":"<<8分>>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.timer matches 10800 run data modify entity @s text set value '[{"text":"制限時間\\n","color":"aqua","bold":true},{"text":"<<9分>>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.timer matches 12000 run data modify entity @s text set value '[{"text":"制限時間\\n","color":"aqua","bold":true},{"text":"<<10分>>","color":"aqua","bold":true}]'
