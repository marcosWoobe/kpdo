local pokeballs = {'2224'}
local greatballs = {'2541'}
local superballs = {'2542'}
local ultraballs = {'2227'}
local unikeball = {'191'}
local hyperball = {'200'}
local saffariball = {'197'}
local giantball = {'11214'}

local DUSTS = {
        -- Demons
        [2224] = {0},

        -- Vampires
        [2227] = {25000, 5906}
}

function onUse(cid, item, frompos, item2, topos)

if isCreature(item2.uid) then
return doPlayerSendCancel(cid, "You can only use revive in pokeballs!")
end

if isPlayer(item2.uid) then
return doPlayerSendCancel(cid, "You cant use potions on wild pokemons.")
end

if item2.uid ~= getPlayerSlotItem(cid, CONST_SLOT_FEET).uid then
return doPlayerSendCancel(cid, "You can only use revive in pokeballs in Feet Slot!")
end
if #getCreatureSummons(cid) >= 1 then
return doPlayerSendCancel(cid, "need back you poke for use revive")
end
if getPlayerStorageValue(cid,3333) >= 1 or getPlayerStorageValue(cid, 8888) >= 1  then
return doPlayerSendCancel(cid, "You cant use potion in duel")
end
       
      
        if isInArray(pokeballs, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
        local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
  doSendMagicEffect(getThingPos(cid), 12)
        doRemoveItem(item.uid, 1)
doItemSetAttribute(feet.uid, "fine", 100)    
doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
        doTransformItem(feet.uid, 2222)

       elseif isInArray(greatballs, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
        local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
  doSendMagicEffect(getThingPos(cid), 12)
        doRemoveItem(item.uid, 1)
doItemSetAttribute(feet.uid, "fine", 100) 
doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
        doTransformItem(feet.uid, 2652)
  elseif isInArray(superballs, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
        local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
  doSendMagicEffect(getThingPos(cid), 12)
        doRemoveItem(item.uid, 1)
doItemSetAttribute(feet.uid, "fine", 100) 
doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
        doTransformItem(feet.uid, 2653)
      elseif isInArray(ultraballs, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
        local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
  doSendMagicEffect(getThingPos(cid), 12)
        doRemoveItem(item.uid, 1)
doItemSetAttribute(feet.uid, "fine", 100) 
doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
        doTransformItem(feet.uid, 2220)
elseif isInArray(hyperball, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
        local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
  doSendMagicEffect(getThingPos(cid), 12)
        doRemoveItem(item.uid, 1)
doItemSetAttribute(feet.uid, "fine", 100) 
doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
        doTransformItem(feet.uid, 198)
  elseif isInArray(unikeball, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
        local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
  doSendMagicEffect(getThingPos(cid), 12)
        doRemoveItem(item.uid, 1)
doItemSetAttribute(feet.uid, "fine", 100)
doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
        doTransformItem(feet.uid, 189)
  elseif isInArray(saffariball, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
        local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
  doSendMagicEffect(getThingPos(cid), 12)
        doRemoveItem(item.uid, 1)
doItemSetAttribute(feet.uid, "fine", 100) 
doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
        doTransformItem(feet.uid, 2200)
		  elseif isInArray(giantball, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
        local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
  doSendMagicEffect(getThingPos(cid), 12)
        doRemoveItem(item.uid, 1)
doItemSetAttribute(feet.uid, "fine", 100) 
doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
        doTransformItem(feet.uid, 11213)
else
return doPlayerSendCancel(cid, "Sorry use only revive in fainted balls")
        end
end