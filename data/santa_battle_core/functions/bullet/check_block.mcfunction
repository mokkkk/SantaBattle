#> santa_battle_core:bullet/check_block
#
# 弾 共通移動処理 壁着弾確認

# 壁に着弾する場合は消去
    execute unless block ~ ~ ~ #santa_battle_core:no_collision run tag @s add Bullet.IsHitBlock
    execute positioned ^ ^ ^1 unless entity @s[distance=..1] run function santa_battle_core:bullet/check_block
