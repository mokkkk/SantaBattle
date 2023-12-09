#> santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/start
#
# ジングル・ベル 使用開始処理

# 動物を召喚
    execute at @s anchored eyes positioned ^ ^ ^1 run summon goat ^ ^ ^2.8 {Tags:["Temp.Start","Mob.SledMob"],NoGravity:1b,Silent:1b,NoAI:1b,Invulnerable:1b}
    scoreboard players operation @e[type=goat,tag=Temp.Start] player.id = @s player.id
# ソリを召喚
    execute at @s anchored eyes positioned ^ ^ ^2 run summon minecart ^ ^ ^ {Tags:["Temp.Start"],NoGravity:1b,Silent:1b}
    scoreboard players operation @e[type=minecart,tag=Temp.Start] player.id = @s player.id
# 動物とソリをリードで繋ぐ
    execute as @e[type=goat,tag=Temp.Start] run data modify entity @s Leash.UUID set from entity @e[type=minecart,tag=Temp.Start,limit=1] UUID
    
# プレイヤーをソリに載せる
    ride @s mount @e[type=minecart,tag=Temp.Start,sort=nearest,limit=1]

# 演出
    execute positioned ^ ^1 ^2 rotated ~ 0 run function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/effect

# 終了
    tag @e[tag=Temp.Start] remove Temp.Start
    scoreboard players set @s SvPlayerTimer 0
    tag @s add Player.OnSled
