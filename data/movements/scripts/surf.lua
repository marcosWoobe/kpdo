local flie = {'4820', '4821', '4822', '4823', '4824', '4825'}




function onStepIn(cid, item, position, fromPosition)
if not isPlayer(cid) then
doTeleportThing(cid, fromPosition, false) 
	return true
end


if getPlayerStorageValue(cid, 91911) >= 1 then
return true
end
if getPlayerStorageValue(cid, 91859) >= 1 then
setPlayerStorageValue(cid,91859,-1)
end
if getPlayerStorageValue(cid, 17000) >= 1 then
if not isInArray(flie, getTileInfo(fromPosition).itemid) then
return true
end
if getCreatureLookDir(cid) == 0 then
doSendMagicEffect(fromPosition, 33)
elseif getCreatureLookDir(cid) == 1 then
doSendMagicEffect(fromPosition, 49)
elseif getCreatureLookDir(cid) == 2 then
doSendMagicEffect(fromPosition, 30)
elseif getCreatureLookDir(cid) == 3 then
doSendMagicEffect(fromPosition, 51)
end
return true
end
if getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE and getPlayerStorageValue(cid, 63215) ~= 1 then
doPlayerSendCancel(cid, "You cant surf during battle.")
doTeleportThing(cid, fromPosition, false) 
	return true
end
if getPlayerStorageValue(cid, 3333) >= 1 then
doPlayerSendCancel(cid, "You Cant ride/fly/surf/dive in duel.")
doTeleportThing(cid, fromPosition, false) 
return true
end
if getPlayerStorageValue(cid, 888) >= 1 then
	doPlayerSendCancel(cid, "You cant surf pokemons being controled.")
doTeleportThing(cid, fromPosition, false) 
	return true
	end

if not isPremium(cid) then 
if getPlayerStorageValue(cid, 63215) ~= 1 and getPlayerStorageValue(cid, 17000) ~= 1 then
doTeleportThing(cid, fromPosition, false)
doPlayerSendCancel(cid, "Only premium members are allowed to surf.")
return true
end
end
if getCreatureOutfit(cid).lookType == 316 then
doSendMagicEffect(fromPosition, 136)
end

local item = getPlayerSlotItem(cid, 8)
if item.itemid <= 1 then
	doTeleportThing(cid, fromPosition, false)
return true
end

if getPlayerStorageValue(cid, 63215) ~= 1 and getPlayerStorageValue(cid, 17000) <= 0 then

	if #getCreatureSummons(cid) == 0 then
	doPlayerSendCancel(cid, "You need a pokemon to surf.")
	doTeleportThing(cid, fromPosition, false)
	else
	if (not isInArray(pokesurf, getItemAttribute(item.uid, "nome"))) then
	doPlayerSendCancel(cid, "This pokemon cannot surf.")
	doTeleportThing(cid, fromPosition, false)
	return true
	end
	end
end
if #getCreatureSummons(cid) >= 1 and isInArray(pokesurf, getItemAttribute(item.uid, "nome")) and getPlayerStorageValue(cid, 63215) ~= 1 and getPlayerStorageValue(cid, 17000) <= 0 then
doSetCreatureOutfit(cid, surf[getItemAttribute(item.uid, "nome")], -1)
doCreatureSay(cid, ""..getNickPoke(cid)..", lets surf!", 1)
doChangeSpeed(cid, -(getCreatureSpeed(cid)))
doChangeSpeed(cid, surf[getItemAttribute(item.uid, "nome")].speed)
local maxhealth = getCreatureMaxHealth(getCreatureSummons(cid)[1])/100
local health = getCreatureHealth(getCreatureSummons(cid)[1])/maxhealth
local addlife = health
doItemSetAttribute(getPlayerSlotItem(cid, 8).uid, "fine", addlife)

setPlayerStorageValue(cid, 63215, 1)
setPlayerStorageValue(cid, 61209, getCreatureMaxHealth(getCreatureSummons(cid)[1]))
setPlayerStorageValue(cid, 61210, getCreatureHealth(getCreatureSummons(cid)[1]))
setPlayerStorageValue(cid, 61211, getPlayerStorageValue(getCreatureSummons(cid)[1], 3499))
doRemoveCreature(getCreatureSummons(cid)[1])

end
if getPlayerStorageValue(cid, 63215) == 1 then

if getCreatureLookDir(cid) == 0 then
doSendMagicEffect(fromPosition, 33)
elseif getCreatureLookDir(cid) == 1 then
doSendMagicEffect(fromPosition, 49)
elseif getCreatureLookDir(cid) == 2 then
doSendMagicEffect(fromPosition, 30)
elseif getCreatureLookDir(cid) == 3 then
doSendMagicEffect(fromPosition, 51)
end
end

return true
end

function onStepOut(cid, item, position, fromPosition)
if getPlayerStorageValue(cid, 17000) >= 1 then
return true
end
if getPlayerStorageValue(cid, 91911) >= 1 then
return true
end

if isInArray(flie,item.itemid)  then
return true
end

if getPlayerStorageValue(cid, 63215) >= 1 then
doChangeSpeed(cid, -(getCreatureSpeed(cid)))
doChangeSpeed(cid, getCreatureBaseSpeed(cid))
doRemoveCondition(cid, CONDITION_OUTFIT)
setPlayerStorageValue(cid, 63215, 0)
local item = getPlayerSlotItem(cid, 8)
doCreatureSay(cid, "" .. getItemAttribute(item.uid, "nome")..", Im tired of surfing!", 1)

doSummonMonster(cid, getItemAttribute(item.uid, "nome"))

local pk = getCreatureSummons(cid)[1]
doConvinceCreature(cid, pk)
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
setPlayerStorageValue(pk, 3499, getPlayerStorageValue(cid,61211))
return true

end
return true
end