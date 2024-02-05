

function onEquip (cid, item, slot)

--local item2 = getPlayerSlotItem(cid, 8)
--if item2.itemid <= 1 then
--return doPlayerSendCancel(cid, "You Need a equip a pokeball in feet sloot!")
--end
--local nome = getItemAttribute(item2.uid, "nome")


--if item.itemid == 7763 then
--if not isInArray(TMDARK, nome) then
--doPlayerSendCancel(cid, "You cant use TM on this pokemon.")
--return false
--end

--setPlayerStorageValue(cid, 999911,"Dark")
setPlayerStorageValue(cid, 999912,1)
doOpenTM(cid)

--end

--doRemoveItem(item.uid, 1)
--doSendMagicEffect(getThingPos(item2.uid), 237)
--setPlayerStorageValue(item2.uid, 991,1)

return true
end