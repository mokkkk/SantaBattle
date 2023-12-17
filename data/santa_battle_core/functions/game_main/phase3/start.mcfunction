#> santa_battle_core:game_main/phase3/start
#
# バトルの開始処理

# phase変更
    scoreboard players set #game_manager game.phase 3

# タイマー設定
    scoreboard players operation #game_manager game.timer = #game_manager game.setting.timer
    bossbar add santa_battle_core:timer {"text": "タイマー"}
    execute store result bossbar santa_battle_core:timer max run scoreboard players get #game_manager game.timer
    execute store result bossbar santa_battle_core:timer value run scoreboard players get #game_manager game.timer
    bossbar set santa_battle_core:timer players @a
    bossbar set santa_battle_core:timer color green
    scoreboard players set #game_manager game.is_hurryup 0

# title設定
    title @a times 0t 100t 5t

# スコア解放
    scoreboard players reset * player.game_score.kill
    scoreboard players reset * player.game_score.life

# スコア設定
    scoreboard players set #game_manager game.winner_player_id -1
    scoreboard players set #game_manager game.winner_team_id -1
    scoreboard players set #game_manager game.max_score 0
    scoreboard players set #game_manager game.max_team_score 0
    scoreboard players set #game_manager game.team_score.red 0
    scoreboard players set #game_manager game.team_score.blue 0
    scoreboard players set #game_manager game.team_score.green 0
    scoreboard players set #game_manager game.team_score.yellow 0

# プレイヤースコア設定
    scoreboard players set @a player.invulnerable_timer 100
    scoreboard players set @a player.game_score.kill 0
    scoreboard players operation @a player.game_score.life = #game_manager game.setting.max_life

# スコア表示
    execute unless score #game_manager game.setting.is_life matches 1.. run scoreboard objectives setdisplay sidebar player.game_score.kill
    execute if score #game_manager game.setting.is_life matches 1.. run scoreboard objectives setdisplay sidebar player.game_score.life

# TODO:バトルフィールドに移動
    execute as @a[tag=Player.GhostTeam] run tag @s add Player.Ghost
    execute as @a[tag=Player.GhostTeam] run gamemode spectator @s
    execute as @a at @s run function santa_battle_core:player/sled/end_ride_without_delta
