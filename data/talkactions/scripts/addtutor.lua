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
function onSay(cid, words, param)
if isSeniorTutor(cid) then

local string5 = string.explode(param, ",", 2) 

if not string5 then
return doPlayerSendTextMessage(cid,22,"Este comando requer paramentos como /tutor kpdo,1 onde, 1 adiciona e 0 remove")
end
local player = getPlayerByName(string5[1])
local mode = tonumber(string5[2])
if not mode then
return doPlayerSendTextMessage(cid,22,"Este comando requer paramentos como /tutor kpdo,1 onde 1 adiciona e 0 remove")
end
if mode <= 2 then
if isPlayer(player) then
setPlayerTutor(player,mode)
else
return doPlayerSendTextMessage(cid,22,"Player não existe, ou offline.")
end
else
return doPlayerSendTextMessage(cid,22,"Este comando requer paramentos como /tutor kpdo,1 onde 1 adiciona e 0 remove")
end
return true
end
return false
end