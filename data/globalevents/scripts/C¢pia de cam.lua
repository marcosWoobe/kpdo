setGlobalStorageValue(9000,0)
for x = 0, 100 do

if getGlobalStorageValue(500+x) >= 1 then
if isPlayer(getGlobalStorageValue(500+x)) then
local antigo = getGlobalStorageValue(9000)+1
setGlobalStorageValue(9000,antigo)
setGlobalStorageValue(500+antigo,player)
setGlobalStorageValue(8000+antigo,getGlobalStorageValue(8000+x))
else
setGlobalStorageValue(500,-1)
end
end


end