execute if score tianshi gain = 1 count run give @a[tag=chef] minecraft:chicken 10
#饥饿的道具给予
execute unless score eventEnd eventEnd = 10 count run scoreboard players add eventEnd eventEnd 1
#事件计数
execute if score eventEnd eventEnd = 10 count run scoreboard players set tianshi gain 0
#事件结束判断
execute if score tianshi gain = 1 count run schedule function langrensha:gain/gain_goods 10s replace
#循环调用本函数实现事件的进行，一次10s共10次
execute if score tianshi gain = 0 count run scoreboard players set eventEnd eventEnd 0
#重置事件结束判定
execute if score tianshi gain = 0 count run effect clear @a
execute if score tianshi gain = 0 count run title @a title {"text":"饥饿事件结束"}