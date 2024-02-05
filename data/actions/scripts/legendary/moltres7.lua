function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "arcanine l"
local monstername2 = "combusken l"
local monstername3 = "rapidash l"
local monstername4 = "fire5"
local monster1 = {x=438,y=1750,z=6}
local monster2 = {x=445,y=1756,z=6}
local monster3 = {x=438,y=1745,z=6}
local monster4 = {x=434,y=1742,z=6}
local monster5 = {x=437,y=1753,z=6}
local monster6 = {x=440,y=1756,z=6}

actionstatus = getPlayerStorageValue(cid,90007)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90007,1)
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
doSummonCreature(monstername4,monster4)
doSummonCreature(monstername4,monster5)
doSummonCreature(monstername4,monster6)
doSendMagicEffect(monster1,36)
doSendMagicEffect(monster2,36)
doSendMagicEffect(monster3,36)
doSendMagicEffect(monster4,36)
doSendMagicEffect(monster5,36)
doSendMagicEffect(monster6,36)
end

addEvent(Summon,100)
addEvent(Quest,6000)
end
end