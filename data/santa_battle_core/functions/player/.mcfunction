#> santa_battle_core:player/
#
# プレイヤーごとに毎tick実行される処理

# -------------------------------------------------------
# 開始処理
    function santa_battle_core:player/tick_start/
# -------------------------------------------------------

# バトル中：着地処理
    execute if entity @s[nbt={OnGround:1b}] if score #game_manager game.phase matches 3 unless block ~ ~-1 ~ white_stained_glass unless score @s player.invulnerable_timer matches 1.. run function santa_battle_core:player/landing/

# 死亡処理
    execute if entity @s[tag=Player.Flag.Death] run function santa_battle_core:player/death/

# ソリ関連処理
    execute if entity @s[tag=Player.OnSled] run function santa_battle_core:player/sled/

# アイテム処理
    execute at @s run function santa_battle_core:player/item/

# -------------------------------------------------------
# 終了処理
    function santa_battle_core:player/tick_end/
# -------------------------------------------------------
