function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid) == TRUE then
    if getPlayerStorageValue(cid, 90311) == -1 then
        doTeleportThing(cid, fromPosition, FALSE)
        doCreatureSay(cid, "You need pull secret swich for acess this area!", TALKTYPE_ORANGE_1)
        doSendMagicEffect(getPlayerPosition(cid), 31)
        else
        doSendMagicEffect(getPlayerPosition(cid), 34)
    end
end
    return TRUE
end