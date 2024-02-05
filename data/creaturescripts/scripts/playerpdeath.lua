function onDeath(cid, deathList)

	doPlayerSendTextMessage(getCreatureMaster(cid), 22, "Control mind is Die")
	local poscmed = getThingPos(cid)
local name = getPlayerStorageValue(getCreatureMaster(cid), 9222)
doRemoveCreature(cid)
	local back = doSummonCreature(""..name.." s", poscmed)
	
	doCreatureAddHealth(back, -getCreatureHealth(back))

return false
end