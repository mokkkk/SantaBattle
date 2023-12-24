#> santa_battle_core:other/omake_ring
#
# あそび用markerの処理

# スコア減算
    execute if score @s player.timer matches 1.. run scoreboard players remove @s player.timer 1

# 近くをプレイヤーが通ったら花火を上げる
    execute if entity @s[tag=!Mob.Omake.Ring.Big] unless score @s player.timer matches 1.. if entity @a[distance=..3] run summon firework_rocket ~ ~10 ~ {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;14614271,16727357,8585123]}]}}}}
    execute if entity @s[tag=!Mob.Omake.Ring.Big] unless score @s player.timer matches 1.. if entity @a[distance=..3] run scoreboard players set @s player.timer 60
    execute if entity @s[tag=Mob.Omake.Ring.Big] unless score @s player.timer matches 1.. if entity @a[distance=..6] run summon firework_rocket ~ ~18 ~ {LifeTime:30,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Colors:[I;14614271,16727357,8585123]}]}}}}
    execute if entity @s[tag=Mob.Omake.Ring.Big] unless score @s player.timer matches 1.. if entity @a[distance=..6] run scoreboard players set @s player.timer 60
