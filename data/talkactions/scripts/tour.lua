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

local playerduel = 223023 -- playerstorage
local subscribe = 223024 -- playerstorage 
local enabledtour = 223025 -- globalstorage
local listsubscribe = 223026 -- globalstorage
local countsubscribe = 223027 -- globalstorage
local start = 223028 -- globalstorage
local goldsub = 223029 -- globalstorage
local silversub = 223030 -- globalstorage
local bronzesub = 223031 -- globalstorage
local gold = 1
local silver = 2
local bronze = 3
function onSay(cid, words, param, frompos)

        --local players = getPlayersOnline()
      
		if getGlobalStorageValue(enabledtour) <= 0 then
return doPlayerSendTextMessage(cid,22,"Não está tendo evento.")
end

local modalidade = getGlobalStorageValue(enabledtour)
local frasemod = "Bronze"
if modalidade == gold then
frasemod = "Gold"
elseif modalidade == silver then
frasemod = "Silver"
end

		local playerstring = string.explode(getGlobalStorageValue(listsubscribe), ",") 
		local subscribes = getGlobalStorageValue(countsubscribe)
		  local xxs = "Numero de Inscritos "..subscribes.." \nCategoria : "..frasemod.."\n"
		 xxs = xxs .."C = Classificado\nB = Batalhando\nA = Aguardando\n\n"


 for _, pid in ipairs(playerstring) do
 local player = getPlayerByName(pid)
 if isPlayer(player) then
if getPlayerStorageValue(player,subscribe) >= 1 and getPlayerStorageValue(player,playerduel) >= 1 then
xxs = xxs .."[".. getCreatureName(player) .. "][C] [B] [on] lv = "..getPlayerLevel(player).."\n"
end
if getPlayerStorageValue(player,subscribe) >= 1 and getPlayerStorageValue(player,playerduel) <= 0 then
xxs = xxs .."[".. getCreatureName(player) .. "][C][A] [on] lv = "..getPlayerLevel(player).."\n"
end
else
xxs = xxs .."[".. pid .. "][OFFLINE] \n"
end

end
doShowTextDialog(cid, 2501,  xxs)
return true

end