
function onSay(cid, words, param, channel) ---Script by mock the bear


if getPlayerStorageValue(cid, 91910) >= 1 then
local storagetv = getPlayerStorageValue(cid, 91910)
doCleanStorage(cid,91910)
if getGlobalStorageValue(9000) >= 1 then
setGlobalStorageValue(9000,getGlobalStorageValue(9000)-1)
else
setGlobalStorageValue(9000,0)
end
setGlobalStorageValue(storagetv,-1)

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "you close Watch channel")
end




return true
end