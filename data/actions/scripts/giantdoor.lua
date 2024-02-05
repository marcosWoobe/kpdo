



function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid, 61223) >= 1 then
local pos = {x = 239,y = 2014,z= 7}
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], pos)
doSendMagicEffect(getThingPos(cid), 21)
end
doTeleportThing(cid, pos)
setPlayerStorageValue(cid, 61223, nil)
return true
end
return doPlayerSendCancel(cid, "Sorry you need a enter in Giant Island, to leave")
end