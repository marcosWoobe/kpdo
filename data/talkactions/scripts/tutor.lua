local condition = createConditionObject(CONDITION_MUTED)
setConditionParam(condition, CONDITION_PARAM_TICKS, 60000*60)

local condition2 = createConditionObject(CONDITION_MUTED)
setConditionParam(condition2, CONDITION_PARAM_TICKS, 60000*60)

function onSay(cid, words, param)


if isTutor(cid) == 2 then
local string5 = string.explode(param, ",", 2) 
if not string5 then
return doPlayerSendCancel(cid, "Este Comando requer paramentos como /ban Kpdo,1 < significa que se baniu o kpdo por 1 minuto")
end
local boostx = string5[1]


local player = getPlayerByName(boostx)
local boostx = tonumber(string5[2])

if not boostx then
return doPlayerSendCancel(cid, "Este Comando requer paramentos como /ban Kpdo,1 < significa que se baniu o kpdo por 1 minuto")
end

if isPlayer(player) then
	if (hasCondition(player, CONDITION_MUTED)) then
  doRemoveCondition(player, CONDITION_MUTED)
end

doAddCondition(player, condition)
else
doPlayerSendCancel(cid, "Este Player nao esta Online ou nao existe.")
end
else
doPlayerSendCancel(cid, "Somente senior tutor execute este comando.")
end


return true
end