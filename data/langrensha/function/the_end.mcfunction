execute if score @e[limit=1,tag=serial-killer] death matches 1 run title @a title [{"text":"游戏结束:"},{"text":"全员遇难","color":"red"}]
execute if score @e[limit=1,tag=serial-killer] death matches 1 run function langrensha:remove_tag
execute if score downtime miao matches 0 run scoreboard players add hh eventEnd 1
execute if score hh eventEnd matches 20 run function langrensha:remove_tag
#好人获胜结局
execute as @a if score @a[limit=1,tag=!serial-killer,tag=!unabomber] death matches 1 run function langrensha:death
execute if score he eventEnd matches 5 run title @a title [{"text":"游戏结束:"},{"text":"坏人逃脱","color":"red"}] 
execute if score he eventEnd matches 5 run function langrensha:remove_tag
#全员躺板板，坏人获胜
execute if score start start matches 1 run schedule function langrensha:the_end 1s append