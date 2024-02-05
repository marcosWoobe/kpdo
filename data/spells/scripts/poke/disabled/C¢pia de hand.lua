


function isWalkable(pos, creature, pz,cid)-- Modificações by Hudsin,Arkires e Pinpao Xtibia
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 0 then return false end
if getTopCreature(pos).uid > 0 and creature then return false end
if getTileInfo(pos).protection and pz then return false, true end
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

function onCastSpell(cid, var)


		

		
	

local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),28)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 28)
			end
			end
local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
local gym = getCreatureMaster(cid)
local lvgym = getPlayerLevel(gym)
local damage = lvgym*4
local damage2 = damage*3
doAreaCombatHealth(params.cid, ICEDAMAGE, getThingPos(getCreatureTarget(cid)), 0, -damage, -damage2, 43)
			elseif isPlayer(getCreatureTarget(params.cid)) then
local gym = getCreatureMaster(cid)
local lvgym = getPlayerLevel(gym)
local damage = lvgym*4
local damage2 = damage*3
doAreaCombatHealth(params.cid, ICEDAMAGE, getThingPos(getCreatureTarget(cid)), 0,-damage, -damage2, 43)
			end
			end
	if isInArray({"628"}, getCreatureOutfit(cid).lookType) then
		addEvent(damage, 100, {cid = cid})
	
		addEvent(throw, 0, {cid = cid})
elseif isInArray({"629"}, getCreatureOutfit(cid).lookType) then
doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 40)
local gym = getCreatureMaster(cid)
local lvgym = getPlayerLevel(gym)
local damage = lvgym*4
local damage2 = damage*3
		doAreaCombatHealth(cid, ELECTRICDAMAGEWILD, getThingPos(getCreatureTarget(cid)), 0,-damage, -damage2, 11)
elseif isInArray({"630"}, getCreatureOutfit(cid).lookType) then
doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 3)
local gym = getCreatureMaster(cid)
local lvgym = getPlayerLevel(gym)
local damage = lvgym*4
local damage2 = damage*3
		doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(getCreatureTarget(cid)), 0, -damage, -damage2, 36)
elseif isInArray({"631"}, getCreatureOutfit(cid).lookType) then
doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 18)
local gym = getCreatureMaster(cid)
local lvgym = getPlayerLevel(gym)
local damage = lvgym*4
local damage2 = damage*3
		doAreaCombatHealth(cid, GHOSTDAMAGEWILD, getThingPos(getCreatureTarget(cid)), 0, -damage, -damage2, 140)
	
end
		
	
	
	
 

	
end
