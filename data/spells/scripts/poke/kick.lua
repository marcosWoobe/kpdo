

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


local gym = getCreatureMaster(cid)
local lvgym = getPlayerLevel(gym)
local damage = lvgym*3
local damage2 = damage*2
		

		
		local function hit(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.target then
if isInArray({"Elite Hitmonlee"}, getCreatureName(params.cid)) then
outfitxx = {lookType = 527, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
doSetCreatureOutfit(params.cid, outfitxx, 800)
else
doSetCreatureOutfit(params.cid, lee, 800)
end

		doAreaCombatHealth(params.cid, FIGHTDAMAGE, getThingPos(getCreatureTarget(params.cid)), 0, 0, 0, 110)
		end
		end
		end
		end

local hitalvo = getCreatureTarget(cid)
		local function hit2(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.target then


		doAreaCombatHealth(params.cid, FIGHTDAMAGE, getThingPos(getCreatureTarget(params.cid)), 0, -damage, -damage2, 113)
		end
		end
		end
		end



	

		
	
	
	

	
local target = getCreatureTarget(cid)

	addEvent(hit, 380, {cid = cid, target = target})
	addEvent(hit2, 480, {cid = cid, target = target})
	addEvent(hit2, 680, {cid = cid, target = target})
	addEvent(hit2, 780, {cid = cid, target = target})
 

	
end
