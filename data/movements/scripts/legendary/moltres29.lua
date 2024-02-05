function onStepIn(cid, item, position, fromPosition)
if isPlayer(cid)then
    if getPlayerStorageValue(cid, 17000) <= 0 then
        doTeleportThing(cid, fromPosition, FALSE)
        doCreatureSay(cid, "Only Pokemons can walk here", TALKTYPE_ORANGE_1)
        doSendMagicEffect(getPlayerPosition(cid), 31)
        else
        doSendMagicEffect(getPlayerPosition(cid), 34)
    end
end
    return TRUE
end