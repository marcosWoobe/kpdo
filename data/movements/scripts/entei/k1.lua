function onStepIn(cid, item, position, lastPosition, fromPosition, toPosition, actor)
if isPlayer(cid) then
local d2 = getCreaturesInRange(getThingPos(cid), 19, 19, 1, 0)
local numerodewilds = 0
    for _,pid in pairs(d2) do
if isMonster(pid) then
if not isSummon(pid) then
numerodewilds = numerodewilds +1
--doSendAnimatedText(getThingPos(pid), "Kill me haha", 215)
end

end
end

if numerodewilds >= 1 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Have pokes in this floor , have "..numerodewilds.." pokes in this place kill for up")
return true
end


local d2 = getCreaturesInRange(getThingPos(cid), 20, 20, 0, 1)


	 local posatual = {x=76,y=1100,z=8}   
 for _,pid in pairs(d2) do

	if #getCreatureSummons(pid) >= 1 then
doTeleportThing(getCreatureSummons(pid)[1], getClosestFreeTile(getCreatureSummons(pid)[1], posatual))
end
       doTeleportThing(pid, getClosestFreeTile(pid, posatual)) 
end

 
	if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], getClosestFreeTile(getCreatureSummons(cid)[1], posatual))
end
       doTeleportThing(cid, getClosestFreeTile(cid, posatual)) 

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "Fight Now!")
end
return true
end
