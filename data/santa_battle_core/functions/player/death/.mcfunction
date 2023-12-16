#> santa_battle_core:player/death/
#
# プレイヤー死亡時に実行される処理

# 紐づけ
    scoreboard players operation #temporary_player_id player.id = @s player.id
    execute as @e[tag=Mob.SledMob] if score @s player.id = #temporary_player_id player.id run tag @s add Temp.Target
    execute as @e[type=minecart] if score @s player.id = #temporary_player_id player.id run tag @s add Temp.Target
    execute as @e[type=minecart,tag=Temp.Target] on passengers if entity @s[tag=Mob.SledRotationMarker] run tag @s add Temp.Target

# ソリと動物を消去
    tp @e[tag=Temp.Target] ~ ~-1000 ~
    kill @e[tag=Temp.Target]

# スコアリセット
    scoreboard players set @s player.sled_summon_count 3

# 無敵時間付与：5秒
    scoreboard players set @s player.invulnerable_timer 100

# タグリセット
    tag @s remove Player.OnSled
