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
local flie = {'4820', '4821', '4822', '4823', '4824', '4825'}

local lowes = {'5406', '5407', '5408','5409','5410'}

local uplower = {'460', '1022', '1023'}



function onSay(cid)

if getPlayerStorageValue(cid, 17000) <= 0 then
if getPlayerStorageValue(cid, 888) >= 1 then
	return doPlayerSendCancel(cid, "You cant surf pokemons being controled.")
	end
if getPlayerStorageValue(cid, 3333) >= 1 then
return doPlayerSendCancel(cid, "You Cant ride/fly/surf/dive in duel.")
end
local pos = getCreaturePosition(cid)
pos.stackpos = 0
if isInArray(lowes, getTileThingByPos(pos).itemid) then

	if #getCreatureSummons(cid) == 0 then
return doPlayerSendCancel(cid, "You need a pokemon to surf.")
 	elseif (not isInArray(pokesurf, getCreatureName(getCreatureSummons(cid)[1]))) then
return doPlayerSendCancel(cid, "This pokemon cannot surf.")
	end
	

local pos = getCreaturePosition(cid)
	pos.stackpos = 0
	
	pos.z = pos.z-1
	pos.x = pos.x+1
	pos.y = pos.y+1

local g = getTileThingByPos(pos)
if not isInArray(flie, g.itemid) then
return doPlayerSendCancel(cid, "You can\'t go stop surf here!")
end
if not isWalkable(pos, cid, 1, 1) then
return doPlayerSendCancel(cid, "You can\'t go stop surf here!")
end
setPlayerStorageValue(cid, 68972, 0)
doSetCreatureOutfit(cid, {lookType=608}, 1)
doTeleportThing(cid, pos)


else
doPlayerSendCancel(cid, "You Need a surf or fly to dive/fly!")
end
		
return true

end
if getThingPos(cid).z == 0 then
doPlayerSendCancel(cid, "You can\'t go higher!")
return true
end
local pos = getCreaturePosition(cid)
	pos.stackpos = 0
	local g = getTileThingByPos(pos)
	pos.z = pos.z-1
	pos.x = pos.x
	pos.y = pos.y

if getTileThingByPos(pos).itemid == 0 or isInArray(uplower, getTileThingByPos(pos).itemid) then
for x=-1,1 do
for y=-1,1 do
posa = {x=getThingPos(cid).x+x,y=getThingPos(cid).y+y,z=getThingPos(cid).z}
if getTileThingByPos(posa).itemid == 460 then
doRemoveItem(getTileThingByPos(posa).uid, 1)
doCombatAreaHealth(cid, 0, posa, 0, 0, 0, CONST_ME_NONE)
end
end
end
doCombatAreaHealth(cid, 0, pos, 0, 0, 0, CONST_ME_NONE)
doCreateItem(1023, 1, pos)
doTeleportThing(cid, pos)
else
doPlayerSendCancel(cid, "You can\'t fly through constructions.")
return true
end
for x=-1,1 do
for y=-1,1 do
posa = {x=getThingPos(cid).x+x,y=getThingPos(cid).y+y,z=getThingPos(cid).z}
if getTileThingByPos(posa).itemid == 0 then
doCombatAreaHealth(cid, 0, posa, 0, 0, 0, CONST_ME_NONE)
doCreateItem(460, 1, posa)
end
end
doCreateItem(1023, 1, pos)
end
return true
end