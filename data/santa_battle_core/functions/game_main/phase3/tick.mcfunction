#> santa_battle_core:game_main/phase3/tick
#
# バトルのtick処理

# タイマー減算
    scoreboard players remove #game_manager game.timer 1

# 警告
    execute if score #game_manager game.setting.timer matches 1201.. if score #game_manager game.timer matches 1200 run scoreboard players set #game_manager game.is_hurryup 1

# 計算
    execute store result score #temp_timer const run scoreboard players get #game_manager game.timer
    execute store result score #temp_sec const store result score #temp_color const run scoreboard players operation #temp_timer const /= #const_20 const
    execute store result score #temp_min const store result storage santa_battle_core: Temp.Timer.Min int 1 run scoreboard players operation #temp_timer const /= #const_60 const
    execute store result storage santa_battle_core: Temp.Timer.Sec int 1 run scoreboard players operation #temp_sec const %= #const_60 const
    scoreboard players operation #temp_color const %= #const_2 const

# storageに保持
    execute if score #temp_min const matches 10.. if score #temp_sec const matches 10.. run data modify storage santa_battle_core: Temp.Timer.Str set value '[{"nbt":"Temp.Timer.Min","storage":"santa_battle_core:"},{"text":":"},{"nbt":"Temp.Timer.Sec","storage":"santa_battle_core:"}]'
    execute if score #temp_min const matches 10.. if score #temp_sec const matches ..9 run data modify storage santa_battle_core: Temp.Timer.Str set value '[{"nbt":"Temp.Timer.Min","storage":"santa_battle_core:"},{"text":":0"},{"nbt":"Temp.Timer.Sec","storage":"santa_battle_core:"}]'
    execute if score #temp_min const matches ..9 if score #temp_sec const matches 10.. run data modify storage santa_battle_core: Temp.Timer.Str set value '[{"text":"0"},{"nbt":"Temp.Timer.Min","storage":"santa_battle_core:"},{"text":":"},{"nbt":"Temp.Timer.Sec","storage":"santa_battle_core:"}]'
    execute if score #temp_min const matches ..9 if score #temp_sec const matches ..9 run data modify storage santa_battle_core: Temp.Timer.Str set value '[{"text":"0"},{"nbt":"Temp.Timer.Min","storage":"santa_battle_core:"},{"text":":0"},{"nbt":"Temp.Timer.Sec","storage":"santa_battle_core:"}]'

# bossbar表示
    execute unless score #game_manager game.is_hurryup matches 1 run bossbar set santa_battle_core:timer name [{"text": "残り時間 ","color": "white","bold": true},{"interpret":true,"nbt":"Temp.Timer.Str","storage":"santa_battle_core:","color": "green"}]
    execute if score #game_manager game.is_hurryup matches 1 run bossbar set santa_battle_core:timer name [{"text": "残り時間 ","color": "white","bold": true},{"interpret":true,"nbt":"Temp.Timer.Str","storage":"santa_battle_core:","color": "red"}]
    execute store result bossbar santa_battle_core:timer value run scoreboard players get #game_manager game.timer
    execute if score #game_manager game.is_hurryup matches 1 if score #temp_color const matches 1 run bossbar set santa_battle_core:timer color red
    execute if score #game_manager game.is_hurryup matches 1 if score #temp_color const matches 0 run bossbar set santa_battle_core:timer color white

# 警告
    execute if score #game_manager game.is_hurryup matches 1 if score #game_manager game.timer matches 1200 run title @a title {"text": "残り1分!!!","color": "red","bold": true}
    execute if score #game_manager game.is_hurryup matches 1 if score #game_manager game.timer matches 1200 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2
    execute if score #game_manager game.is_hurryup matches 1 if score #game_manager game.timer matches 1197 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2
    execute if score #game_manager game.is_hurryup matches 1 if score #game_manager game.timer matches 1194 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2
    execute if score #game_manager game.timer matches 200 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 180 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 160 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 140 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 120 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 100 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 80 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 60 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 40 as @a at @s run playsound ui.button.click master @s ~ ~ ~ 1 1.5
    execute if score #game_manager game.timer matches 120 run title @a title {"text": "5","color": "green","bold": true}
    execute if score #game_manager game.timer matches 100 run title @a title {"text": "4","color": "green","bold": true}
    execute if score #game_manager game.timer matches 80 run title @a title {"text": "3","color": "green","bold": true}
    execute if score #game_manager game.timer matches 60 run title @a title {"text": "2","color": "yellow","bold": true}
    execute if score #game_manager game.timer matches 40 run title @a title {"text": "1","color": "red","bold": true}

# 終了
    scoreboard players reset #temp_timer
    scoreboard players reset #temp_sec
    scoreboard players reset #temp_min
    scoreboard players reset #temp_color

# タイムアップ時，phase変更
    execute if score #game_manager game.timer matches ..20 run title @a times 10t 160t 10t
    execute if score #game_manager game.timer matches ..20 run title @a title {"text": "TIME UP!!","color": "gold","bold": true}
    execute if score #game_manager game.timer matches ..20 run function santa_battle_core:game_main/phase4/start
