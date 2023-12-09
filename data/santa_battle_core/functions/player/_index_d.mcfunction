#> santa_battle_core:player/_index_d
#
# プレイヤー用処理のdeclare用

# Tags

# Temp：一時的な処理用タグ，基本的に同一functionまたは同tickで除去する
    #declare tag Temp.Start 処理開始時のEntity判別用一時タグ

# Player関連：Playerのみに付与する
    #declare tag Player.Used.Coas プレイヤーがニンジン棒を使用した
    #declare tag Player.OnSled プレイヤーがソリに乗っている

# Mob関連：Mobのみに付与する
    #declare tag Mob.SledMob ソリの牽引動物
    #declare tag Mob.ParticleMarker 演出用marker
