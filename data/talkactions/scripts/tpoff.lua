function onSay(cid, words, param, channel)

	local tid = getPlayerByName(param)
	
		if(not tid) then
		db.executeQuery("UPDATE `players` SET  `posx` =  '1050',`posy` =  '1049',`posz` =  '7' WHERE  `players`.`name` ='"..param.."';")
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. param .. " not found,teleport offline.")
			return true
		end
	

	local pos = getPlayerTown(tid)
	local tmp = getTownName(pos)
	if(not tmp) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Home town does not exists.")
		return true
	end

	pos = getTownTemplePosition(pos)
	if(not pos or isInArray({pos.x, pos.y}, 0)) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Wrong temple position for town " .. tmp .. ".")
		return true
	end

	pos = getClosestFreeTile(tid, pos)
	if(not pos or isInArray({pos.x, pos.y}, 0)) then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Destination not reachable.")
		return true
	end

	tmp = getCreaturePosition(tid)
	if(doTeleportThing(tid, pos, true) and not isPlayerGhost(tid)) then
		doSendMagicEffect(tmp, CONST_ME_POFF)
		doSendMagicEffect(pos, CONST_ME_TELEPORT)
	end

	return true
end
