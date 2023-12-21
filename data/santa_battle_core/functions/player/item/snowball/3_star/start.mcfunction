#> santa_battle_core:player/item/snowball/3_star/start
#
# 雪玉 使用開始処理

# 開始
    scoreboard players set @s player.invulnerable_timer 200
    playsound entity.player.levelup master @a ~ ~ ~ 2 1
    particle end_rod ~ ~ ~ 0.1 0.1 0.1 0.5 30
    particle flash ~ ~ ~ 0 0 0 0 1

# 雪玉消去
    kill @e[type=snowball,limit=1,sort=nearest]

# 終了
    scoreboard players set @s player.item.having 0
    # タイマー：なし
        execute if score @s player.item.count matches 1000.. run scoreboard players set @s player.item.count 0
