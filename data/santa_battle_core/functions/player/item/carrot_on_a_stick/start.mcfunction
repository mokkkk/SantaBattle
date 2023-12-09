#> santa_battle_core:player/item/carrot_on_a_stick/start
#
# プレイヤー アイテム使用処理 ニンジン棒関連

# メインハンドを確認
    data modify storage santa_battle_core: Temp.Mainhand set from entity @s SelectedItem

# ジングル・ベル
    execute if entity @s[tag=!Player.OnSled] if data storage santa_battle_core: Temp.Mainhand.tag{SbcItemId:1} run function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/start

# 終了
    data remove storage santa_battle_core: Temp.Mainhand
