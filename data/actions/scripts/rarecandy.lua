function onUse(cid, item, frompos, item2, topos)
if isCreature(item2.uid) then
return doPlayerSendCancel(cid, "You can only use rare candy in pokeballs!")
end

if isPlayer(item2.uid) then
return doPlayerSendCancel(cid, "You cant use rare candy on wild pokemons.")
end

if item2.uid ~= getPlayerSlotItem(cid, CONST_SLOT_FEET).uid then
return doPlayerSendCancel(cid, "You can only use rare candy in pokeballs in Feet Slot!")
end
if #getCreatureSummons(cid) >= 1 then
return doPlayerSendCancel(cid, "need back you poke for use rare candy")
end

local boost = getItemAttribute(item2.uid, "candy")
local boostvd = getItemAttribute(item2.uid, "boost")
if boost then
boost = getItemAttribute(item2.uid, "candy")+1
else
boost = 1
end
if boost >= 200 then
return doPlayerSendCancel(cid, "Limit Boost 200")
end
 doRemoveItem(item.uid, 1)
local nickpoke = getItemAttribute(item2.uid, "nome")
local lvpoke = pokes[nickpoke] 
local descrilv = boost+boostvd
local description = "Contains a "..nickpoke..", ST[+"..boostvd.. "]+B["..boost.."]=["..descrilv.."]."
doItemSetAttribute(item2.uid, "candy", boost)
doItemSetAttribute(item2.uid, "description", description)
doSendMagicEffect(getThingPos(cid), 28)
doPlayerSendTextMessage(cid,22,"Congratulations, "..nickpoke.." Upgrade Boost +"..boost..".")
return true
end