local exhaustttt = createConditionObject(CONDITION_EXHAUST)
setConditionParam(exhaustttt, CONDITION_PARAM_TICKS, 60000*60)
local tutor_flag = 44444
function onSay(cid, words, param)


if isTutor(cid) then
local string5 = param
if not string5 then
return doPlayerSendCancel(cid, "Este Comando requer paramentos como /check Kpdo")
end
local boostx = string5[1]


local player = getPlayerByName(string5)
if isPlayer(player) then
local ver = getPlayerStorageValue(player,44443)

if ver <= 0 then
return doPlayerSendCancel(cid, "Este Player não tem silences.")
end

local dialog = "Numero de silences:"..ver.."\nMotivos\n "..getPlayerStorageValue(player,44442).." \nfim"

doShowTextDialog(cid, 2220,dialog)
return true
else
doPlayerSendCancel(cid, "Este Player nao esta Online ou nao existe.")
end
else
doPlayerSendCancel(cid, "Somente tutor execute este comando.")
end


return false
end