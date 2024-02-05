function onStepIn(cid, item, position, fromPosition)

local teleportar = getCreaturePosition(cid)
local pos = getCreaturePosition(cid)
	pos.stackpos = 0
	
	pos.z = pos.z
	pos.x = pos.x
	pos.y = pos.y
local playersnatv = getGlobalStorageValue(8792)
	doTeleportThing(playersnatv, pos)

	
end
