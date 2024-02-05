
function onUse(cid, item, frompos, item2, topos)

if isCreature(item2.uid) then
return doPlayerSendCancel(cid, "You can only use tm clean in pokeballs in Feet Slot!")
end

if item2.uid ~= getPlayerSlotItem(cid, CONST_SLOT_FEET).uid then
return doPlayerSendCancel(cid, "You can only use tm clean in pokeballs in Feet Slot!")
end
if #getCreatureSummons(cid) >= 1 then
return doPlayerSendCancel(cid, "need back you poke for use TM Clean")
end

if item2.uid == getPlayerSlotItem(cid, CONST_SLOT_FEET).uid then

if isTM(item2.uid) then

TMClean(getPlayerSlotItem(cid, CONST_SLOT_FEET).uid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
else
return doPlayerSendCancel(cid, "this pokemon dont have tm to clean")
end


end



return true
end