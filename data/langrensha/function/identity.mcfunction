tag @a add text
#给予玩家身份（此时身份不可见）
tag @a[limit=1,tag=text] add detective
function langrensha:roles/detective
#侦探
tag @a[tag=detective] remove text
tag @a[limit=1,tag=text] add captain
function langrensha:roles/captain
#船长
tag @a[tag=captain] remove text
tag @a[limit=1,tag=text] add sailor
function langrensha:roles/sailor
#水手
tag @a[tag=sailor] remove text
tag @a[limit=1,tag=text] add doctor
function langrensha:roles/doctor
#医生
tag @a[tag=doctor] remove text
tag @a[limit=1,tag=text] add police
function langrensha:roles/police
#警察
tag @a[tag=police] remove text
tag @a[limit=1,tag=text] add chef
function langrensha:roles/chef
tag @a[tag=chef] remove text
#厨师
tag @a[limit=1,tag=text] add mate
function langrensha:roles/mate
tag @a[tag=mate] remove text
#大副
#随机选取?个坏人阵营成员
tag @a[limit=1,tag=!police,tag=!dummy] add unabomber
#炸弹客
tag @a[limit=1,tag=!police,tag=!dummy,tag=!unabomber] add serial-killer
#杀人犯