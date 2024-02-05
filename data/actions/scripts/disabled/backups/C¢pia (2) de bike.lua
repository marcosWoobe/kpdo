--<< Configurable >>--
local storages = { speed = 314629, status = 352999 } -- Empty storages
local outfit = {lookType = 577, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

local cfg = { min_speed = 250, -- better not increase than that [ the least speed for a car ]
max_speed = 250, -- better not decrease than this [ the maximum speed for a car ]
Increase_per_command = 100, -- The speed increase or decrease value per each command (!car speed // !car slow)
Car_Explode = true -- Keep it true , so your map isnt filled with cars
}
-->> END <<--

--<< Functions >>--

function isWalkable(pos, creature, pz,cid)-- Modificações by Hudsin,Arkires e Pinpao Xtibia
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 0 then return false end
--if getTopCreature(pos).uid > 0 and creature then return false end
--if getTileInfo(pos).protection and pz then return false, true end
local n = not proj and 3 or 2
for i = 0, 255 do
pos.stackpos = i
local tile = getTileThingByPos(pos)
if tile.itemid ~= 0 and not isCreature(tile.uid) then
if hasProperty(tile.uid, n) or hasProperty(tile.uid, 7) then
doPlayerSendTextMessage(cid,27,"Sorry dont possible.")
doRemoveCondition(cid, CONDITION_OUTFIT)
setCarStatus(cid,0)
setPlayerStorageValue(cid, 91859, 0)
doCreatureSetNoMove(cid, 0)
doCreatureSay(cid, "BRAKE!", TALKTYPE_MONSTER)
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

function move(cid,time)
local dir = getCreatureLookDir(cid)
local id = isInArray({1,3},getCreatureLookDir(cid)) and 7267 or 7266
local place = getPositionByDirection(getThingPos(cid),dir,1)
local man = cid
if isWalkable(place,true,true,man) then

	if getTileInfo(getThingPos(cid)).itemid >= 4820 and getTileInfo(getThingPos(cid)).itemid <= 4825 then
doPlayerSendTextMessage(cid,27,"Sorry dont possible.")
doRemoveCondition(cid, CONDITION_OUTFIT)
setCarStatus(cid,0)
setPlayerStorageValue(cid, 91859, 0)
--doCreatureSetNoMove(cid, 0)
doCreatureSay(cid, "BRAKE!", TALKTYPE_MONSTER)
return True

end


if  getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 3333) <= 0 then  

doTeleportThing(cid,place,false)
if carMove(cid) then
addEvent(move,time,cid,getCarSpeed(cid))
else
end
else
if cfg.Car_Explode then
setPlayerStorageValue(cid, 91859, 0)
doRemoveCondition(cid, CONDITION_OUTFIT)
setPlayerStorageValue(cid, 9185, 1)
--doCreatureSetNoMove(cid, 0)
doCreatureSay(cid, "BRAKE!", TALKTYPE_MONSTER)
doPlayerSendTextMessage(cid,27,"Sorry dont possible.")
setCarStatus(cid,0)

end
end
end

end

--<< Functions Ends <<--

function onUse(cid, item, frompos, item2, topos)


if getPlayerStorageValue(cid, 68972) >= 1 then
doPlayerSendTextMessage(cid,27,"Sorry You cant bike in water.")
return True
end


	if getTileInfo(getThingPos(cid)).itemid >= 4820 and getTileInfo(getThingPos(cid)).itemid <= 4825 then
doPlayerSendTextMessage(cid,27,"Sorry You cant bike in water.")
return True
end


if  getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 3333) <= 0 then 


if getPlayerStorageValue(cid, 91859) <= 0 then
setPlayerStorageValue(cid, 91859, 1)
setPlayerStorageValue(cid,storages.speed,cfg.min_speed)
setCarStatus(cid,1)
--doCreatureSetNoMove(cid, 1)
move(cid,getCarSpeed(cid))
doCreatureSay(cid, "GOGO", TALKTYPE_MONSTER)
doSetCreatureOutfit(cid, outfit, -1)


elseif getPlayerStorageValue(cid, 91859) <= 1 then
doRemoveCondition(cid, CONDITION_OUTFIT)
setCarStatus(cid,0)
setPlayerStorageValue(cid, 91859, 0)
--doCreatureSetNoMove(cid, 0)
doCreatureSay(cid, "BRAKE!", TALKTYPE_MONSTER)

end

end

return true
end




