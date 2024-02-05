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
function onUse(cid, item, frompos, item2, topos)

if isPlayer(item2.uid) then
return doPlayerSendCancel(cid, "You can only use vitamin on pokemons!")
end
if not isCreature(item2.uid) then
return doPlayerSendCancel(cid, "You can only use vitamin on pokemons!")
end

if not isPlayer(getCreatureMaster(item2.uid)) then
return doPlayerSendCancel(cid, "You cant use vitamins on wild pokemons.")
end

if getCreatureMaster(item2.uid) == cid then

if getPlayerStorageValue(item2.uid, 255) >= 1 then
return doPlayerSendCancel(cid, "This pokemon have X - Attack status.")
end
doRemoveItem(item.uid, 1)
doCreatureSay(cid, ""..getCreatureName(item2.uid)..", take X Attack Vitamin!", TALKTYPE_SAY)
doSendAnimatedText(getThingPos(item2.uid), "Double Damage", 215)
doSendMagicEffect(getThingPos(item2.uid), 172)
setPlayerStorageValue(item2.uid, 255,1)
end
return true
end