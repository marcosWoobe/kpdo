function onStepIn(cid, item, position, fromPosition)
if not isCreature(cid) then
return true
end
if not isPlayer(cid) then
doTeleportThing(cid, fromPosition)
return true
end

if getPlayerStorageValue(cid, 17000) >= 1 or  getPlayerStorageValue(cid, 17001) >= 1 then
doTeleportThing(cid, fromPosition)
return true
end
setPlayerStorageValue(cid, 68972, 1)
if (hasCondition(cid, CONDITION_OUTFIT)) then
doRemoveCondition(cid, CONDITION_OUTFIT)
end
doSetCreatureOutfit(cid, {lookType = 159, lookHead = 94, lookAddons = 0, lookLegs = 94, lookBody = 94, lookFeet = 94}, -1)


if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=993, y=1175, z=13})
doSendMagicEffect(getThingPos(cid), 21)
end

doTeleportThing(cid, {x=993, y=1175, z=13})





end