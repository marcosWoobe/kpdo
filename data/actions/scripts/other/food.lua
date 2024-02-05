

function onUse(cid, item, fromPosition, itemEx, toPosition)
if exhaustion.get(cid, 5545781) then
local dittocold = math.floor(exhaustion.get(cid, 5545781))
return doPlayerSendCancel(cid, "you is already under effects of power regenerate, wait "..dittocold.." seconds to use again.")
end

exhaustion.set(cid, 5545781, 100)

doSendMagicEffect(getThingPos(cid), 172)


local function heal(params)
	if isCreature(params.item2) then
	if params.rest >= 100 then
doSendMagicEffect(getThingPos(params.item2), 172)
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
local item2 = cid
addEvent(heal, 1000, {cid = cid, item2 = cid,rest = 1})


	doRemoveItem(item.uid, 1)
	return true
end
