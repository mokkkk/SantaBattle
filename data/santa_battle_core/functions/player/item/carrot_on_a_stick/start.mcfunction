#> santa_battle_core:player/item/carrot_on_a_stick/start
#
# プレイヤー アイテム使用処理 ニンジン棒関連

# メインハンドを確認
    data modify storage santa_battle_core: Temp.Mainhand set from entity @s SelectedItem

# ジングル・ベル
    execute if entity @s[tag=!Player.OnSled] if data storage santa_battle_core: Temp.Mainhand.tag{SbcItemId:1} run function santa_battle_core:player/item/carrot_on_a_stick/0_jingle_bells/start

# 終了
    data remove storage santa_battle_core: Temp.Mainhand

# give @p carrot_on_a_stick{display:{Name:'[{"text":"ジングル","color":"red","italic":false},{"text":"・","color":"white","italic":false},{"text":"ベル","color":"green","italic":false}]',Lore:['{"text":"空飛ぶソリを召喚する素敵な鐘．","italic":false}','{"text":"サンタの必需品．","italic":false}']},CustomModelData:1226,SbcItemId:1} 1