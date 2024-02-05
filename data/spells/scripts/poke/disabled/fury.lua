local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, false)

local condition = createConditionObject(CONDITION_HASTE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 8500)
setConditionFormula(condition, 1, -70, 1, -70)
setCombatCondition(combat, condition)

function onCastSpell(cid, var)

if getCreatureName(cid) == "Doduo" or getCreatureName(cid) == "Dodrio" or getCreatureName(cid) == "Charmeleon" or getCreatureName(cid) == "Charizard" then
doCreatureSay(cid, "RAGE!", TALKTYPE_MONSTER)
else
	doCreatureSay(cid, "FURY!", TALKTYPE_MONSTER)
	end
		local function haste(params)
if isCreature(params.cid) then
if isCreature(params.cid) then

				doSendMagicEffect(getThingPos(params.cid), 28)
if  isMonster(getCreatureTarget(params.cid)) or isPlayer(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, NORMALDAMAGE, getThingPos(getCreatureTarget(params.cid)), 0, -330.3, -330.4, 255)
		

end
end
end
			
			end
			end

    addEvent(haste, 900, {cid = cid})
    addEvent(haste, 1800, {cid = cid})
    addEvent(haste, 2700, {cid = cid})
    addEvent(haste, 3600, {cid = cid})
    addEvent(haste, 4550, {cid = cid})
    addEvent(haste, 5400, {cid = cid})
    addEvent(haste, 6300, {cid = cid})
    addEvent(haste, 7200, {cid = cid})
    addEvent(haste, 8100, {cid = cid})
    return true
end