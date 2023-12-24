#> santa_battle_core:player/item/snowball/4_cracker/m_effect
#
# 雪玉 使用開始処理

# 花火召喚
    $summon firework_rocket ^ ^ ^3 {Silent:1b,Life:0,LifeTime:0,ShotAtAngle:1b,Motion:[$(X),$(Y),$(Z)],Tags:["Mob.Effect"],FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;16777215,16743805,11075445]}]}}}}
    schedule function santa_battle_core:player/item/snowball/4_cracker/kill 2t append
