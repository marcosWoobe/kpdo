function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "Magmortar s"
local monstername2 = "Infernape s"
local monstername3 = "Torkoal s"
local monstername4 = "Chimchar s"
local monstername5 = "Monferno s"
local monstername6 = "Infernape s"

local monster1 = {x=126,y=1976,z=12}
local monster2 = {x=127,y=1976,z=12}
local monster3 = {x=128,y=1976,z=12}
local monster4 = {x=129,y=1976,z=12}
local monster5 = {x=130,y=1976,z=12}
local monster6 = {x=131,y=1976,z=12}

actionstatus = getPlayerStorageValue(cid,90313)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90313,1)
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