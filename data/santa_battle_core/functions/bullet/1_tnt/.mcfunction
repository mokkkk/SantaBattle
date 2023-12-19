#> santa_battle_core:bullet/1_tnt/
#
# TNT弾tick処理

# id取得
    tag @s add Temp.Target
    scoreboard players operation #temp player.id = @s player.id

# タイマー増加
    scoreboard players add @s bullet.timer 1

# 弾を回転させる
    execute if score @s bullet.timer matches 1 run data modify entity @s transformation.right_rotation set value [360f,0f,0f]

# 移動
    function santa_battle_core:bullet/general/move_start

# 着弾
    execute as @a[distance=..3.5] unless entity @s[gamemode=spectator] unless score @s player.invulnerable_timer matches 1.. run tag @s add Temp.Hit
    execute if entity @s[tag=Player.RedTeam] run tag @a[team=redTeam] remove Temp.Hit
    execute if entity @s[tag=Player.BlueTeam] run tag @a[team=blueTeam] remove Temp.Hit
    execute if entity @s[tag=Player.GreenTeam] run tag @a[team=greenTeam] remove Temp.Hit
    execute if entity @s[tag=Player.YellowTeam] run tag @a[team=yellowTeam] remove Temp.Hit
    execute as @a[tag=Temp.Hit] unless score @s player.id = #temp player.id run function santa_battle_core:bullet/general/hit

# 爆発
    execute if entity @s[tag=Bullet.IsHitBlock] run function santa_battle_core:bullet/1_tnt/hit

# 終了
    tag @a remove Temp.Hit
    tag @s remove Temp.Target
    scoreboard players reset #temp
    execute if score @s bullet.timer matches 1000.. run kill @s
