function onSay(cid, words, param, channel)



local name = param
if isPlayer(getPlayerByName(name)) then
 for i = 1001,1386 do
local valor = tonumber(getPlayerStorageValue(cid, i+21000)) 
local mult  = tonumber(getPlayerStorageValue(cid, i+22000))
if not valor then
valor = 1
setPlayerStorageValue(cid, i+21000,1)
end
if not mult then
mult = 1
setPlayerStorageValue(cid, i+22000,1)
end

local valor = getPlayerStorageValue(cid, i+20000) 
if not valor then
setPlayerStorageValue(cid, i+21000,-1)
end
end

end

return true
end