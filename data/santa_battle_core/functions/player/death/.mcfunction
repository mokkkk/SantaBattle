#> santa_battle_core:player/death/
#
# プレイヤー死亡時に実行される処理

# 紐づけ
    scoreboard players operation #temporary_player_id player.id = @s player.id
    execute as @e[tag=Mob.SledMob] if score @s player.id = #temporary_player_id player.id run tag @s add Temp.Target
    execute as @e[type=minecart] if score @s player.id = #temporary_player_id player.id run tag @s add Temp.Target
    execute as @e[type=minecart,tag=Temp.Target] on passengers if entity @s[tag=Mob.SledRotationMarker] run tag @s add Temp.Target

# ソリと動物を消去
    execute as @e[type=item_display,tag=Mob.Hogera,tag=Temp.Target] run function animated_java:hogera/remove/this
    execute unless entity @e[type=item_display,tag=Mob.Hogera] run kill @e[type=chicken,tag=Mob.SledMob.Sub1]
    tp @e[tag=Temp.Target] ~ ~-1000 ~
    kill @e[tag=Temp.Target]
    

# スコアリセット
    scoreboard players set @s player.sled_summon_count 3

# 無敵時間付与：5秒
    scoreboard players set @s player.invulnerable_timer 100

# spectator化
    execute if entity @s[tag=Player.Ghost] run gamemode spectator @s

# リスポーン
    execute if entity @s[tag=Player.Ghost] if score #game_manager game.phase matches 3 run spawnpoint @a 319 189 15
    execute if entity @s[tag=!Player.Ghost] if score #game_manager game.phase matches 3 run function santa_battle_core:game_main/phase3/spawn/respawn

# タグリセット
    tag @s remove Player.OnSled
