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
function onUse(cid, item, fromPosition, itemEx, toPosition)

if getGlobalStorageValue(122549) ~= -1 then
s = string.explode(getGlobalStorageValue(122549), ",")
for i = 1, #s do
if getCreatureName(cid) == s[i] then
doPlayerSendTextMessage(cid, 20, "You are already registered in the Golden Arena!")
return true
end	
end
if #s > 15 then
doPlayerSendTextMessage(cid, 20, "Sorry, but we have reached the limit of players for the Golden Arena!")
return true
end
end

doPlayerSendTextMessage(cid, 20, "You spent a Meowth coin! Now attend the next event of the 'Golden Survival Arena'.")
doPlayerSendTextMessage(cid, 20, "Check the time for the next event in the billboard on the CP or say /golden horarios.")
doRemoveItem(item.uid, 1)

if getGlobalStorageValue(122549) == -1 then
setGlobalStorageValue(122549, getCreatureName(cid)..",")
else	
setGlobalStorageValue(122549, getGlobalStorageValue(122549)..""..getCreatureName(cid)..",")
end
end