#> santa_battle_core:game_main/phase3/score/check_life_team
#
# バトルの残機確認処理

# 自分以外の生き残りを確認
    execute if entity @s[team=redTeam] run tag @a[team=redTeam] add Temp.Winner
    execute if entity @s[team=blueTeam] run tag @a[team=blueTeam] add Temp.Winner
    execute if entity @s[team=greenTeam] run tag @a[team=greenTeam] add Temp.Winner
    execute if entity @s[team=yellowTeam] run tag @a[team=yellowTeam] add Temp.Winner
    execute if entity @a[tag=!Temp.Winner,tag=!Player.Ghost] run tag @s remove Temp.Winner
    execute if entity @a[tag=!Temp.Winner,tag=!Player.Ghost] run return 0

# 生き残りがいない場合，自身を勝者としてゲームを終了する
    tag @a remove Player.Winner
    tag @a[tag=Temp.Winner] add Player.Winner
    title @a times 10t 160t 10t
    title @a title {"text": "KNOCK OUT!!","color": "gold","bold": true}
    function santa_battle_core:game_main/phase4/start

# 終了
    tag @a remove Temp.Winner
