#> santa_battle_core:bullet/1_tnt/hit
#
# TNT弾命中処理

# 爆発
    particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force
    particle flame ~ ~ ~ 0.3 0.3 0.3 0.3 30
    particle lava ~ ~ ~ 0.3 0.3 0.3 1 10
    playsound entity.generic.explode master @a ~ ~ ~ 1.5 0.6
