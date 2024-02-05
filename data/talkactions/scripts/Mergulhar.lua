local lowes = {'5406', '5407', '5408','5409','5410'}

function onSay(cid)
if getPlayerStorageValue(cid, 17000) >= 1 then
return true
end


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
doChangeSpeed(cid, getCreatureBaseSpeed(cid))
doRemoveCondition(cid, CONDITION_OUTFIT)
setPlayerStorageValue(cid, 63215, 0)
setPlayerStorageValue(cid, 68972, 1)
local item = getPlayerSlotItem(cid, 8)
doTeleportThing(cid, pos)
doCreatureSay(cid, "" .. getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball.")..", Im tired of surfing!", 1)
pk = doSummonCreature(getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball."), getCreaturePosition(cid))
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
registerCreatureEvent(pk, "aura")
end
local sexy = getItemAttribute(item.uid, "sexy")
if sexy then
doCreatureSetSkullType(pk, sexy)
else
sexy = math.random(4,5)
doItemSetAttribute(item.uid, "sexy", sexy)
doCreatureSetSkullType(pk, sexy)
end
setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))	
setPlayerStorageValue(pk, 1236, getPlayerStorageValue(cid, 451236))
	end




else
doPlayerSendCancel(cid, "You Need a surf or fly to dive/fly!")
end	
return true
end