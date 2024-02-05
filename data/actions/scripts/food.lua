function onUse(cid, item, frompos, item2, topos)

if isPlayer(item2.uid) then
return doPlayerSendCancel(cid, "You can only use vitamin on pokemons!")
	
end





if not isCreature(item2.uid) then
return doPlayerSendCancel(cid, "You can only use vitamin on creatures!")
end

if not isPlayer(getCreatureMaster(item2.uid)) then
return doPlayerSendCancel(cid, "You cant use vitamin on wild pokemons.")
end


if getCreatureMaster(item2.uid) == cid then
if getPlayerStorageValue(item2.uid, 174) >= 1 then
return doPlayerSendCancel(cid, "This pokemon is already under effects of vitamin.")
end
doCreatureSay(cid, ""..getCreatureName(item2.uid)..", take this vitamin!", TALKTYPE_SAY)
doSendMagicEffect(getThingPos(item2.uid), 172)
doRemoveItem(item.uid, 1)
setPlayerStorageValue(item2.uid, 174, 1)
local function heal(params)
	if isCreature(params.item2) then
	if params.rest >= 100 then
doSendMagicEffect(getThingPos(params.item2), 172)
setPlayerStorageValue(params.item2, 174, 0)
return true
end

	if getCreatureHealth(params.item2) == getCreatureMaxHealth(params.item2) then
	addEvent(heal, 1000, {cid = params.cid, item2 = params.item2,rest = params.rest+1})
return true
	end

local vidamax = getCreatureMaxHealth(params.item2)
	
local regen = vidamax/100
	doCreatureAddHealth(params.item2, regen)


	addEvent(heal, 1000, {cid = params.cid, item2 = params.item2,rest = params.rest+1})

end
	
end
local item2 = item2.uid
local doido = 1
addEvent(heal, 1000, {cid = cid, item2 = item2,rest = 1})

end
return true
end