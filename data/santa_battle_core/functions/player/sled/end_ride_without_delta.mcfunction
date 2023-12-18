#> santa_battle_core:player/sled/end_ride_without_delta
#
# ソリ騎乗解除処理

# 紐づけ
    scoreboard players operation #temporary_player_id player.id = @s player.id
    execute as @e[tag=Mob.SledMob] if score @s player.id = #temporary_player_id player.id run tag @s add Temp.Target
    execute as @e[type=minecart] if score @s player.id = #temporary_player_id player.id run tag @s add Temp.Target
    execute as @e[type=minecart,tag=Temp.Target] on passengers if entity @s[tag=Mob.SledRotationMarker] run tag @s add Temp.Target

# ride解除
    ride @s dismount

# ソリと動物を消去
    execute as @e[type=item_display,tag=Mob.Hogera,tag=Temp.Target] run function animated_java:hogera/remove/this
    execute unless entity @e[type=item_display,tag=Mob.Hogera] run kill @e[type=chicken,tag=Mob.SledMob.Sub1]
    tp @e[tag=Temp.Target] ~ ~-1000 ~
    kill @e[tag=Temp.Target]
    

# 終了
    scoreboard players set @s player.sled_status.current_speed 0
    tag @s remove Player.OnSled
