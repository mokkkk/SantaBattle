#> santa_battle_core:game_main/phase1/settings/m_life_apply
#
# ゲーム設定 チーム戦有無

# UI更新
    execute if score #game_manager game.setting.max_life matches 0 run data modify entity @s text set value '[{"text":"ライフ\\n<<","color":"aqua","bold":true},{"text":"∞","color":"aqua","bold":true},{"text":">>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.max_life matches 1 run data modify entity @s text set value '[{"text":"ライフ\\n<<","color":"aqua","bold":true},{"text":"♥","color":"aqua","bold":false},{"text":">>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.max_life matches 2 run data modify entity @s text set value '[{"text":"ライフ\\n<<","color":"aqua","bold":true},{"text":"♥♥","color":"aqua","bold":false},{"text":">>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.max_life matches 3 run data modify entity @s text set value '[{"text":"ライフ\\n<<","color":"aqua","bold":true},{"text":"♥♥♥","color":"aqua","bold":false},{"text":">>","color":"aqua","bold":true}]'
