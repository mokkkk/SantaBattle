#> santa_battle_core:player/item/snowball/start
#
# プレイヤー アイテム使用処理 雪玉関連

# storageにデータ保持
    execute store result storage santa_battle_core: Temp.Speed float 0.001 run scoreboard players get @s player.sled_status.current_speed

# 通常弾
    function santa_battle_core:player/item/snowball/0_normal/start with storage santa_battle_core: Temp

# 終了
    data remove storage santa_battle_core: Temp
