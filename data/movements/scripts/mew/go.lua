function onStepIn(cid, item, position, fromPosition)
if not isPlayer(cid) then
return true
end
if getPlayerStorageValue(cid, 9371) <= 0 and getPlayerStorageValue(cid, 9372) <= 0 and getPlayerStorageValue(cid, 9373) <= 0 then
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a Moltres , Articuno and Zapdos Legendary Quest.")
return true
end

if getPlayerLevel(cid) <= 249 then
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a level 250.")
return true
end




if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=1178,y=676,z=15})
end
doTeleportThing(cid, {x=1178,y=676,z=15})

return true
end
