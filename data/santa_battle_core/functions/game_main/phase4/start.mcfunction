#> santa_battle_core:game_main/phase4/start
#
# ロビーの開始処理

# phase変更
    scoreboard players set #game_manager game.phase 4
    scoreboard players set @a player.game_phase 4

# bossbar消去
    bossbar remove santa_battle_core:timer

# タイマー設定
    scoreboard players set #game_manager game.timer 600

# アイテム消去
    kill @e[type=item_display,tag=Mob.Item]
