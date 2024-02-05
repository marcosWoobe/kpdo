function onUse(cid, item, frompos, item2, topos)

if isPlayer(item2.uid) then
return doPlayerSendCancel(cid, "You can only use vitamin on pokemons!")
end
if not isCreature(item2.uid) then
return doPlayerSendCancel(cid, "You can only use vitamin on pokemons!")
end

if not isPlayer(getCreatureMaster(item2.uid)) then
return doPlayerSendCancel(cid, "You cant use vitamins on wild pokemons.")
end

if getCreatureMaster(item2.uid) == cid then

if getPlayerStorageValue(item2.uid, 5) >= 1 then
return doPlayerSendCancel(cid, "This pokemon have X - Defense status.")
end
doRemoveItem(item.uid, 1)
doCreatureSay(cid, ""..getCreatureName(item2.uid)..", take this X - Defense Vitamin!", TALKTYPE_SAY)
doSendAnimatedText(getThingPos(item2.uid), "Defense Double", 215)
doSendMagicEffect(getThingPos(item2.uid), 208)
setPlayerStorageValue(item2.uid, 5,1)
end
return true
end