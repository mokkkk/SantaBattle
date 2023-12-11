#> santa_battle_core:bullet/0_normal/
#
# 通常弾tick処理

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
    tag @a[distance=..1.5] add Temp.Hit
    execute as @a[tag=Temp.Hit] unless score @s player.id = #temp player.id run function santa_battle_core:bullet/general/hit

# 爆発
    execute if entity @s[tag=Bullet.IsHitBlock] run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
    execute if entity @s[tag=Bullet.IsHitBlock] run playsound entity.generic.explode master @a ~ ~ ~ 1.5 0.7

# 終了
    tag @a remove Temp.Hit
    tag @s remove Temp.Target
    scoreboard players reset #temp
    execute if score @s bullet.timer matches 1000.. run kill @s
