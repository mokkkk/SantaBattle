#> santa_battle_core:player/item/snowball/5_spbox/summon
#
# 雪玉 使用開始処理

# 召喚
    summon item_display ~ ~ ~ {Glowing:1b,view_range:5f,glow_color_override:6356885,teleport_duration:1,Tags:["Mob.SpBox","Temp.Start"],brightness:{sky:15,block:15},item:{id:"minecraft:black_dye",Count:1b,tag:{CustomModelData:105}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]}}

# プレイヤーID付与
    scoreboard players operation @e[type=item_display,tag=Mob.SpBox,tag=Temp.Start,limit=1] player.id = @s player.id

# チーム付与
    execute if entity @s[team=redTeam] run tag @e[type=item_display,tag=Mob.SpBox,tag=Temp.Start,limit=1] add Player.RedTeam
    execute if entity @s[team=blueTeam] run tag @e[type=item_display,tag=Mob.SpBox,tag=Temp.Start,limit=1] add Player.BlueTeam
    execute if entity @s[team=greenTeam] run tag @e[type=item_display,tag=Mob.SpBox,tag=Temp.Start,limit=1] add Player.GreenTeam
    execute if entity @s[team=yellowTeam] run tag @e[type=item_display,tag=Mob.SpBox,tag=Temp.Start,limit=1] add Player.YellowTeam

# 終了
    tag @e[type=item_display,tag=Mob.SpBox,tag=Temp.Start] remove Temp.Start
