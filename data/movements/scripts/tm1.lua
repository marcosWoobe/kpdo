function onDeEquip(cid, item, slot)
setPlayerStorageValue(cid, 999912,-1)

return callFunction(cid, item.uid, slot) 
end