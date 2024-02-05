function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "blaziken l"
local monstername2 = "fire18"
local monster1 = {x=421,y=1824,z=5}
local monster2 = {x=441,y=1824,z=5}
local monster3 = {x=444,y=1824,z=5}
local monster4 = {x=416,y=1824,z=5}

actionstatus = getPlayerStorageValue(cid,90022)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90022,1)
else
doPlayerSendTextMessageCancel(cid,MESSAGE_INFO_DESCR,"Sorry is not possible.")
end

function Quest()
doPlayerSendTextMessage(cid,22,"You win one X Defend for protect yourself!")
doPlayerAddItem(cid,itemid,1)
end

function Summon()
doSummonCreature(monstername1,monster1)
doSummonCreature(monstername1,monster2)
doSummonCreature(monstername2,monster3)
doSummonCreature(monstername2,monster4)
doSendMagicEffect(monster1,36)
doSendMagicEffect(monster2,36)
doSendMagicEffect(monster3,36)
doSendMagicEffect(monster4,36)
end

addEvent(Summon,100)
addEvent(Quest,6000)
end
end