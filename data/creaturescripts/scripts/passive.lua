
function onThink(cid, interval)

if not isCreature(cid) then
return true
end

if math.random(1,100) <= 10 then
if getCreatureName(cid) == "Scyther" then

if math.random(1,100) <= 70 then
local pid = getCreatureMaster(cid)
if isPlayer(pid) and getCreatureCondition(pid, CONDITION_INFIGHT) == TRUE then
local ditto = getPlayerSlotItem(pid, 8)
local outfitxx =  {lookType = 145}
if isShiny(getItemAttribute(ditto.uid, "nome")) then
outfitxx = {lookType = 611, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
end
	
local function gas(params)
	if isCreature(params.cid) then


doSetCreatureOutfit(cid, outfitxx, 500) 

local lvgym = getPlayerStorageValue(params.cid, 3499)
local damage = lvgym*10
local damage2 = damage*1.1
	doAreaCombatHealth(params.cid, BUGDAMAGE, getThingPos((params.cid)), arr14, 0, 0, 131)
	doAreaCombatHealth(params.cid, BUGDAMAGE, getThingPos((params.cid)), arr24, 0, 0, 128)

	doAreaCombatHealth(params.cid, BUGDAMAGE, getThingPos((params.cid)), arr3, -damage, -damage2, 255)

	end
	end



  
addEvent(gas, 0, {cid = cid,pid = pid })
addEvent(gas, 600, {cid = cid, pid  = pid})
end
end

elseif isInArray(buzzpassive, getCreatureName(cid)) then
if math.random(1,100) <= 60 then
local pid = getCreatureMaster(cid)
if isPlayer(pid) and getCreatureCondition(pid, CONDITION_INFIGHT) == TRUE then	
	
local function gas(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, ELECTRICDAMAGE, getThingPos(cid), areabuzz, -(params.x), -(params.y), 207)
	end
	end
local function gas1(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, ELECTRICDAMAGE, getThingPos(cid), areabuzz1, -(params.x), -(params.y), 207)
	end
	end
local function gas2(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, ELECTRICDAMAGE, getThingPos(cid), areabuzz2, -(params.x), -(params.y), 207)
	end
	end
local function gas3(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, ELECTRICDAMAGE, getThingPos(cid), areabuzz3, -(params.x), -(params.y), 207)
	end
	end
local min = 10
local nome = getPokeName(cid)
if nome == "Electabuzz" then
min = 13
elseif nome == "Shiny Electabuzz" then
min = 20
elseif nome == "Raichu" then
min = 9
elseif getCreatureName(cid) == "Shiny Raichu" then
min = 13
elseif getCreatureName(cid) == "Pikachu" then
min = 6
elseif getCreatureName(cid) == "Shiny Pikachu" then
min = 9
elseif getCreatureName(cid) == "Flaaffy" then
min = 10
elseif getCreatureName(cid) == "Ampharos" then
min = 15
elseif getCreatureName(cid) == "Manectric" then
min = 20
elseif getCreatureName(cid) == "Electrike" then
min = 21
elseif getCreatureName(cid) == "Electivire" then
min = 25
end
local lvgym = getPlayerStorageValue(cid, 3499)
local damage2 = min*lvgym 
local damage = damage2*1.1
addEvent(gas, 200, {cid = cid, x = damage, y = damage2})
addEvent(gas1,500, {cid = cid, x = damage, y = damage2})
addEvent(gas2,800, {cid = cid, x = damage, y = damage2})
addEvent(gas3, 1000, {cid = cid, x = damage, y = damage2})
end
end
elseif getCreatureName(cid) == "Scizor" then
if math.random(1,100) <= 70 then
local pid = getCreatureMaster(cid)
if isPlayer(pid) and getCreatureCondition(pid, CONDITION_INFIGHT) == TRUE then
local ditto = getPlayerSlotItem(pid, 8)
local outfitxx =  {lookType = 660}
if isShiny(getItemAttribute(ditto.uid, "nome")) then
outfitxx = {lookType = 1085, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
end
local function gas(params)
	if isCreature(params.cid) then


doSetCreatureOutfit(cid, outfitxx, 500) 

local lvgym = getPlayerStorageValue(params.cid, 3499)
local damage = lvgym*10
local damage2 = damage*1.1
	doAreaCombatHealth(params.cid, BUGDAMAGE, getThingPos((params.cid)), arr14, 0, 0, 131)
	doAreaCombatHealth(params.cid, BUGDAMAGE, getThingPos((params.cid)), arr24, 0, 0, 128)

	doAreaCombatHealth(params.cid, BUGDAMAGE, getThingPos((params.cid)), arr3, -damage, -damage2, 255)

	end
	end



  
addEvent(gas, 0, {cid = cid,pid = pid })
addEvent(gas, 600, {cid = cid, pid  = pid})
end
end 
elseif getCreatureName(cid) == "Magmar" then
if math.random(1,100) <= 70 then
local pid = getCreatureMaster(cid)
if isPlayer(pid) and getCreatureCondition(pid, CONDITION_INFIGHT) == TRUE then	
	
local function gas(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(cid), areabuzz, -(params.x), -(params.y), 181)
	end
	end
local function gas1(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(cid), areabuzz1, -(params.x), -(params.y), 181)
	end
	end
local function gas2(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(cid), areabuzz2, -(params.x), -(params.y), 181)
	end
	end
local function gas3(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(cid), areabuzz3, -(params.x), -(params.y), 181)
	end
	end
local min = 10


local lvgym = getPlayerStorageValue(cid, 3499)
local damage2 = min*lvgym 
local damage = damage2*1.1
addEvent(gas, 200, {cid = cid, x = damage, y = damage2})
addEvent(gas1,500, {cid = cid, x = damage, y = damage2})
addEvent(gas2,800, {cid = cid, x = damage, y = damage2})
addEvent(gas3, 1000, {cid = cid, x = damage, y = damage2})
end
end
elseif getCreatureName(cid) == "Magmortar" then
if math.random(1,100) <= 70 then
local pid = getCreatureMaster(cid)
if isPlayer(pid) and getCreatureCondition(pid, CONDITION_INFIGHT) == TRUE then	
	
local function gas(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(cid), areabuzz, -(params.x), -(params.y), 181)
	end
	end
local function gas1(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(cid), areabuzz1, -(params.x), -(params.y), 181)
	end
	end
local function gas2(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(cid), areabuzz2, -(params.x), -(params.y), 181)
	end
	end
local function gas3(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(cid), areabuzz3, -(params.x), -(params.y), 181)
	end
	end
local min = 12


local lvgym = getPlayerStorageValue(cid, 3499)
local damage2 = min*lvgym 
local damage = damage2*2
addEvent(gas, 200, {cid = cid, x = damage, y = damage2})
addEvent(gas1,500, {cid = cid, x = damage, y = damage2})
addEvent(gas2,800, {cid = cid, x = damage, y = damage2})
addEvent(gas3, 1000, {cid = cid, x = damage, y = damage2})
end
end
elseif getCreatureName(cid) == "Hitmontop" then
if math.random(1,100) <= 70 then
local pid = getCreatureMaster(cid)
if isPlayer(pid) and getCreatureCondition(pid, CONDITION_INFIGHT) == TRUE then
local ditto = getPlayerSlotItem(pid, 8)
local outfitxx =  {lookType = 436}

	local function gas(params)
	if isCreature(params.cid) then


doSetCreatureOutfit(cid, outfitxx, 500) 

local lvgym = getPlayerStorageValue(params.cid, 3499)
local damage = lvgym*10
local damage2 = damage*1.1
	doAreaCombatHealth(params.cid, FIGHTDAMAGE, getThingPos((params.cid)), arr14, 0, 0, 131)
	doAreaCombatHealth(params.cid, FIGHTDAMAGE, getThingPos((params.cid)), arr24, 0, 0, 128)

	doAreaCombatHealth(params.cid, FIGHTDAMAGE, getThingPos((params.cid)), arr3, -damage, -damage2, 255)

	end
	end



  
addEvent(gas, 0, {cid = cid,pid = pid })
addEvent(gas, 600, {cid = cid, pid  = pid})
end
end
end
end
return true
end
