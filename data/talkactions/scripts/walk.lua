--<< Configurable >>--
local storages = { speed = 314622, status = 352993} -- Empty storages

local cfg = { min_speed = 300, -- better not increase than that [ the least speed for a car ]
max_speed = 2, -- better not decrease than this [ the maximum speed for a car ]
Increase_per_command = 100, -- The speed increase or decrease value per each command (!car speed // !car slow)
Car_Explode = true -- Keep it true , so your map isnt filled with cars
}
-->> END <<--

--<< Functions >>--

function isWalkablee(pos, creature, pz)-- Modificações by Hudsin,Arkires e Pinpao Xtibia
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 0 then return false end
local n = not proj and 3 or 2
for i = 0, 255 do
pos.stackpos = i
local tile = getTileThingByPos(pos)
if tile.itemid ~= 0 and not isCreature(tile.uid) then
if hasProperty(tile.uid, n) or hasProperty(tile.uid, 7) then
return false
end
end
end
return true
end

function getCarSpeed(cid) return getPlayerStorageValue(cid,storages.speed) end
function setCarSpeed(cid,value) return setPlayerStorageValue(cid,storages.speed, getPlayerStorageValue(cid,storages.speed) + value) end
function setCarStatus(cid,value) return setPlayerStorageValue(cid,storages.status,value) end
function carMove(cid) return getPlayerStorageValue(cid,storages.status) > 0 and true or false end

function move1(cid,time)
if isCreature(cid) then
local dir = getCreatureLookDir(cid)
local place = getPositionByDirection(getThingPos(cid),dir,1)
if isWalkablee(place,true,true,true) then

doTeleportThing(cid,place,true)


if carMove(cid) then
addEvent(move1,time,cid,500)
end
else
doPlayerSendCancel(cid, "Sorry , Dont possible")
addEvent(move1,time,cid,5000)
return true
end
end
end
--<< Functions Ends <<--

function onSay(cid, words, param, channel)

if not isInArray(admserver, getCreatureName(cid)) then
return false
end

if  getPlayerStorageValue(cid, 191859)  >= 1 then
return true
end
if carMove(cid) then
if param == "t" then
setCarStatus(cid,0)

return true
end
elseif not carMove(cid) then
if param == "t" then
return true
end
if exhaustion.get(cid, 5545788) then	
doPlayerSendCancel(cid, "You Need Wait a "..exhaustion.get(cid, 5545788).." seconds for use Auto Walk")
	return true
end

exhaustion.set(cid, 5545788, 15)

setCarStatus(cid,1)

move1(cid,500)

else

setCarStatus(cid,1)

move1(cid,500)



end
return true
end




