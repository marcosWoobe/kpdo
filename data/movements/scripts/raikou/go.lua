function onStepIn(cid, item, position, fromPosition)
if not isPlayer(cid) then
return true
end
if getPlayerStorageValue(cid, 9373) <= 0 then
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a Zapdos Legendary Quest.")
return true
end

if getPlayerLevel(cid) <= 249 then
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a level 250.")
return true
end

if(doPlayerRemoveItem(cid, 2131, 1) == true) then 


if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=1654,y=1413,z=8})
end
doTeleportThing(cid, {x=1654,y=1413,z=8})
else
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a Zapdos Feather.")
end
return true
end
