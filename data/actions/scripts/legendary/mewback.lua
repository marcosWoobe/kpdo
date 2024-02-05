function onUse(cid, item, fromPosition, item2, toPosition)


if not isPlayer(cid) then
return true
end

if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=1174,y=667,z=5})
end
doTeleportThing(cid, {x=1174,y=667,z=5})

return true
end