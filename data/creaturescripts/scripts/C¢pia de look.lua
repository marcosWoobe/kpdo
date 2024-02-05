function onLook(cid, thing, position, lookDistance)

if thing.itemid > 1 then
return true
end
if not isCreature(cid) then
return true
end
if not isMonster(thing.uid) then
return true
end




if isSummon(thing.uid) then
if isPlayer(getCreatureMaster(thing.uid)) then
dono = getCreatureMaster(thing.uid)
nome = getCreatureName(dono)
poke = string.lower(getCreatureName(thing.uid))
apelido = getPlayerStorageValue(dono,9000)
pokemondoido = getPlayerSlotItem(dono, 8)
catchby = getItemAttribute(pokemondoido.uid, "catchby")
else
return true
end

doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "You see a "..poke..".("..apelido..")\n It belongs to "..nome..".(catch by "..catchby..")\nHit points: "..getCreatureHealth(thing.uid).."/"..getCreatureMaxHealth(thing.uid)..".")
return false
else
return true
end
return true
end