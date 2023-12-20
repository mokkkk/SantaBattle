#> santa_battle_core:other/item/pickup_by_player
#
# アイテムの処理

# 取得
    scoreboard players operation @a[tag=!Player.Ghost,distance=..2.5,sort=nearest,limit=1] player.item.having = @s mob.item_id
    playsound entity.player.levelup master @a ~ ~ ~ 2 1
    scoreboard players set @a[tag=!Player.Ghost,distance=..2.5,sort=nearest,limit=1] player.item.count 10000

# 終了
    kill @s

# テスト用通知
    execute as @a[tag=!Player.Ghost,distance=..2.5,sort=nearest,limit=1] run say アイテムを入手
