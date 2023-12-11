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

# Player関連：Playerのみに付与する
    #declare tag Player.Used.Coas プレイヤーがニンジン棒を使用した
    #declare tag Player.Used.Snowball プレイヤーが雪玉を使用した
    #declare tag Player.OnSled プレイヤーがソリに乗っている

# Mob関連：Mobのみに付与する
    #declare tag Mob.SledMob ソリの牽引動物
    #declare tag Mob.SledRotationMarker ソリの移動方向決定用Marker
    #declare tag Mob.ParticleMarker 演出用marker
    #declare tag Mob.Bullet 弾系Mobの共通タグ
    #declare tag Mob.Bullet.Normal 通常弾
    #declare tag Mob.Bullet.IsHitBlock 弾ブロック着弾時

# Storage
    #declare storage santa_battle_core: 基本storage
