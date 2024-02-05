

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



		

		
	



	

		
	
	
	

	
local target = getCreatureTarget(cid)
local monsterpos = getCreatureLookDir(target)
if monsterpos == 0 then
monstertp = getCreaturePosition(target)
evasiontp = getCreaturePosition(cid)
monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y+1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(cid,monstertp)
setPlayerStorageValue(target, 9,1)
	
 
end
elseif monsterpos == 2 then
monstertp = getCreaturePosition(target)
evasiontp = getCreaturePosition(cid)
monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y-1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(cid,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 1 then
monstertp = getCreaturePosition(target)
evasiontp = getCreaturePosition(cid)
monstertp.z = monstertp.z 
monstertp.x = monstertp.x-1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(cid,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 3 then
monstertp = getCreaturePosition(target)
evasiontp = getCreaturePosition(cid)
monstertp.z = monstertp.z 
monstertp.x = monstertp.x+1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(cid,monstertp)
setPlayerStorageValue(target, 9,1)

 
end

end
	
end
