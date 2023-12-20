#> santa_battle_core:game_main/phase2/start_error
#
# ロビー→バトルの開始処理

# 判別
    tag @a[team=!redTeam,team=!blueTeam,team=!greenTeam,team=!yellowTeam,team=!ghostTeam] add Temp.TargetSub

# メッセージ
    execute if entity @a[tag=Temp.TargetSub] run tellraw @a [{"text": "【どのチームにも参加していないプレイヤーがいます!チーム戦を始める場合，チームに参加するか，観戦モードを有効にしてください!】\n対象："},{"selector":"@a[tag=Temp.Target]"}]

# 終了
    tag @a remove Temp.TargetSub
