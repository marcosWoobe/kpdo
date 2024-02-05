function onAttack(cid, target)


if getPlayerStorageValue(cid, 17) == -1 then
setPlayerStorageValue(cid, 200, "!, ")
setPlayerStorageValue(cid, 17, 4)
end

if isPlayer(getCreatureTarget(cid)) then
name = ""..getCreatureName(target)..","
else
name = ""..getCreatureName(getCreatureMaster(getCreatureTarget(cid)))..","
end   
if string.find(getPlayerStorageValue(cid,200), name) then

setPlayerStorageValue(cid, 17, 5)




return true
else
setPlayerStorageValue(cid, 17, 4)
return false
end

end

function onCast(cid, target)
if getPlayerStorageValue(cid, 17) == 4 then
return false
end
return true
end




function onDirection(cid, old, current)


if getPlayerStorageValue(cid, 17) == 4 then
	if getCreatureSpeed(cid) >= 1 then
doChangeSpeed(cid, -getCreatureSpeed(cid))
	end

return false
end
if getPlayerStorageValue(cid, 17) == 5 then
	if getCreatureSpeed(cid) == 0 and isCreature(getCreatureTarget(cid)) then
	doChangeSpeed(cid, getCreatureBaseSpeed(cid))
	end

return true
end

return false
end













