function openTV(cid,text)
if string.len(text) <= 25 then
for x = 0, 100 do
if not isPlayer(getGlobalStorageValue(500+x)) then
setGlobalStorageValue(500+x,cid)
setGlobalStorageValue(8000+x,text)
doPlayerSendTextMessage(cid,22,"You Open Cam Sucessy,nick cam "..text)
setGlobalStorageValue(9000,getGlobalStorageValue(9000)+1)
--setGlobalStorageValue(7777,1)
setPlayerStorageValue(cid,91910,500+x)
doCreatePriv(cid)
return true
end

end
return false
else
doPlayerSendTextMessage(cid,22,"Name Invalid "..text)
end

return false
end

function closeTV(cid)
for x = 0, 100 do
player = getGlobalStorageValue(500+x)
setGlobalStorageValue(9000,0)
if isPlayer(player) then
if player ~= cid then
setGlobalStorageValue(9000,getGlobalStorageValue(9000)+1)
setGlobalStorageValue(500+getGlobalStorageValue(9000)-1,getGlobalStorageValue(500+x))
setGlobalStorageValue(8000+getGlobalStorageValue(9000)-1,getGlobalStorageValue(8000+x))
else
setGlobalStorageValue(9000,getGlobalStorageValue(9000)+1)
setGlobalStorageValue(500+getGlobalStorageValue(9000)-1,getGlobalStorageValue(500+x)+1)
setGlobalStorageValue(8000+getGlobalStorageValue(9000)-1,getGlobalStorageValue(8000+x)+1)
end
else
return false
end
end
return false
end


function onTextEdit(cid, item, newText)
--if not isPremium(cid) then -- 
--doPlayerSendTextMessage(cid,22,"You Can't open tv, only vips")
--return false
--end
if isTV(cid) then
doPlayerSendTextMessage(cid,22,"You Can't open more one tv")
return false
end

if item.itemid == 2599 then
return openTV(cid,newText)
end
return true
end