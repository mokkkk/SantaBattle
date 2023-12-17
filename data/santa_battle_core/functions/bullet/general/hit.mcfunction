#> santa_battle_core:bullet/general/hit
#
# 弾 ヒット判定

# プレイヤーをkill
    kill @s

# 着弾
    tag @e[type=item_display,tag=Temp.Target] add Bullet.IsHitBlock

# 攻撃元取得
    execute as @a if score @s player.id = #temp player.id run tag @s add Temp.Killer
    # tellraw @a [{"text": "<"},{"selector":"@a[tag=Temp.Killer]"},{"text": "> が <"},{"selector":"@s"},{"text": "> に死をプレゼント！"}]

# 通知
    tellraw @a [{"text": "<"},{"text": "〇","bold":true,"color": "dark_green"},{"selector":"@a[tag=Temp.Killer]","bold":false},{"text": "> が <"},{"text": "×","bold":true,"color": "dark_red"},{"selector":"@s","bold":false},{"text": "> に死をプレゼント!"}]

# スコア更新
    execute if score #game_manager game.phase matches 3 run function santa_battle_core:game_main/phase3/score/kill_score

# 終了
    tag @a remove Temp.Killer
