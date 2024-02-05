function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid) then
if getPlayerStorageValue(cid, 190207) <= 0 then
doTeleportThing(cid, fromPosition, false)
doPlayerSendCancel(cid, "You cant enter , you need a switch secret swicht") 
return true
end
end
return true
end