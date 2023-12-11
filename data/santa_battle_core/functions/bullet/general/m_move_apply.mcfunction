#> santa_battle_core:bullet/general/m_move_apply
#
# 弾 共通移動処理

# 壁着弾確認
    $execute unless block ~$(X) ~$(Y) ~$(Z) #santa_battle_core:no_collision run tag @s add Bullet.IsHitBlock
    $execute unless entity @s[tag=Bullet.IsHitBlock] positioned ~$(X) ~$(Y) ~$(Z) unless entity @s[distance=..0.5] facing entity @s feet run function santa_battle_core:bullet/general/check_block
    execute if entity @s[tag=Bullet.IsHitBlock] run kill @s

# ロード範囲外に出そうな場合は消去
    $execute unless loaded ~$(X) ~$(Y) ~$(Z) run kill @s

# 移動
    $tp @s ~$(X) ~$(Y) ~$(Z) ~ ~1
