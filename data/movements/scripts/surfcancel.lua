

function onStepIn(cid, item, position, fromPosition)
if getPlayerStorageValue(cid, 17000) >= 1 then
return true
end
if getPlayerStorageValue(cid, 91911) >= 1 then
return true
end
if getPlayerStorageValue(cid, 63215) >= 1 then
doChangeSpeed(cid, -(getCreatureSpeed(cid)))
doChangeSpeed(cid, getCreatureBaseSpeed(cid))
doRemoveCondition(cid, CONDITION_OUTFIT)
setPlayerStorageValue(cid, 63215, 0)
local item = getPlayerSlotItem(cid, 8)
doCreatureSay(cid, "" .. getNickPoke(cid)..", Im tired of surfing!", 1)

doSummonMonster(cid, getItemAttribute(item.uid, "nome"))

local pk = getCreatureSummons(cid)[1]
local sexy = getItemAttribute(item.uid, "sexy")
if sexy then
doCreatureSetSkullType(pk, sexy)
else
sexy = math.random(4,5)
doItemSetAttribute(item.uid, "sexy", sexy)
doCreatureSetSkullType(pk, sexy)
end
doConvinceCreature(cid, pk)
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp2")
local aura = getItemAttribute(item.uid, "aura")
if aura and aura >= 1 then
setPlayerStorageValue(pk, 8089, aura)
registerCreatureEvent(pk, "Aura")
end
setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))
setPlayerStorageValue(pk, 3499, getPlayerStorageValue(cid,61211))
setPlayerStorageValue(pk, 1236, getPlayerStorageValue(cid, 451236))
return true
end
end