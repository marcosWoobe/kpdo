local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, NORMALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 127)

combat_arr1 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0},
{0, 1, 0, 1, 1, 1, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 1, 3, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0}
}

combat_arr2 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0},
{0, 1, 0, 0, 1, 1, 1, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 3, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 1, 1, 1, 1, 1, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

combat_arr3 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0},
{0, 0, 1, 0, 1, 0, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 1, 0, 1, 1, 1, 0, 1, 0, 0},
{0, 0, 0, 1, 1, 3, 1, 1, 1, 0, 0},
{0, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0},
{0, 0, 1, 1, 1, 1, 0, 1, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0},
{0, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

combat_arr4 = {
{0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 1, 0, 1, 1, 1, 0, 0, 0},
{0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0},
{0, 0, 0, 0, 0, 3, 1, 1, 1, 0, 0},
{0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0},
{0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

local area = createCombatArea(combat_arr1)
setCombatArea(combat, area)

local area2 = createCombatArea(combat_arr2)
setCombatArea(combat, area2)

local area3 = createCombatArea(combat_arr3)
setCombatArea(combat, area3)


local area4 = createCombatArea(combat_arr4)
setCombatArea(combat, area4)

function onCastSpell(cid, var)
if getPlayerStorageValue(cid, 8) >= 1 then
	return true
end
	doCreatureSay(cid, "GIGA IMPACT!", TALKTYPE_MONSTER)
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
	doAreaCombatHealth(cid, NORMALDAMAGE, getThingPos(cid), area, -(params.x), -(params.y), 127)
	else
return 0
	end
end

local function gas2(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, NORMALDAMAGE, getThingPos(cid), area2, -(params.x), -(params.y), 127)
	else
return 0
	end
end

local function gas3(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, NORMALDAMAGE, getThingPos(cid), area3, -(params.x), -(params.y), 127)
	else
return 0
	end
end

local function gas4(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, NORMALDAMAGE, getThingPos(cid), area4, -(params.x), -(params.y), 127)
	else
return 0
	end
end
if getCreatureName(cid) == "Rapidash" then
min = 1000
elseif getCreatureName(cid) == "Snorlax" then
min = 2000
elseif getCreatureName(cid) == "Kangashkan" then
min = 1200
end
local x = min
local y = x + 10
addEvent(gas, 000, {cid = cid, x = x, y = y})
addEvent(gas2, 700, {cid = cid, x = x, y = y})
addEvent(gas3, 1300, {cid = cid, x = x, y = y})
addEvent(gas4, 2000, {cid = cid, x = x, y = y})
end
