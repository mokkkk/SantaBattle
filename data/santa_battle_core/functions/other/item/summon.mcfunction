#> santa_battle_core:other/item/summon
#
# アイテム用markerの処理

# 召喚
    summon item_display ~ ~ ~ {Glowing:1b,view_range:5f,glow_color_override:6356885,teleport_duration:1,Tags:["Mob.ItemEntity","Temp.Start"],brightness:{sky:15,block:15},item:{id:"minecraft:stone",Count:1b}}
    playsound entity.arrow.hit_player master @a ~ ~ ~ 5 1

# 近くの出現ポイントに出現済みタグを付与
    tag @e[type=marker,tag=Mob.ItemPointMarker,sort=nearest,limit=1] add Mob.ItemPointMarker.Disabled

# 終了
    tag @e[type=item_display,tag=Mob.ItemEntity,tag=Temp.Start] remove Temp.Start
    scoreboard players set #game_manager game.item_spawn_random 15

say summon