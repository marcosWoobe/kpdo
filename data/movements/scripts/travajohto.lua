function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid) then
    if getPlayerStorageValue(cid, 9338) <= 0 then
        doTeleportThing(cid, fromPosition, false)
        doCreatureSay(cid, "You need win Indigo Kanto League for acess here", TALKTYPE_ORANGE_1)
        doSendMagicEffect(getPlayerPosition(cid), 31)
        else
        doSendMagicEffect(getPlayerPosition(cid), 34)
    end
end
    return true
end