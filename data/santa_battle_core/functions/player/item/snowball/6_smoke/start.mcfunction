#> santa_battle_core:player/item/snowball/6_smoke/start
#
# 雪玉 使用開始処理

# 開始
    playsound block.fire.extinguish master @a ~ ~ ~ 2 0.5
    particle campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.05 40
    effect give @a[distance=1..30] darkness 5 0 true

# 雪玉消去
    kill @e[type=snowball,limit=1,sort=nearest]

# 終了
    scoreboard players set @s player.item.having 0
    # タイマー：なし
        execute if score @s player.item.count matches 1000.. run scoreboard players set @s player.item.count 0
