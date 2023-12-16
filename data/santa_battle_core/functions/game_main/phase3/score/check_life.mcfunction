#> santa_battle_core:game_main/phase3/score/check_life
#
# バトルの残機確認処理

# 自分以外の生き残りを確認
    tag @s add Temp.Winner
    execute if entity @a[tag=!Temp.Winner,tag=!Player.Ghost] run tag @s remove Temp.Winner
    execute if entity @a[tag=!Temp.Winner,tag=!Player.Ghost] run return 0

# 生き残りがいない場合，自身を勝者としてゲームを終了する
    tag @a remove Player.Winner
    tag @s add Player.Winner
    title @a times 10t 160t 10t
    title @a title {"text": "KNOCK OUT!!","color": "gold","bold": true}
    function santa_battle_core:game_main/phase4/start

# 終了
    tag @s remove Temp.Winner
