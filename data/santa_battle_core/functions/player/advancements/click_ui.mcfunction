#> santa_battle_core:player/advancements/click_ui
#
# interactionクリック時実行

# 試合開始
    execute if entity @s[tag=vaDisplay_StartButton]

# 動物選択
    execute if entity @s[tag=vaDisplay_Animal_Goat] as @a[tag=Temp.Target] at @s run function santa_battle_core:game_main/phase1/select_animal/0_goat
    execute if entity @s[tag=vaDisplay_Animal_Allay] as @a[tag=Temp.Target] at @s run function santa_battle_core:game_main/phase1/select_animal/1_allay
    execute if entity @s[tag=vaDisplay_Animal_Sniffer] as @a[tag=Temp.Target] at @s run function santa_battle_core:game_main/phase1/select_animal/2_sniffer
    execute if entity @s[tag=vaDisplay_Animal_Dolphine] as @a[tag=Temp.Target] at @s run function santa_battle_core:game_main/phase1/select_animal/3_dolphine
    execute if entity @s[tag=vaDisplay_Animal_Wolf] as @a[tag=Temp.Target] at @s run function santa_battle_core:game_main/phase1/select_animal/4_wolf
    execute if entity @s[tag=vaDisplay_Animal_Chicken] as @a[tag=Temp.Target] at @s run function santa_battle_core:game_main/phase1/select_animal/5_chicken
    execute if entity @s[tag=vaDisplay_Animal_Skeleton] as @a[tag=Temp.Target] at @s run function santa_battle_core:game_main/phase1/select_animal/6_skeleton
    execute if entity @s[tag=vaDisplay_Animal_Random] as @a[tag=Temp.Target] at @s run function santa_battle_core:game_main/phase1/select_animal/7_random

# ゲーム設定変更
    execute if entity @s[tag=vaDisplay_TeamMode] run function santa_battle_core:game_main/phase1/settings/enable_team
    execute if entity @s[tag=vaDisplay_Timer] run function santa_battle_core:game_main/phase1/settings/timer
    execute if entity @s[tag=vaDisplay_Life] run function santa_battle_core:game_main/phase1/settings/life

# 終了
    execute if data entity @s interaction run data remove entity @s interaction
    tag @a[tag=vaInteracted] remove vaInteracted

# execute positioned 82 -59 20 run summon interaction ~ ~0.5 ~ {Tags:["vaDisplay","vaDisplayHB","vaDisplay_Animal_Random"],width:1.6f,height:1.6f, response:1b,Passengers:[{id:"text_display",Tags:["vaDisplay","vaDisplay_Title"],billboard:"vertical",text:'{"text":"【ほげら】","color":"light_purple","bold":true}',background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.0f,0f],scale:[1.2f,1.2f,1.2f]}}, {id:"text_display",Tags:["vaDisplay","vaDisplay_Lore"],billboard:"vertical",text:'{"text":"[右クリックで選択]","color":"#00ff00","bold":true}',background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.0f,0f],scale:[0.6f,0.6f,0.6f]}}, {id:"item_display",Tags:["vaDisplay","vaDisplay_Model"],item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:2007}},billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[0.4f,0.4f,0.4f]}}]}
# execute positioned 88 -59 16 align xyz run summon interaction ~ ~0.5 ~ {Tags:["vaDisplay","vaDisplayHB","vaDisplay_StartButton"],width:1.6f,height:1.6f, response:1b,Passengers:[{id:"text_display",Tags:["vaDisplay","vaDisplay_Title"],billboard:"vertical",text:'{"text":"【試合開始】","color":"#00ffff","bold":true}',background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.2f,0f],scale:[1.4f,1.4f,1.4f]}}, {id:"text_display",Tags:["vaDisplay","vaDisplay_Lore"],billboard:"vertical",text:'{"text":"<<右クリックで開始>>","color":"#00ff00","bold":true}',background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.0f,0f],scale:[0.8f,0.8f,0.8f]}}, {id:"item_display",Tags:["vaDisplay","vaDisplay_Model"],item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:1226}},billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.8f,0f],scale:[0.8f,0.8f,0.8f]}}]}
# execute positioned 89 -59 18 run summon interaction ~ ~0.5 ~ {Tags:["vaDisplay","vaDisplayHB","vaDisplay_TeamMode"],width:1.4f,height:1.4f, response:1b,Passengers:[{id:"text_display",Tags:["vaDisplay","vaDisplay_Title"],billboard:"vertical",text:'{"text":"【試合形式】","color":"#00ffff","bold":true}',background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.0f,0f],scale:[1.2f,1.2f,1.2f]}}, {id:"text_display",Tags:["vaDisplay","vaDisplay_Lore"],billboard:"vertical",text:'{"text":"<<個人戦>>","color":"#00ff00","bold":true}',background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.0f,0f],scale:[0.6f,0.6f,0.6f]}}, {id:"item_display",Tags:["vaDisplay","vaDisplay_Model"],item:{id:"minecraft:command_block",Count:1b},billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[0.4f,0.4f,0.4f]}}]}
# execute positioned 91 -59 22 run summon interaction ~ ~0.5 ~ {Tags:["vaDisplay","vaDisplayHB","vaDisplay_Life"],width:1.6f,height:1.6f, response:1b,Passengers:[{id:"text_display",Tags:["vaDisplay","vaDisplay_Title"],billboard:"vertical",text:'{"text":"【復活回数】","color":"#00ffff","bold":true}',background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.0f,0f],scale:[1.2f,1.2f,1.2f]}}, {id:"text_display",Tags:["vaDisplay","vaDisplay_Lore"],billboard:"vertical",text:'{"text":"<<無制限>>","color":"#00ff00","bold":true}',background:0, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.0f,0f],scale:[0.6f,0.6f,0.6f]}}, {id:"item_display",Tags:["vaDisplay","vaDisplay_Model"],item:{id:"minecraft:totem_of_undying",Count:1b},billboard:"vertical",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.6f,0f],scale:[0.4f,0.4f,0.4f]}}]}