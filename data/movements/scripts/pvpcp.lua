function onStepIn(cid, item, position, fromPosition)
if not isCreature(cid) then
return true
end
if not isPlayer(cid) then
doTeleportThing(cid, fromPosition)
return true
end

if (hasCondition(cid, CONDITION_OUTFIT)) then
doRemoveCondition(cid, CONDITION_OUTFIT)
end


if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=972, y=1033, z=13})
doSendMagicEffect(getThingPos(cid), 21)
end
doTeleportThing(cid, {x=972, y=1033, z=13})

setPlayerStorageValue(cid, 68972, 0)



end