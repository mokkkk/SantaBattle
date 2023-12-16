#> santa_battle_core:game_main/phase1/settings/m_life_apply
#
# ゲーム設定 チーム戦有無

# UI更新
    execute if score #game_manager game.setting.max_life matches 0 run data modify entity @s text set value '{"text":"<<無制限>>","color":"green","bold":true}'
    execute if score #game_manager game.setting.max_life matches 1 run data modify entity @s text set value '{"text":"<<1回まで>>","color":"green","bold":true}'
    execute if score #game_manager game.setting.max_life matches 2 run data modify entity @s text set value '{"text":"<<2回まで>>","color":"green","bold":true}'
    execute if score #game_manager game.setting.max_life matches 3 run data modify entity @s text set value '{"text":"<<3回まで>>","color":"green","bold":true}'
