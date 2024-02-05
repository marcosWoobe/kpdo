function onStepIn(cid, item, position, fromPosition)
if not isPlayer(cid) then
return true
end
if getPlayerStorageValue(cid, 9372) <= 0 then
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a Articuno Legendary Quest.")
return true
end

if getPlayerLevel(cid) <= 249 then
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a level 250.")
return true
end

if(doPlayerRemoveItem(cid, 2130, 1) == true) then 


if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=789,y=954,z=13})
end
doTeleportThing(cid, {x=789,y=954,z=13})
else
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a Articuno Feather.")
end
return true
end
