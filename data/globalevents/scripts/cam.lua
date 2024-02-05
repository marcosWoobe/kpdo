function onThink(interval, lastExecution)

if getGlobalStorageValue(7777) >= 1 then
setGlobalStorageValue(7777,-1)
setGlobalStorageValue(9000,0)
for x = 0, 100 do
if isPlayer(getGlobalStorageValue(500+x)) then

setGlobalStorageValue(9000,getGlobalStorageValue(9000)+1)
setGlobalStorageValue(500+getGlobalStorageValue(9000)-1,getGlobalStorageValue(500+x))
setGlobalStorageValue(8000+getGlobalStorageValue(9000)-1,getGlobalStorageValue(8000+x))
setPlayerStorageValue(getGlobalStorageValue(500+x),91910,500+getGlobalStorageValue(9000)-1)

end


end
end
return true

end