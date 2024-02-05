function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "torkoal l"
local monster1 = {x=410,y=1731,z=3}

actionstatus = getPlayerStorageValue(cid,90028)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90028,1)
else
doPlayerSendTextMessageCancel(cid,MESSAGE_INFO_DESCR,"Sorry is not possible.")
end

function Quest()
doPlayerSendTextMessage(cid,22,"You win one X Defend for protect yourself!")
doPlayerAddItem(cid,itemid,1)
end

function Summon()
doSummonCreature(monstername1,monster1)
doSendMagicEffect(monster1,36)
end

addEvent(Summon,100)
addEvent(Quest,6000)
end
end