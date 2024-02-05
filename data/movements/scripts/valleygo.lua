function onStepIn(cid, item, position, fromPosition)
if not isPlayer(cid) then
return true
end
if getPlayerStorageValue(cid, 223298) <= 2 then
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a secret code")
return true
end

if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=1126,y=747,z=4})
end
doTeleportThing(cid, {x=1126,y=747,z=4})
return true
end
