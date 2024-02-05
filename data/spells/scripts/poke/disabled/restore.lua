
function onCastSpell(cid, var)
if getPlayerStorageValue(cid, 8) >= 1 then
	return true
end
	if getPlayerStorageValue(cid, 3) >= 1 then
	doSendAnimatedText(getThingPos(cid), "MISS", 215)
	setPlayerStorageValue(cid, 3, -1)
	return true
	end
	doCreatureSay(cid, "RESTORE!", TALKTYPE_MONSTER)
		doSendMagicEffect(getThingPos(cid), 132)

local lifequeta = getCreatureHealth(cid)
local lifemax =   getCreatureMaxHealth(cid)

curar = lifemax-lifequeta 
		doCreatureAddHealth(cid, curar)
		doSendAnimatedText(getThingPos(cid), "+"..curar.."", 35)
	
end
