#> santa_battle_core:player/load
#
# プレイヤーID割り振り

# プレイヤーID未設定のプレイヤーにIDを割り当てる
    scoreboard players add #grobal_player_id player.id 1
    scoreboard players operation @s player.id = #grobal_player_id player.id