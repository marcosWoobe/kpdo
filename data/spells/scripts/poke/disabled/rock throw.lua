local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, ROCKDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 11)

function onCastSpell(cid, var)
if getPlayerStorageValue(cid, 8) >= 1 then
	return true
end
	doCreatureSay(cid, "ROCK THROW!", TALKTYPE_MONSTER)
	if (hasCondition(cid, CONDITION_HASTE)) then
if math.random(1,100) <= 60 then
	doSendAnimatedText(getThingPos(cid), "MISS", 215)
return true
	end	

end
	if getPlayerStorageValue(cid, 5) >= 1 then
		if math.random(1,100) <= 33 then
		doSendAnimatedText(getThingPos(cid), "SELF HIT", 180)
			if isPlayer(getCreatureTarget(cid)) then
			huah = getPlayerLevel(getCreatureTarget(cid))
			else
			huah = getPlayerLevel(getCreatureMaster(getCreatureTarget(cid)))
			end
		local levels = huah
		doTargetCombatHealth(getCreatureTarget(cid), cid, COMBAT_PHYSICALDAMAGE, -(math.random((levels*3),(levels*5))), -((math.random((levels*3),(levels*5))+10)), 3)
		return true
		end
	end
doCombat(cid, combat, var)

end
