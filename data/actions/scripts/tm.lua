
function onUse(cid, item, frompos, item2, topos)
if item2.uid == cid then
local tmhave = "Pokemon's have This TM\n"
local tmd = 1
if item.itemid == 7756 then
tmd =11
elseif item.itemid == 7757 then
tmd =17
elseif item.itemid == 7758 then
tmd =6
elseif item.itemid == 7759 then
tmd =20
elseif item.itemid == 7760 then
tmd =21
elseif item.itemid == 7761 then
tmd =22
elseif item.itemid == 7762 then
tmd =16
elseif item.itemid == 7763 then
tmd =1
elseif item.itemid == 7764 then
tmd =3
elseif item.itemid == 7765 then
tmd =4
elseif item.itemid == 7766 then
tmd =7
elseif item.itemid == 7767 then
tmd =8
elseif item.itemid == 7768 then
tmd =9
elseif item.itemid == 7769 then
tmd =5
elseif item.itemid == 7770 then
tmd =10
elseif item.itemid == 7771 then
tmd =18
elseif item.itemid == 7772 then
tmd =15
elseif item.itemid == 7773 then
tmd =12
elseif item.itemid == 7774 then
tmd =19
elseif item.itemid == 7775 then
tmd =13
elseif item.itemid == 7776 then
tmd =2
elseif item.itemid == 7777 then
tmd =14
end
local Checktm = TMCHECK[tmd]
for i,x in pairs(Checktm) do
tmhave = tmhave.."["..i.."]"..x.."\n"
end
doShowTextDialog(cid, item.itemid,tmhave)
return true
end

if isCreature(item2.uid) then
local tmhave = "Pokemon's have This TM\n"
local tmd = 1
if item.itemid == 7756 then
tmd =11
elseif item.itemid == 7757 then
tmd =17
elseif item.itemid == 7758 then
tmd =6
elseif item.itemid == 7759 then
tmd =20
elseif item.itemid == 7760 then
tmd =21
elseif item.itemid == 7761 then
tmd =22
elseif item.itemid == 7762 then
tmd =16
elseif item.itemid == 7763 then
tmd =1
elseif item.itemid == 7764 then
tmd =3
elseif item.itemid == 7765 then
tmd =4
elseif item.itemid == 7766 then
tmd =7
elseif item.itemid == 7767 then
tmd =8
elseif item.itemid == 7768 then
tmd =9
elseif item.itemid == 7769 then
tmd =5
elseif item.itemid == 7770 then
tmd =10
elseif item.itemid == 7771 then
tmd =18
elseif item.itemid == 7772 then
tmd =15
elseif item.itemid == 7773 then
tmd =12
elseif item.itemid == 7774 then
tmd =19
elseif item.itemid == 7775 then
tmd =13
elseif item.itemid == 7776 then
tmd =2
elseif item.itemid == 7777 then
tmd =14
end
local Checktm = TMCHECK[tmd]
for i,x in pairs(Checktm) do
tmhave = tmhave.."["..i.."]"..x.."\n"
end
doShowTextDialog(cid, item.itemid,tmhave)
return doPlayerSendCancel(cid, "You can only use tm in pokeballs in Feet Slot!")
end

if item2.uid ~= getPlayerSlotItem(cid, CONST_SLOT_FEET).uid then
return doPlayerSendCancel(cid, "You can only use tm in pokeballs in Feet Slot!")
end
if #getCreatureSummons(cid) >= 1 then
return doPlayerSendCancel(cid, "need back you poke for use TM")
end

if item2.uid == getPlayerSlotItem(cid, CONST_SLOT_FEET).uid then
local nick = getItemAttribute(item2.uid, "nome")
if item.itemid == 7756 then
if addTM(cid,item2,11,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7757 then
if addTM(cid,item2,17,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7758 then

if addTM(cid,item2,6,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7759 then

if addTM(cid,item2,20,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7760 then

if addTM(cid,item2,21,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7761 then

if addTM(cid,item2,22,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7762 then

if addTM(cid,item2,16,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7763 then

if addTM(cid,item2,1,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7764 then
if addTM(cid,item2,3,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7765 then
if addTM(cid,item2,4,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7766 then
if addTM(cid,item2,7,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7767 then
if addTM(cid,item2,8,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7768 then
if addTM(cid,item2,9,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7769 then
if addTM(cid,item2,5,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7770 then
if addTM(cid,item2,10,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7771 then
if addTM(cid,item2,18,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7772 then
if addTM(cid,item2,15,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7773 then
if addTM(cid,item2,12,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7774 then
if addTM(cid,item2,19,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7775 then
if addTM(cid,item2,13,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7776 then
if addTM(cid,item2,2,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
elseif item.itemid == 7777 then
if addTM(cid,item2,14,item.itemid) then
doOpenTM(cid)
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid), 237)
end
return true
end


end
return true
end