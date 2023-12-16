#> santa_battle_core:player/landing/
#
# プレイヤー着地時処理

# プレイヤーをキル
    kill @s
    tag @s add Player.Flag.Death

# 通知
    tellraw @a [{"text": "<"},{"text": "×","bold":true,"color": "dark_red"},{"selector":"@s","bold":false},{"text": "> はサンタの掟を破った"}]

# スコア減算
    function santa_battle_core:game_main/phase3/score/remove_score
