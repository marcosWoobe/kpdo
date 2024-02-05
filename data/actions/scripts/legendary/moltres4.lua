function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "charmeleon l"
local monstername2 = "quilava l"
local monstername3 = "torchic l"
local monstername4 = "fire1"
local monster1 = {x=387,y=1732,z=6}
local monster2 = {x=394,y=1735,z=6}
local monster3 = {x=395,y=1735,z=6}
local monster4 = {x=393,y=1727,z=6}
local monster5 = {x=391,y=1729,z=6}
local monster6 = {x=397,y=1786,z=6}
local monster7 = {x=399,y=1786,z=6}

actionstatus = getPlayerStorageValue(cid,90004)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90004,1)
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
doSummonCreature(monstername4,monster7)
doSendMagicEffect(monster1,36)
doSendMagicEffect(monster2,36)
doSendMagicEffect(monster3,36)
doSendMagicEffect(monster4,36)
doSendMagicEffect(monster5,36)
doSendMagicEffect(monster6,36)
doSendMagicEffect(monster7,36)
end

addEvent(Summon,100)
addEvent(Quest,6000)
end
end