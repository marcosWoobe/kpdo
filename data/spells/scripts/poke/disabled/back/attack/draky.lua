local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 59)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 41)
setAttackFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 5, 5, 4, 6)

local area = createCombatArea(AREA_CIRCLE2X2)
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
