function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "charmander l"
local monstername2 = "cyndaquil l"
local monstername3 = "growlithe l"
local monstername4 = "ponyta l"
local monstername5 = "vulpix l"
local monstername6 = "fire1"
local monster1 = {x=474,y=1852,z=6}
local monster2 = {x=474,y=1853,z=6}
local monster3 = {x=474,y=1854,z=6}
local monster4 = {x=474,y=1855,z=6}
local monster5 = {x=471,y=1854,z=6}
local monster6 = {x=465,y=1851,z=6}
local monster7 = {x=469,y=1859,z=6}

actionstatus = getPlayerStorageValue(cid,90002)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90002,1)
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
doSummonCreature(monstername6,monster7)
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