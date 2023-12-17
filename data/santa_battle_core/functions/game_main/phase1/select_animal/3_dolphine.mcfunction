#> santa_battle_core:game_main/phase1/select_animal/3_dolphine
#
# 動物選択 ヤギ

# 設定変更
    scoreboard players set @s player.sled_type 4
    scoreboard players set @s player.sled_summon_count 3

# 通知
    playsound ui.button.click master @s ~ ~ ~ 1 2
    playsound entity.dolphin.ambient_water master @s ~ ~ ~ 1 1
    title @s actionbar [{"text": "【ソリをひく動物を","color": "white","bold": true},{"text":"<<イルカ>>","color": "green"},{"text":"に設定しました】","color": "white","bold": true}]
