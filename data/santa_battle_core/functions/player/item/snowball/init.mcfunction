#> santa_battle_core:player/item/snowball/init
#
# 使用開始処理 共通初期化処理

# 雪玉消去
    kill @e[type=snowball,limit=1,sort=nearest]

# id取得
    scoreboard players operation @s player.id = @a[tag=Temp.Target] player.id

# 弾速取得
    execute store result score @s bullet.status.speed_x run data get storage santa_battle_core: Temp.Pos[0] 1000
    execute store result score @s bullet.status.speed_y run data get storage santa_battle_core: Temp.Pos[1] 1000
    execute store result score @s bullet.status.speed_z run data get storage santa_battle_core: Temp.Pos[2] 1000

# 角度設定
    data modify entity @s Rotation set from entity @a[tag=Temp.Target,limit=1,sort=nearest] Rotation
