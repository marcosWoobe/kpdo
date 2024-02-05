function onUse(cid, item, fromPosition, item2, toPosition)

local itemid = 9555
local monstername1 = "charmeleon l"
local monstername2 = "quilava l"
local monstername3 = "combusken l"
local monstername4 = "typhlosion l"
local monstername5 = "charizard l"
local monstername6 = "fire4"
local monster1 = {x=478,y=1762,z=6}
local monster2 = {x=474,y=1761,z=6}
local monster3 = {x=479,y=1766,z=6}
local monster4 = {x=464,y=1761,z=6}
local monster5 = {x=467,y=1762,z=6}
local monster6 = {x=479,y=1768,z=6}
local monster7 = {x=458,y=1758,z=6}

actionstatus = getPlayerStorageValue(cid,90006)
if actionstatus == -1 then
if doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) then
setPlayerStorageValue(cid,90006,1)
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
doSendMagicEffect(monster7,36)
end

addEvent(Summon,100)
addEvent(Quest,6000)
end
end