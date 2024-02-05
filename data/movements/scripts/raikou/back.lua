function onStepIn(cid, item, position, fromPosition)
if not isPlayer(cid) then
return true
end





if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=1683,y=1416,z=7})
end
doTeleportThing(cid, {x=1683,y=1416,z=7})

return true
end
