function onThink(cid, interval)
local player = getPlayerStorageValue(cid,1)
if isPlayer(player) then
--local playerout = getCreatureOutfit(player)
--if getCreatureOutfit(cid) ~= playerout then
--doSetCreatureOutfit(cid, playerout, -1)
--end
--local playerdir = getCreatureLookDir(player)
--if getCreatureLookDir(cid) ~= playerdir then
--doCreatureSetLookDirection(cid,playerdir)
--end
if getPlayerStorageValue(player, 91911) <= 0 then
doRemoveCreature(cid)
end

else
doRemoveCreature(cid)
end
return true
end