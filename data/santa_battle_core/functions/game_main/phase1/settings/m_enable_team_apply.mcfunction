#> santa_battle_core:game_main/phase1/settings/m_enable_team_apply
#
# ゲーム設定 チーム戦有無

# UI更新
    $execute if score #game_manager game.setting.is_team matches 0 run data modify block $(X) $(Y) $(Z) front_text.messages set value ['{"text":""}','{"text":"チーム戦","bold":true,"color":"white"}','{"text":"[無効]","color":"red","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/enable_team"}}','{"text":""}']
    $execute if score #game_manager game.setting.is_team matches 1 run data modify block $(X) $(Y) $(Z) front_text.messages set value ['{"text":""}','{"text":"チーム戦","bold":true,"color":"white"}','{"text":"[有効]","color":"blue","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/enable_team"}}','{"text":""}']