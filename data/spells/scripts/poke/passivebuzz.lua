local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, ELECTRICDAMAGEWILD)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 207)


arr1 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}
arr2 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}
arr3 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 2, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}
arr4 = {
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 2, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}
local area = createCombatArea(arr1)
setCombatArea(combat, area)

local area1 = createCombatArea(arr2)
setCombatArea(combat, area)

local area2 = createCombatArea(arr3)
setCombatArea(combat, area)

local area3 = createCombatArea(arr4)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	doCreatureSay(cid, "VOLTCHARGE!", TALKTYPE_MONSTER)
	
	
local function gas(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, ELECTRICDAMAGE, getThingPos(cid), area, -(params.x), -(params.y), 207)
	end
	end
local function gas1(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, ELECTRICDAMAGE, getThingPos(cid), area1, -(params.x), -(params.y), 207)
	end
	end
local function gas2(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, ELECTRICDAMAGE, getThingPos(cid), area2, -(params.x), -(params.y), 207)
	end
	end
local function gas3(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, ELECTRICDAMAGE, getThingPos(cid), area3, -(params.x), -(params.y), 207)
	end
	end
if getCreatureName(cid) == "Electabuzz" then
min = 2000
elseif getCreatureName(cid) == "Raichu" then
min = 1000
elseif getCreatureName(cid) == "Pikachu" then
min = 500
end
local x = min
local y = x + 10
addEvent(gas, 200, {cid = cid, x = x, y = y})
addEvent(gas1,500, {cid = cid, x = x, y = y})
addEvent(gas2,800, {cid = cid, x = x, y = y})
addEvent(gas3, 1000, {cid = cid, x = x, y = y})
end
