function onUse(cid, item, frompos, item2, topos)

if isPlayer(item2.uid) then
return doPlayerSendCancel(cid, "You can only use Calcium on pokemons!")
end
if not isCreature(item2.uid) then
return doPlayerSendCancel(cid, "You can only use Calcium on pokemons!")
end

if not isPlayer(getCreatureMaster(item2.uid)) then
return doPlayerSendCancel(cid, "You cant use Calcium on wild pokemons.")
end

if getCreatureMaster(item2.uid) == cid then

if getPlayerStorageValue(item2.uid, 255) >= 1 then
return doPlayerSendCancel(cid, "This pokemon have Calcium.")
end
doRemoveItem(item.uid, 1)
doCreatureSay(cid, ""..getCreatureName(item2.uid)..", take this Calcium!", TALKTYPE_SAY)
doSendAnimatedText(getThingPos(item2.uid), "Power", 215)
doSendMagicEffect(getThingPos(item2.uid), 208)
setPlayerStorageValue(item2.uid, 255,1)
end
return true
end