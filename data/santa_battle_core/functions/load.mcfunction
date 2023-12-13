#> santa_battle_core:load
#
# load時に毎回実行される処理群

# スコア定義
    # 共通処理用
        scoreboard objectives add player.function_count dummy
        scoreboard objectives add player.timer dummy
        scoreboard objectives add player.id dummy
        scoreboard objectives add const dummy
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
