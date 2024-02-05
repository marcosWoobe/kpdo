function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid) == TRUE then
    if getPlayerLevel(cid) <= 199 then
        doTeleportThing(cid, fromPosition, FALSE)
        doCreatureSay(cid, "You need lvl 200 for acess this area!", TALKTYPE_ORANGE_1)
        doSendMagicEffect(getPlayerPosition(cid), 31)
        else
        doSendMagicEffect(getPlayerPosition(cid), 34)
    end
end
    return TRUE
end