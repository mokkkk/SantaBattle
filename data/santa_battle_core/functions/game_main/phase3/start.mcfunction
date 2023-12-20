#> santa_battle_core:game_main/phase3/start
#
# バトルの開始処理

# phase変更
    scoreboard players set #game_manager game.phase 3
    scoreboard players set @a player.game_phase 3

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
    scoreboard players reset * game.team_score_for_display

# ゲーム用score設定
    scoreboard players set #game_manager game.winner_player_id -1
    scoreboard players set #game_manager game.winner_team_id -1
    scoreboard players set #game_manager game.max_score 0
    scoreboard players set #game_manager game.max_team_score 0
    scoreboard players set #game_manager game.team_score.red 0
    scoreboard players set #game_manager game.team_score.blue 0
    scoreboard players set #game_manager game.team_score.green 0
    scoreboard players set #game_manager game.team_score.yellow 0
    scoreboard players operation #game_manager game.item_timer = #game_manager game.setting.max_item_timer
    scoreboard players set #game_manager game.item_spawn_random 30

# プレイヤースコア設定
    scoreboard players set @a player.invulnerable_timer 100
    scoreboard players set @a player.sled_summon_count 3
    scoreboard players set @a player.item.having 0

# スコア表示
    execute unless score #game_manager game.setting.is_life matches 1.. unless score #game_manager game.setting.is_team matches 1.. run function santa_battle_core:game_main/phase3/start_battleroyale
    execute unless score #game_manager game.setting.is_life matches 1.. if score #game_manager game.setting.is_team matches 1.. run function santa_battle_core:game_main/phase3/start_team
    execute if score #game_manager game.setting.is_life matches 1.. run function santa_battle_core:game_main/phase3/start_life

# アイテム出現位置決定
    # TODO:位置の更新
    # summon marker 330 74 -20 {Tags:["Mob.ItemPointMarker"]}

# バトルフィールドに移動
    execute as @a[tag=Player.GhostTeam] run tag @s add Player.Ghost
    execute as @a[tag=Player.GhostTeam] run tag @s add Player.Visitor
    execute as @a[tag=Player.GhostTeam] run gamemode spectator @s
    execute as @a at @s run function santa_battle_core:player/sled/end_ride_without_delta
    execute unless score #game_manager game.setting.is_team matches 1.. run function santa_battle_core:game_main/phase3/spawn/first
    execute if score #game_manager game.setting.is_team matches 1.. run function santa_battle_core:game_main/phase3/spawn/first_team
    execute as @a[tag=Player.Ghost] run tp @s 319 189 15
    execute as @a[tag=!Player.Ghost] at @s align xyz positioned ~0.5 ~0.5 ~0.5 run tp @s ~ ~ ~
    execute as @a[tag=!Player.Ghost] at @s run tp @s @s
    execute as @a[tag=!Player.Ghost] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1
    execute as @a[tag=!Player.Ghost] at @s positioned ~ ~-1 ~ run function santa_battle_core:other/footing/summon
    spawnpoint @a 319 189 15
