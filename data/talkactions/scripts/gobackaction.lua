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

local deathpokes = {'2224','2227','2541','2542','191','200','197'}

function onSay(cid, words, param, channel) 
if exhaustion.get(cid, 5549995) then
return true
end
exhaustion.set(cid, 5549995, 0.5)
local item2 = getPlayerSlotItem(cid,8)
if item2.itemid <= 10 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need a equip one pokemon in feet sloot for use auto go.")
return true
end
if getPlayerStorageValue(cid, 17001) >= 1 or getPlayerStorageValue(cid, 17000) >= 1  or  getPlayerStorageValue(cid, 63215) >= 1  then

return doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Cant use auto go,flying/surf/ride")
end
if #getCreatureSummons(cid) >= 1 and getPlayerStorageValue(getCreatureSummons(cid)[1], 33) >= 1 then
return true
end
if exhaustion.get(cid, 5549991) then
return doPlayerSendCancel(cid, "You Are Exausted")
end
if exhaustion.get(cid, 5549992) then
return doPlayerSendCancel(cid, "You Are Exausted")
end


exhaustion.set(cid, 5549991, 0.9)

local bp = getPlayerSlotItem(cid, CONST_SLOT_BACKPACK)
local pokesloot = param
					local items = getItemsInContainerBykpdo(bp.uid, {'2652','2224','2541','2542','2227','189','191','2200','197','198','200','2222','2653','2220','11213','11214'}) 

local itemgo = item2
for _, uid in pairs(items) do
local check = getItemAttribute(uid.uid, "nome")
if check == param then
itemgo = uid
end 
end


if #getCreatureSummons(cid) >= 1 then
local function actionback(params)
if isCreature(params.cid) then
local bp = getPlayerSlotItem(cid, CONST_SLOT_BACKPACK)
local pokesloot = param
					local items = getItemsInContainerBykpdo(bp.uid, {'2652','2224','2541','2542','2227','189','191','2200','197','198','200','2222','2653','2220','11213','11214'}) 

local itemgo = item2
for _, uid in pairs(items) do
local check = getItemAttribute(uid.uid, "nome")
if check == param then
itemgo = uid
end 
end
if itemgo ~= item2 then
 local itemid1 = item2.itemid
local itemid2 = itemgo.itemid
doTransformItem(item2.uid, itemid2)
doTransformItem(itemgo.uid, itemid1)
doCloneBall(cid,itemgo.uid,item2.uid)
doUseItem(cid, item2.uid)
end
return true
end
end
if itemgo ~= item2 then
addEvent(actionback,1200,{cid = cid,param = param})

end
doUseItem(cid, item2.uid)
return true
end



local item = item2


if itemgo ~= item2 then
 local itemid1 = item2.itemid
local itemid2 = itemgo.itemid
doTransformItem(item2.uid, itemid2)
doTransformItem(itemgo.uid, itemid1)
--doTransformUid(item,itemgo)
doCloneBall(cid,itemgo.uid,item2.uid)
end





doUseItem(cid, item2.uid)


return true
end