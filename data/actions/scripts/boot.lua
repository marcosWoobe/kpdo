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



function getStone(pos,nick,boost,cid)
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
local ballcheck = false
for i = 0, 255 do
pos.stackpos = i
local tile = getTileThingByPos(pos)
if  tile.itemid == 520  and not isCreature(tile) then
ballcheck = getItemsInContainerById(tile.uid,stoneid) 
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
return true

end
end
if not ballcheck then
doPlayerSendTextMessage(cid,28,"Moves stones in container machine.")
return false
end
return false
end

function getBall(pos)
for i = 0, 255 do
pos.stackpos = i
local tile = getTileThingByPos(pos)
if  tile.itemid == 519  and not isCreature(tile) then
local ballcheck = getItemsInContainerById(tile.uid,2222) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,2224) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,2652) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,2653) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,2541) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,2220) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,2227) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,189) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,191) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,198) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,200) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,2200) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,197) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,11213) 
if ballcheck[1] then
return ballcheck[1]
end
ballcheck = getItemsInContainerById(tile.uid,11214) 
if ballcheck[1] then
return ballcheck[1]
end
return false
end
end
return false
end
function onUse(cid, item, frompos, item2, topos)
local posit = getThingPos(item.uid)
posit.y = posit.y
posit.z = posit.z
posit.x = posit.x-1
local pokeball = getBall(posit)
if not pokeball then
return doPlayerSendCancel(cid, "You need a move your pokeball in machine.")
end
local pokeball5 = pokeball
if not pokeball5 then
return doPlayerSendCancel(cid, "You need a move your pokeball in machine.")
end
local boost = getItemAttribute(pokeball5, "candy")
local boostvd = getItemAttribute(pokeball5, "boost")
if boost then
boost = getItemAttribute(pokeball5, "candy")+1
else
boost = 1
end
local nickpoke = getItemAttribute(pokeball5, "nome")
local nickpoke2 = getItemAttribute(pokeball5, "nome")
if isShiny(nickpoke) then
nickpoke = nickpoke:gsub("Shiny ", "")
end
local posit2 = getThingPos(item.uid)
posit2.y = posit2.y
posit2.z = posit2.z
posit2.x = posit2.x+1
local stone= getStone(posit2,nickpoke,boost,cid)
if not stone then
return true
end
if boost >= 200 then
return doPlayerSendCancel(cid, "Limit Boost 200")
end
local lvpoke = pokes[nickpoke] 
local descrilv = boost+boostvd
local description = "Contains a "..nickpoke2..", ST[+"..boostvd.. "]+B["..boost.."]=["..descrilv.."]."
doItemSetAttribute(pokeball5, "candy", boost)
doItemSetAttribute(pokeball5, "description", description)
doSendMagicEffect(getThingPos(cid), 28)
doPlayerSendTextMessage(cid,22,"Congratulations, "..nickpoke2.." Upgrade Boost +"..boost..".")
return true
end