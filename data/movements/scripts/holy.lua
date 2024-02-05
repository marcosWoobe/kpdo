local poke = {'Poliwag'}
local surf = {
["Poliwag"] = {lookType=278, speed = 285},
}

function onStepIn(cid, item, position, fromPosition)
if getPlayerStorageValue(cid, 17000) >= 1 then
return true
end
if getPlayerStorageValue(cid, 63215) >= 1 then
doChangeSpeed(cid, -(getCreatureSpeed(cid)))
doChangeSpeed(cid, 250)
doRemoveCondition(cid, CONDITION_OUTFIT)
setPlayerStorageValue(cid, 63215, 0)
local item = getPlayerSlotItem(cid, 8)
doTeleportThing(cid, {x=1009,y=1035,z=10})
doCreatureSay(cid, "" .. getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball.")..", Im tired of surfing!", 1)
pk = doSummonCreature(getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball."), getCreaturePosition(cid))
doConvinceCreature(cid, pk)
doSendMagicEffect(fromPosition, 25)
doSetCreatureOutfit(cid, {lookType=608}, -1)

setPlayerStorageValue(cid, 5987, 1)
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp")
setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))
return true
end


end