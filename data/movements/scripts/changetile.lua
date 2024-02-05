local outfit = {lookType = 166, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
local outfiti = {lookType = 165, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
function onStepIn(cid, item, pos)
if getPlayerStorageValue(cid, 17000) >= 1 then
return True
end
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=976,y=1030,z=2})
doTeleportThing(cid, {x=976,y=1030,z=2})
end
doTeleportThing(cid, {x=976,y=1030,z=2})
if isPlayer(cid) == TRUE and getPlayerSex(cid) == 0 then
--doCreatureChangeOutfit(cid, outfit)
--doSetCreatureOutfit(cid, outfit, -1)




end

if isPlayer(cid) == TRUE and getPlayerSex(cid) > 0 then
--doCreatureChangeOutfit(cid, outfiti)
--doSetCreatureOutfit(cid, outfiti, -1)




end
end

