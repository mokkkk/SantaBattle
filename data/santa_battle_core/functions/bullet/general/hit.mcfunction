#> santa_battle_core:bullet/general/hit
#
# 弾 ヒット判定

# TODO:プレイヤーをkill
    kill @s

# 着弾
    tag @e[type=item_display,tag=Temp.Target] add Bullet.IsHitBlock
