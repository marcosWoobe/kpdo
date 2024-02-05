function onCastSpell(cid, var)
if getPlayerStorageValue(cid, 8) >= 1 then
	return true
end
	doCreatureSay(cid, "FALLING ROCKS!", TALKTYPE_MONSTER)
	if (hasCondition(cid, CONDITION_HASTE)) then
if math.random(1,100) <= 60 then
	doSendAnimatedText(getThingPos(cid), "MISS", 215)
return true
	end	

end
	
local parameters = { cid = cid, var = var}
if getCreatureName(cid) == "Graveler" then
dmga = 1000
elseif getCreatureName(cid) == "Golem" then
dmga = 2800
elseif getCreatureName(cid) == "Onix" then
dmga = 2400
elseif getCreatureName(cid) == "Crystal Onix" then
dmga = 8000
else
dmga = 2500
end
local dmg = dmga

		local function fall(params)
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 11)
		doAreaCombatHealth(cid, ROCKDAMAGE, pos, 0,-(dmg),-(dmg+45), 44)
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end
end