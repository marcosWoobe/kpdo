function onThink(cid, interval)
local player = getPlayerStorageValue(cid,1)
if isPlayer(player) then
if getPlayerStorageValue(cid,2) >= 1 then
if getDistanceBetween(getThingPos(cid), getThingPos(player)) > 0 and getDistanceBetween(getThingPos(cid), getThingPos(player)) ~= 0 then
local poscam = getCreaturePosition(player)
doTeleportThing(cid, poscam,true)
end
end
local playerout = getCreatureOutfit(player)
if getCreatureOutfit(cid) ~= playerout then
doSetCreatureOutfit(cid, playerout, -1)
end
local playerdir = getCreatureLookDir(player)
if getCreatureLookDir(cid) ~= playerdir then
doCreatureSetLookDirection(cid,playerdir)
end
else
doRemoveCreature(cid)
end
return true
end