function onStepIn(cid, item, position, fromPosition)
if not isPlayer(cid) then
return true
end

if getPlayerStorageValue(cid, 223298) <= 2 then
doPlayerSendTextMessage(cid, 27, "You can't enter here, you dont have a secret code.")
return true
end


 if getPlayerLevel(cid) >= 200 then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=445,y=1083,z=7})
end
doTeleportThing(cid, {x=445,y=1083,z=7})
else
doPlayerSendTextMessage(cid, 27, "You Need a Level 200 to enter here")
return true
end
return true
end
