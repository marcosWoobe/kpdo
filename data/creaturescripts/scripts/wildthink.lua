

function onThink(cid, interval)


if not isCreature(cid) then
return true
end

local killer = getPlayerStorageValue(cid, 9548)

if not isPlayer(killer) then
local npc = getPlayerStorageValue(cid, 4655)
local posx = getPlayerStorageValue(npc, 4982)
local posy = getPlayerStorageValue(npc, 4983)
local posz = getPlayerStorageValue(npc, 4984)
local pos = getCreaturePosition(cid)

	pos.stackpos = 0
	
	pos.z = posz
	pos.x = posx
	pos.y = posy
setPlayerStorageValue(npc, 5000, 0)

if isInArray({"Bruno","Agatha","Lance","Ash"}, getCreatureName(npc)) then
doRemoveCreature(cid)
return true
end
doTeleportThing(npc, pos)
doRemoveCreature(cid)
end
return True

end