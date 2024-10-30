scoreboard objectives add miao dummy "秒"
scoreboard objectives add fen dummy "分"
scoreboard objectives add gain dummy "物品给予"
scoreboard objectives add count dummy "比较数字"
scoreboard objectives add eventEnd dummy "判定事件结束"
scoreboard objectives add start dummy "各种游戏启动器"
scoreboard objectives add death deathCount "死亡榜"
#0为关闭，1为开启
scoreboard players set eventEnd eventEnd 0
scoreboard players set hh eventEnd 0
#判断时间到了后好人胜利的结局
scoreboard players set he eventEnd 0
#0为初始值
scoreboard players set 1 count 1
scoreboard players set 0 count 0
scoreboard players set 10 count 10
#比较数字
scoreboard players set tianshi gain 0
#这是事件中物品给予的组件，0为关闭
scoreboard players set downtime miao 60
scoreboard players set downtime fen 19
scoreboard players set start start 0
#设置游戏时长
scoreboard players set compare miao 0 
scoreboard objectives setdisplay sidebar miao
say 初始化完成
scoreboard players set start start 1
execute if score start start matches 1 run schedule function langrensha:rule/downtime 1t append
execute if score start start matches 1 run schedule function langrensha:rule/dodaycycle 1t append
execute if score start start matches 1 run say hello
execute if score start start matches 1 run schedule function langrensha:identity 1s append
execute if score start start matches 1 run schedule function langrensha:the_end 1s append