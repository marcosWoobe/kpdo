function onStepIn(cid, item, position, fromPosition)
if not isPlayer(cid) then
return true
end
if getPlayerStorageValue(cid, 9371) <= 0 then
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a Moltres Legendary Quest.")
return true
end

if getPlayerLevel(cid) <= 249 then
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a level 250.")
return true
end

if(doPlayerRemoveItem(cid, 2132, 1) == true) then 


if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=83,y=1071,z=10})
end
doTeleportThing(cid, {x=83,y=1071,z=10})
else
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a Moltres Feather.")
end
return true
end
