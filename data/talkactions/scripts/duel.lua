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
arenabattlep = {
[1] = {x = 880},
[2] = {x = 899},
[3] = {x = 920},
[4] = {x = 947},
[5] = {x = 970},
[6] = {x =991},
}
function onSay(cid, words, param, channel)


     local playerstring = string.explode(param, ",", 3) 


local player = getPlayerByName(playerstring[1])
if not isPlayer(player) then
return doPlayerSendTextMessage(cid,22,"Este player nao esta online ou nao existe.")
end
local enemy = getPlayerByName(playerstring[2])
if not isPlayer(enemy) then
return doPlayerSendTextMessage(cid,22,"Este player nao esta online ou nao existe.")
end

local posarena = arenabattlep[tonumber(playerstring[4])]
if not posarena then
return doPlayerSendTextMessage(cid,22,"fale uma arena existe 6 arenas")
end

if #getCreatureSummons(player) >= 1 then
doTeleportThing(getCreatureSummons(player)[1],{x = posarena.x,y=898, z=13})
end

doTeleportThing(player, {x= posarena.x,y=898, z=13} )


if #getCreatureSummons(enemy) >= 1 then
doTeleportThing(getCreatureSummons(enemy)[1],{x =posarena.x+6,y=898, z=13})
end
setPlayerStorageValue(enemy,223023,1)
setPlayerStorageValue(player,223023,1)
doTeleportThing(enemy, {x = posarena.x+6,y=898, z=13})
local rounds = tonumber(playerstring[3])

if  not rounds then
return true
end
doBattleDuel(player,enemy,rounds)

return true
end