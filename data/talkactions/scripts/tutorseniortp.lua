--O projeto kpdo é um projeto open source ,uma instituiçao sem fins lucrativo,esse codigo pode ser utilizado e modificado a gosto sendo distribuido a cada modificação de prefencia para colaborar para a evolução do projeto.
--site do jogo: www.exaioros.com
--forum: forum.exaioros.com/forum
--a area em que se encontra para debater o desenvolvimento do jogo e do projeto é:
--http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--The kpdo project is an open source and free project, a non-profit institution, this code can be used and modified to taste being distributed to each Preference modification to contribute to the evolution of the project.
--site of the game is www.exaioros.com
--the forum is forum.exaioros.com/forum
--the area in which it is to discuss the development of the game and the project is
--Forum Open Source: http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--Contact mail:exaioros@gmail.com
--MY name:Renan
--Staff Exaioros kpdo
--[kpdo]Cater (forum)
---=-=-=-==-=-www.exaioros.com-=-=-=-==-=-=-=
--=-=-=-=-=-=-=-=forum.exaioros.com-=-=-=-=-=-=
function onSay(cid, words, param, channel)

	if isSeniorTutor(cid) then
	        local t = string.explode(param, ",", 2)
			if not t then
return doPlayerSendTextMessage(cid,22,"Este comando requer paramentos como /tpbug kpdo,motivo")
end
			local tid = getPlayerByName(t[1])
local fraseban = 'Bug'
if t[t[2]] then
fraseban = t[2]
end
	
		if(not tid or (isPlayerGhost(tid) and getPlayerGhostAccess(tid) > getPlayerGhostAccess(cid))) then
		--db.executeQuery("UPDATE `players` SET  `posx` =  '1050',`posy` =  '1049',`posz` =  '7' WHERE  `players`.`name` ="..param..";")
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Player " .. t[1] .. " not found.")
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
		local sumomdonego = getCreatureSummons(tid)[1]
if sumomdonego then
doTeleportThing(sumomdonego, pos, true)
end
	if(doTeleportThing(tid, pos, true) and not isPlayerGhost(tid)) then
		doSendMagicEffect(tmp, CONST_ME_POFF)
		doSendMagicEffect(pos, CONST_ME_TELEPORT)
	end
	doBroadcastMessage(t[1].." Is Teleported to Temple By :"..getCreatureName(cid).." , Comment : "..fraseban.." .")

	return true
	end
	return true
end
