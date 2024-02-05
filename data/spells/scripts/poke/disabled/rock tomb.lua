local acombat5 = createCombatObject()
local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, ROCKDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 118)
setCombatParam(combat5, COMBAT_PARAM_DISTANCEEFFECT, 11)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -0.3, 0, -0.4, 0)


arr5 = {
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 1, 3, 1, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
	{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
}

local area5 = createCombatArea(arr5)
setCombatArea(acombat5, area5)

local function onCastSpell5(parameters)
    doCombat(parameters.cid, acombat5, parameters.var)
end
 
function onTargetTile5(cid, pos)
    doCombat(cid,combat5,positionToVariant(pos))
end

setCombatCallback(acombat5, CALLBACK_PARAM_TARGETTILE, "onTargetTile5")

function onCastSpell(cid, var)
if getPlayerStorageValue(cid, 8) >= 1 then
	return true
end
	doCreatureSay(cid, "ROCK TOMB!", TALKTYPE_MONSTER)
	if (hasCondition(cid, CONDITION_HASTE)) then
if math.random(1,100) <= 60 then
	doSendAnimatedText(getThingPos(cid), "MISS", 215)
return true
	end	

end
	local msg = getCreatureMaster(cid)
	if isPlayer(msg) == true then
	local mon = getCreatureName(cid)
	doCreatureSay(msg, ""..mon..", use Rock Tomb!", TALKTYPE_SAY)
	end
local parameters = { cid = cid, var = var}
addEvent(onCastSpell5, 000, parameters)
end