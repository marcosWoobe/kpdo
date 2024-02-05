local cassino3 = {
[1] = {pokename = "Ditto",chance = 7},
[2] = {pokename = "Eevee",chance = 3},
[3] = {pokename ="Kabuto",chance = 3},
[4] = {pokename ="Omanyte",chance = 3},
[5] = {pokename ="Porygon",chance = 2},
[6] = {pokename ="Hitmonlee",chance = 7},
[7] = {pokename ="Hitmonchan",chance = 8},
[8] = {pokename ="Chansey",chance = 4},
[9] = {pokename ="Kangaskhan",chance = 8},
[10] = {pokename ="Lickitung",chance = 4},
}


local cash = 10000*100
if getPlayerMoney(cid) <= cash-1 then
doPlayerSendTextMessage(cid,28,"Sorry You Dony Have Cash need 100 hundread dollars")
return false
end
local random = math.random(1,10)
local current = cassino3[random]
local random2 = current.chance
local current2 = cassino3[channelId-449]
if not current2 then
return false
end
doPlayerRemoveMoney(cid,cash)
doPlayerSendTextMessage(cid,25,"You bet a :"..current2.pokename)
local count = 0
local msg  = "Cassino Royale result:"
local namerandom = 0
local namefail = ""
for randomico = 1, 3 do
namerandom = math.random(1,random2)
if namerandom == random2 then
count = count+1
msg = msg..current.pokename.." [x],"

else
namefail = cassino3[math.random(1,10)]
msg = msg..namefail.pokename.." [ ],"
end
end
doPlayerSendTextMessage(cid,27,msg  )
if count == 3 and current.pokename == current2.pokename then

local item = doCreateItemEx(2222-1)

local description = "Contains a "..current.pokename.."."
doItemSetAttribute(item, "boost", "0")
doItemSetAttribute(item, "exp", "0")
doItemSetAttribute(item, "exp2", "0")
doItemSetAttribute(item, "catchby", "Cassino Royale")
doItemSetAttribute(item, "apelido", current.pokename)
doItemSetAttribute(item, "m1", "0")
doItemSetAttribute(item, "m2", "0")
doItemSetAttribute(item, "m3", "0")
doItemSetAttribute(item, "m4", "0")
doItemSetAttribute(item, "m5", "0")
doItemSetAttribute(item, "m6", "0")
doItemSetAttribute(item, "m7", "0")
doItemSetAttribute(item, "m8", "0")
doItemSetAttribute(item, "m9", "0")
doItemSetAttribute(item, "m10", "0")
doItemSetAttribute(item, "m11", "0")
doItemSetAttribute(item, "m12", "0")
doItemSetAttribute(item, "fine",100)
doItemSetAttribute(item, "cold","0")
doItemSetAttribute(item, "outifit","28")
doItemSetAttribute(item, "nome", current.pokename)
doItemSetAttribute(item, "description", description)

doPlayerSendMailByName(getCreatureName(cid), item, 1)
doPlayerSendTextMessage(cid,28,"Congratulations, you Winner, and Reward pokemon:"..current2.pokename)
return false
end
if count == 3  then
doPlayerSendTextMessage(cid,28,"Cassino Royale:Congratulations, You Reward 200 hundread dollars")
doPlayerAddMoney(cid, cash*2)
return false
end
if count == 2  then
doPlayerSendTextMessage(cid,28,"Cassino Royale:Congratulations, You Reward 50 hundread dollars")
doPlayerAddMoney(cid, cash/2)
return false
end
return false
