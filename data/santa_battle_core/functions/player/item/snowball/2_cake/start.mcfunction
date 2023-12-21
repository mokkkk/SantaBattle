#> santa_battle_core:player/item/snowball/2_cake/start
#
# 雪玉 使用開始処理

# 開始
    scoreboard players set @s player.item.using.cake 120
    playsound entity.firework_rocket.launch master @a ~ ~ ~ 2 1

# 雪玉消去
    kill @e[type=snowball,limit=1,sort=nearest]

# 終了
    scoreboard players set @s player.item.having 0
    # タイマー：なし
        execute if score @s player.item.count matches 1000.. run scoreboard players set @s player.item.count 0
