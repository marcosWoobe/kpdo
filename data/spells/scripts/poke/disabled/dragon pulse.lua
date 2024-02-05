local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, DRAGONDAMAGE)

setCombatParam(combat1, COMBAT_PARAM_EFFECT, 136)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 24)
function onCastSpell(cid, var)
if getPlayerStorageValue(cid, 8) >= 1 then
	return true
end
doCreatureSay(cid, "DRAGON PULSE!", TALKTYPE_MONSTER)
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
		
doTargetCombatHealth(getCreatureTarget(cid), cid, COMBAT_PHYSICALDAMAGE, -(math.random((levels*3),(levels*5))), -((math.random((levels*3),(levels*5))+10)), 136)

return true
end	
end
local function leaf(params)
if isCreature(params.cid) then
   if isCreature(getCreatureTarget(params.cid)) then
  doCombat(params.cid, params.cb, var)
   end
   end
  end
addEvent(leaf, 0, {cid = cid, cb = combat1})
addEvent(leaf, 550, {cid = cid, cb = combat1})
end