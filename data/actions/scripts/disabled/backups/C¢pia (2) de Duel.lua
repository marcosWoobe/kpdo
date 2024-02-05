local arenas = {
	[9233] = {
		fromPos ={
			{x = 980, y = 1040, z = 2},	--player 1 start pos
			{x = 980, y = 1043, z = 2} --player 2 start pos
											--you can add how much you want, there are no limits
		},
		toPos = {
			{x = 973, y = 1040, z = 3},	--player 1 teleport position
			{x = 970, y = 1040, z = 3} --player 2 teleport position
											--you can add how much you want, there are no limits
		}
	}
}
 

 function onUse(cid, item, fromPosition, itemEx, toPosition)

	if(item.itemid == 5008) then
		doTransformItem(item.uid, 5007)
		return TRUE
	end
 
	local arena = arenas[item.uid]
	if(not arena) then
		return FALSE
	end
 
	local players = {}
	for _, pos in pairs(arena.fromPos) do
		pos.stackpos = STACKPOS_TOP_CREATURE
		local tmp = getThingfromPos(pos).uid
		if(tmp > 0 and isCreature(tmp) == TRUE) then
			table.insert(players, tmp)
		end
	end
 
	if(table.maxn(players) < table.maxn(arena.fromPos)) then
		doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You need more players for duel.")
		return TRUE
	end
 
	for i, pid in pairs(players) do
setPlayerStorageValue(cid, 1333, 1)
doCreatureSetNoMove(cid, 1)
		doSendMagicEffect(arena.fromPos[i], CONST_ME_POFF)
		doTeleportThing(pid, arena.toPos[i])
		doSendMagicEffect(arena.toPos[i], CONST_ME_TELEPORT)
		doPlayerSendTextMessage(pid, MESSAGE_INFO_DESCR, "FIGHT!")
	end
 
	return TRUE
end