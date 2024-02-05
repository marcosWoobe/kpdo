function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "metagross l"
local monstername2 = "metagross l"
local monstername3 = "metang l"
local monstername4 = "metang l"
local monstername5 = "beldum l"
local monstername6 = "beldum l"
local monster1 = {x=1197,y=561,z=11}
local monster2 = {x=1198,y=561,z=11}
local monster3 = {x=1199,y=561,z=11}
local monster4 = {x=1196,y=561,z=11}
local monster5 = {x=1198,y=557,z=11}
local monster6 = {x=1199,y=557,z=11}

actionstatus = getPlayerStorageValue(cid,90212)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90212,1)
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