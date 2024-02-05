local efeito = 1 -- coloque 0 para remover o efeito quando o pokemon teleportar
local max = 6 -- distancia max entre o pokemon e o player


function onThink(cid, interval)
if not isCreature(cid) then
return true
end
if isInArray({'4820', '4821', '4822', '4823', '4824', '4825'}, getTileInfo(getThingPos(cid)).itemid) then
if getPlayerGroupId(cid) == 1 then
setPlayerGroupId(cid, 8)
end
return true
end
if #getCreatureSummons(cid) >= 1 then
	if getPlayerGroupId(cid) == 1 then
	setPlayerGroupId(cid, 8)
	end
elseif #getCreatureSummons(cid) == 0  then
	if getPlayerGroupId(cid) == 8 then
	setPlayerGroupId(cid, 1)
	end
end
if math.abs((getThingPos(cid).x) - (getThingPos(getCreatureSummons(cid)[1]).x)) > max+1 then
doTeleportThing(getCreatureSummons(cid)[1], getThingPos(cid))
if efeito == 1 then
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 37)
end

end
if math.abs((getThingPos(cid).y) - (getThingPos(getCreatureSummons(cid)[1]).y)) > max-1 then
doTeleportThing(getCreatureSummons(cid)[1], getThingPos(cid))
if efeito == 1 then
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 37)
end

end
if #getCreatureSummons(cid) >= 1  then


if getPlayerStorageValue(cid,31020) >= 1 then
pokemon = cp[getCreatureName(getCreatureSummons(cid)[1])]["!cd"]
if pokemon then
local str = ""..pokemon.nmoves.."|"
msgp = false
 for rocks = 1, pokemon.nmoves do   
           
if exhaustion.get(cid, 30999+rocks) then
seconds1 = math.floor(((exhaustion.get(cid, 30999+rocks)) ))  

str = str..","..seconds1..""
msgp = true

else
str = str..",0"
end

	end
if msgp then
DoTaskbarcold(cid,str)
end

end
end
setPlayerStorageValue(cid,31020,-1)
end







return true
end