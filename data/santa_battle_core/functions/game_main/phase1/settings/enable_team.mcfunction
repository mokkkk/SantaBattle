#> santa_battle_core:game_main/phase1/settings/enable_team
#
# ゲーム設定 チーム戦有無

# 設定変更
    scoreboard players add #game_manager game.setting.is_team 1
    execute if score #game_manager game.setting.is_team matches 2.. run scoreboard players set #game_manager game.setting.is_team 0

# 通知
    execute as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 2
    execute if score #game_manager game.setting.is_team matches 0 run title @a actionbar [{"text": "【チーム戦を","color": "light_purple","bold": true},{"text":"[無効]","color": "red"},{"text":"に設定しました】","color": "light_purple","bold": true}]
    execute if score #game_manager game.setting.is_team matches 1 run title @a actionbar [{"text": "【チーム戦を","color": "light_purple","bold": true},{"text":"[有効]","color": "blue"},{"text":"に設定しました】","color": "light_purple","bold": true}]

# UI更新
    function santa_battle_core:game_main/phase1/settings/m_enable_team_apply with storage santa_battle_core: Data.Ui.EnableTeam.Pos

# setblock ~ ~1 ~ dark_oak_wall_sign[facing=west]{front_text:{messages:['{"text":""}','{"text":"チーム戦","bold":true,"color":"white"}','{"text":"[有効]","color":"blue","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/enable_team"}}','{"text":""}']}} replace