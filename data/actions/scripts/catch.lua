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


function getCatch(pos)
for i = 0, 255 do
pos.stackpos = i
local tile = getTileThingByPos(pos)
if tile.itemid ~= 0 and not isCreature(tile.uid) and getItemAttribute(tile.uid, "corpseowner") then
return tile
end
end
return false
end





function onUse(cid, item, frompos, item2, topos)


local catchrate = 1
local oncatch = 24
local onfail = 23
local diseff = 55
local bolabola = 2222
if item.itemid == 2143 then
catchrate = 2
oncatch = 198
onfail = 197
bolabola = 2652
diseff = 53
elseif item.itemid == 2144 then
catchrate = 3
oncatch = 202
onfail = 201
bolabola = 2653
diseff = 51
elseif item.itemid == 2146 then
catchrate = 4
oncatch = 200
onfail = 199
bolabola = 2220
diseff = 54
elseif item.itemid == 192 then
catchrate = 5
oncatch = 222
onfail = 221
bolabola = 198
diseff = 49
elseif item.itemid == 193 then
catchrate = math.random(1,5)
oncatch = 204
onfail = 203
bolabola = 2200
diseff = 48
elseif item.itemid == 11212 then
catchrate = 5
oncatch = 167
onfail = 165
bolabola = 11213
diseff = 52
end
if getPlayerStorageValue(cid, 61222) >= 1 and item.itemid ~= 193 then
return doPlayerSendCancel(cid, "You cant use this ball in saffari.")
end
if getPlayerStorageValue(cid, 61223) >= 1 and item.itemid ~= 11212 then
return doPlayerSendCancel(cid, "You cant use this ball in Giant island.")
end
if item.itemid == 193 and getPlayerStorageValue(cid, 61222) <= 0 then
return doPlayerSendCancel(cid, "You use this ball only in saffari.")
end
local rate = (catchrate)
local catch = oncatch
local fail = onfail
local newid = bolabola
local itemtocatch = getCatch(topos)
if not itemtocatch then
itemtocatch = item2
end
if isCreature(itemtocatch.uid) then
return true
end
for i,x in pairs(catchpokes) do
if itemtocatch.itemid == catchpokes[i].corpse then
local playercatch = getItemAttribute(itemtocatch.uid, "corpseowner")
if isPlayer(playercatch) and playercatch ~= cid then
--if doCaughtOpen(cid,itemtocatch.uid) and playercatch ~= cid  then
doPlayerSendCancel(cid, "You are not allowed to catch this pokemon.")
return true
--end
end
doRemoveItem(item.uid, 1)
doRemoveItem(itemtocatch.uid, 1)
local chancecatch = (x.chance*4)/rate
local pegar = math.random(0, chancecatch)
if isPremium(cid) then 
pegar = math.random(0, chancecatch*0.7)
end
doSendDistanceShoot(getCreaturePosition(cid),topos,diseff)
if pegar <= rate*Ratecatch then
doSendMagicEffect(topos, catch)

--local nas = {
--["%%pokename"] = i
--}
--for i,x in pairs(nas) do
--if description:find(i) then
--description = description:gsub(i, x)
--end
--end

local function capturou(params)
if not isCreature(params.cid) then
return true
end

if getPlayerFreeCap(cid) <= 0.99 then
local calcular = pokesteeee[params.nome] 


if calcular then

addStatics(calcular.st)
local jatem = getGlobalStorageValue(calcular.st)
doPlayerSendTextMessage(params.cid,27,"New "..params.nome.." [ "..jatem.." ]")
end
if newid == 11213 then
newid = 11214
end
local item = doCreateItemEx(newid-1)




doItemSetAttribute(item, "boost", "0")
doItemSetAttribute(item, "exp", "0")
doItemSetAttribute(item, "exp2", "0")
doItemSetAttribute(item, "catchby", getCreatureName(cid))
--doItemSetAttribute(item, "apelido", params.nome)
doItemSetAttribute(item, "m1", "0")
doItemSetAttribute(item, "m2", "0")
doItemSetAttribute(item, "m3", "0")
doItemSetAttribute(item, "m4", "0")
doItemSetAttribute(item, "m5", "0")
doItemSetAttribute(item, "m6", "0")
doItemSetAttribute(item, "m7", "0")
doItemSetAttribute(item, "m8", "0")
doItemSetAttribute(item, "m9", "0")
doItemSetAttribute(item, "m10", "0")
doItemSetAttribute(item, "m11", "0")
doItemSetAttribute(item, "m12", "0")
doItemSetAttribute(item, "fine",100)
doItemSetAttribute(item, "nome", params.nome)
doItemSetAttribute(item, "description", params.description)
doPlayerSendMailByName(getCreatureName(params.cid), item, 1)
doPlayerSendTextMessage(params.cid, 27, "Congratulations, you caught a "..i.."!")
doPlayerSendTextMessage(params.cid, 27, "Since you are already holding six pokemons, this pokeball has been sent to your depot.")
doPlayerSave(params.cid)
local catchs = getPlayerSoul(params.cid)
local caugh = getPlayerStorageValue(params.cid, 19000)

doPlayerSendTextMessage(params.cid, 27, "You have "..caugh.." Pokemon caughts of "..catchs.."-386 catchs")
local d = getCreaturesInRange(getThingPos(params.cid), 5, 5, 0, 1)
if isSound(params.cid) then
DoTaskbarcold(params.cid,"sounds/233.wav")
end


                        for _,pid in pairs(d) do
if isSound(pid) then
doPlayerSendCancel(pid,"sounds/233.wav")
end
end
else

local calcular = pokesteeee[params.nome] 


if  calcular then

addStatics(calcular.st)
local jatem = getGlobalStorageValue(calcular.st)
doPlayerSendTextMessage(params.cid,27,"New "..params.nome.." [ "..jatem.." ]")
end
local item = doCreateItemEx(params.ball)
doItemSetAttribute(item, "fine",100)
doItemSetAttribute(item, "nome", params.nome)
--doItemSetAttribute(item, "apelido", params.nome)
doItemSetAttribute(item, "description", params.description)
doItemSetAttribute(item, "boost", "0")
doItemSetAttribute(item, "exp", "0")
doItemSetAttribute(item, "exp2", "0")
doItemSetAttribute(item, "catchby", getCreatureName(cid))
doItemSetAttribute(item, "m1", "0")
doItemSetAttribute(item, "m2", "0")
doItemSetAttribute(item, "m3", "0")
doItemSetAttribute(item, "m4", "0")
doItemSetAttribute(item, "m5", "0")
doItemSetAttribute(item, "m6", "0")
doItemSetAttribute(item, "m7", "0")
doItemSetAttribute(item, "m8", "0")
doItemSetAttribute(item, "m9", "0")
doItemSetAttribute(item, "m10", "0")
doItemSetAttribute(item, "m11", "0")
doItemSetAttribute(item, "m12", "0")
doPlayerAddItemEx(params.cid, item, true)
doTransformItem(item, newid)
doPlayerSendTextMessage(params.cid, 27, "Congratulations, you caught a "..i.."!")
local catchs = getPlayerSoul(params.cid)
local caugh = getPlayerStorageValue(params.cid, 19000)

doPlayerSave(params.cid)

doPlayerSendTextMessage(params.cid, 27, "You have "..caugh.." Pokemon caughts of "..catchs.."-386 catchs")
local d = getCreaturesInRange(getThingPos(params.cid), 5, 5, 0, 1)
if isSound(params.cid) then
DoTaskbarcold(params.cid,"sounds/233.wav")
end


                        for _,pid in pairs(d) do
if isSound(pid) then
doPlayerSendCancel(pid,"sounds/233.wav")
end
end
end
if #getCreatureSummons(params.cid) >= 1 then
doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 178)
else
doSendMagicEffect(getThingPos(params.cid), 178)
end
end

local description = "Contains a "..i.."."

if getPlayerStorageValue(cid, 19000) <= 0 then
setPlayerStorageValue(cid, 19000, 1)
else
setPlayerStorageValue(cid, 19000, getPlayerStorageValue(cid, 19000)+1)
end
local nomedoviado = getCreatureName(cid) 
local pokestoragever = pokesteeee[i]
if pokestoragever then
local storagesx = pokestoragever.st+20000
if getPlayerStorageValue(cid, storagesx) <= 0 then
doPlayerAddSoul(cid, 1)
setPlayerStorageValue(cid, storagesx, 1)
else
setPlayerStorageValue(cid, storagesx, getPlayerStorageValue(cid, storagesx)+1)
end
end

addEvent(capturou, 4000, {cid = cid, nome = i, description = description, ball = 2219, letter = 2597,verification = nomedoviado})
else
function ruim(params)
if not isCreature(params.cid) then
return true
end
doPlayerSendTextMessage(params.cid, 27, "Sorry, you didn\'t catch that pokemon.")
if #getCreatureSummons(params.cid) >= 1 then
doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 166)
else
doSendMagicEffect(getThingPos(params.cid), 166)
end
local d = getCreaturesInRange(getThingPos(params.cid), 5, 5, 0, 1)
if isSound(params.cid) then
DoTaskbarcold(params.cid,"sounds/236.wav")
end


                        for _,pid in pairs(d) do
if isSound(pid) then
doPlayerSendCancel(pid,"sounds/236.wav")
end
end

end
addEvent(ruim, 4000, {cid = cid})
doSendMagicEffect(topos, fail)
end
end
end

return TRUE
end
