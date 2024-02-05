function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid) == TRUE then
    if getPlayerStorageValue(cid, 90026) == 1 then
if #getCreatureSummons(cid) >= 1 then
        doTeleportThing(getCreatureSummons(cid)[1], {x=394,y=1862,z=4})
end
   doTeleportThing(cid, {x=394,y=1862,z=4})
        doSendMagicEffect(getPlayerPosition(cid), 34)
        else
        doSendMagicEffect(getPlayerPosition(cid), 31)
        doCreatureSay(cid, "You need to pull the secret swich to be teleported", TALKTYPE_ORANGE_1)
    end
end
    return TRUE
end