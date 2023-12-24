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
    execute store result score #temp const run clear @s written_book{SbcItemId:2} 0
    execute unless score #temp const matches 1.. run kill @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{SbcItemId:2}}}]
    execute unless score #temp const matches 1.. run give @s written_book{display:{Name:'{"text":"サンタの掟","color":"green","italic":false}',Lore:['{"text":"サンタが守るべきルールが書かれた書物．","italic":false}']},SbcItemId:2,HideFlags:32,title:"",author:"",pages:['{"text":"掟その１\\n\\nサンタはソリに乗るもの。\\nベルを鳴らしてソリを呼び出すべし。\\n\\nソリを引く動物によって動きは大きく変わる。\\n自分に合う動物を探せ。"}','{"text":"掟その２\\n\\nサンタは孤高なる存在。\\n子供に夢を与える存在は一人で良い。\\n\\nプレゼントを投げ、ほかのサンタを蹴落とすべし。\\n\\n敵の動きを読み、上手く当てよ。"}','{"text":"掟その３\\n\\nサンタは秘密の存在。\\n決して地に降りてはいけない。\\n\\n地に降りた者はサンタの資格なし。\\n戦いのさなかであろうと、空を飛び続けるべし。"}','{"text":"掟その４\\n\\nソリは命。\\n\\nソリを飛び降り、敵の虚をつくのは有効な戦術である。\\n\\nただし、ソリは３回までしか呼び出せない。\\nソリを失ったサンタに待つのは、絶望のみ。"}','{"text":"掟その５\\n\\n道具は有効に活用すべし。\\n拾ったものはプレゼントボックスに保管しておき、いざという時に活用せよ。\\n\\n空に浮かぶ道具は急いで確保せよ。\\nただし、他のサンタに狙われぬよう注意せよ。"}']} 1
