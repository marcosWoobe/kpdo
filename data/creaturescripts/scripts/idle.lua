local idleWarningTime = 10*60000
local idleKickTime = 15*60000
local efeito = 1 -- coloque 0 para remover o efeito quando o pokemon teleportar
local max = 6 -- distancia max entre o pokemon e o player

function onThink(cid, interval)

if not isCreature(cid) then
return true
end
if getPlayerCam(cid) then
return true
end
	local idleTime = getPlayerIdleTime(cid) + interval
	doPlayerSetIdleTime(cid, idleTime)
	if(idleKickTime > 0 and idleTime > idleKickTime) then
	--local comparar = ping.CheckPing(cid)	
--if -2550 > comparar then

doRemoveCreature(cid)
return true
	elseif(idleWarningTime > 0 and idleTime == idleWarningTime) then
		--local comparar2 = ping.CheckPing(cid)

--if -2000 > comparar2 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "move or auto kick in 5 minutes .")
end
	--end
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
elseif getPlayerGroupId(cid) == 8 then
	setPlayerGroupId(cid, 1)
end

if #getCreatureSummons(cid) >= 1  then
if math.abs((getThingPos(cid).x) - (getThingPos(getCreatureSummons(cid)[1]).x)) > max+1 or getThingPos(cid).z ~= getThingPos(getCreatureSummons(cid)[1]).z then
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

if getPlayerStorageValue(cid,31020) >= 1 then

local str = "12|,"
local msgp = false
 local seconds1 = 0          
 for rocks = 1, 12 do   

if exhaustion.get(cid, 30999+rocks) then
seconds1 = math.floor(((exhaustion.get(cid, 30999+rocks)) ))  

str = str..""..seconds1..","
msgp = true

else
str = str.."0,"
end

	end
if msgp then
DoTaskbarcold(cid,str)



end
end

end

		return true
end
