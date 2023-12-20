#> santa_battle_core:player/tick_start/get_data
#
# プレイヤー tick開始時の処理 行動検知関連

# 死亡
    execute if score @s player.flag.death matches 1.. run tag @s add Player.Flag.Death

# ニンジン棒使用
    execute if score @s player.used.coas matches 1.. run tag @s add Player.Used.Coas

# 雪玉使用
    execute if score @s player.used.snowball matches 1.. run tag @s add Player.Used.Snowball

# アイテムを持っていない人にアイテムを与える
    execute unless entity @s[tag=Player.Used.Snowball] store result score #temp const run clear @s snowball 0
    execute unless entity @s[tag=Player.Used.Snowball] unless score #temp const matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:snowball"}}]
    execute unless entity @s[tag=Player.Used.Snowball] unless score #temp const matches 1.. run give @s snowball{display:{Name:'{"text":"プレゼントボックス","color":"red","italic":false}',Lore:['{"text":"サンタの基本装備．","italic":false}','{"text":"子供たちに夢を与えることもできるし，","italic":false}','{"text":"競合他者を撃ち落とすこともできる．","italic":false}','{"text":"拾ったものを入れておくこともできる．","italic":false}']}} 1
    execute store result score #temp const run clear @s carrot_on_a_stick{SbcItemId:1} 0
    execute unless score #temp const matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",tag:{SbcItemId:1}}}]
    execute unless score #temp const matches 1.. run give @s carrot_on_a_stick{display:{Name:'[{"text":"ジングル","color":"red","italic":false},{"text":"・","color":"white","italic":false},{"text":"ベル","color":"green","italic":false}]',Lore:['{"text":"空飛ぶソリを召喚する素敵な鐘．","italic":false}','{"text":"サンタの必需品．","italic":false}']},CustomModelData:1226,SbcItemId:1}
