



function onUse(cid, item, frompos, item2, topos)
if getPlayerStorageValue(cid, 61222) >= 1 then
local pos = {x = 1152,y = 1411,z= 7}
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], pos)
doSendMagicEffect(getThingPos(cid), 21)
end
doTeleportThing(cid, pos)
setPlayerStorageValue(cid, 61222, nil)
return true
end
return doPlayerSendCancel(cid, "Sorry you need a enter in saffari , to leave")
end