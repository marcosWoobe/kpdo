function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "metagross l"
local monstername2 = "metang l"
local monstername3 = "medicham l"
local monstername4 = "wobbuffet l"
local monstername5 = "beldum l"
local monstername6 = "claydol l"
local monster1 = {x=1172,y=588,z=13}
local monster2 = {x=1171,y=588,z=13}
local monster3 = {x=1170,y=588,z=13}
local monster4 = {x=1169,y=588,z=13}
local monster5 = {x=1168,y=588,z=13}
local monster6 = {x=1173,y=588,z=13}

actionstatus = getPlayerStorageValue(cid,90210)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90210,1)
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