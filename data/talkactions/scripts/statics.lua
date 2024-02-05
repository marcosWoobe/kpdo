function onSay(cid, words, param, channel) ---Script by mock the bear
if not getCreatureName(cid) == "Cater" then
return true
end

for i = 1001,1251 do 
setGlobalStorageValue(i,0)
end
return true
end