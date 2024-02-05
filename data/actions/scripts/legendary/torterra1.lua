function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "ludicolo l"
local monstername2 = "turtwig s"
local monstername3 = "torterra s"
local monstername4 = "grotle s"
local monstername5 = "tangrowth s"
local monstername6 = "cacturne s"
local monster1 = {x=785,y=1300,z=8}
local monster2 = {x=786,y=1300,z=8}
local monster3 = {x=787,y=1300,z=8}
local monster4 = {x=788,y=1300,z=8}
local monster5 = {x=789,y=1300,z=8}
local monster6 = {x=790,y=1300,z=8}

actionstatus = getPlayerStorageValue(cid,90310)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90310,1)
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