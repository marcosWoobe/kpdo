function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "staraptor s"
local monstername2 = "staravia s"
local monstername3 = "shellow s"
local monstername4 = "starly s"
local monstername5 = "togekiss s"
local monstername6 = "skarmory s"

local monster1 = {x=1065,y=1427,z=0}
local monster2 = {x=1066,y=1427,z=0}
local monster3 = {x=1067,y=1427,z=0}
local monster4 = {x=1068,y=1427,z=0}
local monster5 = {x=1069,y=1427,z=0}
local monster6 = {x=1070,y=1427,z=0}

actionstatus = getPlayerStorageValue(cid,90318)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90318,1)
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