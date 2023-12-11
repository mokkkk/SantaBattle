#> santa_battle_core:player/
#
# プレイヤーごとに毎tick実行される処理

# -------------------------------------------------------
# 開始処理
    function santa_battle_core:player/tick_start/
# -------------------------------------------------------

# ソリ関連処理
    execute if entity @s[tag=Player.OnSled] run function santa_battle_core:player/sled/

# アイテム処理
    execute at @s run function santa_battle_core:player/item/

# -------------------------------------------------------
# 終了処理
    function santa_battle_core:player/tick_end/
# -------------------------------------------------------
