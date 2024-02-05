function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "torkoal l"
local monstername2 = "charizard l"
local monstername3 = "magmar l"
local monstername4 = "typhlosion l"
local monstername5 = "blaziken l"
local monstername6 = "fire22"
local monster1 = {x=116,y=1075,z=10}
local monster2 = {x=118,y=1068,z=10}
local monster3 = {x=121,y=1070,z=10}
local monster4 = {x=117,y=1077,z=10}
local monster5 = {x=119,y=1071,z=10}
local monster6 = {x=101,y=1094,z=10}

actionstatus = getPlayerStorageValue(cid,90200)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90200,1)
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
doSummonCreature(monstername6,monster6)
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