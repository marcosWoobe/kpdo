function onStepIn(cid, item, position, fromPosition)
if not isPlayer(cid) then
return true
end
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=1394,y=1382,z=7})
end
doTeleportThing(cid, {x=1394,y=1382,z=7})
return true
end
