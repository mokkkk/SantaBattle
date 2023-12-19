#> santa_battle_core:player/sled/ui
#
# ソリのメイン処理

# アイテム
    execute unless score @s player.item.having matches 1.. run data modify storage santa_battle_core: Temp.Ui.Item set value '{"text":"NONE","color":"white"}'
    execute if score @s player.item.having matches 1 run data modify storage santa_battle_core: Temp.Ui.Item set value '{"text":" TNT","color":"red"}'

# ソリの残り回数
    execute if score @s player.sled_summon_count matches 3.. run data modify storage santa_battle_core: Temp.Ui.SledCount set value '[{"text":"★★★","color":"gold"}]'
    execute if score @s player.sled_summon_count matches 2 run data modify storage santa_battle_core: Temp.Ui.SledCount set value '[{"text":"★★","color":"gold"},{"text":"★","color":"gray"}]'
    execute if score @s player.sled_summon_count matches ..1 run data modify storage santa_battle_core: Temp.Ui.SledCount set value '[{"text":"★","color":"gold"},{"text":"★★","color":"gray"}]'

# 時速計算
    scoreboard players operation #km_h const = @s player.sled_status.current_speed
    scoreboard players operation #km_h const *= #const_20 const
    scoreboard players operation #km_h const *= #const_3600 const
    scoreboard players operation #km_h const /= #const_100 const
    execute store result score #km_h_s const run scoreboard players operation #km_h const /= #const_60 const
    execute store result storage santa_battle_core: Temp.Ui.Speed.h int 1 run scoreboard players operation #km_h const /= #const_1000 const
    execute store result storage santa_battle_core: Temp.Ui.Speed.s int 1 run scoreboard players operation #km_h_s const %= #const_1000 const
    execute if score #km_h const matches ..9 run data modify storage santa_battle_core: Temp.Ui.Speed.StrH set value '[{"text":"0"},{"nbt":"Temp.Ui.Speed.h","storage":"santa_battle_core:"}]'
    execute if score #km_h const matches 10.. run data modify storage santa_battle_core: Temp.Ui.Speed.StrH set value '{"nbt":"Temp.Ui.Speed.h","storage":"santa_battle_core:"}'
    execute if score #km_h_s const matches ..99 run data modify storage santa_battle_core: Temp.Ui.Speed.StrS set value '[{"text":"0"},{"nbt":"Temp.Ui.Speed.s","storage":"santa_battle_core:"}]'
    execute if score #km_h_s const matches 100.. run data modify storage santa_battle_core: Temp.Ui.Speed.StrS set value '{"nbt":"Temp.Ui.Speed.s","storage":"santa_battle_core:"}'

# UI表示
    title @s actionbar [{"text": "ITEM:","color": "white","bold":true},{"interpret":true,"nbt":"Temp.Ui.Item","storage":"santa_battle_core:","bold":true},{"text": "   RIDE:","color": "gold","bold":true},{"interpret":true,"nbt":"Temp.Ui.SledCount","storage":"santa_battle_core:","bold":true},{"text": "   SPEED:","color": "#FF0005","bold":true,"italic": true},{"interpret":true,"nbt":"Temp.Ui.Speed.StrH","storage":"santa_battle_core:","color": "#FF0005","bold":true,"italic": true},{"text": ".","color": "#FF0005","bold":true,"italic": true},{"interpret":true,"nbt":"Temp.Ui.Speed.StrS","storage":"santa_battle_core:","color": "#FF0005","bold":true,"italic": true},{"text": "km/h","color": "#FF0005","bold":true,"italic": true}]
