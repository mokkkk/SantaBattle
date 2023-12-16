#> santa_battle_core:player/_index_d
#
# プレイヤー用処理のdeclare用

# Tags

# Temp：一時的な処理用タグ，基本的に同一functionまたは同tickで除去する
    #declare tag Temp.Start 処理開始時のEntity判別用一時タグ
    #declare tag Temp.Target 紐づけ対象Entity判別用一時タグ
    #declare tag Temp.Calc 計算用Entity判別用一時タグ
    #declare tag Temp.Calc.PlayerSpeed 計算用Entity判別用一時タグ
    #declare tag Temp.Hit 着弾判定用一時タグ
    #declare tag Temp.Killer 攻撃者判別用一時タグ
    #declare tag Temp.Winner 勝者更新判別用一時タグ

# Player関連：Playerのみに付与する
    #declare tag Player.Flag.Death プレイヤーが死亡した
    #declare tag Player.Used.Coas プレイヤーがニンジン棒を使用した
    #declare tag Player.Used.Snowball プレイヤーが雪玉を使用した
    #declare tag Player.OnSled プレイヤーがソリに乗っている
    #declare tag Player.Winner 現状の勝者
    #declare tag Player.Loser 現状の敗者
    #declare tag Player.Draw 現状の引分者
    #declare tag Player.WinnerTeam 現状の勝利チーム
    #declare tag Player.Ghost 観戦者・または残機がなくなったプレイヤー
    #declare tag Player.RedTeam
    #declare tag Player.BlueTeam
    #declare tag Player.GreenTeam
    #declare tag Player.YellowTeam

# Mob関連：Mobのみに付与する
    #declare tag Mob.SledMob ソリの牽引動物
    #declare tag Mob.SledMob.Main ソリの牽引動物・メイン
    #declare tag Mob.SledMob.Sub1 ソリの牽引動物・サブ1
    #declare tag Mob.SledMob.Sub2 ソリの牽引動物・サブ2
    #declare tag Mob.SledRotationMarker ソリの移動方向決定用Marker
    #declare tag Mob.ParticleMarker 演出用marker
    #declare tag Mob.ParticleMarker.Death 演出用marker
    #declare tag Mob.Bullet 弾系Mobの共通タグ
    #declare tag Mob.Bullet.Normal 通常弾
    #declare tag Mob.Bullet.IsHitBlock 弾ブロック着弾時
    #declare tag Mob.TeamDummyEntity チーム点数処理用のダミーエンティティ
    #declare tag Mob.TeamRed
    #declare tag Mob.TeamBlue
    #declare tag Mob.TeamGreen
    #declare tag Mob.TeamYellow

# Storage
    #declare storage santa_battle_core: 基本storage

# Score Holder
    #declare score_holder #game_manager ゲーム全体の処理用

# bossbar
    #declare bossbar santa_battle_core:timer ゲームタイマー用bossbar
