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
local poke = {'Gallade','Unown','PorygonZ','Mime Jr','Chingling','Giant Porygon','Wynaut','Chimecho','Claydol','Baltoy','Solrock','Lunatone','Gardevoir','Kirlia','Ralts','Meditite','Medicham','Spoink','Grumpig','Abra','Espeon', 'Wobbuffet','Royal Porygon','Kadabra', 'Slowking','Alakazam', 'Drowzee', 'Hypno', 'PorygonZ','Porygon2','Mr Mime', 'Porygon','Mew','Mewtwo','Shiny Alakazam','Dark Abra','Shiny Hypno',"Girafarig"}
local etele = 9499
local cdtele = 1800
function onSay(cid, words, param)
--if getPlayerStorageValue(cid, 61222) >= 1 then

--return doPlayerSendCancel(cid, "Sorry you cant use teleport in saffari , to leave open door")
--end


if not isPremium(cid) then -- tire o primeiro not, atras do isPlayer para ativar o premium
return doPlayerSendCancel(cid, "Only premium members are allowed to use teleport!")
end

if getPlayerStorageValue(cid, 3333) >= 1 then
doPlayerSendCancel(cid, "You Cant teleport in duel.")
return true
end

if getPlayerStorageValue(cid, 122545) == 1 then      --golden arena
       doPlayerSendCancel(cid, "You can't do that while the golden arena!")
    return true
    end
if getPlayerStorageValue(cid, 888) >= 1 then
doPlayerSendCancel(cid, "You cant use teleport controled.")
return true
end

if getPlayerStorageValue(cid, 8888) >= 1 then
doPlayerSendCancel(cid, "You Cant teleport in battle.")
return true
end
if not isPremium(cid) then -- tire o primeiro not, atras do isPlayer para ativar o premium
return doPlayerSendCancel(cid, "Only premium members are allowed to use teleport.")
end

if #getCreatureSummons(cid) == 0 then
doPlayerSendCancel(cid, "You need a pokemon to use teleport.")
return true
end
if not isInArray(poke, getCreatureName(getCreatureSummons(cid)[1])) then
doPlayerSendCancel(cid, "Sorry, this pokemon can\'t cast teleport.")
return true
end
if exhaustion.get(cid, etele) then
	tempo = (exhaustion.get(cid, etele)) / 60
	min = math.floor(tempo)
	doPlayerSendCancel(cid, "Your pokemon is tired, you have to wait more "..min.." minutes to cast teleport again.")
	return true
	end

local config = {
pz = false, -- players precisam estar em protection zone para usar? (true or false)
battle = true, -- players deve estar sem battle (true or false)
custo = false, -- se os teleport irão custa (true or false)
need_level = false, -- se os teleport irão precisar de level (true or false)
premium = false -- se precisa ser premium account (true or false)
}


local lugar = {
["saffron"] = {
pos = {x=1059, y=1047, z=7},level = 5,price = 1000,n="Saffron"},
["cerulean"] = {
pos = {x=1060, y=904, z=7},level = 10, price = 2000,n="Cerulean"},
["lavender"] = {
pos = {x=1204, y=1046, z=7},level = 15,price = 3000,n="Lavender"},
["fuchsia"] = {
pos = {x=1212, y=1325, z=7},level = 15,price = 3000,n="Fuchsia"},
["celadon"] ={
pos = {x=862, y=1098, z=6},level = 20,price = 4000,n="Celadon"},
["viridian"] ={
pos = {x=706, y=1089, z=7},level = 20,price = 4000,n="Viridian"},
["vermilion"] ={
pos = {x=1073, y=1243, z=7},level = 20,price = 4000,n="Vermilion"},
["pewter"] ={
pos = {x=720, y=851, z=7},level = 20,price = 4000,n="Pewter"},
["pallet"] ={
pos = {x=675, y=1216, z=6},level = 20,price = 4000,n="Pallet"},
["cinnabar"] ={
pos = {x=847, y=1397, z=7},level = 20,price = 4000,n="Cinnabar"},
["frozzen"] ={
pos = {x=1430, y=1601, z=6},level = 20,price = 4000,n="Frozzen"},
["white"] ={
pos = {x=540, y=676, z=5},level = 20,price = 4000,n="White"},
["cherrygrove"] ={
pos = {x=588, y=415, z=7},level = 20,price = 4000,n="Cherrygrove"},
["azalea"] ={
pos = {x=1124, y=541, z=7},level = 20,price = 4000,n="Azalea"},
["violet"] ={
pos = {x=1244, y=299, z=7},level = 20,price = 4000,n="Violet"},
["goldenrod"] ={
pos = {x=1139, y=234, z=5},level = 20,price = 4000,n="Goldenrod"},
["blackthorn"] ={
pos = {x=1456, y=63, z=5},level = 20,price = 4000,n="Blackthorn"},
["mahogany"] ={
pos = {x=1682, y=60, z=6},level = 20,price = 4000,n="Mahogany"},
["ecruteak"] ={
pos = {x=988, y=129, z=7},level = 20,price = 4000,n="Ecruteak"},
["olivine"] ={
pos = {x=748, y=223, z=7},level = 20,price = 4000,n="Olivine"},
["cianwood"] ={
pos = {x=558, y=292, z=7},level = 20,price = 4000,n="Cianwood"},
}






if (param == '') then
local str = ""
str = str .. "Places to go :\n\nHouse\nSaffron\nCerulean\nLavender\nFuchsia\nCeladon\nViridian\nVermilion\nPewter\nPallet\nCinnabar\nFrozzen\nWhite\nCherrygrove\nAzalea\nViolet\nGoldenrod\nBlackthorn\nMahogany\nEcruteak\nOlivine\nCianwood"
doShowTextDialog(cid, 7416, str)
return TRUE
end

if string.lower(param) == "house" then
if getHouseByPlayerGUID(getPlayerGUID(cid)) then
nome = getCreatureName(getCreatureSummons(cid)[1])
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 29)
if getPlayerStorageValue(cid, 61223) >= 1 then

setPlayerStorageValue(cid, 61223, nil)
end
if getPlayerStorageValue(cid, 61222) >= 1 then

setPlayerStorageValue(cid, 61222, nil)
end
setPlayerStorageValue(cid, 61209, getCreatureMaxHealth(getCreatureSummons(cid)[1]))
setPlayerStorageValue(cid, 61210, getCreatureHealth(getCreatureSummons(cid)[1]))
doRemoveCreature(getCreatureSummons(cid)[1])
doSendMagicEffect(getThingPos(cid), 29)
doTeleportThing(cid, getHouseEntry(getHouseByPlayerGUID(getPlayerGUID(cid))))
pos2 = {x=getThingPos(cid).x, y=getThingPos(cid).y+1, z=getThingPos(cid).z}
doSendMagicEffect(getThingPos(cid), 29)
doCreatureSay(cid, ""..nome..", teleport to our home!", 1)
local item = getPlayerSlotItem(cid, 8)
doSummonMonster(cid, getItemAttribute(item.uid, "nome"))
local pk = getCreatureSummons(cid)[1]

registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp2")
setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))
doCreatureSay(getCreatureSummons(cid)[1], "TELEPORT!", TALKTYPE_MONSTER)
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), CONST_ME_TELEPORT)
exhaustion.set(cid, etele, cdtele)

if getPlayerStorageValue(cid, 68972) >= 1 then
setPlayerStorageValue(cid, 68972, 0)
doRemoveCondition(cid, CONDITION_OUTFIT)

end
doChangeSpeed(cid, -getCreatureSpeed(cid))
doChangeSpeed(cid, getCreatureBaseSpeed(cid))
    setPlayerStorageValue(cid, 10, 0)
else
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "You don't own a house.")
end
return true
end

local a = lugar[string.lower(param)]
if not(a) then
doPlayerSendTextMessage(cid, 22, "This place doesn\'t exist.")
local str = ""
str = str .. "Places to go :\n\nHouse\nSaffron\nCerulean\nLavender\nFuchsia\nCeladon\nViridian\nVermilion\nPewter\nCinnabar\nPallet\nFrozzen\nJotho\nCherrygrove\nBlackthorn\nAzalea\nCherrygrove"
doShowTextDialog(cid, 7416, str)
return TRUE
elseif config.premium == true and not isPremium(cid) then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Only premium members can use this skill.")
return TRUE
elseif config.battle == true and getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Your pokemon can\'t concentrate during fights.")
return TRUE
end
if getPlayerStorageValue(cid, 61223) >= 1 then

setPlayerStorageValue(cid, 61223, nil)
end
if getPlayerStorageValue(cid, 61222) >= 1 then

setPlayerStorageValue(cid, 61222, nil)
end
nome = getCreatureName(getCreatureSummons(cid)[1])
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 29)
setPlayerStorageValue(cid, 61209, getCreatureMaxHealth(getCreatureSummons(cid)[1]))
setPlayerStorageValue(cid, 61210, getCreatureHealth(getCreatureSummons(cid)[1]))
doRemoveCreature(getCreatureSummons(cid)[1])
doSendMagicEffect(getThingPos(cid), 29)
doTeleportThing(cid, a.pos)
pos2 = {x=getThingPos(cid).x, y=getThingPos(cid).y+1, z=getThingPos(cid).z}
doSendMagicEffect(a.pos, 29)
doCreatureSay(cid, ""..nome..", teleport to "..lugar[string.lower(param)].n.."!", 1)
local item = getPlayerSlotItem(cid, 8)
doSummonMonster(cid, getItemAttribute(item.uid, "nome"))
doTeleportThing(getCreatureSummons(cid)[1], pos2, false)
local pk = getCreatureSummons(cid)[1]

registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp2")
setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))
doCreatureSay(getCreatureSummons(cid)[1], "TELEPORT!", TALKTYPE_MONSTER)
doSendMagicEffect(pos2, CONST_ME_TELEPORT)
exhaustion.set(cid, etele, cdtele)
if getPlayerStorageValue(cid, 68972) >= 1 then
setPlayerStorageValue(cid, 68972, 0)
doRemoveCondition(cid, CONDITION_OUTFIT)

end
doChangeSpeed(cid, -getCreatureSpeed(cid))
doChangeSpeed(cid, getCreatureBaseSpeed(cid))
    --doRemoveCondition(cid, CONDITION_OUTFIT)
    setPlayerStorageValue(cid, 10, 0)
return TRUE
end
