title @a title [{"text":"特殊事件："},{"text":"饥荒","color":"red"}]
title @a subtitle [{"text":"由于食物见底 船员陷入"},{"text":"饥饿","color":"red"},{"text":"状态"}]
effect give @a minecraft:hunger infinite 20
scoreboard players set tianshi gain 1
#事件中给予玩家的道具函数启动器，饥饿事件的tianshi gain分数为 1
function langrensha:gain/gain_goods