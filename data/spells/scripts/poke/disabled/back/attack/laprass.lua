local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 64)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 2)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -20, 5, 5, 1.4, 2.1)

function onCastSpell(cid, var)
if getPlayerStorageValue(cid, 8) >= 1 then
	return true
end
	return doCombat(cid, combat, var)
end
