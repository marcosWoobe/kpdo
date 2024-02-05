function onAttack(cid, target)

if isPlayer(cid) then
local name = ""..getCreatureName(cid)..","  
else
local name = ""..getCreatureName(getCreatureMaster(target))..","  
end 
if getPlayerStorageValue(cid, 200) == -1 then
setPlayerStorageValue(cid, 200, "!, ")
end
if string.find(getPlayerStorageValue(cid,200), name) then
setPlayerStorageValue(cid, 17, 4)

doMonsterChangeTarget(cid)
	



if isCreature(getCreatureTarget(cid)) then
	if getPlayerStorageValue(cid, 16) >= 1 then
	return true
	end
	local newdir = math.random(0,3)
	if isWalkable(getPosByDir(getThingPos(cid), newdir), cid) then
	doPushCreature(cid, newdir, 1, 0)
		local function delay(params)
		if isCreature(cid) then
		setPlayerStorageValue(cid, 16, 0)
		end
		end
	setPlayerStorageValue(cid, 16, 1)
	addEvent(delay, math.random(2200, 3200), {cid = cid})
	end
end
else
return false
end
if getPlayerStorageValue(cid, 17) == 4 then
setPlayerStorageValue(cid, 17, 5)
end
if isPlayer(getCreatureTarget(cid)) and #getCreatureSummons(target) >= 1 then
doMonsterSetTarget(cid, getCreatureSummons(target)[1])
end
return true
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
return true
end













