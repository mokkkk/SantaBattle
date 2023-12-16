#> santa_battle_core:game_main/phase4/tick
#
# バトル→ロビーのtick処理

# 平和化
    scoreboard players set @a player.invulnerable_timer 100

# 動物の動きを弱める
    scoreboard players set @a player.sled_status.max_speed 300
    scoreboard players set @a player.sled_status.current_speed 300

# 音
    execute if score #game_manager game.timer matches 595..600 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2
    execute if score #game_manager game.timer matches 585..590 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2
    execute if score #game_manager game.timer matches 575..580 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2
    execute if score #game_manager game.timer matches 565..570 as @a at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2

# タイマー減算
    scoreboard players remove #game_manager game.timer 1

# 勝敗表示
    execute if score #game_manager game.timer matches 480 run title @a times 0t 160t 10t
    execute if score #game_manager game.timer matches 480 unless entity @a[tag=Player.Winner] run title @a title {"text": "DRAW","color": "gray","bold": true}
    execute if score #game_manager game.timer matches 480 unless entity @a[tag=Player.Winner] run title @a subtitle {"text": "やっぱり平和が一番","color": "gray","bold": true}
    execute if score #game_manager game.timer matches 480 if entity @a[tag=Player.Winner] run title @a[tag=Player.Winner] title {"text": "YOU WIN!!","color": "gold","bold": true}
    execute if score #game_manager game.timer matches 480 if entity @a[tag=Player.Winner] run title @a[tag=Player.Winner] subtitle {"text": "勝った!勝った!夕飯はドン勝だ!!!","color": "gold","bold": true}
    execute if score #game_manager game.timer matches 480 if entity @a[tag=Player.Winner] run title @a[tag=!Player.Winner] title {"text": "YOU LOSE...","color": "blue","bold": true}
    execute if score #game_manager game.timer matches 480 if entity @a[tag=Player.Winner] run title @a[tag=!Player.Winner] subtitle {"text": "なんで負けたか、明日までに考えといてください","color": "blue","bold": true}
    execute if score #game_manager game.timer matches 480 unless entity @a[tag=Player.Winner] as @a at @s run playsound block.bell.use master @s ~ ~ ~ 1 0.7
    
# phase変更
    execute if score #game_manager game.timer matches ..200 run function santa_battle_core:game_main/phase1/start
