function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid) then
if getPlayerStorageValue(cid, 5333) >= 1 then
doTeleportThing(cid, fromPosition, false)
doPlayerSendCancel(cid, "You cant enter in Protection zone, in duel") 
return true
end
elseif isSummon(cid) then
if getPlayerStorageValue(getCreatureMaster(cid), 5333) >= 1 then
if position == fromPosition then

doTeleportThing(cid, getCreaturePosition(getCreatureMaster(cid)), false)
 return true
 else
 doTeleportThing(cid, fromPosition, false)
 end
end
end
return true
end