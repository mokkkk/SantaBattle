#> santa_battle_core:player/item/snowball/4_cracker/start
#
# 雪玉 使用開始処理

# 開始
    scoreboard players set @a[distance=1..30,tag=!Player.Ghost] player.item.using.crucker 80
    playsound entity.firework_rocket.blast master @a ~ ~ ~ 4 0.5

# 発射方向計算用marker召喚
    execute at @s positioned 0.0 0.0 0.0 positioned ^ ^ ^2 run summon marker ~ ~ ~ {Tags:["Temp.Calc"]}
    data modify storage santa_battle_core: Temp.Pos set from entity @e[type=marker,tag=Temp.Calc,limit=1] Pos
    data modify storage santa_battle_core: Temp.Motion.X set from storage santa_battle_core: Temp.Pos[0]
    data modify storage santa_battle_core: Temp.Motion.Y set from storage santa_battle_core: Temp.Pos[1]
    data modify storage santa_battle_core: Temp.Motion.Z set from storage santa_battle_core: Temp.Pos[2]

# 演出
    function santa_battle_core:player/item/snowball/4_cracker/m_effect with storage santa_battle_core: Temp.Motion

# 雪玉消去
    kill @e[type=snowball,limit=1,sort=nearest]

# 終了
    scoreboard players set @s player.item.having 0
    kill @e[type=marker,tag=Temp.Calc]
    # タイマー：なし
        execute if score @s player.item.count matches 1000.. run scoreboard players set @s player.item.count 0
