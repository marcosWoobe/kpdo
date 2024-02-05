local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT,CONST_ME_PLANTATTACK)

local condition = createConditionObject(CONDITION_DRUNK)
setConditionParam(condition, CONDITION_PARAM_TICKS, 30000)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.0, -30, 1.6, -40)
setCombatCondition(combat, condition)

local area = createCombatArea(AREA_CROSS1X1)

setCombatArea(combat, area)

function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end