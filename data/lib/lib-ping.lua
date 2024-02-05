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
---Pinglib by mock the bear
ping = {
	_VERSION = "1.0";
	_AUTHOR = "Mock the bear";
	test = function()
		if not getPlayerLastPong then
			print('Error! Cannot run this lib without source changes.')
			return false
		else 
			return true
		end
	end,
	CONST_WATING_RESPONSE = -3,
	CONST_DISCONECTED = -2,
}
 
function ping.CheckPing(cid) -- getPlayerPing By mock
	local c = getPlayerLastPong(cid)
	local l = getPlayerLastPing(cid)
	--if not c or not l then
		--return -2
	--end
	local ping = math.floor((c-l))
	--if ping < 0 then
	
	--end
	return ping
end

function mstring(text) -- getPlayerPing By mock
variavel = text
if isInArray({"m1"}, variavel) then
variavel = 1
elseif isInArray({"m2"}, variavel) then
variavel = 2
elseif isInArray({"m3"}, variavel) then
variavel = 3
elseif isInArray({"m4"}, variavel) then
variavel = 4
elseif isInArray({"m5"}, variavel) then
variavel = 5
elseif isInArray({"m6"}, variavel) then
variavel = 6
elseif isInArray({"m7"}, variavel) then
variavel = 7
elseif isInArray({"m8"}, variavel) then
variavel = 8
elseif isInArray({"m9"}, variavel) then
variavel = 9
elseif isInArray({"m10"}, variavel) then
variavel = 10
elseif isInArray({"m11"}, variavel) then
variavel = 11
elseif isInArray({"m12"}, variavel) then
variavel = 12
end
	return variavel
end
 
function ping.loop(cid,storage,f,...) -- check
	if not isPlayer(cid) then
		return false
	end
	local p_ing = ping.CheckPing(cid)
	if p_ing ~= CONST_WATING_RESPONSE then
		if not tonumber(p_ing) then
			doPlayerSetStorageValue(cid,storage,ping.CONST_DISCONECTED)
			return
		else 
			doPlayerSetStorageValue(cid,storage,p_ing)
                        f(cid,storage,p_ing,...)
			return
		end
	end
	addEvent(ping.loop,100,cid,storage,f,...)
end
 
function ping.getPing(cid,storage,f,...) --- This function will send a ping request and wait the response, so then will add an value on a storage.
	if ping.test() then
		doPlayerSetStorageValue(cid,storage,ping.CONST_WATING_RESPONSE)
		doPlayerSendPing(cid)
		ping.loop(cid,storage,f,...)
	end
end