#> santa_battle_core:other/spbox/kill
#
# アイテムの処理

# 攻撃元取得
    scoreboard players operation #temp player.id = @s player.id
    execute as @a if score @s player.id = #temp player.id run tag @s add Temp.Killer

# 演出
    playsound entity.generic.explode master @a ~ ~ ~ 2 0.7
    particle explosion_emitter ~ ~ ~ 0 0 0 0 1
    tellraw @a[tag=Temp.SpBoxTarget] {"text": "【なんと、拾ったものはびっくり箱だった!!】"}
    tellraw @a [{"text": "<"},{"text": "〇","bold":true,"color": "dark_green"},{"selector":"@a[tag=Temp.Killer]","bold":false},{"text": "> が <"},{"text": "×","bold":true,"color": "dark_red"},{"selector":"@a[tag=Temp.SpBoxTarget]","bold":false},{"text": "> に死をプレゼント!"}]
    kill @a[tag=Temp.SpBoxTarget]

# スコア更新
    execute if score #game_manager game.phase matches 3 as @a[tag=Temp.SpBoxTarget] run function santa_battle_core:game_main/phase3/score/kill_score

# 消去
    tag @a remove Temp.Killer
    kill @s
    scoreboard players reset #
