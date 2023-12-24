#> santa_battle_core:other/spbox/pickup_by_player
#
# アイテムの処理

# タグ付与
    tag @a[tag=!Player.Ghost,distance=..2.5,sort=nearest,limit=1] add Temp.SpBoxTarget

# ターゲットか否か計算
    execute if score @s player.id = @a[tag=Temp.SpBoxTarget,limit=1] player.id run tag @a remove Temp.SpBoxTarget
    execute if entity @s[tag=Player.RedTeam] run tag @a[team=redTeam,tag=Temp.SpBoxTarget] remove Temp.SpBoxTarget
    execute if entity @s[tag=Player.BlueTeam] run tag @a[team=blueTeam,tag=Temp.SpBoxTarget] remove Temp.SpBoxTarget
    execute if entity @s[tag=Player.GreenTeam] run tag @a[team=greenTeam,tag=Temp.SpBoxTarget] remove Temp.SpBoxTarget
    execute if entity @s[tag=Player.YellowTeam] run tag @a[team=yellowTeam,tag=Temp.SpBoxTarget] remove Temp.SpBoxTarget

# キル処理
    execute if entity @a[tag=Temp.SpBoxTarget] run function santa_battle_core:other/spbox/kill

# 終了
    tag @a[tag=Temp.SpBoxTarget] remove Temp.SpBoxTarget
