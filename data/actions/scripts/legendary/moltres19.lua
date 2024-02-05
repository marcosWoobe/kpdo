function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "slugma l"
local monstername2 = "magcargo l"
local monstername3 = "fire15"
local monster1 = {x=454,y=1791,z=5}
local monster2 = {x=447,y=1788,z=5}
local monster3 = {x=451,y=1792,z=5}

actionstatus = getPlayerStorageValue(cid,90019)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90019,1)
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
doSendMagicEffect(monster1,36)
doSendMagicEffect(monster2,36)
doSendMagicEffect(monster3,36)
end

addEvent(Summon,100)
addEvent(Quest,6000)
end
end