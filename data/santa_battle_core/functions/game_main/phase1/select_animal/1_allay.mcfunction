#> santa_battle_core:game_main/phase1/select_animal/1_allay
#
# 動物選択 アレイ

# 設定変更
    scoreboard players set @s player.sled_type 2
    scoreboard players set @s player.sled_summon_count 3

# 通知
    playsound ui.button.click master @s ~ ~ ~ 1 2
    playsound entity.allay.ambient_with_item master @s ~ ~ ~ 1 1
    title @s actionbar [{"text": "【ソリをひく動物を","color": "white","bold": true},{"text":"<<アレイ>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
