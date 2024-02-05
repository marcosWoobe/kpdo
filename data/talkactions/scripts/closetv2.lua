
function onSay(cid, words, param, channel) ---Script by mock the bear
if getPlayerStorageValue(cid, 91911) >= 1 then
local player = getPlayerStorageValue(cid, 91911)
setPlayerStorageValue(cid, 91911,1)
if isPlayer(player) then
doExcludePVT(player,getCreatureName(cid))
end
return false
end




return false
end