#> santa_battle_core:player/item/snowball/start
#
# プレイヤー アイテム使用処理 雪玉関連

# storageにデータ保持
    execute store result storage santa_battle_core: Temp.Speed float 0.001 run scoreboard players get @s player.sled_status.current_speed

# 通常弾
    function santa_battle_core:player/item/snowball/0_normal/start with storage santa_battle_core: Temp

# わずかに減速
    execute if entity @s[tag=Player.OnSled] run scoreboard players operation @s player.sled_status.current_speed -= @s player.sled_status.attack_deceleration
    execute if entity @s[tag=Player.OnSled] if score @s player.sled_status.current_speed < @s player.sled_status.min_speed run scoreboard players operation @s player.sled_status.current_speed = @s player.sled_status.min_speed

# 終了
    data remove storage santa_battle_core: Temp
