#> santa_battle_core:game_main/phase3/score/update_max_score
#
# バトルの勝者更新処理

# @sのスコア > 最高スコアの場合，スコア更新
    execute if score @s player.game_score.kill > #game_manager game.max_score run scoreboard players operation #game_manager game.max_score = @s player.game_score.kill
