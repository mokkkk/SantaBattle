#> santa_battle_core:game_main/phase1/help/
#
# ロビーのヘルプ処理

# 動物のヘルプ
    execute if predicate santa_battle_core:player/interaction/goat run title @s actionbar {"text": "「すべてにおいてオーソドックスな性能。困ったらコイツ。」","color": "aqua","bold": true}
    execute if predicate santa_battle_core:player/interaction/allay run title @s actionbar {"text": "「加速は遅いが、トップスピードはピカイチ。」","color": "aqua","bold": true}
    execute if predicate santa_battle_core:player/interaction/sniffer run title @s actionbar {"text": "「スピードは遅いが、加速が速く曲がりやすい。」","color": "aqua","bold": true}
    execute if predicate santa_battle_core:player/interaction/dolphine run title @s actionbar {"text": "「スピード・加速ともに高性能。しかし、攻撃時に大きく減速する。」","color": "aqua","bold": true}
    execute if predicate santa_battle_core:player/interaction/wolf run title @s actionbar {"text": "「スピードが速く、加速が遅い。召喚する毎に頭数が減り、スピードが遅くなる代わりに加速が速くなる。」","color": "aqua","bold": true}
    execute if predicate santa_battle_core:player/interaction/chicken run title @s actionbar {"text": "「曲がりにくいが、スピードも加速もトップクラス。しかしスタミナは無い。」","color": "aqua","bold": true}
    execute if predicate santa_battle_core:player/interaction/skeleton run title @s actionbar {"text": "「かつてサンタが愛した相棒。未実装。」","color": "aqua","bold": true}
    execute if predicate santa_battle_core:player/interaction/random run title @s actionbar {"text": "「なんだかよくわからない生物。召喚のたびに性能がランダムで変わる。」","color": "aqua","bold": true}

# 設定のヘルプ
    execute if predicate santa_battle_core:player/interaction/start run title @s actionbar {"text": "「試合を始める。覚悟の準備をしておいてください。」","color": "aqua","bold": true}
    execute if predicate santa_battle_core:player/interaction/teammode run title @s actionbar {"text": "「試合形式を個人戦・チーム戦から選択する。」","color": "aqua","bold": true}
    execute if predicate santa_battle_core:player/interaction/timer run title @s actionbar {"text": "「試合の制限時間を設定する。」","color": "aqua","bold": true}
    execute if predicate santa_battle_core:player/interaction/life run title @s actionbar {"text": "「プレイヤーの復活回数を設定する。<<∞>>以外の場合、他プレイヤーを全員倒した者が勝者となる。」","color": "aqua","bold": true}

# プリセットのヘルプ
    execute if predicate santa_battle_core:player/interaction/preset_team run title @s actionbar {"text": "「ゲームルールのプリセットを適用する。仲間と協力して敵を倒せ。」","color": "aqua","bold": true}
    execute if predicate santa_battle_core:player/interaction/preset_free run title @s actionbar {"text": "「ゲームルールのプリセットを適用する。周りはすべて敵だ。」","color": "aqua","bold": true}
    execute if predicate santa_battle_core:player/interaction/preset_survival run title @s actionbar {"text": "「ゲームルールのプリセットを適用する。最後に生き残るのは誰だ。」","color": "aqua","bold": true}
