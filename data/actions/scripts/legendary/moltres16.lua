function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "magmar l"
local monstername2 = "fire12"
local monster1 = {x=405,y=1752,z=5}
local monster2 = {x=400,y=1754,z=5}
local monster3 = {x=391,y=1747,z=5}

actionstatus = getPlayerStorageValue(cid,90016)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90016,1)
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
doSummonCreature(monstername2,monster3)
doSendMagicEffect(monster1,36)
doSendMagicEffect(monster2,36)
doSendMagicEffect(monster3,36)
end

addEvent(Summon,100)
addEvent(Quest,6000)
end
end