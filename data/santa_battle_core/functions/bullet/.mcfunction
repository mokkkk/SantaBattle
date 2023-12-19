#> santa_battle_core:bullet/
#
# 弾ごとに毎tick実行される処理

# 通常弾
    execute if entity @s[tag=Mob.Bullet.Normal] run function santa_battle_core:bullet/0_normal/

# アイテム
    # TNT弾
        execute if entity @s[tag=Mob.Bullet.Tnt] run function santa_battle_core:bullet/1_tnt/
