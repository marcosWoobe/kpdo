-- feito por brun123, editado por glugluguga


local nao = {'4820', '4821', '4822', '4823', '4824', '4825', '1395', '1389', '1391', '1393', '460'}

local direction = {'4', '5', '6', '7'}
-- ridefly
local ridefly = {'Crystal Onix', 'Venusaur','Shiny Venusaur', 'Ninetales', 'Arcanine','Shiny Arcanine', 'Ponyta', 'Rapidash', 'Doduo', 'Dodrio', 'Onix', 'Rhyhorn', 'Tauros', 'Porygon', 'Aerodactyl', 'Dragonite', 'Charizard', 'Pidgeot', 'Fearow', 'Moltres', 'Zapdos', 'Articuno', 'Mew', 'Mewtwo','Elder Charizard'}
local ride = {'Crystal Onix', 'Venusaur', 'Shiny Venusaur','Ninetales', 'Arcanine', 'Shiny Arcanine','Ponyta', 'Rapidash', 'Doduo', 'Dodrio', 'Onix', 'Rhyhorn', 'Tauros'}
local fly = {'Porygon', 'Aerodactyl', 'Dragonite', 'Charizard', 'Pidgeot', 'Fearow', 'Zapdos', 'Moltres', 'Articuno', 'Mew', 'Mewtwo','Elder Charizard'}
local flys = {
[265] = {229, 2300, 350}, -- moltres
[283] = {230, 2100, 350}, -- artic
[199] = {224, 2600, 350}, -- zapdos
[9] = {232, 2200, 525}, -- 1000
[34] = {233, 2200, 525},-- two
[210] = {221, 1300, 410},-- nite
[80] = {222, 900, 375}, -- geot
[17] = {226, 800, 400}, -- fearow
[10] = {227, 1100, 410}, -- aero
[67] = {216, 1000, 410}, -- chari
[97] = {316, 600, 440},-- porygon
[547] = {546, 800,525} 
}

local rides = {
[93] = {128, 780, 400}, -- tauros
[114] = {129, 800, 375}, -- kyuubi
[220] = {130, 800, 395}, -- rapid
[16] = {131, 410, 500}, -- ponyta
[77] = {132, 400, 510}, -- rhyhorn
[88] = {12, 900, 390}, -- arcan
[493] = {492, 1000, 360}, -- shiny arca
[496] = {494, 420, 420}, -- shiny vneu
[292] = {293, 480, 430}, -- cristal onix
[248] = {126, 450, 450}, -- onix
[22] = {134, 390, 450}, -- venu
[120] = {133, 750, 380}, -- dodrio
[26] = {135, 420, 500}, -- doduo
}
local bolas = {'2222', '2223', '2224'}
local ultra = {'2220', '2221', '2227'}
local etudao = 9506

local mind = 9507
local transform = 9508

-- ROCK SMASH
local rocksmash = {'Sandshrew', 'Sandslash', 'Diglett', 'Dugtrio', 'Primeape', 'Machop', 'Machoke', 'Machamp', 'Geodude', 'Graveler', 'Golem' , 'Onix', 'Cubone', 'Marowak', 'Rhyhorn', 'Rhydon', 'Kangaskhan', 'Tauros', 'Snorlax', 'Poliwrath'}
local erockmash = 9502
local cdrocksmash = 5
-- ROCK SMASH

-- DIG
local digholes = {'468', '481', '483'}
local dig = {'Raticate', 'Sandshrew', 'Sandslash', 'Diglett', 'Dugtrio', 'Primeape', 'Machop', 'Machoke', 'Machamp', 'Geodude', 'Graveler', 'Golem' , 'Onix', 'Cubone', 'Marowak', 'Rhyhorn', 'Rhydon', 'Kangaskhan', 'Tauros', 'Snorlax'}
local edig = 9504
local cddig = 5
-- DIG

-- CUT
local cut = {'Raticate', 'Bulbasaur', 'Ivysaur', 'Venusaur', 'Charmeleon', 'Sandshrew', 'Sandslash', 'Gloom', 'Vileplume', 'Paras', 'Parasect', 'Meowth', 'Persian', 'Bellsprout', 'Weepinbell', 'Victreebel', 'Farfetchd', 'Krabby', 'Kingler', 'Exeggutor', 'Cubone', 'Marowak', 'Tangela', 'Scyther', 'Pinsir'}
local ecut = 9503
local cdcut = 5
-- CUT

-- BLINK
local blink = {'Abra', 'Kadabra', 'Alakazam','Shiny Alakazam', 'Porygon','Mr Mime','Mew','Mewtwo',"Shiny Hypno"}
local exhaustblink = 9501
local cdblink = 15
-- BLINK

-- LIGHT
local light = {'Abra', 'Kadabra', 'Alakazam','Shiny Alakazam', 'Magnemite', 'Magneton', 'Drowzee', 'Hypno', 'Voltorb', 'Electrode', 'Mr Mime', 'Electabuzz', 'Jolteon', 'Porygon', 'Pikachu', 'Raichu',"Shiny Hypno"}
local exhautStorage = 9500
local time = 600
local cd = 17
-- LIGHT

function onUse(cid, item, frompos, item2, topos)
if getPlayerItemCount(cid, item2.itemid) >= 1 then
return false
end

	
if exhaustion.get(cid, etudao) then
	doPlayerSendCancel(cid, "Please wait a few seconds before using order again!")
	return true
	end


if isCreature(item2.uid) and getCreatureMaster(item2.uid) == cid and getPlayerStorageValue(cid, 63215) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and item2.uid ~= cid then
local summons = getCreatureSummons(cid)[1]
local mon = getCreatureName(summons)
local spd = getCreatureSpeed(summons)
local bspd = getCreatureBaseSpeed(summons)

if getPlayerStorageValue(getCreatureSummons(cid)[1], 8) >= 1 then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry You pokemon sleeping.")

	
	return true
	end
if isInArray({"Ditto", "ditto"}, getCreatureName(getCreatureSummons(cid)[1])) then


doSendMagicEffect(getCreaturePosition(getCreatureSummons(cid)[1]), 184)

doCreatureSay(cid, "Ditto Revert!", TALKTYPE_SAY)
local ditto = getPlayerSlotItem(cid, 8)
doItemSetAttribute(ditto.uid, "outifit", 28)
doItemSetAttribute(ditto.uid, "cold", 0)

doCreatureChangeOutfit(getCreatureSummons(cid)[1], {lookType = 28, lookHead = 0, lookAddons = 0, lookLegs = 0, lookBody = 0, lookFeet = 0})


return true
		
end
viadao = getCreatureSummons(cid)[1] 
if getPlayerStorageValue(viadao, 9951) >= 1 then
doCreatureSay(cid, ""..mon..", hold position!", TALKTYPE_SAY) 
setPlayerStorageValue(viadao, 1869, 0)
setPlayerStorageValue(viadao, 2997, 0)
setPlayerStorageValue(viadao, 9951, 0)
elseif spd >= 1 then
doChangeSpeed(summons, -spd)
doCreatureSay(cid, ""..mon..", hold position!", TALKTYPE_SAY)
elseif spd == 0 then
doChangeSpeed(summons, bspd)
doCreatureSay(cid, ""..mon..", stop holding!", TALKTYPE_SAY)
end
return true
end
if isMonster(item2.uid) and item2.uid ~= getCreatureSummons(cid)[1] and item2.uid ~= cid then




if getPlayerStorageValue(getCreatureSummons(cid)[1], 8) >= 1 then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry You pokemon sleeping.")

	
	return true
	end

if #getCreatureSummons(cid) == 0 then
	doPlayerSendCancel(cid, "You need a pokemon to use order.")
	return true
	end


if not isInArray({"Alakazam", "Shiny Alakazam","Tentacruel", "Gengar","Shiny Gengar","Ditto"}, getCreatureName(getCreatureSummons(cid)[1])) then
return true
end
if isInArray({"Ditto", "ditto"}, getCreatureName(getCreatureSummons(cid)[1])) then


doSendMagicEffect(getCreaturePosition(getCreatureSummons(cid)[1]), 184)


local function contagem(params)
doCreatureChangeOutfit(getCreatureSummons(cid)[1], getCreatureOutfit(item2.uid))

exhaustion.set(cid, 548798, 60)
			end

addEvent(contagem,500, cid)

local ditto = getPlayerSlotItem(cid, 8)
doItemSetAttribute(ditto.uid, "nomepoke", getCreatureName(item2.uid))
doItemSetAttribute(ditto.uid, "outifit", getCreatureOutfit(item2.uid).lookType)
doItemSetAttribute(ditto.uid, "cold", 60)





return true
end



if exhaustion.get(cid, mind) then
xsd = exhaustion.get(cid, mind)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need wait "..xsd.." seconds to use control mind.")
return true
end
if isPlayer(getCreatureMaster(item2.uid)) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cant control the mind of someone's else pokemon.")
return true
end

if not isInArray({"Alakazam","Shiny Alakazam", "Tentacruel", "Gengar","Shiny Gengar"}, getCreatureName(getCreatureSummons(cid)[1])) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "This pokemon cant control minds.")
return true
end
exhaustion.set(cid, mind, 240)
doCreatureSay(getCreatureSummons(cid)[1], "CONTROL MIND!", TALKTYPE_MONSTER)
doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(item2.uid), 39)
registerCreatureEvent(item2.uid, "Controled")
doSendMagicEffect(getThingPos(item2.uid), 136)
doSendMagicEffect(getThingPos(item2.uid), 134)
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 133)
setPlayerStorageValue(cid, 61209, getCreatureMaxHealth(getCreatureSummons(cid)[1]))
setPlayerStorageValue(cid, 61210, getCreatureHealth(getCreatureSummons(cid)[1]))
doConvinceCreature(cid, item2.uid)
if getCreatureSpeed(item2.uid) == 0 then
doChangeSpeed(item2.uid, 180)
end
doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", control "..string.lower(getCreatureName(item2.uid)).."'s mind!", 1)
local cmed = item2.uid
local cmname = getCreatureName(getCreatureSummons(cid)[1])
local cmpos = getThingPos(getCreatureSummons(cid)[1])
doRemoveCreature(getCreatureSummons(cid)[1])
local cmzao = doSummonCreature(""..cmname.." cm", cmpos)
doConvinceCreature(cid, cmzao)
setPlayerStorageValue(cid, 888, 1)
	local function check(params)
	if isCreature(params.cid) then
	if getPlayerStorageValue(params.cid, 888) <= 0 then
	return true
	end
	if not isCreature(cmed) then
local pkcmpos = getThingPos(getCreatureSummons(cid)[1])
doRemoveCreature(getCreatureSummons(cid)[1])
local item = getPlayerSlotItem(cid, 8)
local pk = doSummonCreature(getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball."), pkcmpos)
doConvinceCreature(cid, pk)
doCreatureSetLookDir(getCreatureSummons(cid)[1], 2)
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp")
registerCreatureEvent(cid, "PlayerPokeDeath")
setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))
setPlayerStorageValue(cid, 888, 0)
	end
	if params.rod == 20 then
	local lifecmed = getCreatureMaxHealth(cmed) - getCreatureHealth(cmed)
	local poscmed = getThingPos(cmed)
	local cmeddir = getCreatureLookDir(cmed)
	local namecmed = getCreatureName(cmed)
	doRemoveCreature(getCreatureSummons(cid)[1])
	local back = doSummonCreature(""..namecmed.." s", poscmed)
	if getCreatureSpeed(back) == 0 then
	doChangeSpeed(back, 180)
	end
	doCreatureSetLookDir(back, cmeddir)
	doCreatureAddHealth(back, -lifecmed)
local item = getPlayerSlotItem(cid, 8)
local mynewpos = getThingPos(getCreatureSummons(cid)[1])
doRemoveCreature(getCreatureSummons(cid)[1])
pk = doSummonCreature(getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball."), mynewpos)
doConvinceCreature(cid, pk)
doCreatureSetLookDir(getCreatureSummons(cid)[1], 2)
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp")
registerCreatureEvent(cid, "PlayerPokeDeath")
setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))
setPlayerStorageValue(cid, 888, 0)
	else
	doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 220)
	end
	end
	end

for rod = 1, 20 do
addEvent(check, rod*500, {cid = cid, rod = rod})
end
return true
end
	
if item2.uid == cid then
if getPlayerStorageValue(cid, 3333) >= 1 then
doPlayerSendCancel(cid, "You Cant ride/fly in duel.")
return true
end
if getPlayerStorageValue(cid, 68972) >= 1 then
doPlayerSendTextMessage(cid,27,"Sorry You cant fly/ride in water.")
return True
end
	if getPlayerStorageValue(cid, 888) >= 1 then
	doPlayerSendCancel(cid, "You cant fly neither ride pokemons being controled.")
	return true
	end
	if #getCreatureSummons(cid) == 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 then
	doPlayerSendCancel(cid, "You need a pokemon to use order.")
	return true
	end

	if getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and not isInArray(ridefly, getCreatureName(getCreatureSummons(cid)[1])) then
	doPlayerSendCancel(cid, "You can't ride this pokemon nor fly with it.")
	return true
	end

	if getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and getCreatureSpeed(getCreatureSummons(cid)[1]) == 0 then
	return true
	end


	if getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and isInArray(ride, getCreatureName(getCreatureSummons(cid)[1])) then
	local pokemon = rides[getCreatureOutfit(getCreatureSummons(cid)[1]).lookType]
	if getCreatureSpeed(getCreatureSummons(cid)[1]) >= 1 then
	doChangeSpeed(getCreatureSummons(cid)[1], -getCreatureSpeed(getCreatureSummons(cid)[1]))
	end
	local function ride(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
	if getDistanceBetween(getThingPos(getCreatureSummons(cid)[1]), getThingPos(cid)) <= params.d then
	doChangeSpeed(cid, -250)
	doChangeSpeed(cid, pokemon[2])
	exhaustion.set(cid, etudao, 4)
	setPlayerStorageValue(cid, 17001, 1)
	doSetCreatureOutfit(cid, {lookType = pokemon[1], lookHead = 0, lookAddons = 0, lookLegs = 0, lookBody = 0, lookFeet = 0}, -1)
	setPlayerStorageValue(cid, 61209, getCreatureMaxHealth(getCreatureSummons(cid)[1]))
	setPlayerStorageValue(cid, 61210, getCreatureHealth(getCreatureSummons(cid)[1]))
	doRemoveCreature(getCreatureSummons(cid)[1])
	else
	dirh = getDirectionTo(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(params.cid))
	if dirh == NORTHWEST then
		if math.random(1,100) >= 51 then
		dirh = NORTH
		else
		dirh = WEST
		end
	elseif dirh == SOUTHWEST then
		if math.random(1,100) >= 51 then
		dirh = SOUTH
		else
		dirh = WEST
		end
	elseif dirh == SOUTHEAST then
		if math.random(1,100) >= 51 then
		dirh = SOUTH
		else
		dirh = EAST
		end
	elseif dirh == NORTHEAST then
		if math.random(1,100) >= 51 then
		dirh = NORTH
		else
		dirh = EAST
		end
	end
	local dirh = dirh
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
	doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(cid)[1]))
	doPushCreature(getCreatureSummons(params.cid)[1], dirh, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(cid)[1]))
	else
	doPushCreature(getCreatureSummons(params.cid)[1], dirh, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(cid)[1]))
	end
	end
	end
	end
	end
	
	local function speed(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
	doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(cid)[1]))
	end
	end
	end
	end
	doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", let me ride you!", 1)
exhaustion.set(cid, etudao, 4)
	if getPlayerGroupId(cid) >= 2 and getPlayerGroupId(cid) <= 6 then
	distanc = 1
	else
	distanc = 0
	end
	local distance = distanc
	for i=1,12 do
	addEvent(ride, pokemon[3]*i, {cid = cid, d = distance})
	addEvent(speed, ((pokemon[3]*12)+100), {cid = cid})
	end	
	return true
	end

	if getPlayerStorageValue(cid, 17001) >= 1 then
	setPlayerStorageValue(cid, 17001, 0)
	if getPlayerGroupId(cid) ~= 6 then
	setPlayerGroupId(cid, 8)
	end
	doCreatureSetLookDir(cid, 2)
	doChangeSpeed(cid, -(getCreatureSpeed(cid)))
	if getPlayerGroupId(cid) >= 2 and getPlayerGroupId(cid) <= 7 then
	doChangeSpeed(cid, 400*getPlayerGroupId(cid))
	else
	doChangeSpeed(cid, 250)
	end
	doRemoveCondition(cid, CONDITION_OUTFIT)
	local item = getPlayerSlotItem(cid, 8)
	doCreatureSay(cid, "" .. getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball.")..", let me get down!", 1)
	doSummonMonster(cid, getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball."))
	local pk = getCreatureSummons(cid)[1]
	registerCreatureEvent(cid, "PlayerPokeDeath")
	registerCreatureEvent(pk, "DiePoke")
	registerCreatureEvent(pk, "Exp")
	setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
	doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
	doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))
	return true
	end


if getPlayerStorageValue(cid, 17000) >= 1 then
	if isInArray({460, 1022, 1023}, getTileInfo(getThingPos(cid)).itemid) then
	doPlayerSendCancel(cid, "You can\'t stop flying at this height!")
	return true
	end
	if getTileInfo(getThingPos(cid)).itemid >= 4820 and getTileInfo(getThingPos(cid)).itemid <= 4825 then
	doPlayerSendCancel(cid, "You can\'t stop flying above the water!")
	return true
	end
	if getPlayerGroupId(cid) ~= 6 then
	setPlayerGroupId(cid, 8)
	end
	doCreatureSetLookDir(cid, 2)
	setPlayerStorageValue(cid, 17000, 0)
	doChangeSpeed(cid, -(getCreatureSpeed(cid)))
	if getPlayerGroupId(cid) >= 2 and getPlayerGroupId(cid) <= 7 then
	doChangeSpeed(cid, 200*getPlayerGroupId(cid))
	else
	doChangeSpeed(cid, 250)
	end
	doRemoveCondition(cid, CONDITION_OUTFIT)
	local item = getPlayerSlotItem(cid, 8)
	doCreatureSay(cid, "" .. getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball.")..", let me get down!", 1)
	doSummonMonster(cid, getItemAttribute(item.uid, "poke"):match("This is (.-)'s pokeball."))
	local pk = getCreatureSummons(cid)[1]
	registerCreatureEvent(cid, "PlayerPokeDeath")
	registerCreatureEvent(pk, "DiePoke")
	registerCreatureEvent(pk, "Exp")
	setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
	doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
	doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))
return true
end

	if getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 and isInArray(fly, getCreatureName(getCreatureSummons(cid)[1])) then
	if getPlayerStorageValue(cid, 17000) <= 0 then
	local pokemon = flys[getCreatureOutfit(getCreatureSummons(cid)[1]).lookType]
	local function fly(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
	if getDistanceBetween(getThingPos(getCreatureSummons(cid)[1]), getThingPos(cid)) <= params.dd then
	doPlayerSendTextMessage(cid,27, "Say \"up\" or \"h1\" to fly higher and \"down\" or \"h2\" to fly lower,and for auto flying , say \"!R move\" (for on auto flying) * \"!R +\" (for more Speed auto flying) * \"!R -\"(for reduce speed auto flying) and \"!R stop\" for Stop auto flying." )
	setPlayerStorageValue(cid, 61209, getCreatureMaxHealth(getCreatureSummons(cid)[1]))
	setPlayerStorageValue(cid, 61210, getCreatureHealth(getCreatureSummons(cid)[1]))
	setPlayerStorageValue(cid, 17000, 1)
	registerCreatureEvent(cid, "Flying")
	doChangeSpeed(cid, -250)
	doChangeSpeed(cid, pokemon[2])
	exhaustion.set(cid, etudao, 4)
	doSetCreatureOutfit(cid, {lookType = pokemon[1], lookHead = 0, lookAddons = 0, lookLegs = 0, lookBody = 0, lookFeet = 0}, -1)
	doRemoveCreature(getCreatureSummons(cid)[1])
	else
	dir = getDirectionTo(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(params.cid))
	if dir == NORTHWEST then
		if math.random(1,100) >= 51 then
		dir = NORTH
		else
		dir = WEST
		end
	elseif dir == SOUTHWEST then
		if math.random(1,100) >= 51 then
		dir = SOUTH
		else
		dir = WEST
		end
	elseif dir == SOUTHEAST then
		if math.random(1,100) >= 51 then
		dir = SOUTH
		else
		dir = EAST
		end
	elseif dir == NORTHEAST then
		if math.random(1,100) >= 51 then
		dir = NORTH
		else
		dir = EAST
		end
	end
	local dir = dir
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
	doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(cid)[1]))
	doPushCreature(getCreatureSummons(params.cid)[1], dir, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(cid)[1]))
	else
	doPushCreature(getCreatureSummons(params.cid)[1], dir, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(cid)[1]))
	end
	end
	end
	end
	end

	local function speed(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
	doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(cid)[1]))
	end
	end
	end
	end

	doCreatureSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", lets fly!", 1)
exhaustion.set(cid, etudao, 4)
	if getPlayerGroupId(cid) >= 2 and getPlayerGroupId(cid) <= 6 then
	distancc = 1
	else
	distancc = 0
	end
	local distancee = distancc
	for i=1,12 do
	addEvent(fly, pokemon[3]*i, {cid = cid, dd = distancee})
	addEvent(speed, ((pokemon[3]*12)+100), {cid = cid})
	end	
	return true
	end
return true
end
end
-- ROCK SMASH
if item2.itemid == 1285 and getPlayerStorageValue(cid, 63215) <= 0 then
if #getCreatureSummons(cid) == 0 then
doPlayerSendCancel(cid, "You need a pokemon to use rock smash.")
return true
end
if not isInArray(rocksmash, getCreatureName(getCreatureSummons(cid)[1])) then
doPlayerSendCancel(cid, "This pokemon can't use rock smash.")
return true
end
if isInArray(rocksmash, getCreatureName(getCreatureSummons(cid)[1])) then
	if exhaustion.get(cid, erockmash) then
	doPlayerSendCancel(cid, "Please wait a few seconds before using rock smash again!")
	return true
	end


if getCreatureSpeed(getCreatureSummons(cid)[1]) == 0 then
return true
end
doChangeSpeed(getCreatureSummons(cid)[1], -getCreatureSpeed(getCreatureSummons(cid)[1]))
	local function tocut(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) >= 1 then
	return true
	end
	if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 100) >= 1 then
	return true
	end
	if getDistanceBetween(getThingPos(getCreatureSummons(params.cid)[1]), topos) == 1 then
	doSendMagicEffect(topos, 118)
	doTransformItem(getTileItemById(topos, 1285).uid, 2257)
	exhaustion.set(cid, erockmash, cdrocksmash)
	setPlayerStorageValue(getCreatureSummons(params.cid)[1], 100, 1)
		local function detrans(params)
		doTransformItem(getTileItemById(topos, 2257).uid, 1285)
			if isCreature(getCreatureSummons(params.ciddd)[1]) then
			setPlayerStorageValue(getCreatureSummons(params.ciddd)[1], 100, 0)
			end
		end
	addEvent(detrans, 5500, {ciddd = cid})
	doCreatureSay(getCreatureSummons(cid)[1], "ROCK SMASH!", TALKTYPE_MONSTER)
	local function nmr(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
		if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
		doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(params.cid)[1]))
		end
	end
	end
	end
	addEvent(nmr, 400, {cid = cid})
	else
	local badire = getDirectionTo(getThingPos(getCreatureSummons(cid)[1]), topos)
	if badire == NORTHWEST then
		if math.random(1,100) >= 51 then
		badire = NORTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = NORTH
			else
			badire = WEST
			end
		else
		badire = WEST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = WEST
			else
			badire = NORTH
			end
		end
	elseif badire == SOUTHWEST then
		if math.random(1,100) >= 51 then
		badire = SOUTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = SOUTH
			else
			badire = WEST
			end
		else
		badire = WEST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = WEST
			else
			badire = SOUTH
			end
		end
	elseif badire == SOUTHEAST then
		if math.random(1,100) >= 51 then
		badire = SOUTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = SOUTH
			else
			badire = EAST
			end
		else
		badire = EAST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = EAST
			else
			badire = SOUTH
			end
		end
	elseif badire == NORTHEAST then
		if math.random(1,100) >= 51 then
		badire = NORTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = NORTH
			else
			badire = EAST
			end
		else
		badire = EAST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = EAST
			else
			badire = NORTH
			end
		end
	end
	local badire = badire
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
	doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(params.cid)[1]))
	doPushCreature(getCreatureSummons(params.cid)[1], badire, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
	else
	doPushCreature(getCreatureSummons(params.cid)[1], badire, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
	end
	end
	end
	end
	end

doPlayerSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", smash this rock!", 1)
local speed = getCreatureBaseSpeed(getCreatureSummons(cid)[1])
local temk = 1000 -(2.3 * speed)
addEvent(tocut, 0, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos})
for i = 1, getDistanceBetween(getThingPos(getCreatureSummons(cid)[1]), topos) * 2 do
addEvent(tocut, temk*i, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos})
end
return true
end
end
-- ROCK SMASH END


d0 = 
{
        [0] = {pokemon = 'Caterpie p'}, 
        [1] = {pokemon = 'Weedle p'}, 
     
}

d20 = 
{
        [0] = {pokemon = 'Caterpie p'}, 
        [1] = {pokemon = 'Weedle p'}, 
        [2] = {pokemon = 'Spearow p'}, 
        [3] = {pokemon = 'Pidgey p'}, 
        [4] = {pokemon = 'Zubat p'}, 
}

d40 = 
{
        [0] = {pokemon = 'Caterpie p'}, 
        [1] = {pokemon = 'Weedle p'}, 
        [2] = {pokemon = 'Spearow p'}, 
        [3] = {pokemon = 'Pidgey p'}, 
        [4] = {pokemon = 'Zubat p'}, 
        [5] = {pokemon = 'Metapod p'},
        [6] = {pokemon = 'Kakuna p'},  
        [7] = {pokemon = 'Ekans p'},
}

d60 = 
{
           [0] = {pokemon = 'Caterpie p'}, 
        [1] = {pokemon = 'Weedle p'}, 
        [2] = {pokemon = 'Spearow p'}, 
        [3] = {pokemon = 'Pidgey p'}, 
        [4] = {pokemon = 'Zubat p'}, 
        [5] = {pokemon = 'Metapod p'},
        [6] = {pokemon = 'Kakuna p'},  
        [7] = {pokemon = 'Ekans p'},
        [8] = {pokemon = 'Pidgeotto p'},

}

d80 = 
{
        [0] = {pokemon = 'Caterpie p'}, 
        [1] = {pokemon = 'Weedle p'}, 
        [2] = {pokemon = 'Spearow p'}, 
        [3] = {pokemon = 'Pidgey p'}, 
        [4] = {pokemon = 'Zubat p'}, 
        [5] = {pokemon = 'Metapod p'},
        [6] = {pokemon = 'Kakuna p'},  
        [7] = {pokemon = 'Ekans p'},
        [8] = {pokemon = 'Pidgeotto p'},
        [9] = {pokemon = 'Arbok p'},
        [10] = {pokemon = 'Golbat p'},
        [11] = {pokemon = 'Beedrill p'}, 
        [12] = {pokemon = 'Butterfree p'},
     

}

d90 = 
{
        [0] = {pokemon = 'Caterpie p'}, 
        [1] = {pokemon = 'Weedle p'}, 
        [2] = {pokemon = 'Spearow p'}, 
        [3] = {pokemon = 'Pidgey p'}, 
        [4] = {pokemon = 'Zubat p'}, 
        [5] = {pokemon = 'Metapod p'},
        [6] = {pokemon = 'Kakuna p'},  
        [7] = {pokemon = 'Ekans p'},
        [8] = {pokemon = 'Pidgeotto p'},
        [9] = {pokemon = 'Arbok p'},
        [10] = {pokemon = 'Golbat p'},
        [11] = {pokemon = 'Beedrill p'}, 
        [12] = {pokemon = 'Butterfree p'},
        [13] = {pokemon = 'Fearow p'},
        [14] = {pokemon = 'Farfetchd p'},


}

d100 = 
{
         [0] = {pokemon = 'Caterpie p'}, 
        [1] = {pokemon = 'Weedle p'}, 
        [2] = {pokemon = 'Spearow p'}, 
        [3] = {pokemon = 'Pidgey p'}, 
        [4] = {pokemon = 'Zubat p'}, 
        [5] = {pokemon = 'Metapod p'},
        [6] = {pokemon = 'Kakuna p'},  
        [7] = {pokemon = 'Ekans p'},
        [8] = {pokemon = 'Pidgeotto p'},
        [9] = {pokemon = 'Arbok p'},
        [10] = {pokemon = 'Golbat p'},
        [11] = {pokemon = 'Beedrill p'}, 
        [12] = {pokemon = 'Butterfree p'},
        [13] = {pokemon = 'Fearow p'},
        [14] = {pokemon = 'Farfetchd p'},
        [15] = {pokemon = 'Pidgeot p'},

}


if isInArray({2704, 2705, 2701, 2703, 2706}, item2.itemid) and getPlayerStorageValue(cid, 63215) <= 0 then

if #getCreatureSummons(cid) == 0 then
doPlayerSendCancel(cid, "You need a pokemon to headbutt.")
return true
end

	if exhaustion.get(cid, 487891) then
	doPlayerSendCancel(cid, "Please wait a "..exhaustion.get(cid, 487891).." seconds before using rock smash again!")
	return true
	end



setPlayerStorageValue(getCreatureSummons(cid)[1], 1099, 1)
setPlayerStorageValue(cid, 1099, item2.itemid)

doChangeSpeed(getCreatureSummons(cid)[1], -getCreatureSpeed(getCreatureSummons(cid)[1]))

	local function tocut(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) >= 1 then
	return true
	end
	
	if getDistanceBetween(getThingPos(getCreatureSummons(params.cid)[1]), topos) == 1 then
doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), topos, 39)


doSendMagicEffect(topos, 3)
doPlayerAddSkillTry(params.cid, 3, 10)

setPlayerStorageValue(getCreatureSummons(cid)[1], 1099, 0)
local skill = getPlayerSkillLevel(params.cid, 3)

doTransformItem(getTileItemById(topos, getPlayerStorageValue(params.cid, 1099)).uid, 7024)
	exhaustion.set(params.cid, 487891, 20)
	
local playerpos = topos


                      if skill >= 100 then
                                local random = math.random(0, 15)
                                
                                      local criature =   doCreateMonster(d100[random].pokemon, playerpos)
       setPlayerStorageValue(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
setPlayerStorageValue(criature, 200, "!, ")
end     
setPlayerStorageValue(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(params.cid)..", ")   
if #getCreatureSummons(params.cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(params.cid)[1])
else
doMonsterSetTarget(criature, params.cid)  
end
                                        return true
                                
                        else
           if skill >= 90 then
                                
  local random = math.random(0, 14)
                                
   local criature =   doCreateMonster(d90[random].pokemon, playerpos)
       setPlayerStorageValue(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
setPlayerStorageValue(criature, 200, "!, ")
end     
setPlayerStorageValue(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(params.cid)..", ")   
if #getCreatureSummons(params.cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(params.cid)[1])
else
doMonsterSetTarget(criature, params.cid)  
end
                        else
                        if skill >= 80 then
                                local random = math.random(0, 12)
                                
   local criature =   doCreateMonster(d80[random].pokemon, playerpos)
       setPlayerStorageValue(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
setPlayerStorageValue(criature, 200, "!, ")
end     
setPlayerStorageValue(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(params.cid)..", ")   
if #getCreatureSummons(params.cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(params.cid)[1])
else
doMonsterSetTarget(criature, params.cid)  
end
                        else
                        if skill >= 60 then
  local random = math.random(0, 8)
                                
   local criature =   doCreateMonster(d60[random].pokemon, playerpos)
       setPlayerStorageValue(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
setPlayerStorageValue(criature, 200, "!, ")
end     
setPlayerStorageValue(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(params.cid)..", ")   
if #getCreatureSummons(params.cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(params.cid)[1])
else
doMonsterSetTarget(criature, params.cid)  
end
                        else
                        if skill >= 40 then
                         
                                local random = math.random(0, 7)
                                
   local criature =   doCreateMonster(d40[random].pokemon, playerpos)
       setPlayerStorageValue(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
setPlayerStorageValue(criature, 200, "!, ")
end     
setPlayerStorageValue(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(params.cid)..", ")   
if #getCreatureSummons(params.cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(params.cid)[1])
else
doMonsterSetTarget(criature, params.cid)  
end
                        else
                        if skill >= 20 then
 local random = math.random(0, 4)
                                
   local criature =   doCreateMonster(d20[random].pokemon, playerpos)
       setPlayerStorageValue(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
setPlayerStorageValue(criature, 200, "!, ")
end     
setPlayerStorageValue(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(params.cid)..", ")   
if #getCreatureSummons(params.cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(params.cid)[1])
else
doMonsterSetTarget(criature, params.cid)  
end
                        else
                        if skill >= 0 and skill < 20 then
                              
                           local random = math.random(0, 1)      
   local criature =   doCreateMonster(d0[random].pokemon, playerpos)
       setPlayerStorageValue(criature, 17, 5) 
if getPlayerStorageValue(criature, 200) == -1 then
setPlayerStorageValue(criature, 200, "!, ")
end     
setPlayerStorageValue(criature, 200, getPlayerStorageValue(criature, 200)..""..getCreatureName(params.cid)..", ")   
if #getCreatureSummons(params.cid) >= 1 then
doMonsterSetTarget(criature, getCreatureSummons(params.cid)[1])
else
doMonsterSetTarget(criature, params.cid)  
end                       

                               
                                
                        end
                
        end
        
end
    
end
end
end
end


local function detrans(params)
doTransformItem(getTileItemById(topos, 7024).uid, params.idoitem)
		

		end


local itemid = getPlayerStorageValue(params.cid, 1099)
	addEvent(detrans, 60000, {idoitem = itemid})
	--doCreatureSay(getCreatureSummons(params.cid)[1], "HeadButt", TALKTYPE_MONSTER)


		doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(params.cid)[1]))

	else
	local badire = getDirectionTo(getThingPos(getCreatureSummons(params.cid)[1]), topos)
	if badire == NORTHWEST then
		if math.random(1,100) >= 51 then
		badire = NORTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = NORTH
			else
			badire = WEST
			end
		else
		badire = WEST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = WEST
			else
			badire = NORTH
			end
		end
	elseif badire == SOUTHWEST then
		if math.random(1,100) >= 51 then
		badire = SOUTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = SOUTH
			else
			badire = WEST
			end
		else
		badire = WEST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = WEST
			else
			badire = SOUTH
			end
		end
	elseif badire == SOUTHEAST then
		if math.random(1,100) >= 51 then
		badire = SOUTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = SOUTH
			else
			badire = EAST
			end
		else
		badire = EAST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = EAST
			else
			badire = SOUTH
			end
		end
	elseif badire == NORTHEAST then
		if math.random(1,100) >= 51 then
		badire = NORTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = NORTH
			else
			badire = EAST
			end
		else
		badire = EAST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), params.ccid, 0, 0) then
			badire = EAST
			else
			badire = NORTH
			end
		end
	end
	local badire = badire
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
	doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(params.cid)[1]))
	doPushCreature(getCreatureSummons(params.cid)[1], badire, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
	else
	doPushCreature(getCreatureSummons(params.cid)[1], badire, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
	end
	end
	end
	end
	end

--doPlayerSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", HeadButt", 1)
local speed = getCreatureBaseSpeed(getCreatureSummons(cid)[1])
local temk = 1000 -(2.3 * speed)
addEvent(tocut, 0, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos})
for i = 1, getDistanceBetween(getThingPos(getCreatureSummons(cid)[1]), topos) * 2 do
addEvent(tocut, temk*i, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos})
end
return true


end











-- CUT
if item2.itemid == 2767 and getPlayerStorageValue(cid, 63215) <= 0 then
if #getCreatureSummons(cid) == 0 then
doPlayerSendCancel(cid, "You need a pokemon to use cut.")
return true
end
if not isInArray(cut, getCreatureName(getCreatureSummons(cid)[1])) then
doPlayerSendCancel(cid, "This pokemon can't use cut.")
return true
end
if isInArray(cut, getCreatureName(getCreatureSummons(cid)[1])) then
	if exhaustion.get(cid, ecut) then
	doPlayerSendCancel(cid, "Please wait a few seconds before using cut again!")
	return true
	end
if getCreatureSpeed(getCreatureSummons(cid)[1]) == 0 then
return true
end
doChangeSpeed(getCreatureSummons(cid)[1], -getCreatureSpeed(getCreatureSummons(cid)[1]))
	local function tocut(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) >= 1 then
	return true
	end
	if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 101) >= 1 then
	return true
	end
	if getDistanceBetween(getThingPos(getCreatureSummons(params.cid)[1]), topos) == 1 then
	doSendMagicEffect(topos, 141)
	doTransformItem(getTileItemById(topos, 2767).uid, 6216)
	exhaustion.set(cid, ecut, cdcut)
	setPlayerStorageValue(getCreatureSummons(params.cid)[1], 101, 1)
		local function detrans(params)
		doTransformItem(getTileItemById(topos, 6216).uid, 2767)
			if isCreature(getCreatureSummons(params.ciddd)[1]) then
			setPlayerStorageValue(getCreatureSummons(params.ciddd)[1], 101, 0)
			end
		end
	addEvent(detrans, 5500, {ciddd = cid})
	doCreatureSay(getCreatureSummons(cid)[1], "CUT!", TALKTYPE_MONSTER)
	local function nmr(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
		if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
		doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(params.cid)[1]))
		end
	end
	end
	end
	addEvent(nmr, 400, {cid = cid})
	else
	adire = getDirectionTo(getThingPos(getCreatureSummons(cid)[1]), topos)
	if adire == NORTHWEST then
		if math.random(1,100) >= 51 then
		adire = NORTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), params.ccid, 0, 0) then
			adire = NORTH
			else
			adire = WEST
			end
		else
		adire = WEST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), params.ccid, 0, 0) then
			adire = WEST
			else
			adire = NORTH
			end
		end
	elseif adire == SOUTHWEST then
		if math.random(1,100) >= 51 then
		adire = SOUTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), params.ccid, 0, 0) then
			adire = SOUTH
			else
			adire = WEST
			end
		else
		adire = WEST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), params.ccid, 0, 0) then
			adire = WEST
			else
			adire = SOUTH
			end
		end
	elseif adire == SOUTHEAST then
		if math.random(1,100) >= 51 then
		adire = SOUTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), params.ccid, 0, 0) then
			adire = SOUTH
			else
			adire = EAST
			end
		else
		adire = EAST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), params.ccid, 0, 0) then
			adire = EAST
			else
			adire = SOUTH
			end
		end
	elseif adire == NORTHEAST then
		if math.random(1,100) >= 51 then
		adire = NORTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), params.ccid, 0, 0) then
			adire = NORTH
			else
			adire = EAST
			end
		else
		adire = EAST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), params.ccid, 0, 0) then
			adire = EAST
			else
			adire = NORTH
			end
		end
	end
	local adire = adire
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
	doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(params.cid)[1]))
	doPushCreature(getCreatureSummons(params.cid)[1], adire, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
	else
	doPushCreature(getCreatureSummons(params.cid)[1], adire, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
	end
	end
	end
	end
	end

doPlayerSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", cut this bush!", 1)
local speed = getCreatureBaseSpeed(getCreatureSummons(cid)[1])
temk = 1000 -(2.3 * speed)
addEvent(tocut, 0, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos})
for i = 1, getDistanceBetween(getThingPos(getCreatureSummons(cid)[1]), topos) * 2 do
addEvent(tocut, temk*i, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos})
end

return true
end
end
-- CUT END

-- DIG
if isInArray(digholes, item2.itemid) and getPlayerStorageValue(cid, 63215) <= 0 then
if #getCreatureSummons(cid) == 0 then
doPlayerSendCancel(cid, "You need a pokemon to use dig.")
return true
end
if not isInArray(dig, getCreatureName(getCreatureSummons(cid)[1])) then
doPlayerSendCancel(cid, "This pokemon can't use dig.")
return true
end
if isInArray(dig, getCreatureName(getCreatureSummons(cid)[1])) then
	if exhaustion.get(cid, edig) then
	doPlayerSendCancel(cid, "Please wait a few seconds before using dig again!")
	return true
	end
if getCreatureSpeed(getCreatureSummons(cid)[1]) == 0 then
return true
end
doChangeSpeed(getCreatureSummons(cid)[1], -getCreatureSpeed(getCreatureSummons(cid)[1]))
	local function tocut(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) >= 1 then
	return true
	end
	if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 99) >= 1 then
	return true
	end
	if getDistanceBetween(getThingPos(getCreatureSummons(params.cid)[1]), topos) == 1 then
	doSendMagicEffect(topos, 3)
	setPlayerStorageValue(getCreatureSummons(params.cid)[1], 99, 1)
	doTransformItem(getTileItemById(topos, item2.itemid).uid, item2.itemid+1)
	exhaustion.set(cid, edig, cddig)
		local function detrans(params)
		doTransformItem(getTileItemById(topos, item2.itemid+1).uid, item2.itemid)
			if isCreature(getCreatureSummons(params.ciddd)[1]) then
			setPlayerStorageValue(getCreatureSummons(params.ciddd)[1], 99, 0)
			end
		end
	addEvent(detrans, 5500, {ciddd = cid})
	doCreatureSay(getCreatureSummons(cid)[1], "DIG!", TALKTYPE_MONSTER)
	local function nmr(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
		if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
		doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(params.cid)[1]))
		end
	end
	end
	end
	addEvent(nmr, 400, {cid = cid})
	else
	local cdire = getDirectionTo(getThingPos(getCreatureSummons(cid)[1]), topos)
	if cdire == NORTHWEST then
		if math.random(1,100) >= 51 then
		cdire = NORTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), cdire), params.ccid, 0, 0) then
			cdire = NORTH
			else
			cdire = WEST
			end
		else
		cdire = WEST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), cdire), params.ccid, 0, 0) then
			cdire = WEST
			else
			cdire = NORTH
			end
		end
	elseif cdire == SOUTHWEST then
		if math.random(1,100) >= 51 then
		cdire = SOUTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), cdire), params.ccid, 0, 0) then
			cdire = SOUTH
			else
			cdire = WEST
			end
		else
		cdire = WEST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), cdire), params.ccid, 0, 0) then
			cdire = WEST
			else
			cdire = SOUTH
			end
		end
	elseif cdire == SOUTHEAST then
		if math.random(1,100) >= 51 then
		cdire = SOUTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), cdire), params.ccid, 0, 0) then
			cdire = SOUTH
			else
			cdire = EAST
			end
		else
		cdire = EAST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), cdire), params.ccid, 0, 0) then
			cdire = EAST
			else
			cdire = SOUTH
			end
		end
	elseif cdire == NORTHEAST then
		if math.random(1,100) >= 51 then
		cdire = NORTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), cdire), params.ccid, 0, 0) then
			cdire = NORTH
			else
			cdire = EAST
			end
		else
		cdire = EAST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), cdire), params.ccid, 0, 0) then
			cdire = EAST
			else
			cdire = NORTH
			end
		end
	end
	local cdire = cdire
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
	doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(params.cid)[1]))
	doPushCreature(getCreatureSummons(params.cid)[1], cdire, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
	else
	doPushCreature(getCreatureSummons(params.cid)[1], cdire, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
	end
	end
	end
	end
	end

doPlayerSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", open this hole!", 1)
local speed = getCreatureBaseSpeed(getCreatureSummons(cid)[1])
temk = 1000 -(2.3 * speed)
addEvent(tocut, 0, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos})
for i = 1, getDistanceBetween(getThingPos(getCreatureSummons(cid)[1]), topos) * 2 do
addEvent(tocut, temk*i, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos})
end
return true
end
end
-- DIG END

-- BLINK
if #getCreatureSummons(cid) == 0 and getPlayerStorageValue(cid, 63215) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 then
doPlayerSendCancel(cid, "You need a pokemon to use order.")
return true
end
if not isMonster(item2.uid) and getPlayerStorageValue(cid, 63215) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 then
if isInArray(blink, getCreatureName(getCreatureSummons(cid)[1])) then
if exhaustion.get(cid, exhaustblink) then

if getCreatureSpeed(getCreatureSummons(cid)[1]) == 0 then
doPlayerSendCancel(cid, "You can\'t order your pokemon to move now.")
return true
end
	doPlayerSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", move!", 1)
doChangeSpeed(getCreatureSummons(cid)[1], -getCreatureSpeed(getCreatureSummons(cid)[1]))
setPlayerStorageValue(getCreatureSummons(cid)[1], 12, 1)
local function move(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
	if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 12) == 0 then
	return true
	end
		if getDistanceBetween(getThingPos(getCreatureSummons(params.cid)[1]), topos) == 0 then
			if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
				local function speeed(params)
				if isCreature(params.sum) then
				if getCreatureSpeed(params.sum) == 0 then
				--doChangeSpeed(params.sum, getCreatureBaseSpeed(params.sum))
				end
				end
				end
				addEvent(speeed, 600, {sum = getCreatureSummons(params.cid)[1]})
			end
		setPlayerStorageValue(getCreatureSummons(params.cid)[1], 12, 0)
		return true
		end
	local edire = getDirectionTo(getThingPos(getCreatureSummons(cid)[1]), params.topos)
	if edire >= 0 and edire <= 7 then
	if edire == NORTHWEST then
		if math.random(1,100) >= 51 then
		edire = NORTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), edire), params.ccid, 0, 0) then
			edire = NORTH
			else
			edire = WEST
			end
		else
		edire = WEST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), edire), params.ccid, 0, 0) then
			edire = WEST
			else
			edire = NORTH
			end
		end
	elseif edire == SOUTHWEST then
		if math.random(1,100) >= 51 then
		edire = SOUTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), edire), params.ccid, 0, 0) then
			edire = SOUTH
			else
			edire = WEST
			end
		else
		edire = WEST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), edire), params.ccid, 0, 0) then
			edire = WEST
			else
			edire = SOUTH
			end
		end
	elseif edire == SOUTHEAST then
		if math.random(1,100) >= 51 then
		edire = SOUTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), edire), params.ccid, 0, 0) then
			edire = SOUTH
			else
			edire = EAST
			end
		else
		edire = EAST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), edire), params.ccid, 0, 0) then
			edire = EAST
			else
			edire = SOUTH
			end
		end
	elseif edire == NORTHEAST then
		if math.random(1,100) >= 51 then
		edire = NORTH
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), edire), params.ccid, 0, 0) then
			edire = NORTH
			else
			edire = EAST
			end
		else
		edire = EAST
			if isWalkable(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), edire), params.ccid, 0, 0) then
			edire = EAST
			else
			edire = NORTH
			end
		end
	end
	local edire = edire
	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
	doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureBaseSpeed(getCreatureSummons(params.cid)[1]))
	doPushCreature(getCreatureSummons(params.cid)[1], edire, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
	else
	doPushCreature(getCreatureSummons(params.cid)[1], edire, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
	end
	end
	end
end
end

local function voltarnormal(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
				if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then
				local function speeed(params)
				if isCreature(params.sum) then
				doChangeSpeed(params.sum, getCreatureBaseSpeed(params.sum))
				end
				end
				addEvent(speeed, 0, {sum = getCreatureSummons(params.cid)[1]})
			end
		setPlayerStorageValue(getCreatureSummons(params.cid)[1], 12, 0)
	end
	end
end
	
local pois = getThingPos(item2.uid)
local speed = getCreatureBaseSpeed(getCreatureSummons(cid)[1])
local temk = 1000 -(2.3 * speed)
local SumPos = getThingPos(getCreatureSummons(cid)[1])
local travelx = math.abs((topos.x) - (SumPos.x))
local travely = math.abs((topos.y) - (SumPos.y))
local travel = ((travelx) + (travely))
addEvent(move, 0, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = pois, item2 = item2.uid})
for i = 1, travel do
addEvent(move, temk*i, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = pois, item2 = item2.uid})
end
addEvent(voltarnormal, temk * travel, {cid = cid})
exhaustion.set(cid, etudao, travel)
else
if not isWalkable(topos, cid, 0, 0) then
doPlayerSendCancel(cid, "Your pokemon cannot teleport there.")
return true
end
if getItemName(item2.uid) == "shallow water" then
doPlayerSendCancel(cid, "Your pokemon cannot teleport there.")
return true
end
doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), topos, 39)
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 211)
doTeleportThing(getCreatureSummons(cid)[1], topos, false)
doSendMagicEffect(topos, 134)
doPlayerSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", teleport there!", 1)
doCreatureSay(getCreatureSummons(cid)[1], "BLINK!", TALKTYPE_MONSTER)
exhaustion.set(cid, exhaustblink, cdblink)
return true
end
return true
end
end
--- BLINK END

-- LIGHT -
function isWalkables(pos, creature, pz,cid)-- Modificações by Hudsin,Arkires e Pinpao Xtibia
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 0 then return false end
--if getTopCreature(pos).uid > 0 and creature then return false end
--if getTileInfo(pos).protection and pz then return false, true end
local n = not proj and 3 or 2
for i = 0, 255 do
pos.stackpos = i
local tile = getTileThingByPos(pos)
if tile.itemid ~= 0 and not isCreature(tile.uid) then
if hasProperty(tile.uid, n) or hasProperty(tile.uid, 7) then
doPlayerSendTextMessage(getCreatureMaster(cid),27,"Sorry dont possible.")
return false
end
end
end
return true
end
if isCreature(item2.uid) and getCreatureMaster(item2.uid) == cid and getPlayerStorageValue(cid, 63215) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 and item2.uid ~= cid then
if not isInArray(light, getCreatureName(getCreatureSummons(cid)[1])) then
doPlayerSendCancel(cid, "This pokemon can't use flash.")
return true
end
if isInArray(light, getCreatureName(getCreatureSummons(cid)[1])) then
        if not isMonster(item2.uid) and getCreatureMaster(item2.uid) ~= cid then
        return doPlayerSendCancel(cid,"Please use flash on your pokemon.")
        end
       if exhaustion.get(cid, exhautStorage) then
        doPlayerSendCancel(cid,"Please wait a few seconds before using flash again!")
        return true
        end
exhaustion.set(cid, exhautStorage, cd)
doPlayerSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use flash!", 1)
doCreatureSay(getCreatureSummons(cid)[1], "FLASH!", TALKTYPE_MONSTER)
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 28)
doSetCreatureLight(getCreatureSummons(cid)[1], 8, 215, time*1000)
return true
end
end
-- LIGHT END --
if #getCreatureSummons(cid) == 0 then
return true
end
if getPlayerStorageValue(getCreatureSummons(cid)[1], 8) >= 1 then
doPlayerSendCancel(cid, "sorry you pokemon sleeping.")
return true
end
if getPlayerStorageValue(getCreatureSummons(cid)[1], 1099) >= 1 then
doPlayerSendCancel(cid, "sorry wait your pokemon using habilit.")
return true
end


if getCreatureSpeed(getCreatureSummons(cid)[1]) == 0 then
--doPlayerSendCancel(cid, "You can\'t order your pokemon to move now.")
local viadao = getCreatureSummons(cid)[1]
setPlayerStorageValue(viadao, 1869, 0)
setPlayerStorageValue(viadao, 2997, 0)
setPlayerStorageValue(cid, 9869, 0)				
setPlayerStorageValue(viadao, 9951, 0)
doChangeSpeed(getCreatureSummons(cid)[1],getPlayerStorageValue(cid, 2997) ) 

--return true
end


setPlayerStorageValue(getCreatureSummons(cid)[1], 2546, 0)
	doPlayerSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", move!", 1)
local speed = getCreatureBaseSpeed(getCreatureSummons(cid)[1])
setPlayerStorageValue(getCreatureSummons(cid)[1], 2997, speed)
local function move(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
	--if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 12) == 1 then
	--return true
	--end

	if getPlayerStorageValue(getCreatureSummons(cid)[1], 2546) >= 1 then
return True
end	
	local dire = getDirectionTo(getThingPos(getCreatureSummons(cid)[1]), params.topos)
	if dire >= 0 and dire <= 7 then

		
			if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), dire), params.ccid, 0, getCreatureSummons(params.cid)[1]) then
			dire = dire
			elseif isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), WEST), params.ccid, 0, getCreatureSummons(params.cid)[1]) then
                         dire = WEST
                         elseif isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), EAST), params.ccid, 0, getCreatureSummons(params.cid)[1]) then
                         dire = EAST
                   elseif isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), NORTH), params.ccid, 0, getCreatureSummons(params.cid)[1]) then
                         dire = NORTH
elseif isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), SOUTH), params.ccid, 0, getCreatureSummons(params.cid)[1]) then
                         dire = SOUTH
elseif isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), NORTHEAST), params.ccid, 0, getCreatureSummons(params.cid)[1]) then
	dire = NORTHEAST
elseif isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), SOUTHEAST), params.ccid, 0, getCreatureSummons(params.cid)[1]) then
	dire = SOUTHEAST
elseif isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), SOUTHWEST), params.ccid, 0, getCreatureSummons(params.cid)[1]) then
	dire = SOUTHWEST
elseif isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), NORTHWEST), params.ccid, 0, getCreatureSummons(params.cid)[1]) then
	dire = NORTHWEST
	
	
end
	local dire = dire
if getPlayerStorageValue(getCreatureSummons(cid)[1], 8) >= 1 then
--setPlayerStorageValue(getCreatureSummons(cid)[1], 12,0)
return true
end

	if getCreatureSpeed(getCreatureSummons(params.cid)[1]) == 0 then

        doChangeSpeed(getCreatureSummons(params.cid)[1], getCreatureSpeed(getCreatureSummons(params.cid)[1]))
	doPushCreature(getCreatureSummons(params.cid)[1], dire, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
local caraio = getThingPos(getCreatureSummons(params.cid)[1])


if caraio.x == topos.x and caraio.y == topos.y then
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 2546, 1)
doPlayerSay(cid, ""..getCreatureName(getCreatureSummons(params.cid)[1])..", Nice!", 1)
doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
setPlayerStorageValue(getCreatureSummons(cid)[1], 9951, 1)
setPlayerStorageValue(getCreatureSummons(cid)[1], 1869, 0) 
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 1099, 0)
return True
end
	else

	doPushCreature(getCreatureSummons(params.cid)[1], dire, 1, 0)
	doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(cid)[1]))
local caraio = getThingPos(getCreatureSummons(params.cid)[1])


if caraio.x == topos.x and caraio.y == topos.y then
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 2546, 1)
doPlayerSay(cid, ""..getCreatureName(getCreatureSummons(params.cid)[1])..", Nice!", 1)
doChangeSpeed(getCreatureSummons(params.cid)[1], -getCreatureSpeed(getCreatureSummons(params.cid)[1]))
setPlayerStorageValue(getCreatureSummons(cid)[1], 9951, 1)
setPlayerStorageValue(getCreatureSummons(cid)[1], 1869, 0) 
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 1099, 0)
return True
end
	end

	end
	end
end

end


	
local pois = getThingPos(item2.uid)

local temk = 1000 - (2.3 * speed)
local SummonPos = getThingPos(getCreatureSummons(cid)[1])
local travelx = math.abs((topos.x) - (SummonPos.x))
local travely = math.abs((topos.y) - (SummonPos.y))
local travel = ((travelx) + (travely))




local place = topos
local man = getCreatureSummons(cid)[1]
if isWalkables(place,true,true,man) then
setPlayerStorageValue(getCreatureSummons(cid)[1], 1099, 1)
        doChangeSpeed(getCreatureSummons(cid)[1], -getCreatureSpeed(getCreatureSummons(cid)[1]))

        doChangeSpeed(getCreatureSummons(cid)[1], getCreatureBaseSpeed(getCreatureSummons(cid)[1]))
for i = 1, travel do

addEvent(move, temk*i, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = pois, item2 = item2.uid})
end
end

--addEvent(voltarnormal, temk*travel, {cid = cid})

return true

end