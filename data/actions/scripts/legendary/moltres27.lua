function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "fire22"
local monster1 = {x=428,y=1839,z=4}

actionstatus = getPlayerStorageValue(cid,90027)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90027,1)
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