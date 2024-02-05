function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "camerupt l"
local monstername2 = "numel l"
local monstername3 = "fire19"
local monster1 = {x=453,y=1827,z=5}
local monster2 = {x=455,y=1831,z=5}
local monster3 = {x=450,y=1828,z=5}
local monster4 = {x=455,y=1833,z=5}

actionstatus = getPlayerStorageValue(cid,90023)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90023,1)
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