#> santa_battle_core:bullet/general/hit
#
# 弾 ヒット判定

# TODO:プレイヤーをkill
    kill @s

# 着弾
    tag @e[type=item_display,tag=Temp.Target] add Bullet.IsHitBlock

# 攻撃元取得
    execute as @a if score @s player.id = #temp player.id run tag @s add Temp.Killer
    tellraw @a [{"text": "<"},{"selector":"@a[tag=Temp.Killer]"},{"text": "> が <"},{"selector":"@s"},{"text": "> に死をプレゼント！"}]

# 終了
    tag @a remove Temp.Killer
