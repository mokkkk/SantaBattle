#> santa_battle_core:load
#
# load時に毎回実行される処理群

# スコア定義
    # 共通処理用
        scoreboard objectives add player.function_count dummy
        scoreboard objectives add player.timer dummy
        scoreboard objectives add player.id dummy
        scoreboard objectives add const dummy
        scoreboard objectives add temp dummy
    # プレイヤー行動検知
        scoreboard objectives add player.flag.death deathCount
        scoreboard objectives add player.used.coas minecraft.used:minecraft.carrot_on_a_stick
        scoreboard objectives add player.used.snowball minecraft.used:minecraft.snowball
    # ソリの処理用
        scoreboard objectives add player.sled_type dummy
        scoreboard objectives add player.sled_particle_timer dummy
        scoreboard objectives add player.sled_summon_count dummy
        scoreboard objectives add player.sled_status.min_speed dummy
        scoreboard objectives add player.sled_status.current_speed dummy
        scoreboard objectives add player.sled_status.max_speed dummy
        scoreboard objectives add player.sled_status.acceleration dummy
        scoreboard objectives add player.sled_status.attack_deceleration dummy
        scoreboard objectives add player.sled_status.handling dummy
    # その他プレイヤー用スコア
        scoreboard objectives add player.game_score.kill dummy {"text": "現在のポイント","color": "gold","bold": true}
        scoreboard objectives add player.game_score.life dummy {"text": "残り復活回数","color": "gold","bold": true}
        scoreboard objectives add player.invulnerable_timer dummy
        scoreboard objectives add player.help_timer dummy
    # 弾の処理用
        scoreboard objectives add bullet.timer dummy
        scoreboard objectives add bullet.status.speed_x dummy
        scoreboard objectives add bullet.status.speed_y dummy
        scoreboard objectives add bullet.status.speed_z dummy
        scoreboard objectives add bullet.status.speed_g dummy
        scoreboard objectives add bullet.status.speed_deceleration_mult dummy
    # ゲーム全体処理用
        scoreboard objectives add game.phase dummy
        scoreboard objectives add game.timer dummy
        scoreboard objectives add game.is_hurryup dummy
        scoreboard objectives add game.winner_player_id dummy
        scoreboard objectives add game.winner_team_id dummy
        scoreboard objectives add game.max_score dummy
        scoreboard objectives add game.max_team_score dummy
        scoreboard objectives add game.team_score.red dummy
        scoreboard objectives add game.team_score.green dummy
        scoreboard objectives add game.team_score.blue dummy
        scoreboard objectives add game.team_score.yellow dummy
    # 設定
        scoreboard objectives add game.setting.timer dummy
        scoreboard objectives add game.setting.max_life dummy
        scoreboard objectives add game.setting.is_life dummy
        scoreboard objectives add game.setting.is_team dummy

# チーム
    team add redTeam {"text": "赤チーム - 真紅の饗宴","color": "red"}
    team add blueTeam {"text": "青チーム - 深海の抱擁","color": "blue"}
    team add greenTeam {"text": "緑チーム - 翠緑の薫風","color": "green"}
    team add yellowTeam {"text": "黄チーム - 黄金の祝福","color": "yellow"}
    team add ghostTeam {"text": "ゴースト - 観衆","color": "gray"}
    team modify redTeam color red
    team modify blueTeam color blue
    team modify greenTeam color green
    team modify yellowTeam color yellow
    team modify ghostTeam color gray

# ゲームフェーズ設定
    execute unless score #game_manager game.phase matches 1.. run scoreboard players set #game_manager game.phase 1
    execute unless score #game_manager game.timer matches 0.. run scoreboard players set #game_manager game.timer 0

# プレイヤーID未設定のプレイヤーにIDを割り当てる
    execute as @a unless score @s player.id matches 0.. run function santa_battle_core:player/load

# 0 0 0 地点をforceload
    forceload add 0 0 1 1

# 定数定義
    scoreboard players set #const_2 const 2
    scoreboard players set #const_20 const 20
    scoreboard players set #const_100 const 100
    scoreboard players set #const_60 const 60
    scoreboard players set #const_3600 const 3600
    scoreboard players set #const_1000 const 1000
    scoreboard players set #const_minus const -1
