local poke = {'Poliwag', 'Poliwhirl', 'Seaking', 'Dewgong', 'Blastoise', 'Tentacruel', 'Lapras', 'Gyarados', 'Omastar', 'Kabutops', 'Vaporeon', 'Staryu', 'Starmie', 'Goldeen', 'Seadra', 'Golduck', 'Squirtle', 'Wartortle', 'Tentacool', 'Snorlax', 'Poliwrath'}

local flie = {'4820', '4821', '4822', '4823', '4824', '4825'}

local lowes = {'5406', '5407', '5408','5409','5410'}

local surf = {
["Poliwag"] = {lookType=278, speed = 320},
["Poliwhirl"] = {lookType=137, speed = 480},
["Seaking"] = {lookType=269, speed = 520},
["Dewgong"] = {lookType=183, speed = 700},
["Blastoise"] = {lookType=184, speed = 850},
["Tentacruel"] = {lookType=185, speed = 750},
["Lapras"] = {lookType=186, speed = 960},
["Gyarados"] = {lookType=187, speed = 1050},
["Omastar"] = {lookType=188, speed = 680},
["Kabutops"] = {lookType=189, speed = 840},
["Poliwrath"] = {lookType=190, speed = 680},
["Vaporeon"] = {lookType=191, speed = 800},
["Staryu"] = {lookType=266, speed = 385},
["Starmie"] = {lookType=267, speed = 685},
["Goldeen"] = {lookType=268, speed = 355},
["Seadra"] = {lookType=270, speed = 655},
["Golduck"] = {lookType=271, speed = 760},
["Squirtle"] = {lookType=273, speed = 365},
["Wartortle"] = {lookType=275, speed = 605},
["Tentacool"] = {lookType=277, speed = 340},
["Snorlax"] = {lookType=300, speed = 500},
}

function onSay(cid)
if getPlayerStorageValue(cid, 888) >= 1 then
	doPlayerSendCancel(cid, "You cant surf pokemons being controled.")
	return true
	end
if getPlayerStorageValue(cid, 3333) >= 1 then
doPlayerSendCancel(cid, "You Cant ride/fly/surf/dive in duel.")
return true
end
local pos = getCreaturePosition(cid)
pos.stackpos = 0
if isInArray(lowes, getTileThingByPos(pos).itemid) then

	if #getCreatureSummons(cid) == 0 then
	return doPlayerSendCancel(cid, "You need a pokemon to surf.")
 	elseif (not isInArray(poke, getCreatureName(getCreatureSummons(cid)[1]))) then
return	doPlayerSendCancel(cid, "This pokemon cannot surf.")
	end
	

local pos = getCreaturePosition(cid)
	pos.stackpos = 0
	
	pos.z = pos.z-1
	pos.x = pos.x+1
	pos.y = pos.y+1

local g = getTileThingByPos(pos)
if not isInArray(flie, g.itemid) then
return doPlayerSendCancel(cid, "You can\'t go stop surf here!")
end
if not isWalkable(pos, cid, 1, 1) then
return doPlayerSendCancel(cid, "You can\'t go stop surf here!")
end
setPlayerStorageValue(cid, 68972, 0)
doSetCreatureOutfit(cid, {lookType=608}, 1)
doTeleportThing(cid, pos)




		
		
end
return true
end