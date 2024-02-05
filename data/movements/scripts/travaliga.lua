function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid) then
    if getPlayerStorageValue(cid, 121235) <= 0 and getPlayerLevel(cid) < 200 then
        doTeleportThing(cid, fromPosition, false)
        doCreatureSay(cid, "You need done Promotion Kanto Gym quest and level 200 for acess here", TALKTYPE_ORANGE_1)
        doSendMagicEffect(getPlayerPosition(cid), 31)
        else
        doSendMagicEffect(getPlayerPosition(cid), 34)
    end
end
    return true
end