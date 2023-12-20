#> santa_battle_core:other/item/summon
#
# アイテム用markerの処理

# TODO:アイテムIDの付与
    # execute store result score #temp_random temp run random value 0..5
    scoreboard players set #temp_random temp 1
    scoreboard players set #temp_cmd temp 100
    execute store result storage santa_battle_core: Temp.Cmd int 1 run scoreboard players operation #temp_cmd temp += #temp_random temp

# 召喚
    function santa_battle_core:other/item/m_summon_entity with storage santa_battle_core: Temp
    playsound entity.arrow.hit_player master @a ~ ~ ~ 5 1

# 近くの出現ポイントに出現済みタグを付与
    tag @e[type=marker,tag=Mob.ItemPointMarker,sort=nearest,limit=1] add Mob.ItemPointMarker.Disabled

# アイテムID付与
    scoreboard players operation @e[type=item_display,tag=Mob.ItemEntity,tag=Temp.Start] mob.item_id = #temp_random temp

# 終了
    tag @e[type=item_display,tag=Mob.ItemEntity,tag=Temp.Start] remove Temp.Start
    scoreboard players set #game_manager game.item_spawn_random 15
    scoreboard players reset #temp_random
    data remove storage santa_battle_core: Temp

# say item_summoned