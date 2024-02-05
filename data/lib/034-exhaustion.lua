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
exhaustion =
{
	check = function (cid, storage)
		if(getPlayerFlagValue(cid, PLAYERFLAG_HASNOEXHAUSTION)) then
			return false
		end

		return getPlayerStorageValue(cid, storage) >= os.time(t)
	end,

	get = function (cid, storage)
	    if isPlayer(cid) then
		if(getPlayerFlagValue(cid, PLAYERFLAG_HASNOEXHAUSTION)) then
			return false
		end
		end

		local exhaust = getPlayerStorageValue(cid, storage)
		if(exhaust > 0) then
			local left = exhaust - os.time(t)
			if(left >= 0) then
				return left
			end
		end

		return false
	end,

	set = function (cid, storage, time)
		setPlayerStorageValue(cid, storage, os.time(t) + time)
	end,

	make = function (cid, storage, time)
		local exhaust = exhaustion.get(cid, storage)
		if(not exhaust) then
			exhaustion.set(cid, storage, time)
			return true
		end

		return false
	end
}



globalexhaustion =
{
	check = function (storage)


		return getGlobalStorageValue(storage) >= os.time(t)
	end,

	get = function (storage)
	    


		local exhaust = getGlobalStorageValue(storage)
		if(exhaust > 0) then
			local left = exhaust - os.time(t)
			if(left >= 0) then
				return left
			end
		end

		return false
	end,

	set = function (storage, time)
		setGlobalStorageValue(storage, os.time(t) + time)
	end,

	make = function (storage, time)
		local exhaust = exhaustion.get(storage)
		if(not exhaust) then
			exhaustion.set(storage, time)
			return true
		end

		return false
	end
}


function logarponto(cid)
setPlayerStorageValue(cid, 2132342, os.time(t))
end

function deslogarponto(cid)
local ant = os.time(t)-getPlayerStorageValue(cid, 2132342)
local at = getPlayerStorageValue(cid, 2132343)
if at <= 0 then
at = 1
end
setPlayerStorageValue(cid, 2132343, ant+at)
end

function verponto(cid)
local at = getPlayerStorageValue(cid, 2132343)
if at <= 0 then
at = 1
end
return at
end
