function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid) == TRUE then
    if getPlayerLevel(cid) >= 50 then
        doTeleportThing(cid, fromPosition, FALSE)
        doCreatureSay(cid, "You need level between 10 and 50 to access this area!", TALKTYPE_ORANGE_1)
return true
end
if #getCreatureSummons(cid) >= 1 then
     doTeleportThing(getCreatureSummons(cid)[1], {x=963,y=977,z=12})
doSendMagicEffect(getThingPos(cid), 21)
end
        doTeleportThing(cid, {x=963,y=977,z=12})

end
    return TRUE
end