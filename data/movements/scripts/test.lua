function onDeEquip(cid, item, slot)
if #getCreatureSummons(cid) >= 1 or getPlayerStorageValue(cid,61204) >= 1 then
return true
end

doTransformItem(getPlayerSlotItem(cid, CONST_SLOT_LEGS).uid, 2529)
--setPlayerStorageValue(cid,31021,1)


--local str = "1&,n/n,"
--DoTaskbarcold(cid,str)
--local function verpacket(params)
--if isCreature(params.cid) then
--if getPlayerStorageValue(params.cid, 31021) >= 1 then
--DoTaskbarcold(params.cid,params.str2)
--else
--return true
--end
--end
--end
--for rocks3 = 1, 5 do
--addEvent(verpacket, rocks3*1000, {cid = cid,str2 = str})
--end

return true
end