function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "typhlosion l"
local monstername2 = "combusken l"
local monstername3 = "fire9"
local monster1 = {x=447,y=1754,z=5}
local monster2 = {x=472,y=1766,z=5}
local monster3 = {x=472,y=1765,z=5}
local monster4 = {x=443,y=1753,z=5}

actionstatus = getPlayerStorageValue(cid,90013)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90013,1)
else
doPlayerSendTextMessageCancel(cid,MESSAGE_INFO_DESCR,"Sorry is not possible.")
end

function Quest()
doPlayerSendTextMessage(cid,22,"You win one X Defend for protect yourself!")
doPlayerAddItem(cid,itemid,1)
end

function Summon()
doSummonCreature(monstername1,monster1)
doSummonCreature(monstername2,monster2)
doSummonCreature(monstername3,monster3)
doSummonCreature(monstername3,monster4)
doSendMagicEffect(monster1,36)
doSendMagicEffect(monster2,36)
doSendMagicEffect(monster3,36)
doSendMagicEffect(monster4,36)
end

addEvent(Summon,100)
addEvent(Quest,6000)
end
end