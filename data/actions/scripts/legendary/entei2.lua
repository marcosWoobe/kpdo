function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "torkoal l"
local monstername2 = "charizard l"
local monstername3 = "magmar l"
local monstername4 = "typhlosion l"
local monstername5 = "blaziken l"
local monstername6 = "fire22"
local monster1 = {x=113,y=1119,z=10}
local monster2 = {x=113,y=1120,z=10}
local monster3 = {x=113,y=1121,z=10}
local monster4 = {x=108,y=1117,z=10}
local monster5 = {x=102,y=1110,z=10}
local monster6 = {x=61,y=1129,z=10}

actionstatus = getPlayerStorageValue(cid,90201)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90201,1)
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