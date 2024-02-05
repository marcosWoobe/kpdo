local lower = {'460', '1022', '1023'}

local lowes = {'5406', '5407', '5408','5409','5410'}

local houses = {'919', '1015', '1590', '1591', '1592', '1593', '1582', '1584', '1586', '1588', '5248', '5189'}
function onSay(cid)

--if not isPremium(cid) then 
--doPlayerSendCancel(cid, "Only premium members are allowed to dive/fly.")
--return true
--end

if getPlayerStorageValue(cid, 17000) <= 0 then
if getPlayerStorageValue(cid, 63215) >= 1 then

local pos = getCreaturePosition(cid)
pos.stackpos = 0
pos.z = pos.z+1
pos.x = pos.x-1
pos.y = pos.y-1
if not isInArray(lowes, getTileThingByPos(pos).itemid) then
return doPlayerSendCancel(cid, "You can\'t Underwater Here.")
end
if getTileThingByPos(pos).itemid >= 1 then
	
	if not isWalkable(pos, cid, 1, 1) then
	doPlayerSendCancel(cid, "You can\'t Underwater Here.")
	return true
	end
	ground = getTileInfo(pos).itemid
	


doChangeSpeed(cid, -(getCreatureSpeed(cid)))
doChangeSpeed(cid, 550)
doRemoveCondition(cid, CONDITION_OUTFIT)
setPlayerStorageValue(cid, 63215, 0)
setPlayerStorageValue(cid, 68972, 1)
local item = getPlayerSlotItem(cid, 8)
doTeleportThing(cid, pos)
doCreatureSay(cid, "" .. getNickPoke(cid)..", Im tired of surfing!", 1)
pk = doSummonCreature(getItemAttribute(item.uid, "nome"), getCreaturePosition(cid))
doConvinceCreature(cid, pk)
doSendMagicEffect(getCreaturePosition(cid), 25)
doSetCreatureOutfit(cid, {lookType = 608, lookHead = getCreatureOutfit(cid).lookHead, lookAddons = 0, lookLegs = getCreatureOutfit(cid).lookLegs, lookBody = getCreatureOutfit(cid).lookBody, lookFeet = getCreatureOutfit(cid).lookFeet}, -1)
doChangeSpeed(cid, 400)
setPlayerStorageValue(cid, 5987, 1)
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp2")
local aura = getItemAttribute(item.uid, "aura")
if aura and aura >= 1 then
setPlayerStorageValue(pk, 8089, aura)
registerCreatureEvent(pk, "Aura")
end
setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))	
	end




else
doPlayerSendCancel(cid, "You Need a surf or fly to dive/fly!")
end
return true

end
if getThingPos(cid).z == 7 then
doPlayerSendCancel(cid, "You can\'t go lower!")
return true
end
if not isInArray(lower, getTileInfo(getThingPos(cid)).itemid) then
doPlayerSendCancel(cid, "You can\'t go lower!")
return true
end
local pos = getCreaturePosition(cid)
pos.stackpos = 0
pos.z = pos.z+1
pos.x = pos.x
pos.y = pos.y
if isInArray(houses, getTileThingByPos(pos).itemid) then
doPlayerSendCancel(cid, "You can\'t go lower!")
return true
end
if getTileThingByPos(pos).itemid >= 1 then
	if getTilePzInfo(pos) == true then
	doPlayerSendCancel(cid, "You can\'t go down here.")
	return true
	end
	if not isWalkable(pos, cid, 1, 1) then
	doPlayerSendCancel(cid, "You can\'t go there.")
	return true
	end
for x=-1,1 do
for y=-1,1 do
posa = {x=getThingPos(cid).x+x,y=getThingPos(cid).y+y,z=getThingPos(cid).z}
if getTileThingByPos(posa).itemid == 460 then
doRemoveItem(getTileThingByPos(posa).uid, 1)
doCombatAreaHealth(cid, 0, posa, 0, 0, 0, CONST_ME_NONE)
end
end
end
	ground = getTileInfo(pos).itemid
	doCreateItem(460, 1, pos)
	doTeleportThing(cid, pos)
	doCreateItem(ground, 1, pos)
	else
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
	doCreateItem(1022, 1, pos)
	doTeleportThing(cid, pos)
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
end
return true
end