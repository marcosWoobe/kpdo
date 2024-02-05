

function onAttack(cid, target)
if getPlayerStorageValue(cid, 17) == -1 then
setPlayerStorageValue(cid, 200, "!, ")
setPlayerStorageValue(cid, 17, 4)
end
if isPlayer(target) then
name = ""..getCreatureName(target)..","
else
name = ""..getCreatureName(getCreatureMaster(target))..","
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




function onThink(cid, interval)


if not isCreature(cid) then
return true
end
if getPlayerStorageValue(cid, 17) == 4 then

if getCreatureSpeed(cid) >= 1 then
doChangeSpeed(cid, -getCreatureSpeed(cid))
	end


elseif getPlayerStorageValue(cid, 17) == 5 then
if getCreatureSpeed(cid) == 0 and isCreature(getCreatureTarget(cid)) then
	doChangeSpeed(cid, getCreatureBaseSpeed(cid))
	end
end

if getPlayerStorageValue(cid, 18) <= 0 then
local function pushnow(params)
if isCreature(params.cid) then
setPlayerStorageValue(params.cid, 18, -1)
end
end
local newdir = math.random(0,3)
if isWalkable(getPosByDir(getThingPos(cid), newdir),true,true,true) and getPlayerStorageValue(cid, 8) <= 0 then

	doMoveCreature(cid, newdir)
setPlayerStorageValue(cid, 18, 1)
addEvent(pushnow,5000, {cid = cid})


end
end
return true
end













