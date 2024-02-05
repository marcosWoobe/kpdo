function onEquip (cid, item, slot)

if #getCreatureSummons(cid) >= 1 or getPlayerStorageValue(cid,61204) >= 1 then
return true
end
local image = getPlayerSlotItem(cid, 7)



nome = getItemAttribute(item.uid, "nome")

local iddo = fotos[nome]

setPlayerStorageValue(cid,31021,1)
if iddo then
doTransformItem(image.uid, iddo.fotopoke)
if isTM(item.uid) then
coldown = cp[nome]["!cd"]
str = ""..coldown.nmoves.."&,"
for rocks = 1, coldown.nmoves do 
if getTM(item.uid,"T"..rocks.."") then
pokemon = TM[getTM(item.uid,"T"..rocks.."")]
else
pokemon = cp[nome]["m"..rocks..""]
end
str = str..""..pokemon.spell..","
end
DoTaskbarcold(cid,str)
else
coldown = cp[nome]["!cd"]
str = ""..coldown.nmoves.."&,"
for rocks = 1, coldown.nmoves do 
pokemon = cp[nome]["m"..rocks..""]
str = str..""..pokemon.spell..","
end
DoTaskbarcold(cid,str)
end

local function verpacket(params)
if isCreature(params.cid) then
if getPlayerStorageValue(params.cid, 31021) >= 1 then
DoTaskbarcold(params.cid,params.str2)
addEvent(verpacket, 1000, {cid = params.cid,str2 = params.str})
else
return true
end
end
end

addEvent(verpacket, 1000, {cid = cid,str2 = str})




end

return true

end