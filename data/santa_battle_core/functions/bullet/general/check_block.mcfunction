#> santa_battle_core:bullet/general/check_block
#
# 弾 共通移動処理 壁着弾確認

# プレイヤーヒット判定
    tag @a[distance=..1.5] add Temp.Hit

# 壁に着弾する場合は消去
    execute align xyz unless block ~ ~ ~ #santa_battle_core:no_collision run tag @s add Bullet.IsHitBlock
    execute if entity @s[tag=Mob.Bullet.IsHitBlock] run tp @s ~ ~ ~
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Bullet.IsHitBlock] unless entity @s[distance=..0.5] run function santa_battle_core:bullet/general/check_block
