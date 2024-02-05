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
function getStonegc(nick,boost,cid)
local stoneid = false
local mult = false
for i,x in pairs(typesboost) do
if table.find(x, nick) then
stoneid = x.itemid
mult = x.tp
end
end
if not stoneid then
doPlayerSendTextMessage(cid,28,"Error this pokemon dont possible boost report CTRL+r.")
return false
end
if not mult then
doPlayerSendTextMessage(cid,28,"Error this pokemon dont possible boost report CTRL+r.")
return false
end
local stonesmul = math.floor(boost/mult)+1

local ballcheck = getItemsInContainerById(getPlayerSlotItem(cid,3).uid,stoneid) 
local tableadd = {}
local countsom = 0
for _, uid in pairs(ballcheck) do
local atual = getItemCount(uid)
if atual >= stonesmul then
doRemoveItem(uid, stonesmul)
return true
else
countsom = countsom+atual
end

end
if stonesmul >= countsom and  stonesmul ~= countsom then
doPlayerSendCancel(cid, "You dont have stones, need "..stonesmul.." "..getItemNameById(stoneid).." .")
return false
end
local needstones = stonesmul
for _, uid in pairs(ballcheck) do
local atual = getItemCount(uid)




if needstones >= atual then
doRemoveItem(uid, atual)
needstones = math.floor(needstones-atual)
else
doRemoveItem(uid, needstones)
return true
end


end
if countsom >= stonesmul then
return true
end
if not ballcheck[stonesmul] then
doPlayerSendCancel(cid, "You dont have stones, need "..stonesmul.." "..getItemNameById(stoneid).." .")
return false
end

for rev = 1, stonesmul do
doRemoveItem(ballcheck[rev], 1)
end

if not ballcheck then
doPlayerSendTextMessage(cid,28,"Moves stones in backspack , need stones + golden boost to boost 199+.")
return false
end
return false
end
function onUse(cid, item, frompos, item2, topos)
if isCreature(item2.uid) then
return doPlayerSendCancel(cid, "You can only use rare candy in pokeballs!")
end

if isPlayer(item2.uid) then
return doPlayerSendCancel(cid, "You cant use rare candy on wild pokemons.")
end

if item2.uid ~= getPlayerSlotItem(cid, CONST_SLOT_FEET).uid then
return doPlayerSendCancel(cid, "You can only use golden candy in pokeballs in Feet Slot!")
end
if #getCreatureSummons(cid) >= 1 then
return doPlayerSendCancel(cid, "need back you poke for use golden candy")
end

local boost = getItemAttribute(item2.uid, "candy")
local boostvd = getItemAttribute(item2.uid, "boost")
if boost then
boost = getItemAttribute(item2.uid, "candy")+1
else
boost = 1
end
if boost >= 199 then



local nickpoke = getItemAttribute(item2.uid, "nome")
local nickpoke2 = getItemAttribute(item2.uid, "nome")
if isShiny(nickpoke) then
nickpoke = nickpoke:gsub("Shiny ", "")
end
local lvpoke = pokes[nickpoke] 
local descrilv = boost+boostvd
local description = "Contains a "..nickpoke2..", ST[+"..boostvd.. "]+B["..boost.."]=["..descrilv.."]."
local stone= getStonegc(nickpoke,boost-199,cid)
if not stone then
return doPlayerSendTextMessage(cid,28,"Moves stones in backpack , need stones + golden candy to boost.")
end
doItemSetAttribute(item2.uid, "candy", boost)
doItemSetAttribute(item2.uid, "description", description)
doSendMagicEffect(getThingPos(cid), 28)
 doRemoveItem(item.uid, 1)
doPlayerSendTextMessage(cid,22,"Congratulations, "..nickpoke.." Upgrade Boost +"..boost..".")
else
return doPlayerSendCancel(cid, "Need boost +199 and stones to use golden candy")
end


return true
end