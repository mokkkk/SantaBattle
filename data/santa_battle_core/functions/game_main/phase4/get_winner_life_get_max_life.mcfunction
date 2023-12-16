#> santa_battle_core:game_main/phase4/get_winner_life_get_max_life
#
# ストック制の勝者確認

# 最高ストック数更新
    execute if score @s player.game_score.life > #temp_max_life temp run scoreboard players operation #temp_max_life temp = @s player.game_score.life

