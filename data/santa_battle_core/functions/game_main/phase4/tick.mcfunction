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
    execute if score #game_manager game.timer matches 480 unless score #game_manager game.setting.is_team matches 1.. unless score #game_manager game.setting.is_life matches 1.. run function santa_battle_core:game_main/phase4/get_winner_score
    execute if score #game_manager game.timer matches 480 unless score #game_manager game.setting.is_team matches 1.. if score #game_manager game.setting.is_life matches 1.. run function santa_battle_core:game_main/phase4/get_winner_life
    execute if score #game_manager game.timer matches 480 if score #game_manager game.setting.is_team matches 1.. unless score #game_manager game.setting.is_life matches 1.. run function santa_battle_core:game_main/phase4/get_winner_score_team
    execute if score #game_manager game.timer matches 480 if score #game_manager game.setting.is_team matches 1.. if score #game_manager game.setting.is_life matches 1.. run function santa_battle_core:game_main/phase4/get_winner_life_team
    execute if score #game_manager game.timer matches 480 run title @a times 0t 160t 10t
    execute if score #game_manager game.timer matches 480 run title @a[tag=Player.Draw,tag=!Player.Visitor] title {"text": "DRAW","color": "gray","bold": true}
    execute if score #game_manager game.timer matches 480 run title @a[tag=Player.Draw,tag=!Player.Visitor] subtitle {"text": "やっぱり平和が一番","color": "gray","bold": true}
    execute if score #game_manager game.timer matches 480 run title @a[tag=Player.Winner,tag=!Player.Visitor] title {"text": "YOU WIN!!","color": "red","bold": true}
    execute if score #game_manager game.timer matches 480 run title @a[tag=Player.Winner,tag=!Player.Visitor] subtitle {"text": "勝った!勝った!夕飯はターキーだ!!!","color": "red","bold": true}
    execute if score #game_manager game.timer matches 480 run title @a[tag=Player.Loser,tag=!Player.Visitor] title {"text": "YOU LOSE...","color": "blue","bold": true}
    execute if score #game_manager game.timer matches 480 run title @a[tag=Player.Loser,tag=!Player.Visitor] subtitle {"text": "なんで負けたか、明日までに考えといてください","color": "blue","bold": true}
    execute if score #game_manager game.timer matches 480 run title @a[tag=Player.Visitor] title {"text": "THE SHOW'S OVER","color": "gray","bold": true}
    execute if score #game_manager game.timer matches 480 run title @a[tag=Player.Visitor] subtitle {"text": "次は参加しよう!","color": "gray","bold": true}
    execute if score #game_manager game.timer matches 480 as @a[tag=Player.Winner,tag=!Player.Visitor] at @s run function bgm:jingle_bells/start
    execute if score #game_manager game.timer matches 480 as @a[tag=Player.Draw,tag=!Player.Visitor] at @s run playsound block.bell.use master @s ~ ~ ~ 4 0.8
    execute if score #game_manager game.timer matches 480 as @a[tag=Player.Loser,tag=!Player.Visitor] at @s run playsound entity.generic.explode master @s ~ ~ ~ 1 0.8

# 表彰
    execute if score #game_manager game.timer matches 480 as @a[tag=Player.Winner] at @s run function santa_battle_core:game_main/phase4/summon_firework
    execute if score #game_manager game.timer matches 475 as @a[tag=Player.Winner] at @s run function santa_battle_core:game_main/phase4/summon_firework
    execute if score #game_manager game.timer matches 470 as @a[tag=Player.Winner] at @s run function santa_battle_core:game_main/phase4/summon_firework
    execute if score #game_manager game.timer matches 465 as @a[tag=Player.Winner] at @s run function santa_battle_core:game_main/phase4/summon_firework
    execute if score #game_manager game.timer matches 460 as @a[tag=Player.Winner] at @s run function santa_battle_core:game_main/phase4/summon_firework

# phase変更
    execute if score #game_manager game.timer matches ..200 run function santa_battle_core:game_main/phase1/start
