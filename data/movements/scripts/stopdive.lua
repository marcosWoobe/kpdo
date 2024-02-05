function onStepIn(cid, item, position, fromPosition)
if not isPlayer(cid) then
return true
end
if getPlayerStorageValue(cid, 68972) >= 1 then
setPlayerStorageValue(cid, 68972, nil)
doRemoveCondition(cid, CONDITION_OUTFIT)
end
return true
end
