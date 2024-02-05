function onSay(cid, words, param)
local func = doCreateMonster

local t = string.explode(param, ",")

local position = getCreaturePosition(cid)
local effect = CONST_ME_MAGIC_RED
local ret = doCreateMonster(t[1], position,t[2])
doSummonMonster(cid, 'Venusaur')
doSetCreatureName(getCreatureSummons(cid)[1],'kpdo')

doSendMagicEffect(position, effect)
return TRUE
end 