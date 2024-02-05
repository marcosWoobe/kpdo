function onUse(cid, item, frompos, item2, topos)

if isPlayer(item2.uid) then
return doPlayerSendCancel(cid, "You can only use potions on pokemons!")
end

--if (getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE) then
--doPlayerSendCancel(cid, "Sorry, you can't use during fights!")
--return TRUE
--end

if not isCreature(item2.uid) then
return doPlayerSendCancel(cid, "You can only use potions on pokemons!")
end

if not isPlayer(getCreatureMaster(item2.uid)) then
return doPlayerSendCancel(cid, "You cant use potions on wild pokemons.")
end
if getCreatureMaster(item2.uid) == cid then
if getCreatureHealth(item2.uid) == getCreatureMaxHealth(item2.uid) then
return doPlayerSendCancel(cid, "This pokemon is already at full health.")
end

if getPlayerStorageValue(item2.uid, 173) >= 1 then
return doPlayerSendCancel(cid, "This pokemon is already under effects of potions.")
end
if getPlayerStorageValue(cid,3333) >= 1 or getPlayerStorageValue(cid, 8888) >= 1  then
return doPlayerSendCancel(cid, "You cant use potion in duel")
end
doCreatureSay(cid, ""..getCreatureName(item2.uid)..", take this potion!", TALKTYPE_SAY)
doSendMagicEffect(getThingPos(item2.uid), 172)
doRemoveItem(item.uid, 1)
setPlayerStorageValue(item2.uid, 173, 1)
local function heal(params)
	if isCreature(params.item2) then
	if getPlayerStorageValue(params.item2, 173) >= 2 then
	return true
	end
	--if (getCreatureCondition(params.cid, CONDITION_INFIGHT) == true) then
	--doSendAnimatedText(getThingPos(params.item2), "LOST HEAL", 215)
	--setPlayerStorageValue(params.item2, 173, 2)
	--return true
	--end
	if getCreatureHealth(params.item2) == getCreatureMaxHealth(params.item2) then
	return true
	end
	if item.itemid == 2271 or item.itemid == 203 then
local health = getCreatureMaxHealth(params.item2)
local healar = health/25 
	doSendMagicEffect(getThingPos(params.item2), 14)
	doCreatureAddHealth(params.item2, healar)

	elseif item.itemid == 2274 or item.itemid == 204 then
local health = getCreatureMaxHealth(params.item2)
local healar = health/10 
	doSendMagicEffect(getThingPos(params.item2), 13)
	doCreatureAddHealth(params.item2, healar)

	elseif item.itemid == 2275 or item.itemid == 205 then
local health = getCreatureMaxHealth(params.item2)
local healar = health/5 
	doSendMagicEffect(getThingPos(params.item2), 12)
	doCreatureAddHealth(params.item2, healar)

	end
	end
end
	

local function noskull(params)
	if isCreature(params.item2) then
	setPlayerStorageValue(item2.uid, 173, 0)
	end
end

local item2 = item2.uid
addEvent(heal, 1200, {cid = cid, item2 = item2})
addEvent(heal, 2400, {cid = cid, item2 = item2})
addEvent(heal, 3600, {cid = cid, item2 = item2})
addEvent(heal, 4800, {cid = cid, item2 = item2})
addEvent(heal, 6000, {cid = cid, item2 = item2})
addEvent(noskull, 6100, {cid = cid, item2 = item2})
end
return true
end