#> santa_battle_core:game_main/phase1/settings/m_timer
#
# ゲーム設定 チーム戦有無

# UI更新
    $execute if score #game_manager game.setting.timer matches 1200 run data modify block $(X) $(Y) $(Z) front_text.messages set value ['{"text":""}','{"text":"制限時間","bold":true,"color":"white"}','{"text":"[1分]","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/timer"}}','{"text":""}']
    $execute if score #game_manager game.setting.timer matches 2400 run data modify block $(X) $(Y) $(Z) front_text.messages set value ['{"text":""}','{"text":"制限時間","bold":true,"color":"white"}','{"text":"[2分]","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/timer"}}','{"text":""}']
    $execute if score #game_manager game.setting.timer matches 3600 run data modify block $(X) $(Y) $(Z) front_text.messages set value ['{"text":""}','{"text":"制限時間","bold":true,"color":"white"}','{"text":"[3分]","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/timer"}}','{"text":""}']
    $execute if score #game_manager game.setting.timer matches 4800 run data modify block $(X) $(Y) $(Z) front_text.messages set value ['{"text":""}','{"text":"制限時間","bold":true,"color":"white"}','{"text":"[4分]","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/timer"}}','{"text":""}']
    $execute if score #game_manager game.setting.timer matches 6000 run data modify block $(X) $(Y) $(Z) front_text.messages set value ['{"text":""}','{"text":"制限時間","bold":true,"color":"white"}','{"text":"[5分]","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/timer"}}','{"text":""}']
    $execute if score #game_manager game.setting.timer matches 7200 run data modify block $(X) $(Y) $(Z) front_text.messages set value ['{"text":""}','{"text":"制限時間","bold":true,"color":"white"}','{"text":"[6分]","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/timer"}}','{"text":""}']
    $execute if score #game_manager game.setting.timer matches 8400 run data modify block $(X) $(Y) $(Z) front_text.messages set value ['{"text":""}','{"text":"制限時間","bold":true,"color":"white"}','{"text":"[7分]","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/timer"}}','{"text":""}']
    $execute if score #game_manager game.setting.timer matches 9600 run data modify block $(X) $(Y) $(Z) front_text.messages set value ['{"text":""}','{"text":"制限時間","bold":true,"color":"white"}','{"text":"[8分]","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/timer"}}','{"text":""}']
    $execute if score #game_manager game.setting.timer matches 10800 run data modify block $(X) $(Y) $(Z) front_text.messages set value ['{"text":""}','{"text":"制限時間","bold":true,"color":"white"}','{"text":"[9分]","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/timer"}}','{"text":""}']
    $execute if score #game_manager game.setting.timer matches 12000 run data modify block $(X) $(Y) $(Z) front_text.messages set value ['{"text":""}','{"text":"制限時間","bold":true,"color":"white"}','{"text":"[10分]","color":"gold","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/timer"}}','{"text":""}']