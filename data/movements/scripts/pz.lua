
function onStepIn(cid, item, position, fromPosition)
if not isCreature(cid) then
return true
end
if not isPlayer(cid) then
return true
end
if (hasCondition(cid,CONDITION_INFIGHT)) and getTileInfo(fromPosition).pvp then
doTeleportThing(cid, fromPosition)
return true
end



return true
end