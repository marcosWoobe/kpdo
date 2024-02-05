local combat, effect, area, words, dir = {}, {80, 83, 81, 82}, {
{ {2}, {1} }, { {2}, {0}, {1}, {1} }, { {2}, {0}, {0}, {0}, {1} },
{ {1, 2} }, { {1, 1, 1, 0, 2} }, { {1, 0, 0, 0, 0, 2} },
{ {1}, {2} }, { {1}, {1}, {0}, {2} }, { {1}, {0}, {0}, {0}, {2} },
{ {2, 1} }, { {2, 0, 1, 1, 1} }, { {2, 0, 0, 0, 0, 1} }
}, {'Solar...!', 'Solar...!', 'Solar...!', 'Solar...!', 'BEAM!'},
{ [0] = {1, 3}, [1] = {4, 6}, [2] = {7, 9}, [3] = {10, 12} }
for i = 1, 12 do
	table.insert(combat, createCombatObject())
	setCombatParam(combat[i], COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
	setCombatParam(combat[i], COMBAT_PARAM_EFFECT, effect[i])
	setCombatFormula(combat[i], COMBAT_FORMULA_LEVELMAGIC, -7, 0, -8, 0)
	setCombatArea(combat[i], createCombatArea(area[i]))
end
function onCastSpell(cid, var)
if getPlayerStorageValue(cid, 8) >= 1 then
	return true
end
	for i = 1, #words do doCreatureSay(cid, words[i], TALKTYPE_ORANGE_1) end
	local d = getCreatureLookDirection(cid)
	for i = dir[d][1], dir[d][2] do doCombat(cid, combat[i], numberToVariant(cid)) end
	return true
end
