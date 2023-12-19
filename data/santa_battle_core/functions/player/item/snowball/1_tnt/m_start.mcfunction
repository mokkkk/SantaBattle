#> santa_battle_core:player/item/snowball/1_tnt/m_start
#
# 雪玉 使用開始処理

# 開始
    tag @s add Temp.Target

# 弾召喚
    execute if entity @s[tag=!Player.OnSled] positioned ~ ~1.65 ~ run summon item_display ^ ^ ^1 {teleport_duration:3,Tags:["Temp.Start","Mob.Bullet","Mob.Bullet.Tnt"],transformation:[0.5000f,0.0000f,0.0000f,-0.2500f,0.0000f,0.5000f,0.0000f,-0.2500f,0.0000f,0.0000f,0.5000f,-0.2500f,0.0000f,0.0000f,0.0000f,1.0000f],item:{id:"minecraft:tnt",Count:1b}}
    execute if entity @s[tag=Player.OnSled] positioned ~ ~1.65 ~ run summon item_display ^ ^ ^ {teleport_duration:3,Tags:["Temp.Start","Mob.Bullet","Mob.Bullet.Tnt"],transformation:[0.5000f,0.0000f,0.0000f,-0.2500f,0.0000f,0.5000f,0.0000f,-0.2500f,0.0000f,0.0000f,0.5000f,-0.2500f,0.0000f,0.0000f,0.0000f,1.0000f],item:{id:"minecraft:tnt",Count:1b}}

# 弾速計算用marker召喚
    execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["Temp.Calc"]}
    data modify storage santa_battle_core: Temp.Pos set from entity @e[type=marker,tag=Temp.Calc,limit=1] Pos
    $execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^$(Speed) run summon marker ~ ~ ~ {Tags:["Temp.Calc.PlayerSpeed"]}
    data modify storage santa_battle_core: Temp.PlayerSpeed set from entity @e[type=marker,tag=Temp.Calc.PlayerSpeed,limit=1] Pos

# 重力加速度設定:0.95
    scoreboard players set @e[type=item_display,tag=Temp.Start,tag=Mob.Bullet] bullet.status.speed_g 950

# 減速率設定:0.99
    scoreboard players set @e[type=item_display,tag=Temp.Start,tag=Mob.Bullet] bullet.status.speed_deceleration_mult 990

# チームに追加
    execute if entity @s[team=redTeam] run tag @e[type=item_display,tag=Temp.Start,tag=Mob.Bullet] add Player.RedTeam
    execute if entity @s[team=blueTeam] run tag @e[type=item_display,tag=Temp.Start,tag=Mob.Bullet] add Player.BlueTeam
    execute if entity @s[team=greenTeam] run tag @e[type=item_display,tag=Temp.Start,tag=Mob.Bullet] add Player.GreenTeam
    execute if entity @s[team=yellowTeam] run tag @e[type=item_display,tag=Temp.Start,tag=Mob.Bullet] add Player.YellowTeam

# 初期化
    execute as @e[type=item_display,tag=Temp.Start,tag=Mob.Bullet] run function santa_battle_core:player/item/snowball/init

# 終了
    tag @s remove Temp.Target
    kill @e[type=marker,tag=Temp.Calc]
    kill @e[type=marker,tag=Temp.Calc.PlayerSpeed]
    tag @e[tag=Temp.Start] remove Temp.Start
    scoreboard players set @s player.item.having 0
