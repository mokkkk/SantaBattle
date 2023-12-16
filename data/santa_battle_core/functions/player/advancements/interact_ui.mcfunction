#> santa_battle_core:player/advancements/interact_ui
#
# interactionクリック時実行

# 実行
    execute as @e[tag=vaDisplayHB,distance=..6] if data entity @s interaction as @s at @s run function santa_battle_core:player/advancements/click_ui

# 終了
    advancement revoke @s only santa_battle_core:player_interacted