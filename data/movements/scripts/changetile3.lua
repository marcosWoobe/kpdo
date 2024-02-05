local outfit = {lookType = 166, lookHead = 114, lookBody = 114, lookLegs = 114, lookFeet = 114, lookTypeEx = 0, lookAddons = 0}
local outfiti = {lookType = 165, lookHead = 114, lookBody = 114, lookLegs = 114, lookFeet = 114, lookTypeEx = 0, lookAddons = 0}
function onStepIn(cid, item, pos)
if isMonster(cid) then
return true
end
if getPlayerStorageValue(cid, 17000) >= 1 then
doTeleportThing(cid, {x=977,y=1030,z=0})
return True
end
if getPlayerStorageValue(cid, 17001) >= 1 then
doTeleportThing(cid, {x=977,y=1030,z=0})
return True
end
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=980,y=1039,z=3})
doTeleportThing(cid, {x=979,y=1036,z=3})
--doCreatureSetNoMove(cid, 1)
end
doTeleportThing(cid, {x=979,y=1036,z=3})
if isPlayer(cid) == TRUE and getPlayerSex(cid) == 0 then
--doCreatureChangeOutfit(cid, outfit)
doSetCreatureOutfit(cid, outfit, -1)


end




if isPlayer(cid) == TRUE and getPlayerSex(cid) > 0 then
doCreatureChangeOutfit(cid, outfiti)

--doCreatureSetNoMove(cid, 1)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "WELCOME TO PVP")


end



end