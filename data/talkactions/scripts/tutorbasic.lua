local exhaustttt = createConditionObject(CONDITION_EXHAUST)
setConditionParam(exhaustttt, CONDITION_PARAM_TICKS, 60000*60)
local tutor_flag = 44444
function onSay(cid, words, param)


if isTutor(cid) then
local string5 = string.explode(param, ",", 3) 
if not string5 then
return doPlayerSendCancel(cid, "Este Comando requer paramentos como /ban Kpdo")
end
if not string5[3] then
return doPlayerSendCancel(cid, "Este Comando requer paramentos como /ban Kpdo,tempo 1 = 100 secs, razao")
end
local boostx = string5[1]


local player = getPlayerByName(boostx)
local boostx = tonumber(string5[2])

if not boostx then
return doPlayerSendCancel(cid, "Este Comando requer paramentos como /ban Kpdo,tempo 1 = 100 secs, razao")
end
if boostx >= 30 then
return doPlayerSendCancel(cid, "o limite e 30")
end

if isPlayer(player) then
local ver = getPlayerStorageValue(player,44443)
local ver2 = getPlayerStorageValue(player,44442)
if ver <= 0 then
ver = 0
end

if string.len(ver2) >= 200 then
ver2 = "\n"
end

local razao = string5[3]
if string.len(razao) >= 30 then
return doPlayerSendCancel(cid, "Limite de 30 caracteres.")
end
setPlayerStorageValue(player,44443,ver+1)
local ban = "BY "..getCreatureName(cid).." = "..razao.."\n"..ver2
setPlayerStorageValue(player,44442,ban)
setPlayerStorageValue(player,44445,getsysTime()+(boostx*10))
doPlayerSendTextMessage(cid,22,"Você Silenciou o "..getCreatureName(player).." ele ja possui "..ver.." silences.")
return true
else
doPlayerSendCancel(cid, "Este Player nao esta Online ou nao existe.")
end
else
doPlayerSendCancel(cid, "Somente tutor execute este comando.")
end


return false
end