execute if score downtime miao > compare miao run scoreboard players remove downtime miao 1
execute if score downtime miao = compare miao run scoreboard players remove downtime fen 1
execute if score downtime miao = compare miao run scoreboard players set downtime miao 59
#计时器
title @a actionbar [{"color":"red","score":{"name":"downtime","objective":"fen"}},{"text":":","color":"red"},{"score":{"name":"downtime","objective":"miao"}}]
execute unless score downtime fen = compare miao run schedule function langrensha:rule/downtime 1s replace