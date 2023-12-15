#> santa_battle_core:game_main/phase4/tick
#
# バトル→ロビーのtick処理

# 音
    execute if score #game_manager game.timer matches 595..600 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2
    execute if score #game_manager game.timer matches 585..590 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2
    execute if score #game_manager game.timer matches 575..580 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2
    execute if score #game_manager game.timer matches 565..570 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2

# タイマー減算
    scoreboard players remove #game_manager game.timer 1

# 勝敗表示
    execute if score #game_manager game.timer matches 480 run title @a times 0t 160t 10t
    execute if score #game_manager game.timer matches 480 run title @a title {"text": "YOU WIN!!","color": "gold","bold": true}
    execute if score #game_manager game.timer matches 480 run title @a subtitle {"text": "世界を幸せにできるのは君だ!!!","color": "gold","bold": true}

# phase変更
    execute if score #game_manager game.timer matches ..0 run function santa_battle_core:game_main/phase1/start
