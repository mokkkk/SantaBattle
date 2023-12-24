#> santa_battle_core:game_main/phase1/settings/m_item_apply

#
# ゲーム設定 チーム戦有無

# UI更新
    execute if score #game_manager game.setting.max_item_timer matches 200 run data modify entity @s text set value '[{"text":"アイテム\\n<<","color":"aqua","bold":true},{"text":"多め","color":"aqua","bold":true},{"text":">>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.max_item_timer matches 400 run data modify entity @s text set value '[{"text":"アイテム\\n<<","color":"aqua","bold":true},{"text":"ふつう","color":"aqua","bold":true},{"text":">>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.max_item_timer matches 800 run data modify entity @s text set value '[{"text":"アイテム\\n<<","color":"aqua","bold":true},{"text":"少なめ","color":"aqua","bold":true},{"text":">>","color":"aqua","bold":true}]'
    execute if score #game_manager game.setting.max_item_timer matches 100000 run data modify entity @s text set value '[{"text":"アイテム\\n<<","color":"aqua","bold":true},{"text":"出ない","color":"aqua","bold":true},{"text":">>","color":"aqua","bold":true}]'