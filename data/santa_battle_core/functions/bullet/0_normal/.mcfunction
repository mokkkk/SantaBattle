#> santa_battle_core:bullet/0_normal/
#
# 通常弾tick処理

# タイマー増加
    scoreboard players add @s bullet.timer 1

# 移動
    function santa_battle_core:bullet/move_start

# 爆発
    execute if entity @s[tag=Bullet.IsHitBlock] run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
    execute if entity @s[tag=Bullet.IsHitBlock] run playsound entity.generic.explode master @a ~ ~ ~ 2 0.7

# 終了
    execute if score @s bullet.timer matches 1000.. run kill @s
