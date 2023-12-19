#> santa_battle_core:game_main/phase3/item/check
#
# アイテムスポーン処理

# 確率でスポーン
    execute store result score #temp_random temp run random roll 0..100
    execute if score #temp_random temp <= #game_manager game.item_spawn_random positioned as @e[type=marker,tag=Mob.ItemPointMarker,tag=!Mob.ItemPointMarker.Disabled,limit=1,sort=random] run function santa_battle_core:other/item/summon

# 確率上昇
    scoreboard players add #game_manager game.item_spawn_random 15

# タイマーリセット
    scoreboard players operation #game_manager game.item_timer = #game_manager game.setting.max_item_timer

# 終了
    scoreboard players reset #temp_random
