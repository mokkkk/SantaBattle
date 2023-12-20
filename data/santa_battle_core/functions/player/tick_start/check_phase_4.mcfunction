#> santa_battle_core:player/tick_start/check_phase_4
#
# プレイヤー tick開始時の処理 game_managerのphaseとプレイヤー記録のphaseが違う場合の処理

# phase3以外から
    execute if score @s player.game_phase matches 1 run tellraw @s {"text": "【すでに開始されているゲームを観戦します。】"}
    execute if score @s player.game_phase matches 2 run tellraw @s {"text": "【すでに開始されているゲームを観戦します。】"}
    execute if score @s player.game_phase matches 3 run tellraw @s {"text": "【参加していたゲームは終了しました。】"}

# スコアの初期化
    scoreboard players reset @s player.game_score.kill
    scoreboard players reset @s player.game_score.life

# 観戦に行く
    tag @s add Player.Ghost
    tag @s add Player.Visitor
    gamemode spectator @s
    tp @s 319 189 15
    spawnpoint @s 319 189 15

# phase更新
    scoreboard players set @s player.game_phase 4
