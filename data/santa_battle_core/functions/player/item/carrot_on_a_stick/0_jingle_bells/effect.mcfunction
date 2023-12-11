#> santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/effect
#
# ジングル・ベル 使用開始演出

# 演出
    particle firework ~ ~ ~ 0 0 0 1 30
    particle flash ~ ~ ~ 0.1 0.1 0.1 0 30
    playsound block.amethyst_block.chime master @a ~ ~ ~ 3 0.7
    playsound block.amethyst_block.chime master @a ~ ~ ~ 3 0.7
    playsound block.amethyst_block.chime master @a ~ ~ ~ 3 0.9
    playsound block.amethyst_block.chime master @a ~ ~ ~ 3 0.9

    summon marker ~ ~ ~ {Tags:["Mob.ParticleMarker","Temp.Start","A"]}
    summon marker ~ ~ ~ {Tags:["Mob.ParticleMarker","Temp.Start","B"]}
    summon marker ~ ~ ~ {Tags:["Mob.ParticleMarker","Temp.Start","C"]}
    summon marker ~ ~ ~ {Tags:["Mob.ParticleMarker","Temp.Start","D"]}
    tp @e[type=marker,tag=Mob.ParticleMarker,tag=Temp.Start,tag=A] ~ ~1 ~ ~90 ~
    tp @e[type=marker,tag=Mob.ParticleMarker,tag=Temp.Start,tag=B] ~ ~1 ~ ~-90 ~
    tp @e[type=marker,tag=Mob.ParticleMarker,tag=Temp.Start,tag=C] ~ ~1 ~ ~180 ~20
    tp @e[type=marker,tag=Mob.ParticleMarker,tag=Temp.Start,tag=D] ~ ~1 ~ ~ ~20
    tag @e[type=marker,tag=Mob.ParticleMarker,tag=Temp.Start] remove Temp.Start
