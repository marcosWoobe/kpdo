function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid) == TRUE then
    if getPlayerStorageValue(cid, 90009) == 1 then
   
if #getCreatureSummons(cid) >= 1 then
        doTeleportThing(getCreatureSummons(cid)[1], {x=426,y=1716,z=5})
end
     doTeleportThing(cid, {x=426,y=1716,z=5})
        doSendMagicEffect(getPlayerPosition(cid), 34)
        else
        doSendMagicEffect(getPlayerPosition(cid), 31)
        doCreatureSay(cid, "You need to pull the secret swich to be teleported", TALKTYPE_ORANGE_1)
    end
end
    return TRUE
end