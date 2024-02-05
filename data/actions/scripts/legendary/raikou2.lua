function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "ampharos l"
local monstername2 = "jolteon l"
local monstername3 = "electabuzz l"
local monstername4 = "electrode l"
local monstername5 = "manectric l"
local monster1 = {x=1598,y=1467,z=8}
local monster2 = {x=1603,y=1467,z=8}
local monster3 = {x=1601,y=1468,z=8}
local monster4 = {x=1605,y=1468,z=8}
local monster5 = {x=1597,y=1468,z=8}

actionstatus = getPlayerStorageValue(cid,90204)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90204,1)
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
doSummonCreature(monstername5,monster5)
doSendMagicEffect(monster1,36)
doSendMagicEffect(monster2,36)
doSendMagicEffect(monster3,36)
doSendMagicEffect(monster4,36)
doSendMagicEffect(monster5,36)
end

addEvent(Summon,100)
addEvent(Quest,6000)
end
end