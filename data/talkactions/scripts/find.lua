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
local find = {'Growlitle', 'Elder Charizard','Arcanine', 'Shiny Arcanine','Dragonite', 'Charizard', 'Dragonair', 'Dratini', 'Gyarados', 'Arbok', 'Snorlax', 'Clefable', 'Wigglytuff', 'Clefairy', 'Jigglytuff', 'Shiny Gyarados', 'Ninetales','Chansey','Rattata','Raticate','Fearow','Pidgeot'}
local exhautStorage = 36223
local cd = 10

function onSay(cid, words, param, channel)
local summons = getCreatureSummons(cid)
if #summons == 0 then
doPlayerSendCancel(cid,"You don't have any summoned pokemons!.")
return true
end

if not isPremium(cid) then -- tire o primeiro not, atras do isPlayer para ativar o premium
return doPlayerSendCancel(cid, "Only premium members are allowed to use habilite Find.")
end
if not isInArray(find, getCreatureName(summons[1])) then
doPlayerSendCancel(cid,"This pokemon cant use find habilite.")
return true
end

if exhaustion.get(cid, exhautStorage) then
doPlayerSendCancel(cid,"You have to wait a few seconds to use find again!")
return true
end
if isInArray(admserver, param) then
return doPlayerSendCancel(cid,"sorry, player is offline")
end
local player = getPlayerByName(param)
if isPlayer(player) then
local nic
doPlayerSendTextMessage(cid,25,getCreatureName(player).." "..getSearchString(getCreaturePosition(cid),getCreaturePosition(player)))
exhaustion.set(cid, exhautStorage, cd)
doPlayerSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use find!", 1)

doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 175)
else
doPlayerSendCancel(cid,"sorry, player is offline")
end

return true
end