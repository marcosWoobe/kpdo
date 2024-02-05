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
wait = coroutine.yield

function runThread(co)
	if(coroutine.status(co) ~= 'dead') then
		local _, delay = coroutine.resume(co)
		addEvent(continueThread, delay, co)
	end
end

function createThread(data)
	local dataType, func = type(data), nil
	if(dataType == 'string') then
		func = loadstring(data)
	elseif(dataType == 'function') then
		func = data
	end

	if(func ~= nil) then
		local co = coroutine.create(func)
		runThread(co)
	else
		print("[createThread]", "Invalid data specified.")
	end
end
