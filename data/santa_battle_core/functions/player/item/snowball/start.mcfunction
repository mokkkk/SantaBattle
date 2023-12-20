#> santa_battle_core:player/item/snowball/start
#
# プレイヤー アイテム使用処理 雪玉関連

# validate
    # cunnrent_speedが設定されていない場合，0にする
        execute unless score @s player.sled_status.current_speed matches -2147483648.. run scoreboard players set @s player.sled_status.current_speed 0

# storageにデータ保持
    execute store result storage santa_battle_core: Temp.Speed float 0.001 run scoreboard players get @s player.sled_status.current_speed

# 通常弾
    execute unless score @s player.item.having matches 1.. run function santa_battle_core:player/item/snowball/0_normal/m_start with storage santa_battle_core: Temp

# アイテム
    # TNT
        execute if score @s player.item.having matches 1 run function santa_battle_core:player/item/snowball/1_tnt/m_start with storage santa_battle_core: Temp

# ソリをわずかに減速
    execute if entity @s[tag=Player.OnSled] run scoreboard players operation @s player.sled_status.current_speed -= @s player.sled_status.attack_deceleration
    execute if entity @s[tag=Player.OnSled] if score @s player.sled_status.current_speed < @s player.sled_status.min_speed run scoreboard players operation @s player.sled_status.current_speed = @s player.sled_status.min_speed

# 雪玉補充
    give @s snowball{display:{Name:'{"text":"プレゼントボックス","color":"red","italic":false}',Lore:['{"text":"サンタの基本装備．","italic":false}','{"text":"子供たちに夢を与えることもできるし，","italic":false}','{"text":"競合他者を撃ち落とすこともできる．","italic":false}','{"text":"拾ったものを入れておくこともできる．","italic":false}']}} 1

# 終了
    data remove storage santa_battle_core: Temp
