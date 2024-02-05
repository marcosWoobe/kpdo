function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid) == TRUE then
    if getPlayerLevel(cid) <= 100 then
        doTeleportThing(cid, fromPosition, FALSE)
        doCreatureSay(cid, "You need level 100+ for access this area!", TALKTYPE_ORANGE_1)
return true
end
if #getCreatureSummons(cid) >= 1 then
    doTeleportThing(getCreatureSummons(cid)[1], {x=963,y=978,z=10})
doSendMagicEffect(getThingPos(cid), 21)
end
        doTeleportThing(cid, {x=963,y=978,z=10})
       
  
end
    return TRUE
end