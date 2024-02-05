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
--<< Configurable >>--
local storages = { speed = 914629, status = 191859} -- Empty storages
local outfitx = {lookType = 577}
local outfit = {lookType = 623}
local cfg = { min_speed = 400, -- better not increase than that [ the least speed for a car ]
max_speed = 1, -- better not decrease than this [ the maximum speed for a car ]
Increase_per_command = 100, -- The speed increase or decrease value per each command (!car speed // !car slow)
Car_Explode = true -- Keep it true , so your map isnt filled with cars
}
-->> END <<--

--<< Functions >>--



function getCarSpeed(cid)return getPlayerStorageValue(cid,storages.speed)end
function setCarSpeed(cid,value) return setPlayerStorageValue(cid,storages.speed, getPlayerStorageValue(cid,storages.speed) + value) end
function setCarStatus(cid,value) return setPlayerStorageValue(cid,storages.status,value) end
function carMove(cid) return getPlayerStorageValue(cid,storages.status) > 0 and true or false end


--<< Functions Ends <<--

function onUse(cid, item, frompos, item2, topos)
if  getPlayerStorageValue(cid, 352993)  >= 1 then
return true
end











if  getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 3333) <= 0 and  getPlayerStorageValue(cid, 8888) <= 0 and getPlayerStorageValue(cid, 63215) <= 0 and getPlayerStorageValue(cid, 68972) <= 0 then 


if getPlayerStorageValue(cid, 91859) <= 0 then
local speedskills = getPlayerSkill(cid,2)*5
setPlayerStorageValue(cid, 91859, 1)
doChangeSpeed(cid, -getCreatureSpeed(cid))
doChangeSpeed(cid, 250+speedskills)
doSendAnimatedText(getCreaturePosition(cid),"+"..speedskills,150)
doCreatureSay(cid, "GOGO", TALKTYPE_MONSTER)
if(getPlayerSex(cid) == PLAYERSEX_FEMALE) then
doSetCreatureOutfit(cid, {lookType = 707, lookHead = getCreatureOutfit(cid).lookHead, lookAddons = 0, lookLegs = getCreatureOutfit(cid).lookLegs, lookBody = getCreatureOutfit(cid).lookBody, lookFeet = getCreatureOutfit(cid).lookFeet}, -1)
else
doSetCreatureOutfit(cid, {lookType = 708, lookHead = getCreatureOutfit(cid).lookHead, lookAddons = 0, lookLegs = getCreatureOutfit(cid).lookLegs, lookBody = getCreatureOutfit(cid).lookBody, lookFeet = getCreatureOutfit(cid).lookFeet}, -1)
end


else
doChangeSpeed(cid, -getCreatureSpeed(cid))
doChangeSpeed(cid, getCreatureBaseSpeed(cid))
doRemoveCondition(cid, CONDITION_OUTFIT)
setPlayerStorageValue(cid,91859,-1)
doCreatureSay(cid, "BRAKE!", TALKTYPE_MONSTER)

end



end

return true
end




