
function onSay(cid, words, param, channel) ---Script by mock the bear

if param == "cd" then
setPlayerStorageValue(cid,31020,-1)
return true
end
if param == "ex" then
setPlayerStorageValue(cid,31021,-1)
return true
end
if param == "som" then
setPlayerStorageValue(cid,111111,1)
return true
end
if param == "off" then
setPlayerStorageValue(cid,111111,-1)
return true
end


return true


end
