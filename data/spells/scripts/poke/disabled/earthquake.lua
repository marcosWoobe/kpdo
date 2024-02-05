local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, GROUNDDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 118)

local area = createCombatArea(AREA_CIRCLE2X2)
setCombatArea(combat, area)

function onCastSpell(cid, var)
if getPlayerStorageValue(cid, 8) >= 1 then
	return true
end
	doCreatureSay(cid, "EARTH QUAKEEEEE!", TALKTYPE_MONSTER)
	if getPlayerStorageValue(cid, 3) >= 1 then
	doSendAnimatedText(getThingPos(cid), "MISS", 215)
	setPlayerStorageValue(cid, 3, -1)
	return true
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
local function gas(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, GROUNDDAMAGE, getThingPos(cid), area, -(params.x), -(params.y), 118)
	else
return 0
	end
end
if getCreatureName(cid) == "Onix" then
min = 300
elseif getCreatureName(cid) == "Crystal Onix" then
min = 1000
elseif getCreatureName(cid) == "Sandslash" then
min = 500
elseif getCreatureName(cid) == "Steelix" then
min = 1000
end
local x = min
local y = x + 10
addEvent(gas, 000, {cid = cid, x = x, y = y})
addEvent(gas, 500, {cid = cid, x = x, y = y})
addEvent(gas, 1000, {cid = cid, x = x, y = y})
addEvent(gas, 1400, {cid = cid, x = x, y = y})
addEvent(gas, 1800, {cid = cid, x = x, y = y})
addEvent(gas, 2200, {cid = cid, x = x, y = y})
addEvent(gas, 2800, {cid = cid, x = x, y = y})
addEvent(gas, 3200, {cid = cid, x = x, y = y})
addEvent(gas, 3700, {cid = cid, x = x, y = y})
addEvent(gas, 4100, {cid = cid, x = x, y = y})
addEvent(gas, 4500, {cid = cid, x = x, y = y})
addEvent(gas, 4900, {cid = cid, x = x, y = y})
addEvent(gas, 5300, {cid = cid, x = x, y = y})
addEvent(gas, 5800, {cid = cid, x = x, y = y})
addEvent(gas, 6000, {cid = cid, x = x, y = y})
addEvent(gas, 6300, {cid = cid, x = x, y = y})
addEvent(gas, 6600, {cid = cid, x = x, y = y})
addEvent(gas, 7000, {cid = cid, x = x, y = y})
end
