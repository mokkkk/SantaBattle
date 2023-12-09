#> santa_battle_core:player/sled/
#
# ソリのメイン処理

# 紐づけ
    scoreboard players operation #temporary_player_id player.id = @s player.id
    execute as @e[type=goat] if score @s player.id = #temporary_player_id player.id run tag @s add Temp.Target
    execute as @e[type=minecart] if score @s player.id = #temporary_player_id player.id run tag @s add Temp.Target

# 移動
    execute at @s run function santa_battle_core:player/sled/move/

# 騎乗解除
    execute unless predicate santa_battle_core:player/riding_sled run function santa_battle_core:player/sled/end_ride

# 終了
    tag @e[tag=Temp.Target] remove Temp.Target
