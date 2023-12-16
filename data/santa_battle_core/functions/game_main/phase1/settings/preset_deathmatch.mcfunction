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
    title @a actionbar [{"text": "【プリセット","color": "light_purple","bold": true},{"text":"「デスマッチ」","color": "red"},{"text":"を適用しました】","color": "light_purple","bold": true}]

# UI更新
    function santa_battle_core:game_main/phase1/settings/m_enable_team_apply with storage santa_battle_core: Data.Ui.EnableTeam.Pos
    function santa_battle_core:game_main/phase1/settings/m_timer_apply with storage santa_battle_core: Data.Ui.Timer.Pos
    function santa_battle_core:game_main/phase1/settings/m_life_apply with storage santa_battle_core: Data.Ui.Life.Pos

# setblock ~ ~1 ~ dark_oak_wall_sign[facing=west]{front_text:{messages:['{"text":""}','{"text":"ルールプリセット","bold":true,"color":"white"}','{"text":"「デスマッチ」","color":"red","bold":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/function santa_battle_core:game_main/phase1/settings/preset_deathmatch"}}','{"text":""}']}} replace