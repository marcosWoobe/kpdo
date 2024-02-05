




local etudao = 9506

local mind = 9507
local transform = 9508

local digholes = {'468', '481', '483'}





-- BLINK

local exhaustblink = 9501
local cdblink = 15




function isWalkablessss(pos, creature, pz)-- Modificações by Hudsin,Arkires e Pinpao Xtibia
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 0 then return false end
if getTopCreature(pos).uid > 0 and creature then return false end
local n = not proj and 3 or 2
for i = 0, 255 do
pos.stackpos = i
local tile = getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0})
if tile.itemid ~= 0 and not isCreature(tile.uid) then
if hasProperty(tile.uid, n) or hasProperty(tile.uid, 7) then
return false
end
end
end
return true
end
function isWalkables(pos, creature, pz)-- Modificações by Hudsin,Arkires e Pinpao Xtibia
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 0 then return false end
local n = not proj and 3 or 2
for i = 0, 255 do
pos.stackpos = 255
local tile = getTileThingByPos(pos)
if tile.itemid ~= 0 and not isCreature(tile.uid) then
if hasProperty(tile.uid, n) or hasProperty(tile.uid, 7) then
return false
end
end
end
return true
end

function isFly(pos, creature, pz)-- Modificações by Hudsin,Arkires e Pinpao Xtibia
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 0 then return false end
local n = not proj and 3 or 2
pos.stackpos = 1
local tile = getTileThingByPos(pos)
if tile.itemid ~= 0 and not isCreature(tile.uid) then
if hasProperty(tile.uid, n) or hasProperty(tile.uid, 7) then
return false
end
end
return true
end

function onUse(cid, item, frompos, item2, topos)
if getPlayerItemCount(cid, item2.itemid) >= 1 then
return false
end

	if #getCreatureSummons(cid) == 0 and getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 then
	doPlayerSendCancel(cid, "You need a pokemon to use order.")
	return true

	end

if #getCreatureSummons(cid) >= 1 then
if getPlayerStorageValue(getCreatureSummons(cid)[1], 8) >= 1 then
doPlayerSendCancel(cid, "sorry you pokemon sleeping.")
return true
end


if item2.uid == getCreatureSummons(cid)[1] then


local summons = getCreatureSummons(cid)[1]
local mon = getNickPoke(cid)
local spd = getCreatureSpeed(summons)
local bspd = getCreatureBaseSpeed(summons)




if isInArray({"Ditto", "ditto","Smeargle","smeargle"}, getCreatureName(getCreatureSummons(cid)[1])) then


doSendMagicEffect(getCreaturePosition(getCreatureSummons(cid)[1]), 184)

doCreatureSay(cid, mon.." Revert!", TALKTYPE_SAY)
if isSound(cid) then
DoTaskbarcold(cid,"sounds/103.wav")
end
local d = getCreaturesInRange(getThingPos(cid), 5, 5, 0, 1)

                        for _,pid in pairs(d) do
if isSound(pid) then
doPlayerSendCancel(pid,"sounds/103.wav")
end
end
local ditto = getPlayerSlotItem(cid, 8)
doItemSetAttribute(ditto.uid, "outifit", 28)
doItemSetAttribute(ditto.uid, "cold", 0)

if isInArray({"Ditto", "ditto"}, getCreatureName(getCreatureSummons(cid)[1])) then
doCreatureChangeOutfit(getCreatureSummons(cid)[1], {lookType = 28, lookHead = 0, lookAddons = 0, lookLegs = 0, lookBody = 0, lookFeet = 0})
end

local str = "12&,n/n,n/n,n/n,n/n,n/n,n/n,n/n,n/n,n/n,n/n,n/n,n/n"
local pokemon = {}


DoTaskbarcold(cid,str)

setPlayerStorageValue(cid,31021,1)
local function verpacket(params)
if isCreature(params.cid) then
if getPlayerStorageValue(params.cid, 31021) >= 1 then
DoTaskbarcold(params.cid,params.str2)
addEvent(verpacket, 1000, {cid = params.cid,str2 = params.str})
else
return true
end
end
end

addEvent(verpacket, 1000, {cid = cid,str2 = str})
return true
end
local viadao = getCreatureSummons(cid)[1] 
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


end	





if isMonster(item2.uid) and item2.uid ~= getCreatureSummons(cid)[1]  then









if isInArray({"Ditto", "ditto","Smeargle","smeargle"}, getCreatureName(getCreatureSummons(cid)[1])) then

if getCreatureName(item2.uid) == "Ditto" or  getCreatureName(item2.uid) == "Smeargle" then
return true
end
if getCreatureOutfit(item2.uid).lookType <= 0 then
return true
end
doSendMagicEffect(getCreaturePosition(getCreatureSummons(cid)[1]), 184)


if isInArray({"Ditto", "ditto"}, getCreatureName(getCreatureSummons(cid)[1])) then
doCreatureChangeOutfit(getCreatureSummons(cid)[1], getCreatureOutfit(item2.uid))
end

exhaustion.set(cid, 548798, 180)
			

local ditto = getPlayerSlotItem(cid, 8)

doItemSetAttribute(ditto.uid, "nomepoke", getCreatureName(item2.uid))
doItemSetAttribute(ditto.uid, "outifit", getCreatureOutfit(item2.uid).lookType)
doItemSetAttribute(ditto.uid, "cold", 60)
if isSound(cid) then
DoTaskbarcold(cid,"sounds/103.wav")
end
local d = getCreaturesInRange(getThingPos(cid), 5, 5, 0, 1)

                        for _,pid in pairs(d) do
if isSound(pid) then
doPlayerSendCancel(pid,"sounds/103.wav")
end
end
local pokemonnick = getCreatureName(item2.uid)
local coldown = cp[pokemonnick]["!cd"]
local str = "12&,"
local pokemon = {}
if isTM(ditto.uid) then


for rocks = 1, 12 do 
if getTM(ditto.uid,"T"..rocks.."") then
pokemon = TM[getTM(ditto.uid,"T"..rocks.."")]
else
pokemon = cp[pokemonnick]["m"..rocks..""]
end
if pokemon then
str = str..""..pokemon.spell..","
else
str = str.."n/n,"
end
end
DoTaskbarcold(cid,str)
else


for rocks = 1, 12 do 
pokemon = cp[pokemonnick]["m"..rocks..""] 
if pokemon then
str = str..""..pokemon.spell..","
else
str = str.."n/n,"
end
end
DoTaskbarcold(cid,str)
end

local function verpacket(params)
if isCreature(params.cid) then
if getPlayerStorageValue(params.cid, 31021) >= 1 then
DoTaskbarcold(params.cid,params.str2)
addEvent(verpacket, 1000, {cid = params.cid,str2 = params.str})
else
return true
end
end
end

addEvent(verpacket, 1000, {cid = cid,str2 = str})





return true
end

if not isInArray({"Alakazam", "Slowking","Tentacruel","Gengar","Haunter"}, getCreatureName(getCreatureSummons(cid)[1])) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "This pokemon cant control minds.")
return true
end

if isPlayer(getCreatureMaster(item2.uid)) or isShiny(getCreatureName(item2.uid)) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cant control the mind of someone's else pokemon.")
return true
end

if exhaustion.get(cid, mind) then
xsd = exhaustion.get(cid, mind)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need wait "..xsd.." seconds to use control mind.")
return true
end



if not isMonster(item2.uid) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You Cant control only wilds creatures.")
return true
end
if getPlayerStorageValue(cid, 8888) >= 1 or getPlayerStorageValue(item2.uid, 4559) >= 1 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cant control the mind this moment.")
return true
end
local pokelevel = pokes[getCreatureName(item2.uid)]
local pokelevel2 = pokes[getCreatureName(getCreatureSummons(cid)[1])]

if not pokelevel then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Bug error report game master control mind")
return true
end

if pokelevel.level >= pokelevel2.level then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry , this pokemon higher for you poke control mind")
return true
end
if isSound(cid) then
DoTaskbarcold(cid,"sounds/206.wav,2500,sounds/206.wav,2500,sounds/206.wav,2500,sounds/206.wav,2500,sounds/206.wav,2500,sounds/206.wav")
end
local d = getCreaturesInRange(getThingPos(cid), 5, 5, 0, 1)

                        for _,pid in pairs(d) do
if isSound(pid) then
doPlayerSendCancel(pid,"sounds/206.wav,2500,sounds/206.wav,2500,sounds/206.wav,2500,sounds/206.wav,2500,sounds/206.wav,2500,sounds/206.wav")
end
end
exhaustion.set(cid, mind, 240)
doCreatureSay(getCreatureSummons(cid)[1], "CONTROL MIND!", TALKTYPE_MONSTER)
doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(item2.uid), 39)

doSendMagicEffect(getThingPos(item2.uid), 136)
doSendMagicEffect(getThingPos(item2.uid), 134)
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 133)
setPlayerStorageValue(cid, 61209, getCreatureMaxHealth(getCreatureSummons(cid)[1]))
setPlayerStorageValue(cid, 61210, getCreatureHealth(getCreatureSummons(cid)[1]))
local healthmax = getCreatureMaxHealth(item2.uid)
local healthta = getCreatureHealth(item2.uid)
local pos = getThingPos(item2.uid) 
local nome = getCreatureName(item2.uid)
local antigonivel = getPlayerStorageValue(getCreatureSummons(cid)[1], 3499)
doRemoveCreature(item2.uid)
local pk = doSummonCreature(nome, pos)
doConvinceCreature(cid, pk)

setPlayerStorageValue(cid, 9222,nome)
doCreatureAddHealth(pk, -getCreatureMaxHealth(pk)+1)
setCreatureMaxHealth(pk, healthmax)
doCreatureAddHealth(pk, healthta)
registerCreatureEvent(pk, "Exp2")
registerCreatureEvent(pk, "ControlDie")



doCreatureSay(cid, ""..getNickPoke(cid)..", control "..getCreatureName(pk).."'s mind!", 1)
local cmed = pk
local item = getPlayerSlotItem(cid, 8)

local cmname = getItemAttribute(item.uid, "nome")

local cmpos = getThingPos(getCreatureSummons(cid)[1])
doRemoveCreature(getCreatureSummons(cid)[1])
local cmzao = doSummonCreature(""..cmname.." cm", cmpos)
doConvinceCreature(cid, cmzao)
setCreatureMaxHealth(cmzao, getPlayerStorageValue(cid, 61209))
doCreatureAddHealth(cmzao, getPlayerStorageValue(cid, 61210))
setPlayerStorageValue(cid, 888, 1)
	local function check(params)
	if isCreature(params.cid) then
	--if getPlayerStorageValue(params.cid, 888) <= 0 then
	--return true
	--end
	if not isCreature(params.pk) then
local pkcmpos = getThingPos(getCreatureSummons(params.cid)[1])
doRemoveCreature(getCreatureSummons(params.cid)[1])
local item = getPlayerSlotItem(params.cid, 8)


local pk = doSummonCreature(getItemAttribute(item.uid, "nome"), pkcmpos) 
doConvinceCreature(cid, pk)
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp2")

setCreatureMaxHealth(pk, (getPlayerStorageValue(params.cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(params.cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(params.cid, 61210))-(getPlayerStorageValue(params.cid, 61209)))
setPlayerStorageValue(params.cid, 888, 0)
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 3499, params.nivel)
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 1236, getPlayerStorageValue(params.cid, 451236))
return true
	end
	if params.rod == 30 then
	local lifecmed = getCreatureMaxHealth(params.pk) - getCreatureHealth(params.pk)
	local poscmed = getThingPos(params.pk)
	local namecmed = getCreatureName(params.pk)
	doRemoveCreature(getCreatureSummons(params.cid)[1])
	local back = doSummonCreature(""..namecmed.." s", poscmed)

	doCreatureAddHealth(back, -lifecmed)
local item = getPlayerSlotItem(params.cid, 8)
local mynewpos = getThingPos(getCreatureSummons(params.cid)[1])
doRemoveCreature(getCreatureSummons(params.cid)[1])
local pk = doSummonCreature(getItemAttribute(item.uid, "nome"), mynewpos) 
doConvinceCreature(params.cid, pk)
registerCreatureEvent(pk, "DiePoke")
registerCreatureEvent(pk, "Exp2")

setCreatureMaxHealth(pk, (getPlayerStorageValue(params.cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(params.cid, 61209)))
doCreatureAddHealth(pk, (getPlayerStorageValue(params.cid, 61210))-(getPlayerStorageValue(params.cid, 61209)))
setPlayerStorageValue(params.cid, 888, 0)
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 3499, params.nivel)
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 1236, getPlayerStorageValue(params.cid, 451236))
return true
	else
	doSendMagicEffect(getThingPos(params.pk), 220)
addEvent(check, 500, {cid = params.cid, rod = params.rod+1,nivel = params.nivel,pk = params.pk})
	end
	end
	end

setPlayerStorageValue(getCreatureSummons(cid)[1], 3499, antigonivel)
addEvent(check, 500, {cid = cid, rod = 1,nivel = antigonivel,pk = pk})

return true
end
if getPlayerStorageValue(cid, 17000) >= 1 or getPlayerStorageValue(cid, 17001) >= 1 then
if not isPlayer(item2.uid) then
return true
end

end

if getCreaturePosition(item2.uid).x == getCreaturePosition(cid).x and getCreaturePosition(item2.uid).y == getCreaturePosition(cid).y  then

if getCreatureCondition(cid, CONDITION_INFIGHT) == TRUE and getPlayerStorageValue(cid, 17001) <= 0 and getPlayerStorageValue(cid, 17000) <= 0 then
doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Your pokemon can\'t concentrate during fights.")
return true
end
if getPlayerStorageValue(cid, 3333) >= 1 or getPlayerStorageValue(cid, 8888) >= 1 then
doPlayerSendCancel(cid, "You Cant ride/fly/surf/dive in duel.")
return true
end
if getPlayerStorageValue(cid, 91859) >= 1 then
doPlayerSendCancel(cid, "You Cant ride/fly/surf/dive in bike.")
return true
end
if getPlayerStorageValue(cid, 68972) >= 1 then
doPlayerSendTextMessage(cid,27,"Sorry You cant fly/ride in water.")
return true
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


	
	if getPlayerStorageValue(cid, 17001) >= 1 then
	setPlayerStorageValue(cid, 17001, 0)
	
	doCreatureSetLookDir(cid, 2)
	doChangeSpeed(cid, -(getCreatureSpeed(cid)))

	doChangeSpeed(cid, getCreatureBaseSpeed(cid))
	
	doRemoveCondition(cid, CONDITION_OUTFIT)
	local item = getPlayerSlotItem(cid, 8)
	doCreatureSay(cid, "" ..getNickPoke(cid)..", let me get down!", 1)
	doSummonMonster(cid, getItemAttribute(item.uid, "nome"))
	local pk = getCreatureSummons(cid)[1]

local sexy = getItemAttribute(item.uid, "sexy")
if sexy then
doCreatureSetSkullType(pk, sexy)
else
sexy = math.random(4,5)
doItemSetAttribute(item.uid, "sexy", sexy)
doCreatureSetSkullType(pk, sexy)
end	
local aura = getItemAttribute(item.uid, "aura")
if aura and aura >= 1 then
setPlayerStorageValue(pk, 8089, aura)
registerCreatureEvent(pk, "Aura")
end
	registerCreatureEvent(pk, "DiePoke")
	registerCreatureEvent(pk, "Exp2")
	setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
	doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
	doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))
setPlayerStorageValue(pk, 3499, getPlayerStorageValue(cid, 61211))
setPlayerStorageValue(pk, 1236, getPlayerStorageValue(cid, 451236))
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

	doCreatureSetLookDir(cid, 2)
	setPlayerStorageValue(cid, 17000, 0)


	
	doCreatureSetLookDir(cid, 2)
	doChangeSpeed(cid, -(getCreatureSpeed(cid)))

	doChangeSpeed(cid, getCreatureBaseSpeed(cid))
	doRemoveCondition(cid, CONDITION_OUTFIT)
	local item = getPlayerSlotItem(cid, 8)
                doCreatureSay(cid, "" .. getNickPoke(cid)..", let me get down!", 1)
	doSummonMonster(cid, getItemAttribute(item.uid, "nome"))
	local pk = getCreatureSummons(cid)[1]
local sexy = getItemAttribute(item.uid, "sexy")
if sexy then
doCreatureSetSkullType(pk, sexy)
else
sexy = math.random(4,5)
doItemSetAttribute(item.uid, "sexy", sexy)
doCreatureSetSkullType(pk, sexy)
end

local aura = getItemAttribute(item.uid, "aura")
if aura and aura >= 1 then
setPlayerStorageValue(pk, 8089, aura)
registerCreatureEvent(pk, "Aura")
end

	registerCreatureEvent(pk, "DiePoke")
	registerCreatureEvent(pk, "Exp2")
	setCreatureMaxHealth(pk, (getPlayerStorageValue(cid, 61209)))
	doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61209)))
	doCreatureAddHealth(pk, (getPlayerStorageValue(cid, 61210))-(getPlayerStorageValue(cid, 61209)))
setPlayerStorageValue(pk, 3499, getPlayerStorageValue(cid, 61211))
setPlayerStorageValue(pk, 1236, getPlayerStorageValue(cid, 451236))
return true
end
local pokemon2 = 0
local modeorder = -1
if isInArray(fly, getCreatureName(getCreatureSummons(cid)[1]))  then
if not isPremium(cid) then -- tire o primeiro not, atras do isPlayer para ativar o premium
return doPlayerSendCancel(cid, "Only premium members are allowed to flying.")
end
pokemon2 = flys[getCreatureOutfit(getCreatureSummons(cid)[1]).lookType]
if not pokemon2 then
	doPlayerSendTextMessage(cid,21, "Error Report to gamemaster flying bug please" )
return true
end
modeorder = 1
elseif isInArray(ride, getCreatureName(getCreatureSummons(cid)[1]))  then
pokemon2 = rides[getCreatureOutfit(getCreatureSummons(cid)[1]).lookType]
if not pokemon2 then
	doPlayerSendTextMessage(cid,21, "Error Report to gamemaster ride bug please" )
return true
end
modeorder = 2
else
return true
end
	if getPlayerStorageValue(cid, 17000) <= 0 and getPlayerStorageValue(cid, 17001) <= 0 then
	if getPlayerStorageValue(cid, 17000) <= 0 then
	
	local function fly(params)
	if isCreature(params.cid) then
	if isCreature(params.sum) then

	if getDistanceBetween(getThingPos(params.sum), getThingPos(params.cid)) <= 0  then
if getPlayerStorageValue(params.cid, 91859) >= 1 then
return true
end
if params.mode == 1 then
	doPlayerSendTextMessage(params.cid,27, "Say !up for fly higher or !down to fly down" )
	setPlayerStorageValue(params.cid, 17000, 1)
registerCreatureEvent(params.cid, "Flying")
else
	setPlayerStorageValue(params.cid, 17001, 1)
end


	setPlayerStorageValue(params.cid, 61209, getCreatureMaxHealth(params.sum))
	setPlayerStorageValue(params.cid, 61210, getCreatureHealth(params.sum))

	doChangeSpeed(params.cid, -getCreatureSpeed(params.cid))
	doChangeSpeed(params.cid, pokemon2[2])
	exhaustion.set(params.cid, etudao, 4)
	doSetCreatureOutfit(params.cid, {lookType = pokemon2[1], lookHead = 0, lookAddons = 0, lookLegs = 0, lookBody = 0, lookFeet = 0}, -1)
local maxhealth = getCreatureMaxHealth(params.sum)/100
local health = getCreatureHealth(params.sum)/maxhealth
local addlife = health
doItemSetAttribute(getPlayerSlotItem(params.cid, 8).uid, "fine", addlife)
setPlayerStorageValue(params.cid, 61211, getPlayerStorageValue(params.sum, 3499))
	doRemoveCreature(params.sum)
	else
	local dir = getDirectionTo(getThingPos(params.sum), getThingPos(params.cid))
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

	doMoveCreature(params.sum, dir)
	

	end
	end
	end
	end


if modeorder == 1 then
	doCreatureSay(cid, ""..getNickPoke(cid)..", lets fly!", 1)
else
doCreatureSay(cid, ""..getNickPoke(cid)..", lets ride!", 1)
end
exhaustion.set(cid, etudao, 4)


	local distancee = getCreatureSummons(cid)[1]
setPlayerStorageValue(distancee , 3000, 1)
	for i=1,12 do
	addEvent(fly, pokemon2[3]*i, {cid = cid, sum = distancee,mode = modeorder})
	
	end	
	return true
	end
return true
end
end
-- ROCK SMASH
-- ROCK SMASH END


local d0 = 
{
        [0] = {pokemon = 'bellsprout h'},
        [1] = {pokemon = 'caterpie h'},
        [2] = {pokemon = 'oddish h'},
        [3] = {pokemon = 'rattata h'},
        [4] = {pokemon = 'weedle h'},
        [5] = {pokemon = 'paras h'},
        [6] = {pokemon = 'pidgey h'},
        [7] = {pokemon = 'spearow h'},
        [8] = {pokemon = 'zubat h'},
        [9] = {pokemon = 'ekans h'},
        [10] = {pokemon = 'cleffa h'},
        [11] = {pokemon = 'doduo h'},
        [12] = {pokemon = 'exeggcute h'},
        [13] = {pokemon = 'igglybuff h'},
        [14] = {pokemon = 'nidoran h'},
        [15] = {pokemon = 'nidoranfe h'}
}

local d20 = 
{
        [0] = {pokemon = 'bellsprout h'},
        [1] = {pokemon = 'caterpie h'},
        [2] = {pokemon = 'oddish h'},
        [3] = {pokemon = 'rattata h'},
        [4] = {pokemon = 'weedle h'},
        [5] = {pokemon = 'paras h'},
        [6] = {pokemon = 'pidgey h'},
        [7] = {pokemon = 'spearow h'},
        [8] = {pokemon = 'zubat h'},
        [9] = {pokemon = 'ekans h'},
        [10] = {pokemon = 'cleffa h'},
        [11] = {pokemon = 'doduo h'},
        [12] = {pokemon = 'exeggcute h'},
        [13] = {pokemon = 'igglybuff h'},
        [14] = {pokemon = 'nidoran h'},
        [15] = {pokemon = 'nidoranfe h'},
        [16] = {pokemon = 'hoothoot h'},
        [17] = {pokemon = 'gloom h'},
        [18] = {pokemon = 'sentret h'},
        [19] = {pokemon = 'venonat h'},
        [20] = {pokemon = 'weepinbell h'},
        [21] = {pokemon = 'bulbasaur h'},
        [22] = {pokemon = 'kakuna h'},
        [23] = {pokemon = 'ledyba h'},
        [24] = {pokemon = 'meowth h'},
        [25] = {pokemon = 'metapod h'},
        [26] = {pokemon = 'natu h'},
        [27] = {pokemon = 'pidgeotto h'},
        [28] = {pokemon = 'spinarak h'},
        [29] = {pokemon = 'sunkern h'},
        [30] = {pokemon = 'togepi h'},
        [31] = {pokemon = 'wurmple h'},
        [32] = {pokemon = 'chikorita h'},
        [33] = {pokemon = 'eevee h'},
        [34] = {pokemon = 'hoppip h'},
        [35] = {pokemon = 'clefairy h'},
        [36] = {pokemon = 'jigglypuff h'},
        [37] = {pokemon = 'raticate h'},
        [38] = {pokemon = 'golbat h'},
        [39] = {pokemon = 'nidorina h'},
        [40] = {pokemon = 'nidorino h'},
        [41] = {pokemon = 'dodrio h'}, 
}

local d40 = 
{
        [0] = {pokemon = 'bellsprout h'},
        [1] = {pokemon = 'caterpie h'},
        [2] = {pokemon = 'oddish h'},
        [3] = {pokemon = 'rattata h'},
        [4] = {pokemon = 'weedle h'},
        [5] = {pokemon = 'paras h'},
        [6] = {pokemon = 'pidgey h'},
        [7] = {pokemon = 'spearow h'},
        [8] = {pokemon = 'zubat h'},
        [9] = {pokemon = 'ekans h'},
        [10] = {pokemon = 'cleffa h'},
        [11] = {pokemon = 'doduo h'},
        [12] = {pokemon = 'exeggcute h'},
        [13] = {pokemon = 'igglybuff h'},
        [14] = {pokemon = 'nidoran h'},
        [15] = {pokemon = 'nidoranfe h'},
        [16] = {pokemon = 'hoothoot h'},
        [17] = {pokemon = 'gloom h'},
        [18] = {pokemon = 'sentret h'},
        [19] = {pokemon = 'venonat h'},
        [20] = {pokemon = 'weepinbell h'},
        [21] = {pokemon = 'bulbasaur h'},
        [22] = {pokemon = 'kakuna h'},
        [23] = {pokemon = 'ledyba h'},
        [24] = {pokemon = 'meowth h'},
        [25] = {pokemon = 'metapod h'},
        [26] = {pokemon = 'natu h'},
        [27] = {pokemon = 'pidgeotto h'},
        [28] = {pokemon = 'spinarak h'},
        [29] = {pokemon = 'sunkern h'},
        [30] = {pokemon = 'togepi h'},
        [31] = {pokemon = 'wurmple h'},
        [32] = {pokemon = 'chikorita h'},
        [33] = {pokemon = 'eevee h'},
        [34] = {pokemon = 'hoppip h'},
        [35] = {pokemon = 'clefairy h'},
        [36] = {pokemon = 'jigglypuff h'},
        [37] = {pokemon = 'raticate h'},
        [38] = {pokemon = 'golbat h'},
        [39] = {pokemon = 'nidorina h'},
        [40] = {pokemon = 'nidorino h'},
        [41] = {pokemon = 'dodrio h'},
        [42] = {pokemon = 'farfetchd h'},
        [43] = {pokemon = 'snubbull h'},
        [44] = {pokemon = 'teddiursa h'},
        [45] = {pokemon = 'zigzagoon h'},
        [46] = {pokemon = 'ivysaur h'},
        [47] = {pokemon = 'lickitung h'},
        [48] = {pokemon = 'persian h'},
        [49] = {pokemon = 'treecko h'},
        [50] = {pokemon = 'ariados h'},
        [51] = {pokemon = 'clefable h'},
        [52] = {pokemon = 'fearow h'},
        [53] = {pokemon = 'parasect h'},
        [54] = {pokemon = 'skiploom h'},
        [55] = {pokemon = 'venomoth h'},
        [56] = {pokemon = 'victreebel h'},
        [57] = {pokemon = 'wigglytuff h'},
        [58] = {pokemon = 'bayleef h'},
        [59] = {pokemon = 'noctowl h'},
        [60] = {pokemon = 'crobat h'},
        [61] = {pokemon = 'furret h'},
        [62] = {pokemon = 'beedrill h'},
        [63] = {pokemon = 'butterfree h'},
        [64] = {pokemon = 'cascoon h'},
        [65] = {pokemon = 'chansey h'},
}

local d60 = 
{
        [0] = {pokemon = 'bellsprout h'},
        [1] = {pokemon = 'caterpie h'},
        [2] = {pokemon = 'oddish h'},
        [3] = {pokemon = 'rattata h'},
        [4] = {pokemon = 'weedle h'},
        [5] = {pokemon = 'paras h'},
        [6] = {pokemon = 'pidgey h'},
        [7] = {pokemon = 'spearow h'},
        [8] = {pokemon = 'zubat h'},
        [9] = {pokemon = 'ekans h'},
        [10] = {pokemon = 'cleffa h'},
        [11] = {pokemon = 'doduo h'},
        [12] = {pokemon = 'exeggcute h'},
        [13] = {pokemon = 'igglybuff h'},
        [14] = {pokemon = 'nidoran h'},
        [15] = {pokemon = 'nidoranfe h'},
        [16] = {pokemon = 'hoothoot h'},
        [17] = {pokemon = 'gloom h'},
        [18] = {pokemon = 'sentret h'},
        [19] = {pokemon = 'venonat h'},
        [20] = {pokemon = 'weepinbell h'},
        [21] = {pokemon = 'bulbasaur h'},
        [22] = {pokemon = 'kakuna h'},
        [23] = {pokemon = 'ledyba h'},
        [24] = {pokemon = 'meowth h'},
        [25] = {pokemon = 'metapod h'},
        [26] = {pokemon = 'natu h'},
        [27] = {pokemon = 'pidgeotto h'},
        [28] = {pokemon = 'spinarak h'},
        [29] = {pokemon = 'sunkern h'},
        [30] = {pokemon = 'togepi h'},
        [31] = {pokemon = 'wurmple h'},
        [32] = {pokemon = 'chikorita h'},
        [33] = {pokemon = 'eevee h'},
        [34] = {pokemon = 'hoppip h'},
        [35] = {pokemon = 'clefairy h'},
        [36] = {pokemon = 'jigglypuff h'},
        [37] = {pokemon = 'raticate h'},
        [38] = {pokemon = 'golbat h'},
        [39] = {pokemon = 'nidorina h'},
        [40] = {pokemon = 'nidorino h'},
        [41] = {pokemon = 'dodrio h'},
        [42] = {pokemon = 'farfetchd h'},
        [43] = {pokemon = 'snubbull h'},
        [44] = {pokemon = 'teddiursa h'},
        [45] = {pokemon = 'zigzagoon h'},
        [46] = {pokemon = 'ivysaur h'},
        [47] = {pokemon = 'lickitung h'},
        [48] = {pokemon = 'persian h'},
        [49] = {pokemon = 'treecko h'},
        [50] = {pokemon = 'ariados h'},
        [51] = {pokemon = 'clefable h'},
        [52] = {pokemon = 'fearow h'},
        [53] = {pokemon = 'parasect h'},
        [54] = {pokemon = 'skiploom h'},
        [55] = {pokemon = 'venomoth h'},
        [56] = {pokemon = 'victreebel h'},
        [57] = {pokemon = 'wigglytuff h'},
        [58] = {pokemon = 'bayleef h'},
        [59] = {pokemon = 'noctowl h'},
        [60] = {pokemon = 'crobat h'},
        [61] = {pokemon = 'furret h'},
        [62] = {pokemon = 'beedrill h'},
        [63] = {pokemon = 'butterfree h'},
        [64] = {pokemon = 'cascoon h'},
        [65] = {pokemon = 'chansey h'},
        [66] = {pokemon = 'silcoon h'},
        [67] = {pokemon = 'exeggutor h'},
        [68] = {pokemon = 'vileplume h'},
        [69] = {pokemon = 'ledian h'},
        [70] = {pokemon = 'lotad h'},
        [71] = {pokemon = 'pidgeot h'},
        [72] = {pokemon = 'pineco h'},
        [73] = {pokemon = 'xatu h'},
        [74] = {pokemon = 'linoone h'},
        [75] = {pokemon = 'nidoking h'},
        [76] = {pokemon = 'nidoqueen h'},
        [77] = {pokemon = 'aipom h'},
        [78] = {pokemon = 'arbok h'},
        [79] = {pokemon = 'bellossom h'},
        [80] = {pokemon = 'dunsparce h'},
        [81] = {pokemon = 'girafarig h'},
}

local d80 = 
{
        [0] = {pokemon = 'bellsprout h'},
        [1] = {pokemon = 'caterpie h'},
        [2] = {pokemon = 'oddish h'},
        [3] = {pokemon = 'rattata h'},
        [4] = {pokemon = 'weedle h'},
        [5] = {pokemon = 'paras h'},
        [6] = {pokemon = 'pidgey h'},
        [7] = {pokemon = 'spearow h'},
        [8] = {pokemon = 'zubat h'},
        [9] = {pokemon = 'ekans h'},
        [10] = {pokemon = 'cleffa h'},
        [11] = {pokemon = 'doduo h'},
        [12] = {pokemon = 'exeggcute h'},
        [13] = {pokemon = 'igglybuff h'},
        [14] = {pokemon = 'nidoran h'},
        [15] = {pokemon = 'nidoranfe h'},
        [16] = {pokemon = 'hoothoot h'},
        [17] = {pokemon = 'gloom h'},
        [18] = {pokemon = 'sentret h'},
        [19] = {pokemon = 'venonat h'},
        [20] = {pokemon = 'weepinbell h'},
        [21] = {pokemon = 'bulbasaur h'},
        [22] = {pokemon = 'kakuna h'},
        [23] = {pokemon = 'ledyba h'},
        [24] = {pokemon = 'meowth h'},
        [25] = {pokemon = 'metapod h'},
        [26] = {pokemon = 'natu h'},
        [27] = {pokemon = 'pidgeotto h'},
        [28] = {pokemon = 'spinarak h'},
        [29] = {pokemon = 'sunkern h'},
        [30] = {pokemon = 'togepi h'},
        [31] = {pokemon = 'wurmple h'},
        [32] = {pokemon = 'chikorita h'},
        [33] = {pokemon = 'eevee h'},
        [34] = {pokemon = 'hoppip h'},
        [35] = {pokemon = 'clefairy h'},
        [36] = {pokemon = 'jigglypuff h'},
        [37] = {pokemon = 'raticate h'},
        [38] = {pokemon = 'golbat h'},
        [39] = {pokemon = 'nidorina h'},
        [40] = {pokemon = 'nidorino h'},
        [41] = {pokemon = 'dodrio h'},
        [42] = {pokemon = 'farfetchd h'},
        [43] = {pokemon = 'snubbull h'},
        [44] = {pokemon = 'teddiursa h'},
        [45] = {pokemon = 'zigzagoon h'},
        [46] = {pokemon = 'ivysaur h'},
        [47] = {pokemon = 'lickitung h'},
        [48] = {pokemon = 'persian h'},
        [49] = {pokemon = 'treecko h'},
        [50] = {pokemon = 'ariados h'},
        [51] = {pokemon = 'clefable h'},
        [52] = {pokemon = 'fearow h'},
        [53] = {pokemon = 'parasect h'},
        [54] = {pokemon = 'skiploom h'},
        [55] = {pokemon = 'venomoth h'},
        [56] = {pokemon = 'victreebel h'},
        [57] = {pokemon = 'wigglytuff h'},
        [58] = {pokemon = 'bayleef h'},
        [59] = {pokemon = 'noctowl h'},
        [60] = {pokemon = 'crobat h'},
        [61] = {pokemon = 'furret h'},
        [62] = {pokemon = 'beedrill h'},
        [63] = {pokemon = 'butterfree h'},
        [64] = {pokemon = 'cascoon h'},
        [65] = {pokemon = 'chansey h'},
        [66] = {pokemon = 'silcoon h'},
        [67] = {pokemon = 'exeggutor h'},
        [68] = {pokemon = 'vileplume h'},
        [69] = {pokemon = 'ledian h'},
        [70] = {pokemon = 'lotad h'},
        [71] = {pokemon = 'pidgeot h'},
        [72] = {pokemon = 'pineco h'},
        [73] = {pokemon = 'xatu h'},
        [74] = {pokemon = 'linoone h'},
        [75] = {pokemon = 'nidoking h'},
        [76] = {pokemon = 'nidoqueen h'},
        [77] = {pokemon = 'aipom h'},
        [78] = {pokemon = 'arbok h'},
        [79] = {pokemon = 'bellossom h'},
        [80] = {pokemon = 'dunsparce h'},
        [81] = {pokemon = 'girafarig h'},
        [82] = {pokemon = 'tangela h'},
        [83] = {pokemon = 'heracross h'},
        [84] = {pokemon = 'pinsir h'},
        [85] = {pokemon = 'venusaur h'},
        [86] = {pokemon = 'beautifly h'},
        [87] = {pokemon = 'dustox h'},
        [88] = {pokemon = 'granbull h'},
}

local d90 = 
{
        [0] = {pokemon = 'bellsprout h'},
        [1] = {pokemon = 'caterpie h'},
        [2] = {pokemon = 'oddish h'},
        [3] = {pokemon = 'rattata h'},
        [4] = {pokemon = 'weedle h'},
        [5] = {pokemon = 'paras h'},
        [6] = {pokemon = 'pidgey h'},
        [7] = {pokemon = 'spearow h'},
        [8] = {pokemon = 'zubat h'},
        [9] = {pokemon = 'ekans h'},
        [10] = {pokemon = 'cleffa h'},
        [11] = {pokemon = 'doduo h'},
        [12] = {pokemon = 'exeggcute h'},
        [13] = {pokemon = 'igglybuff h'},
        [14] = {pokemon = 'nidoran h'},
        [15] = {pokemon = 'nidoranfe h'},
        [16] = {pokemon = 'hoothoot h'},
        [17] = {pokemon = 'gloom h'},
        [18] = {pokemon = 'sentret h'},
        [19] = {pokemon = 'venonat h'},
        [20] = {pokemon = 'weepinbell h'},
        [21] = {pokemon = 'bulbasaur h'},
        [22] = {pokemon = 'kakuna h'},
        [23] = {pokemon = 'ledyba h'},
        [24] = {pokemon = 'meowth h'},
        [25] = {pokemon = 'metapod h'},
        [26] = {pokemon = 'natu h'},
        [27] = {pokemon = 'pidgeotto h'},
        [28] = {pokemon = 'spinarak h'},
        [29] = {pokemon = 'sunkern h'},
        [30] = {pokemon = 'togepi h'},
        [31] = {pokemon = 'wurmple h'},
        [32] = {pokemon = 'chikorita h'},
        [33] = {pokemon = 'eevee h'},
        [34] = {pokemon = 'hoppip h'},
        [35] = {pokemon = 'clefairy h'},
        [36] = {pokemon = 'jigglypuff h'},
        [37] = {pokemon = 'raticate h'},
        [38] = {pokemon = 'golbat h'},
        [39] = {pokemon = 'nidorina h'},
        [40] = {pokemon = 'nidorino h'},
        [41] = {pokemon = 'dodrio h'},
        [42] = {pokemon = 'farfetchd h'},
        [43] = {pokemon = 'snubbull h'},
        [44] = {pokemon = 'teddiursa h'},
        [45] = {pokemon = 'zigzagoon h'},
        [46] = {pokemon = 'ivysaur h'},
        [47] = {pokemon = 'lickitung h'},
        [48] = {pokemon = 'persian h'},
        [49] = {pokemon = 'treecko h'},
        [50] = {pokemon = 'ariados h'},
        [51] = {pokemon = 'clefable h'},
        [52] = {pokemon = 'fearow h'},
        [53] = {pokemon = 'parasect h'},
        [54] = {pokemon = 'skiploom h'},
        [55] = {pokemon = 'venomoth h'},
        [56] = {pokemon = 'victreebel h'},
        [57] = {pokemon = 'wigglytuff h'},
        [58] = {pokemon = 'bayleef h'},
        [59] = {pokemon = 'noctowl h'},
        [60] = {pokemon = 'crobat h'},
        [61] = {pokemon = 'furret h'},
        [62] = {pokemon = 'beedrill h'},
        [63] = {pokemon = 'butterfree h'},
        [64] = {pokemon = 'cascoon h'},
        [65] = {pokemon = 'chansey h'},
        [66] = {pokemon = 'silcoon h'},
        [67] = {pokemon = 'exeggutor h'},
        [68] = {pokemon = 'vileplume h'},
        [69] = {pokemon = 'ledian h'},
        [70] = {pokemon = 'lotad h'},
        [71] = {pokemon = 'pidgeot h'},
        [72] = {pokemon = 'pineco h'},
        [73] = {pokemon = 'xatu h'},
        [74] = {pokemon = 'linoone h'},
        [75] = {pokemon = 'nidoking h'},
        [76] = {pokemon = 'nidoqueen h'},
        [77] = {pokemon = 'aipom h'},
        [78] = {pokemon = 'arbok h'},
        [79] = {pokemon = 'bellossom h'},
        [80] = {pokemon = 'dunsparce h'},
        [81] = {pokemon = 'girafarig h'},
        [82] = {pokemon = 'tangela h'},
        [83] = {pokemon = 'heracross h'},
        [84] = {pokemon = 'pinsir h'},
        [85] = {pokemon = 'venusaur h'},
        [86] = {pokemon = 'beautifly h'},
        [87] = {pokemon = 'dustox h'},
        [88] = {pokemon = 'granbull h'},
        [89] = {pokemon = 'lombre h'},
        [90] = {pokemon = 'sunflora h'},
        [91] = {pokemon = 'togetic h'},
        [92] = {pokemon = 'meganium h'},
        [93] = {pokemon = 'blissey h'},
}

local d100 = 
{
        [0] = {pokemon = 'bellsprout h'},
        [1] = {pokemon = 'caterpie h'},
        [2] = {pokemon = 'oddish h'},
        [3] = {pokemon = 'rattata h'},
        [4] = {pokemon = 'weedle h'},
        [5] = {pokemon = 'paras h'},
        [6] = {pokemon = 'pidgey h'},
        [7] = {pokemon = 'spearow h'},
        [8] = {pokemon = 'zubat h'},
        [9] = {pokemon = 'ekans h'},
        [10] = {pokemon = 'cleffa h'},
        [11] = {pokemon = 'doduo h'},
        [12] = {pokemon = 'exeggcute h'},
        [13] = {pokemon = 'igglybuff h'},
        [14] = {pokemon = 'nidoran h'},
        [15] = {pokemon = 'nidoranfe h'},
        [16] = {pokemon = 'hoothoot h'},
        [17] = {pokemon = 'gloom h'},
        [18] = {pokemon = 'sentret h'},
        [19] = {pokemon = 'venonat h'},
        [20] = {pokemon = 'weepinbell h'},
        [21] = {pokemon = 'bulbasaur h'},
        [22] = {pokemon = 'kakuna h'},
        [23] = {pokemon = 'ledyba h'},
        [24] = {pokemon = 'meowth h'},
        [25] = {pokemon = 'metapod h'},
        [26] = {pokemon = 'natu h'},
        [27] = {pokemon = 'pidgeotto h'},
        [28] = {pokemon = 'spinarak h'},
        [29] = {pokemon = 'sunkern h'},
        [30] = {pokemon = 'togepi h'},
        [31] = {pokemon = 'wurmple h'},
        [32] = {pokemon = 'chikorita h'},
        [33] = {pokemon = 'eevee h'},
        [34] = {pokemon = 'hoppip h'},
        [35] = {pokemon = 'clefairy h'},
        [36] = {pokemon = 'jigglypuff h'},
        [37] = {pokemon = 'raticate h'},
        [38] = {pokemon = 'golbat h'},
        [39] = {pokemon = 'nidorina h'},
        [40] = {pokemon = 'nidorino h'},
        [41] = {pokemon = 'dodrio h'},
        [42] = {pokemon = 'farfetchd h'},
        [43] = {pokemon = 'snubbull h'},
        [44] = {pokemon = 'teddiursa h'},
        [45] = {pokemon = 'zigzagoon h'},
        [46] = {pokemon = 'ivysaur h'},
        [47] = {pokemon = 'lickitung h'},
        [48] = {pokemon = 'persian h'},
        [49] = {pokemon = 'treecko h'},
        [50] = {pokemon = 'ariados h'},
        [51] = {pokemon = 'clefable h'},
        [52] = {pokemon = 'fearow h'},
        [53] = {pokemon = 'parasect h'},
        [54] = {pokemon = 'skiploom h'},
        [55] = {pokemon = 'venomoth h'},
        [56] = {pokemon = 'victreebel h'},
        [57] = {pokemon = 'wigglytuff h'},
        [58] = {pokemon = 'bayleef h'},
        [59] = {pokemon = 'noctowl h'},
        [60] = {pokemon = 'crobat h'},
        [61] = {pokemon = 'furret h'},
        [62] = {pokemon = 'beedrill h'},
        [63] = {pokemon = 'butterfree h'},
        [64] = {pokemon = 'cascoon h'},
        [65] = {pokemon = 'chansey h'},
        [66] = {pokemon = 'silcoon h'},
        [67] = {pokemon = 'exeggutor h'},
        [68] = {pokemon = 'vileplume h'},
        [69] = {pokemon = 'ledian h'},
        [70] = {pokemon = 'lotad h'},
        [71] = {pokemon = 'pidgeot h'},
        [72] = {pokemon = 'pineco h'},
        [73] = {pokemon = 'xatu h'},
        [74] = {pokemon = 'linoone h'},
        [75] = {pokemon = 'nidoking h'},
        [76] = {pokemon = 'nidoqueen h'},
        [77] = {pokemon = 'aipom h'},
        [78] = {pokemon = 'arbok h'},
        [79] = {pokemon = 'bellossom h'},
        [80] = {pokemon = 'dunsparce h'},
        [81] = {pokemon = 'girafarig h'},
        [82] = {pokemon = 'tangela h'},
        [83] = {pokemon = 'heracross h'},
        [84] = {pokemon = 'pinsir h'},
        [85] = {pokemon = 'venusaur h'},
        [86] = {pokemon = 'beautifly h'},
        [87] = {pokemon = 'dustox h'},
        [88] = {pokemon = 'granbull h'},
        [89] = {pokemon = 'lombre h'},
        [90] = {pokemon = 'sunflora h'},
        [91] = {pokemon = 'togetic h'},
        [92] = {pokemon = 'meganium h'},
        [93] = {pokemon = 'blissey h'},
        [94] = {pokemon = 'jumpluff h'},		
        [95] = {pokemon = 'scyther h'},
        [96] = {pokemon = 'yanma h'},
        [97] = {pokemon = 'miltank h'},
        [98] = {pokemon = 'forretress h'},
        [99] = {pokemon = 'murkrow h'},
}

local d120 = 
{
        [0] = {pokemon = 'bellsprout h'},
        [1] = {pokemon = 'caterpie h'},
        [2] = {pokemon = 'oddish h'},
        [3] = {pokemon = 'rattata h'},
        [4] = {pokemon = 'weedle h'},
        [5] = {pokemon = 'paras h'},
        [6] = {pokemon = 'pidgey h'},
        [7] = {pokemon = 'spearow h'},
        [8] = {pokemon = 'zubat h'},
        [9] = {pokemon = 'ekans h'},
        [10] = {pokemon = 'cleffa h'},
        [11] = {pokemon = 'doduo h'},
        [12] = {pokemon = 'exeggcute h'},
        [13] = {pokemon = 'igglybuff h'},
        [14] = {pokemon = 'nidoran h'},
        [15] = {pokemon = 'nidoranfe h'},
        [16] = {pokemon = 'hoothoot h'},
        [17] = {pokemon = 'gloom h'},
        [18] = {pokemon = 'sentret h'},
        [19] = {pokemon = 'venonat h'},
        [20] = {pokemon = 'weepinbell h'},
        [21] = {pokemon = 'bulbasaur h'},
        [22] = {pokemon = 'kakuna h'},
        [23] = {pokemon = 'ledyba h'},
        [24] = {pokemon = 'meowth h'},
        [25] = {pokemon = 'metapod h'},
        [26] = {pokemon = 'natu h'},
        [27] = {pokemon = 'pidgeotto h'},
        [28] = {pokemon = 'spinarak h'},
        [29] = {pokemon = 'sunkern h'},
        [30] = {pokemon = 'togepi h'},
        [31] = {pokemon = 'wurmple h'},
        [32] = {pokemon = 'chikorita h'},
        [33] = {pokemon = 'eevee h'},
        [34] = {pokemon = 'hoppip h'},
        [35] = {pokemon = 'clefairy h'},
        [36] = {pokemon = 'jigglypuff h'},
        [37] = {pokemon = 'raticate h'},
        [38] = {pokemon = 'golbat h'},
        [39] = {pokemon = 'nidorina h'},
        [40] = {pokemon = 'nidorino h'},
        [41] = {pokemon = 'dodrio h'},
        [42] = {pokemon = 'farfetchd h'},
        [43] = {pokemon = 'snubbull h'},
        [44] = {pokemon = 'teddiursa h'},
        [45] = {pokemon = 'zigzagoon h'},
        [46] = {pokemon = 'ivysaur h'},
        [47] = {pokemon = 'lickitung h'},
        [48] = {pokemon = 'persian h'},
        [49] = {pokemon = 'treecko h'},
        [50] = {pokemon = 'ariados h'},
        [51] = {pokemon = 'clefable h'},
        [52] = {pokemon = 'fearow h'},
        [53] = {pokemon = 'parasect h'},
        [54] = {pokemon = 'skiploom h'},
        [55] = {pokemon = 'venomoth h'},
        [56] = {pokemon = 'victreebel h'},
        [57] = {pokemon = 'wigglytuff h'},
        [58] = {pokemon = 'bayleef h'},
        [59] = {pokemon = 'noctowl h'},
        [60] = {pokemon = 'crobat h'},
        [61] = {pokemon = 'furret h'},
        [62] = {pokemon = 'beedrill h'},
        [63] = {pokemon = 'butterfree h'},
        [64] = {pokemon = 'cascoon h'},
        [65] = {pokemon = 'chansey h'},
        [66] = {pokemon = 'silcoon h'},
        [67] = {pokemon = 'exeggutor h'},
        [68] = {pokemon = 'vileplume h'},
        [69] = {pokemon = 'ledian h'},
        [70] = {pokemon = 'lotad h'},
        [71] = {pokemon = 'pidgeot h'},
        [72] = {pokemon = 'pineco h'},
        [73] = {pokemon = 'xatu h'},
        [74] = {pokemon = 'linoone h'},
        [75] = {pokemon = 'nidoking h'},
        [76] = {pokemon = 'nidoqueen h'},
        [77] = {pokemon = 'aipom h'},
        [78] = {pokemon = 'arbok h'},
        [79] = {pokemon = 'bellossom h'},
        [80] = {pokemon = 'dunsparce h'},
        [81] = {pokemon = 'girafarig h'},
        [82] = {pokemon = 'tangela h'},
        [83] = {pokemon = 'heracross h'},
        [84] = {pokemon = 'pinsir h'},
        [85] = {pokemon = 'venusaur h'},
        [86] = {pokemon = 'beautifly h'},
        [87] = {pokemon = 'dustox h'},
        [88] = {pokemon = 'granbull h'},
        [89] = {pokemon = 'lombre h'},
        [90] = {pokemon = 'sunflora h'},
        [91] = {pokemon = 'togetic h'},
        [92] = {pokemon = 'meganium h'},
        [93] = {pokemon = 'blissey h'},
        [94] = {pokemon = 'jumpluff h'},		
        [95] = {pokemon = 'scyther h'},
        [96] = {pokemon = 'yanma h'},
        [97] = {pokemon = 'miltank h'},
        [98] = {pokemon = 'forretress h'},
        [99] = {pokemon = 'murkrow h'},
        [100] = {pokemon = 'scizor h'},
        [101] = {pokemon = 'ursaring h'},
        [102] = {pokemon = 'delibird h'},
        [103] = {pokemon = 'sceptile h'},
        [104] = {pokemon = 'gligar h'},
        [105] = {pokemon = 'ludicolo h'},
        [106] = {pokemon = 'shuckle h'},
}

if item2.itemid == 2701 then

if #getCreatureSummons(cid) == 0 then
doPlayerSendCancel(cid, "You need a pokemon to headbutt.")
return true
end

if not isInArray(headbutt, getCreatureName(getCreatureSummons(cid)[1])) then
doPlayerSendCancel(cid, "This pokemon can't use headbutt.")
return true
end

	if exhaustion.get(cid, 487891) then
	doPlayerSendCancel(cid, "Please wait a "..exhaustion.get(cid, 487891).." seconds before using head butt again!")
	return true
	end

if getPlayerStorageValue(getCreatureSummons(cid)[1], 1099) >= 1 then
doPlayerSendCancel(cid, "sorry wait your pokemon using habilit.")
return true
end


local speed = getCreatureSpeed(getCreatureSummons(cid)[1])


setPlayerStorageValue(getCreatureSummons(cid)[1], 1951, 0)
	local function tocut(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
	
if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 1951) == 1 then
return true
end
	if getDistanceBetween(getThingPos(getCreatureSummons(params.cid)[1]), topos) == 1 then

setPlayerStorageValue(getCreatureSummons(params.cid)[1], 1951, 1)
if not getTileThingByPos(topos).itemid == 2701 then
doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 165)
local caraio = getThingPos(getCreatureSummons(params.cid)[1])




doPlayerSay(cid, ""..getNickPoke(params.cid)..", Nice!", 1)
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 3000, 0)
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 1099, 0)
return true




end



doPlayerSay(cid, ""..getNickPoke(params.cid)..", Nice!", 1)

setPlayerStorageValue(getCreatureSummons(params.cid)[1], 1099, 0)
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 3000, 0)


doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), topos, 39)
doSendMagicEffect(topos, 3)

doPlayerAddSkillTry(params.cid, 3, 30)
doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 173)

local skill = getPlayerSkillLevel(params.cid, 3)

doTransformItem(getTileItemById(topos, 2701).uid, 7024)

	exhaustion.set(params.cid, 487891, 10)
	
local playerpos = topos


if isSound(params.cid) then
DoTaskbarcold(params.cid,"sounds/194.wav")
end
if skill >= 120 then
                                local random = math.random(0, 106)
                                
                                      local criature =   doCreateMonster(d100[random].pokemon, playerpos,false)
if isMonster(criature) then
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
                                    
                                
                        else
                      if skill >= 100 then
                                local random = math.random(0, 99)
                                
                                      local criature =   doCreateMonster(d100[random].pokemon, playerpos,false)
if isMonster(criature) then
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
                                    
                                
                        else
           if skill >= 90 then
                                
  local random = math.random(0, 93)
                                
   local criature =   doCreateMonster(d90[random].pokemon, playerpos,false)
       if isMonster(criature) then
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

                        else
                        if skill >= 80 then
                                local random = math.random(0, 88)
                                
   local criature =   doCreateMonster(d80[random].pokemon, playerpos,false)
      if isMonster(criature) then  
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

                        else
                        if skill >= 60 then
  local random = math.random(0, 81)
                                
   local criature =   doCreateMonster(d60[random].pokemon, playerpos,false)
        if isMonster(criature) then 
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

                        else
                        if skill >= 40 then
                         
                                local random = math.random(0, 65)
                                
   local criature =   doCreateMonster(d40[random].pokemon, playerpos,false)
         if isMonster(criature) then
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

                        else
                        if skill >= 20 then
 local random = math.random(0, 41)
                                
   local criature =   doCreateMonster(d20[random].pokemon, playerpos,false)
         if isMonster(criature) then
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

                        else
                        if skill >= 0 and skill < 20 then
                              
                           local random = math.random(0, 15)      
   local criature =   doCreateMonster(d0[random].pokemon, playerpos,false)
        if isMonster(criature) then
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
end
end


local function detrans(params)
doTransformItem(getTileItemById(topos, 7024).uid, 2701)
		

		end



	addEvent(detrans, 60000, {idoitem = itemid})
	doCreatureSay(getCreatureSummons(params.cid)[1], "HeadButt", TALKTYPE_MONSTER)


	

	else
	local badire = getDirectionTo(getThingPos(getCreatureSummons(params.cid)[1]), topos)
	if badire == NORTHWEST then
		if math.random(1,100) >= 51 then
		badire = NORTH
			if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), true, true) then
			badire = NORTH
			else
			badire = WEST
			end
		else
		badire = WEST
						if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), true, true) then
			badire = WEST
			else
			badire = NORTH
			end
		end
	elseif badire == SOUTHWEST then
		if math.random(1,100) >= 51 then
		badire = SOUTH
						if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), true, true) then
			badire = SOUTH
			else
			badire = WEST
			end
		else
		badire = WEST
			if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), true, true) then
			badire = WEST
			else
			badire = SOUTH
			end
		end
	elseif badire == SOUTHEAST then
		if math.random(1,100) >= 51 then
		badire = SOUTH
			if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), true, true) then
			badire = SOUTH
			else
			badire = EAST
			end
		else
		badire = EAST
						if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), true, true) then
			badire = EAST
			else
			badire = SOUTH
			end
		end
	elseif badire == NORTHEAST then
		if math.random(1,100) >= 51 then
		badire = NORTH
						if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), true, true) then
			badire = NORTH
			else
			badire = EAST
			end
		else
		badire = EAST
						if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), badire), true, true) then
			badire = EAST
			else
			badire = NORTH
			end
		end
	end
	local badire = badire
	

	doPushCreature(getCreatureSummons(params.cid)[1], badire, 1, 0)

	

	return true
	end
	end
	end
	end

setPlayerStorageValue(getCreatureSummons(cid)[1], 1951, 0)
doPlayerSay(cid, ""..getNickPoke(cid)..", HeadButt", 1)
setPlayerStorageValue(getCreatureSummons(cid)[1], 1099,1)
local speed = getCreatureBaseSpeed(getCreatureSummons(cid)[1])
local temk = 1000
if speed <= 130  then
temk = 750
elseif speed <= 150  then
temk = 700
elseif speed <= 200  then
temk = 600
elseif speed <= 250 then
temk = 500
elseif speed <= 300  then
temk = 400
elseif speed <= 350 then
temk = 300
else
temk = 200
end

for i = 1, getDistanceBetween(getThingPos(getCreatureSummons(cid)[1]), topos) *2 do
addEvent(tocut, temk*i, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos})
end
return true


end











-- CUT
local modehab = 0
if item2.itemid == 2767  then
modehab = 1
elseif item2.itemid == 1285 or item2.itemid == 7003 then
modehab = 2
elseif isInArray(digholes, item2.itemid)  then
modehab = 3
end
local msgcancel = {}
local modecompar = {}
local modeEX = {}
local modeITEMID = {}
local modeEffect = {}
if modehab >= 1 then

if modehab == 1 then
msgcancel = "CUT!"
modecompar = cut 
modeEX = "Cut this brush!"
modeITEMID = 6216
modeEffect = 141
elseif modehab == 2 then
msgcancel = "Rock Smash!"
modecompar = rocksmash
modeEX = "Broke This rock!"
modeITEMID = 2256
modeEffect = 183
elseif modehab == 3 then
msgcancel = "Open hole"
modecompar = dig
modeEX = "Open This hole!"
modeITEMID = item2.itemid+1
modeEffect = 178
end
if not isInArray(modecompar, getCreatureName(getCreatureSummons(cid)[1])) then
doPlayerSendCancel(cid, "This pokemon can't use "..msgcancel.." ")
return true
end
if isInArray(modecompar, getCreatureName(getCreatureSummons(cid)[1])) then
	--if exhaustion.get(cid, modeEX) then
	--doPlayerSendCancel(cid, "Please wait a few seconds before using "..msgcancel.." again!")
	--return true
	--end

--exhaustion.set(cid, modeEX ,10)
	local function tocut(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
	
	if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 8) >= 1 then
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 1099, 0)
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 3000, 0)
	return true
	end
	if getDistanceBetween(getThingPos(getCreatureSummons(params.cid)[1]), topos) == 1 then
if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 101) >= 1 then
return true
end
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 1099, 0)

setPlayerStorageValue(getCreatureSummons(params.cid)[1], 101, 1)
	doSendMagicEffect(topos, params.modeEffect)
	doTransformItem(getTileItemById(topos,  params.itemid2).uid, params.itemid)

		local function detrans(params)
if isCreature(getCreatureSummons(params.ciddd)[1]) then
setPlayerStorageValue(getCreatureSummons(params.ciddd)[1], 101, 0)
setPlayerStorageValue(getCreatureSummons(params.ciddd)[1], 3000, 0)
end
		doTransformItem(getTileItemById(topos, params.itemid).uid, params.itemid2)
		
		end
	addEvent(detrans, 10500, {ciddd = params.cid,itemid = params.itemid,itemid2 = params.itemid2})

	doCreatureSay(getCreatureSummons(params.cid)[1], params.msg, TALKTYPE_MONSTER)
	
	else
	adire = getDirectionTo(getThingPos(getCreatureSummons(params.cid)[1]), topos)
	if adire == NORTHWEST then
		if math.random(1,100) >= 51 then
		adire = NORTH
						if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), true, true) then
			adire = NORTH
			else
			adire = WEST
			end
		else
		adire = WEST
			if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), true, true) then
			adire = WEST
			else
			adire = NORTH
			end
		end
	elseif adire == SOUTHWEST then
		if math.random(1,100) >= 51 then
		adire = SOUTH
						if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), true, true) then
			adire = SOUTH
			else
			adire = WEST
			end
		else
		adire = WEST
						if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), true, true) then
			adire = WEST
			else
			adire = SOUTH
			end
		end
	elseif adire == SOUTHEAST then
		if math.random(1,100) >= 51 then
		adire = SOUTH
						if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), true, true) then
			adire = SOUTH
			else
			adire = EAST
			end
		else
		adire = EAST
						if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), true, true) then
			adire = EAST
			else
			adire = SOUTH
			end
		end
	elseif adire == NORTHEAST then
		if math.random(1,100) >= 51 then
		adire = NORTH
						if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), true, true) then
			adire = NORTH
			else
			adire = EAST
			end
		else
		adire = EAST
			if isWalkables(getPosByDir(getThingPos(getCreatureSummons(params.cid)[1]), adire), true, true) then
			adire = EAST
			else
			adire = NORTH
			end
		end
	end
	local adire = adire
	
	doPushCreature(getCreatureSummons(params.cid)[1], adire, 1, 0)
	
	end
	end
	end
	end
if getPlayerStorageValue(getCreatureSummons(cid)[1], 3000) >= 1 then
return doPlayerSendCancel(cid, "Please Wait your pokemon use habilite!")
end

doPlayerSay(cid, getNickPoke(cid)..", "..modeEX , 1)
setPlayerStorageValue(getCreatureSummons(cid)[1], 1099, 1)
setPlayerStorageValue(getCreatureSummons(cid)[1], 3000, 1)
local speed = getCreatureBaseSpeed(getCreatureSummons(cid)[1])
local temk = 1000
if speed <= 130  then
temk = 750
elseif speed <= 150  then
temk = 700
elseif speed <= 200  then
temk = 600
elseif speed <= 250 then
temk = 500
elseif speed <= 300  then
temk = 400
elseif speed <= 350 then
temk = 300
else
temk = 200
end
local function endmove(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 3000) >= 1 then




setPlayerStorageValue(getCreatureSummons(params.cid)[1], 3000, -1)
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 1099, 0)

return true
end
end
end
end
local SummonPos = getThingPos(getCreatureSummons(cid)[1])

local travelx = math.abs((topos.x) - (SummonPos.x))
local travely = math.abs((topos.y) - (SummonPos.y))
local travel = ((travelx) + (travely))


addEvent(tocut, 0,  {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos,msg = msgcancel,itemid = modeITEMID,itemid2 = item2.itemid, modeEffect  = modeEffect })
for i = 1, travel do
addEvent(tocut, temk*i,  {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos,msg = msgcancel,itemid = modeITEMID,itemid2 = item2.itemid, modeEffect  = modeEffect })
end
addEvent(endmove, temk*travel+1000, {cid = cid})	 
--addEvent(tocut, 0, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos,msg = msgcancel,itemid = modeITEMID,itemid2 = item2.itemid,modeEffect = modeEffect })
--for i = 1, getDistanceBetween(getThingPos(getCreatureSummons(cid)[1]), topos) *2 do
--addEvent(tocut, temk*i, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = topos,msg = msgcancel,itemid = modeITEMID,itemid2 = item2.itemid, modeEffect  = modeEffect })
--end

return true
end
end
-- CUT END

-- DIG


if not isMonster(item2.uid)  then
if isInArray(blink, getCreatureName(getCreatureSummons(cid)[1])) then
if exhaustion.get(cid, exhaustblink) then
if getPlayerStorageValue(getCreatureSummons(cid)[1], 1099) >= 1 then
doPlayerSendCancel(cid, "sorry wait your pokemon using habilit.")
return true
end






	doPlayerSay(cid, ""..getNickPoke(cid)..", move!", 1)
local speed = getCreatureSpeed(getCreatureSummons(cid)[1])

local function move(params)
	if isCreature(params.cid) then
	if isCreature(params.ccid) then

local summon = params.ccid
if params.travel == 30 then
doPlayerSay(cid, ""..getNickPoke(params.cid)..", Stop!", 1)


setPlayerStorageValue(summon, 3000, -1)
setPlayerStorageValue(summon, 1099, 0)

return true
end

	local dire = getDirectionTo(getThingPos(summon), params.topos)

if dire >= 0 and dire <= 7 then
		if dire == NORTHWEST then
		if math.random(1,100) >= 51 then
		dire = NORTH
			if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = NORTH
			else
			dire = WEST
			end
		else
		dire = WEST
						if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = WEST
			else
			dire = NORTH
			end
		end
	elseif dire == SOUTHWEST then
		if math.random(1,100) >= 51 then
		dire = SOUTH
					if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = SOUTH
			else
			dire = WEST
			end
		else
		dire = WEST
			if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = WEST
			else
			dire = SOUTH
			end
		end
	elseif dire == SOUTHEAST then
		if math.random(1,100) >= 51 then
		dire = SOUTH
			if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = SOUTH
			else
			dire = EAST
			end
		else
		dire = EAST
			if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = EAST
			else
			dire = SOUTH
			end
		end
	elseif dire == NORTHEAST then
		if math.random(1,100) >= 51 then
		dire = NORTH
						if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = NORTH
			else
			dire = EAST
			end
		else
		dire = EAST
						if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = EAST
			else
			dire = NORTH
			end
		end
	end
end
if getPlayerStorageValue(summon, 8) >= 1 then
setPlayerStorageValue(summon, 3000, -1)
setPlayerStorageValue(summon, 1099, 0)
return true
end




	
doPushCreature(summon, dire, 1,0)


local caraio = getThingPos(summon)


if caraio.x == topos.x and caraio.y == topos.y then

doPlayerSay(cid, ""..getNickPoke(params.cid)..", Nice!", 1)


setPlayerStorageValue(summon, 3000, -1)
setPlayerStorageValue(summon, 1099, 0)

return true
else
local speed = getCreatureSpeed(summon)
local temk = 1000
if speed <= 130  then
temk = 750
elseif speed <= 150  then
temk = 700
elseif speed <= 200  then
temk = 600
elseif speed <= 250 then
temk = 500
elseif speed <= 300  then
temk = 400
elseif speed <= 350 then
temk = 300
else
temk = 200
end
addEvent(move, temk, {cid = params.cid, ccid = summon, topos = params.topos,travel = params.travel+1})
end



	
	end
end

end


local pois = getThingPos(item2.uid)
 if getTileInfo(pois).protection  then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cant order in protection zone")
return true
end
local speed = 1000
if speed <= 130  then
temk = 750
elseif speed <= 150  then
temk = 700
elseif speed <= 200  then
temk = 600
elseif speed <= 250 then
temk = 500
elseif speed <= 300  then
temk = 400
elseif speed <= 350 then
temk = 300
else
temk = 200
end
local SummonPos = getThingPos(getCreatureSummons(cid)[1])

local travelx = math.abs((topos.x) - (SummonPos.x))
local travely = math.abs((topos.y) - (SummonPos.y))
local travel = ((travelx) + (travely))



local place = topos
local man = getCreatureSummons(cid)[1]

if isWalkables(place,true,true,true) then
setPlayerStorageValue(getCreatureSummons(cid)[1], 1099, 1)
setPlayerStorageValue(getCreatureSummons(cid)[1], 3000, 1)


	       


addEvent(move, temk, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = pois, item2 = item2.uid,travel = 1})

end



return true



	else
if not isWalkables(topos,true, true) then
doPlayerSendCancel(cid, "Your pokemon cannot teleport there.")
return true
end
 if getTileInfo(getThingPos(item2.uid)).protection  then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cant teleport in protection zone")
return true
end
doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), topos, 39)
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 211)
doTeleportThing(getCreatureSummons(cid)[1], topos, false)
doSendMagicEffect(topos, 134)
doPlayerSay(cid, ""..getNickPoke(cid)..", teleport there!", 1)
doCreatureSay(getCreatureSummons(cid)[1], "BLINK!", TALKTYPE_MONSTER)
exhaustion.set(cid, exhaustblink, cdblink)
return true
end
return true
end
end




      

if getPlayerStorageValue(getCreatureSummons(cid)[1], 1099) >= 1 then
doPlayerSendCancel(cid, "sorry wait your pokemon using habilit.")
return true
end






	doPlayerSay(cid, ""..getNickPoke(cid)..", move!", 1)
local speed = getCreatureSpeed(getCreatureSummons(cid)[1])



local function move(params)
	if isCreature(params.cid) then
	if isCreature(params.ccid) then

local summon = params.ccid
if params.travel == 30 then
doPlayerSay(cid, ""..getNickPoke(params.cid)..", Stop!", 1)


setPlayerStorageValue(summon, 3000, -1)
setPlayerStorageValue(summon, 1099, 0)

return true
end

	local dire = getDirectionTo(getThingPos(summon), params.topos)

if dire >= 0 and dire <= 7 then
		if dire == NORTHWEST then
		if math.random(1,100) >= 51 then
		dire = NORTH
			if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = NORTH
			else
			dire = WEST
			end
		else
		dire = WEST
						if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = WEST
			else
			dire = NORTH
			end
		end
	elseif dire == SOUTHWEST then
		if math.random(1,100) >= 51 then
		dire = SOUTH
					if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = SOUTH
			else
			dire = WEST
			end
		else
		dire = WEST
			if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = WEST
			else
			dire = SOUTH
			end
		end
	elseif dire == SOUTHEAST then
		if math.random(1,100) >= 51 then
		dire = SOUTH
			if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = SOUTH
			else
			dire = EAST
			end
		else
		dire = EAST
			if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = EAST
			else
			dire = SOUTH
			end
		end
	elseif dire == NORTHEAST then
		if math.random(1,100) >= 51 then
		dire = NORTH
						if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = NORTH
			else
			dire = EAST
			end
		else
		dire = EAST
						if isWalkables(getPosByDir(getThingPos(summon), dire), true, true) then
			dire = EAST
			else
			dire = NORTH
			end
		end
	end
end
if getPlayerStorageValue(summon, 8) >= 1 then
setPlayerStorageValue(summon, 3000, -1)
setPlayerStorageValue(summon, 1099, 0)
return true
end




	
doPushCreature(summon, dire, 1,0)


local caraio = getThingPos(summon)


if caraio.x == topos.x and caraio.y == topos.y then

doPlayerSay(cid, ""..getNickPoke(params.cid)..", Nice!", 1)


setPlayerStorageValue(summon, 3000, -1)
setPlayerStorageValue(summon, 1099, 0)

return true
else
local speed = getCreatureSpeed(summon)
local temk = 1000
if speed <= 130  then
temk = 750
elseif speed <= 150  then
temk = 700
elseif speed <= 200  then
temk = 600
elseif speed <= 250 then
temk = 500
elseif speed <= 300  then
temk = 400
elseif speed <= 350 then
temk = 300
else
temk = 200
end
addEvent(move, temk, {cid = params.cid, ccid = summon, topos = params.topos,travel = params.travel+1})
end



	
	end
end

end


local pois = getThingPos(item2.uid)
 if getTileInfo(pois).protection  then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cant order in protection zone")
return true
end
local temk = 1000
if speed <= 130  then
temk = 750
elseif speed <= 150  then
temk = 700
elseif speed <= 200  then
temk = 600
elseif speed <= 250 then
temk = 500
elseif speed <= 300  then
temk = 400
elseif speed <= 350 then
temk = 350
elseif speed <= 400 then
temk = 300
else
temk = 200
end
local SummonPos = getThingPos(getCreatureSummons(cid)[1])

local travelx = math.abs((topos.x) - (SummonPos.x))
local travely = math.abs((topos.y) - (SummonPos.y))
local travel = ((travelx) + (travely))



local place = topos
local man = getCreatureSummons(cid)[1]

 
if isWalkables(place,true,true) then
setPlayerStorageValue(getCreatureSummons(cid)[1], 1099, 1)
setPlayerStorageValue(getCreatureSummons(cid)[1], 3000, 1)
local function endmove(params)
	if isCreature(params.cid) then
	if isCreature(getCreatureSummons(params.cid)[1]) then
if getPlayerStorageValue(getCreatureSummons(params.cid)[1], 3000) >= 1 then

doPlayerSay(cid, ""..getNickPoke(params.cid)..", Sux!", 1)


setPlayerStorageValue(getCreatureSummons(params.cid)[1], 3000, -1)
setPlayerStorageValue(getCreatureSummons(params.cid)[1], 1099, 0)

return True
end
end
end
end


addEvent(move, temk, {cid = cid, ccid = getCreatureSummons(cid)[1], topos = pois, item2 = item2.uid,travel = 1})

end



return true

end