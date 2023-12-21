#> santa_battle_core:player/item/snowball/5_spbox/start
#
# 雪玉 使用開始処理

# 開始
    playsound block.chest.open master @a ~ ~ ~ 2 1

# 雪玉消去
    kill @e[type=snowball,limit=1,sort=nearest]

# 召喚
    function santa_battle_core:player/item/snowball/5_spbox/summon

# 終了
    scoreboard players set @s player.item.having 0
    # タイマー：なし
        execute if score @s player.item.count matches 1000.. run scoreboard players set @s player.item.count 0
