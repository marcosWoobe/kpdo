function onUse(cid, item, frompos, item2, topos)


--player1pos = {x = 973, y = 1040, z = 3, stackpos=253}
--player1 = getThingfromPos(player1pos)
inimigo = getPlayerStorageValue(cid,6333)

--player2pos = {x = 970, y = 1040, z = 3, stackpos=253}
--player2 = getThingfromPos(player2pos)
if inimigo > 0 then
local win = getCreatureName(inimigo)
local loser = getCreatureName(cid)
doPlayerAddSkillTry(cid,4,50) 
doPlayerAddSkillTry(inimigo,3,50) 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You have lose duel")
doPlayerSendTextMessage(inimigo, MESSAGE_STATUS_CONSOLE_RED, "You Win duel")

if #getCreatureSummons(inimigo) >= 1 then
doTeleportThing(getCreatureSummons(inimigo)[1], {x=975,y=1031,z=0})
end
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=975,y=1032,z=0})
end
setPlayerStorageValue(inimigo, 4445, 0)
setPlayerStorageValue(cid, 4445, 0)
setPlayerStorageValue(inimigo, 5333, 0)
setPlayerStorageValue(cid, 5333, 0)
setPlayerStorageValue(inimigo, 1333, 0)
setPlayerStorageValue(cid, 1333, 0)
setPlayerStorageValue(inimigo, 3333, 0)
setPlayerStorageValue(cid, 3333, 0)
setPlayerStorageValue(inimigo, 2333, 0)
setPlayerStorageValue(cid, 2333, 0)
doCreatureSetNoMove(cid, 0)
doCreatureSetNoMove(inimigo, 0)
doTeleportThing(inimigo, {x=974,y=1031,z=0})
doTeleportThing(cid, {x=974,y=1032,z=0})
doSendAnimatedText(getCreaturePosition(cid), "Loser", 144)
doSendAnimatedText(getCreaturePosition(inimigo), "Wins", 210)
alavanca2pos = {x=979, y=1043, z=2, stackpos=1}
alavanca1pos = {x=979, y=1040, z=2, stackpos=1}

alavanca1 = getThingfromPos(alavanca1pos)
alavanca2 = getThingfromPos(alavanca2pos)
doTransformItem(alavanca1.uid,1485)
doTransformItem(alavanca2.uid,1485)





end
end


