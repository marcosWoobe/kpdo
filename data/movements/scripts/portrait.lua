function onEquip (cid, item, slot)

if #getCreatureSummons(cid) >= 1 or getPlayerStorageValue(cid,61204) >= 1 then
return true
end
local image = getPlayerSlotItem(cid, 7)



local nome = getItemAttribute(item.uid, "nome")
if not nome then
doRemoveItem(item.uid, 1)
doPlayerSendTextMessage(cid,21, "WARNING YOUR LOSER A ITEM Report to gamemaster in equip portrait pokemon" )
local function gobackorlose(params)
local image2 = getPlayerSlotItem(params.cid, 8)
if image2.itemid >= 1 then
doTransformItem(image2.uid, 196)
local image3 = getPlayerSlotItem(params.cid, 8)
if image3.itemid >= 1 then
doRemoveItem(image3.uid, 1)
end
local image4 = getPlayerSlotItem(params.cid, 8)
if image4.itemid >= 1 then
doRemoveItem(image4.uid, 1)
end

end

end
addEvent(gobackorlose,200, {cid = cid})




return true
end
local iddo = fotos[nome]

if image.itemid >= 10 then
if iddo then
doTransformItem(image.uid, iddo.fotopoke)
end
else
doPlayerAddItem(cid, 2529, 1)
image = getPlayerSlotItem(cid, 7)
if iddo then
doTransformItem(image.uid, iddo.fotopoke)
end

end



return true

end