local max = 1 -- distancia max entre o pokemon e o player
function onAttack(cid, target)


if getPlayerStorageValue(target, 17) == 4 then
setPlayerStorageValue(target, 17, 5)
if getPlayerStorageValue(target, 200) == -1 then
setPlayerStorageValue(target, 200, "!, ")
end

setPlayerStorageValue(target, 200, getPlayerStorageValue(target, 200)..""..getCreatureName(cid)..", ")




doSendAnimatedText(getCreaturePosition(cid), "GRRR", 144)

if #getCreatureSummons(cid) >= 1 then
if math.abs((getThingPos(cid).x) - (getThingPos(target).x)) > max+1 then

	
doSendAnimatedText(getCreaturePosition(cid), "GRRR", 144)
doMonsterSetTarget(target, cid) 	

elseif math.abs((getThingPos(cid).y) - (getThingPos(target).y)) > max-1 then

	
doSendAnimatedText(getCreaturePosition(cid), "GRRR", 144)
doMonsterSetTarget(target, cid) 

else
doSendAnimatedText(getCreaturePosition(cid), "GRRR", 144)
doMonsterSetTarget(target, getCreatureSummons(cid)[1])
end
else
doSendAnimatedText(getCreaturePosition(cid), "GRRR", 144)
doMonsterSetTarget(target, cid)  
end

end
return TRUE
end