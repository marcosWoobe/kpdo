--O projeto kpdo é um projeto open source ,uma instituiçao sem fins lucrativo,esse codigo pode ser utilizado e modificado a gosto sendo distribuido a cada modificação de prefencia para colaborar para a evolução do projeto.
--site do jogo: www.exaioros.com
--forum: forum.exaioros.com/forum
--a area em que se encontra para debater o desenvolvimento do jogo e do projeto é:
--http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--The kpdo project is an open source and free project, a non-profit institution, this code can be used and modified to taste being distributed to each Preference modification to contribute to the evolution of the project.
--site of the game is www.exaioros.com
--the forum is forum.exaioros.com/forum
--the area in which it is to discuss the development of the game and the project is
--Forum Open Source: http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--Contact mail:exaioros@gmail.com
--MY name:Renan
--Staff Exaioros kpdo
--[kpdo]Cater (forum)
---=-=-=-==-=-www.exaioros.com-=-=-=-==-=-=-=
--=-=-=-=-=-=-=-=forum.exaioros.com-=-=-=-=-=-=
function doPlayerGiveItem(cid, itemid, amount, subType)
	local item = 0
	if(isItemStackable(itemid)) then
		item = doCreateItemEx(itemid, amount)
		if(doPlayerAddItemEx(cid, item, true) ~= RETURNVALUE_NOERROR) then
			return false
		end
	else
		for i = 1, amount do
			item = doCreateItemEx(itemid, subType)
			if(doPlayerAddItemEx(cid, item, true) ~= RETURNVALUE_NOERROR) then
				return false
			end
		end
	end

	return true
end



function doPlayerGiveItemContainer(cid, containerid, itemid, amount, subType)
	for i = 1, amount do
		local container = doCreateItemEx(containerid, 1)
		for x = 1, getContainerCapById(containerid) do
			doAddContainerItem(container, itemid, subType)
		end

		if(doPlayerAddItemEx(cid, container, true) ~= RETURNVALUE_NOERROR) then
			return false
		end
	end

	return true
end

function doPlayerTakeItem(cid, itemid, amount)
	return getPlayerItemCount(cid, itemid) >= amount and doPlayerRemoveItem(cid, itemid, amount)
end

function doPlayerBuyItem(cid, itemid, count, cost, charges)
	return doPlayerRemoveMoney(cid, cost) and doPlayerGiveItem(cid, itemid, count, charges)
end

function doPlayerBuyItemContainer(cid, containerid, itemid, count, cost, charges)
	return doPlayerRemoveMoney(cid, cost) and doPlayerGiveItemContainer(cid, containerid, itemid, count, charges)
end

function doPlayerSellItem(cid, itemid, count, cost)
	if(not doPlayerTakeItem(cid, itemid, count)) then
		return false
	end

	if(not doPlayerAddMoney(cid, cost)) then
		error('[doPlayerSellItem] Could not add money to: ' .. getPlayerName(cid) .. ' (' .. cost .. 'gp).')
	end

	return true
end

function doPlayerWithdrawMoney(cid, amount)
	if(not getBooleanFromString(getConfigInfo('bankSystem'))) then
		return false
	end

	local balance = getPlayerBalance(cid)
	if(amount > balance or not doPlayerAddMoney(cid, amount)) then
		return false
	end

	doPlayerSetBalance(cid, balance - amount)
	return true
end

function doPlayerDepositMoney(cid, amount)
	if(not getBooleanFromString(getConfigInfo('bankSystem'))) then
		return false
	end

	if(not doPlayerRemoveMoney(cid, amount)) then
		return false
	end

	doPlayerSetBalance(cid, getPlayerBalance(cid) + amount)
	return true
end

function isPremium(cid)
	return (isPlayer(cid) and (getPlayerPremiumDays(cid) > 0 or getBooleanFromString(getConfigInfo('freePremium')))) or isTutor(cid)
end

function getMonthDayEnding(day)
	if(day == "01" or day == "21" or day == "31") then
		return "st"
	elseif(day == "02" or day == "22") then
		return "nd"
	elseif(day == "03" or day == "23") then
		return "rd"
	end

	return "th"
end

function getMonthString(m)
	return os.date("%B", os.time{year = 1970, month = m, day = 1})
end

function getArticle(str)
	return str:find("[AaEeIiOoUuYy]") == 1 and "an" or "a"
end

function isNumber(str)
	return tonumber(str) ~= nil
end

function doPlayerAddAddons(cid, addon)
	for i = 0, table.maxn(maleOutfits) do
		doPlayerAddOutfit(cid, maleOutfits[i], addon)
	end

	for i = 0, table.maxn(femaleOutfits) do
		doPlayerAddOutfit(cid, femaleOutfits[i], addon)
	end
end

function doPlayerWithdrawAllMoney(cid)
	return doPlayerWithdrawMoney(cid, getPlayerBalance(cid))
end

function doPlayerDepositAllMoney(cid)
	return doPlayerDepositMoney(cid, getPlayerMoney(cid))
end

function doPlayerTransferAllMoneyTo(cid, target)
	return doPlayerTransferMoneyTo(cid, target, getPlayerBalance(cid))
end

function playerExists(name)
	return getPlayerGUIDByName(name) ~= 0
end

function getTibiaTime()
	local minutes = getWorldTime()
	local hours = 0
	while (minutes > 60) do
		hours = hours + 1
		minutes = minutes - 60
	end

	return {hours = hours, minutes = minutes}
end

function doWriteLogFile(file, text)
	local f = io.open(file, "a+")
	if(not f) then
		return false
	end

	f:write("[" .. os.date("%d/%m/%Y %H:%M:%S") .. "] " .. text .. "\n")
	f:close()
	return true
end

function getExperienceForLevel(lv)
	lv = lv - 1
	return ((50 * lv * lv * lv) - (150 * lv * lv) + (400 * lv)) / 3
end

function doMutePlayer(cid, time)
	local condition = createConditionObject(CONDITION_MUTED)
	setConditionParam(condition, CONDITION_PARAM_TICKS, time * 1000)
	return doAddCondition(cid, condition)
end

function getPlayerGroupName(cid)
	return getGroupInfo(getPlayerGroupId(cid)).name
end

function getPlayerVocationName(cid)
	return getVocationInfo(getPlayerVocation(cid)).name
end

function getPromotedVocation(vid)
	return getVocationInfo(vid).promotedVocation
end

function doPlayerRemovePremiumDays(cid, days)
	return doPlayerAddPremiumDays(cid, -days)
end

function getPlayerMasterPos(cid)
	return getTownTemplePosition(getPlayerTown(cid))
end

function getHouseOwner(houseId)
	return getHouseInfo(houseId).owner
end

function getHouseName(houseId)
	return getHouseInfo(houseId).name
end

function getHouseEntry(houseId)
	return getHouseInfo(houseId).entry
end

function getHouseRent(houseId)
	return getHouseInfo(houseId).rent
end

function getHousePrice(houseId)
	return getHouseInfo(houseId).price
end

function getHouseTown(houseId)
	return getHouseInfo(houseId).town
end

function getHouseTilesCount(houseId)
	return getHouseInfo(houseId).tiles
end

function getItemNameById(itemid)
	return getItemDescriptionsById(itemid).name
end


function getItemPluralNameById(itemid)
	return getItemDescriptionsById(itemid).plural
end

function getItemArticleById(itemid)
	return getItemDescriptionsById(itemid).article
end

function getItemName(uid)
	return getItemDescriptions(uid).name
end

function getItemPluralName(uid)
	return getItemDescriptions(uid).plural
end

function getpoke(uid)
	return getItemDescriptions(uid).nome
end

function getItemArticle(uid)
	return getItemDescriptions(uid).article
end

function getItemText(uid)
	return getItemDescriptions(uid).text
end

function getItemSpecialDescription(uid)
	return getItemDescriptions(uid).special
end

function getItemWriter(uid)
	return getItemDescriptions(uid).writer
end

function getItemDate(uid)
	return getItemDescriptions(uid).date
end

function getTilePzInfo(pos)
	return getTileInfo(pos).protection
end

function getTileZoneInfo(pos)
	local tmp = getTileInfo(pos)
	if(tmp.pvp) then
		return 2
	end

	if(tmp.nopvp) then
		return 1
	end

	return 0
end

function doShutdown()
	return doSetGameState(GAMESTATE_SHUTDOWN)
end

function doSummonCreature(name, pos, displayError)
	local displayError, cid = displayError or true, doCreateMonster(name, pos, displayError)
	if(not cid) then
		cid = doCreateNpc(name, pos, displayError)
	end

	return cid
end

function getOnlinePlayers()
	local tmp = getPlayersOnline()
	local players = {}
	for i, cid in ipairs(tmp) do
		table.insert(players, getCreatureName(cid))
	end

	return players
end

function getPlayerByName(name)
	local cid = getCreatureByName(name)
	return isPlayer(cid) and cid or nil
end

function isPlayer(cid)
	return isCreature(cid) and cid >= AUTOID_PLAYERS and cid < AUTOID_MONSTERS
end

function isPlayerGhost(cid)
	if(not isPlayer(cid)) then
		return false
	end

	return getCreatureCondition(cid, CONDITION_GAMEMASTER, GAMEMASTER_INVISIBLE) or getPlayerFlagValue(cid, PLAYERFLAG_CANNOTBESEEN)
end

function isMonster(cid)
	return isCreature(cid) and cid >= AUTOID_MONSTERS and cid < AUTOID_NPCS
end

function isNpc(cid)
	return isCreature(cid) and cid >= AUTOID_NPCS
end

function doPlayerSetExperienceRate(cid, value)
	return doPlayerSetRate(cid, SKILL__LEVEL, value)
end

function doPlayerSetMagicRate(cid, value)
	return doPlayerSetRate(cid, SKILL__MAGLEVEL, value)
end

function doPlayerAddLevel(cid, amount, round)
	local experience, level = 0, getPlayerLevel(cid)
	if(amount > 0) then
		experience = getExperienceForLevel(level + amount) - (round and getPlayerExperience(cid) or getExperienceForLevel(level))
	else
		experience = -((round and getPlayerExperience(cid) or getExperienceForLevel(level)) - getExperienceForLevel(level + amount))
	end

	return doPlayerAddExperience(cid, experience)
end

function doPlayerAddMagLevel(cid, amount)
	for i = 1, amount do
		doPlayerAddSpentMana(cid, (getPlayerRequiredMana(cid, getPlayerMagLevel(cid, true) + 1) - getPlayerSpentMana(cid)) / getConfigInfo('rateMagic'))
	end
	return true
end  

function doPlayerAddSkill(cid, skill, amount, round)
	if(skill == SKILL__LEVEL) then
		return doPlayerAddLevel(cid, amount, round)
	elseif(skill == SKILL__MAGLEVEL) then
		return doPlayerAddMagLevel(cid, amount)
	end

	return doPlayerAddSkillTry(cid, skill, (getPlayerRequiredSkillTries(cid, skill, getPlayerSkillLevel(cid, skill) + 1) - getPlayerSkillTries(cid, skill)) / getConfigInfo('rateSkill'))
end

function getPartyLeader(cid)
	local party = getPartyMembers(cid)
	if(type(party) ~= 'table') then
		return 0
	end

	return party[1]
end

function isInParty(cid)
	return type(getPartyMembers(cid)) == 'table'
end

function isPrivateChannel(channelId)
	return channelId >= CHANNEL_PRIVATE
end

function doPlayerResetIdleTime(cid)
	return doPlayerSetIdleTime(cid, 0)
end

function doBroadcastMessage(text, class)
	local class = class or MESSAGE_STATUS_WARNING
	if(type(class) == 'string') then
		local className = MESSAGE_TYPES[class]
		if(className == nil) then
			return false
		end

		class = className
	elseif(class < MESSAGE_FIRST or class > MESSAGE_LAST) then
		return false
	end

	local players = getPlayersOnline()
	for _, pid in ipairs(players) do
		doPlayerSendTextMessage(pid, class, text)
	end

	print("> Broadcasted message: \"" .. text .. "\".")
	return true
end

function doGlobalMessage(autor, text,channeltype)
	
local CHANNEL_GLOBAL = 7
--local CHANNEL_GLOBALM = 7
local players = getPlayersOnline()
--if string.find(autor,"[kpdo]") then
-- CHANNEL_GLOBALM = 13
 --else
 --CHANNEL_GLOBALM = 7
 --end
for _, pid in ipairs(players) do
doPlayerSendChannelMessage(pid, autor, text,  channeltype, CHANNEL_GLOBAL)
end
	return true
end


function doReportGlobalMessage(autor, text,channeltype)
	
local CHANNEL_GLOBAL = 3
--local CHANNEL_GLOBALM = 7
local players = getPlayersOnline()
--if string.find(autor,"[kpdo]") then
-- CHANNEL_GLOBALM = 13
 --else
 --CHANNEL_GLOBALM = 7
 --end
for _, pid in ipairs(players) do
doPlayerSendChannelMessage(pid, autor, text,  channeltype, CHANNEL_GLOBAL)
end
	return true
end

function doPlayerBroadcastMessage(cid, text, class, checkFlag, ghost)
	local checkFlag, ghost, class = checkFlag or true, ghost or false, class or TALKTYPE_BROADCAST
	if(checkFlag and not getPlayerFlagValue(cid, PLAYERFLAG_CANBROADCAST)) then
		return false
	end

	if(type(class) == 'string') then
		local className = TALKTYPE_TYPES[class]
		if(className == nil) then
			return false
		end

		class = className
	elseif(class < TALKTYPE_FIRST or class > TALKTYPE_LAST) then
		return false
	end

	local players = getPlayersOnline()
	for _, pid in ipairs(players) do
		doCreatureSay(cid, text, class, ghost, pid)
	end

	print("> " .. getCreatureName(cid) .. " broadcasted message: \"" .. text .. "\".")
	return true
end

function getBooleanFromString(input)
	local tmp = type(input)
	if(tmp == 'boolean') then
		return input
	end

	if(tmp == 'number') then
		return input > 0
	end

	local str = string.lower(tostring(input))
	return (str == "yes" or str == "true" or (tonumber(str) ~= nil and tonumber(str) > 0))
end

function doCopyItem(item, attributes)
	local attributes = attributes or false

	local ret = doCreateItemEx(item.itemid, item.type)
	if(attributes) then
		if(item.actionid > 0) then
			doItemSetAttribute(ret, "aid", item.actionid)
		end
	end

	if(isContainer(item.uid)) then
		for i = (getContainerSize(item.uid) - 1), 0, -1 do
			local tmp = getContainerItem(item.uid, i)
			if(tmp.itemid > 0) then
				doAddContainerItemEx(ret, doCopyItem(tmp, true).uid)
			end
		end
	end

	return getThing(ret)
end

function doRemoveThing(uid)
	if(isCreature(uid)) then
		return doRemoveCreature(uid)
	end

	return doRemoveItem(uid)
end

function setAttackFormula(combat, type, minl, maxl, minm, maxm, min, max)
	local min, max = min or 0, max or 0
	return setCombatFormula(combat, type, -1, 0, -1, 0, minl, maxl, minm, maxm, min, max)
end

function setHealingFormula(combat, type, minl, maxl, minm, maxm, min, max)
	local min, max = min or 0, max or 0
	return setCombatFormula(combat, type, 1, 0, 1, 0, minl, maxl, minm, maxm, min, max)
end

function doChangeTypeItem(uid, subtype)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	local subtype = subtype or 1
	return doTransformItem(thing.uid, thing.itemid, subtype)
end

function doSetItemText(uid, text, writer, date)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	doItemSetAttribute(uid, "text", text)
	if(writer ~= nil) then
		doItemSetAttribute(uid, "writer", tostring(writer))
		if(date ~= nil) then
			doItemSetAttribute(uid, "date", tonumber(date))
		end
	end

	return true
end

function getFluidSourceType(itemid)
	local item = getItemInfo(itemid)
	return item and item.fluidSource or false
end

function getDepotId(uid)
	return getItemAttribute(uid, "depotid") or false
end

function getItemDescriptions(uid)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	local item = getItemInfo(thing.itemid)
	return {
		name = getItemAttribute(uid, "name") or item.name,
		plural = getItemAttribute(uid, "pluralname") or item.plural,
		article = getItemAttribute(uid, "article") or item.article,
		special = getItemAttribute(uid, "description") or "",
		text = getItemAttribute(uid, "text") or "",
		writer = getItemAttribute(uid, "writer") or "",
                nome = getItemAttribute(uid, "nome"),
		date = getItemAttribute(uid, "date") or 0
	}	
end

function getItemWeightById(itemid, count, precision)
	local item, count, precision = getItemInfo(itemid), count or 1, precision or false
	if(not item) then
		return false
	end

	if(count > 100) then
		-- print a warning, as its impossible to have more than 100 stackable items without "cheating" the count
		print('[Warning] getItemWeightById', 'Calculating weight for more than 100 items!')
	end

	local weight = item.weight * count
	--[[if(precision) then
		return weight
	end

	local t = string.explode(tostring(weight), ".")
	if(table.maxn(t) == 2) then
		return tonumber(t[1] .. "." .. string.sub(t[2], 1, 2))
	end]]--

	return weight
end

function getItemWeaponType(uid)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	return getItemInfo(thing.itemid).weaponType
end

function getItemRWInfo(uid)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	local item, flags = getItemInfo(thing.itemid), 0
	if(item.readable) then
		flags = 1
	end

	if(item.writable) then
		flags = flags + 2
	end

	return flags
end

function getItemLevelDoor(itemid)
	local item = getItemInfo(itemid)
	return item and item.levelDoor or false
end

function isItemStackable(itemid)
	local item = getItemInfo(itemid)
	return item and item.stackable or false
end

function isItemRune(itemid)
	local item = getItemInfo(itemid)
	return item and item.clientCharges or false
end

function isItemDoor(itemid)
	local item = getItemInfo(itemid)
	return item and item.type == 5 or false
end

function isItemContainer(itemid)
	local item = getItemInfo(itemid)
	return item and item.group == 2 or false
end

function isItemFluidContainer(itemid)
	local item = getItemInfo(itemid)
	return item and item.group == 12 or false
end

function isItemMovable(itemid)
	local item = getItemInfo(itemid)
	return item and item.movable or false
end

function isCorpse(uid)
	local thing = getThing(uid)
	if(thing.itemid < 100) then
		return false
	end

	local item = getItemInfo(thing.itemid)
	return item and item.corpseType ~= 0 or false
end

function getContainerCapById(itemid)
	local item = getItemInfo(itemid)
	if(not item or item.group ~= 2) then
		return false
	end

	return item.maxItems
end

function getMonsterAttackSpells(name)
	local monster = getMonsterInfo(name)
	return monster and monster.attacks or false
end

function getMonsterHealingSpells(name)
	local monster = getMonsterInfo(name)
	return monster and monster.defenses or false
end

function getMonsterLootList(name)
	local monster = getMonsterInfo(name)
	return monster and monster.loot or false
end

function getMonsterSummonList(name)
	local monster = getMonsterInfo(name)
	return monster and monster.summons or false
end



function isTM(uid)
for rocks = 1, 12 do
if getItemAttribute(uid, "T"..rocks.."")  and  getItemAttribute(uid, "T"..rocks.."")  >= 1 then
return true
end
end
return false
end
function isMoveTm(pokenick,idtm)
checkistm = cp[pokenick]
nicktm = TM[idtm].spell
nicktm2 = string.lower(nicktm)
nmovestm = checkistm["!cd"].nmoves
for xtm = 1, nmovestm do
stringmoment = checkistm["m"..xtm..""].spell
--if string.find(string.lower(stringmoment),nicktm2) then
if string.lower(stringmoment) == nicktm2 then
return true
end
end
return false
end

function getTM(uid,move)
if getItemAttribute(uid, move)  then
tmnop = getItemAttribute(uid, move)
if tmnop >= 1 then
return getItemAttribute(uid, move)
else
return false
end
else
return false
end
return false
end


function addTM(cid,item,tm,itemid)
if isTM(item.uid) then
doPlayerSendCancel(cid, "You can only add 1 TM each pokemon")
return false
end
local Checktm = TMCHECK[tm]
local nicktm5 = getItemAttribute(item.uid, "nome")
if isShiny(nicktm5) then
nicktm5 = nicktm5:gsub("Shiny ", "")
end
if isMoveTm(nicktm5,tm) then
doPlayerSendCancel(cid, "You cant add this move, this pokemon have")
return false
end
if isInArray(Checktm,nicktm5) then
doItemSetAttribute(item.uid, "T1", tm)
else
local tmhave = "Pokemon's have This TM\n"
for i,x in pairs(Checktm) do
tmhave = tmhave.."["..i.."]"..x.."\n"
end
doShowTextDialog(cid, itemid,tmhave)
return false
end
return true
end
function isShiny(nick)
if string.find(string.lower(nick), "shiny") then
return true
else
return false
end

return false
end

function isStrong(nick)
if string.find(string.lower(nick), "strong") then
return true
else
return false
end

return false
end



function TMFind(uid)
for rocks = 1, 12 do
if getItemAttribute(uid, "T"..rocks.."")  and  getItemAttribute(uid, "T"..rocks.."")  >= 1 then
return getItemAttribute(uid, "T"..rocks.."")  
end
end
return false
end
function TMClean(uid)
for rocks = 1, 12 do
if getItemAttribute(uid, "T"..rocks.."")  and  getItemAttribute(uid, "T"..rocks.."")  >= 1 then
doItemSetAttribute(uid, "T"..rocks.."",0)
return true
end
end
return false
end
function setPokemon(cid,nivel,need,exp)
local calc = (need/100) 
local refor = (exp/calc)
if refor >= 99 then
setPokemonExp(cid,nivel,99) 
return true
end
if refor <= 0 then
setPokemonExp(cid,nivel,0) 
return true
end
if setPokemonExp(cid,nivel,math.floor(refor)) then
return true
else
return false
end
end
function sendstorm(cid,deffect,meffect,element,min1,min2)
		local function addeffect(params)
		if isCreature(params.cid) then
if params.count == 73 then
doAreaCombatHealth(params.cid, params.element, getThingPos(params.cid), AREA_CIRCLE3X3, params.min1, params.min2, 255)
return true
end
		local pos = getThingPos(params.cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(params.cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, params.deffect)
                                doSendMagicEffect(pos, params.meffect)
addEvent(addeffect, 50, {cid = params.cid,deffect = params.deffect,meffect = params.meffect,count = params.count+1,min1 = params.min1,min2 = params.min2,element = params.element})
		end
		end


addEvent(addeffect, 50, {cid = cid,deffect = deffect,meffect = meffect,count = 1,min1 = min1,min2 = min2,element = element})


end

function setNickPoke(cid,nick)
setPlayerStorageValue(cid,9000,nick)
end

function getNickPoke(cid)
local itemset = getPlayerSlotItem(cid, 8)
if itemset.itemid >= 1 then
local nome = getItemAttribute(itemset.uid, "apelido")
if nome then
return nome
else
return getItemAttribute(itemset.uid, "nome")
end
elseif #getCreatureSummons(cid) >= 1 then
return getCreatureName(getCreatureSummons(cid)[1])
end
return getCreatureName(cid)
end

function getPokeName(cid)
local itemset = getPlayerSlotItem(cid, 8)
if itemset.itemid >= 1 then
local nome = getItemAttribute(itemset.uid, "nome")
if nome then
return nome
end
if #getCreatureSummons(cid) >= 1 then
return getCreatureName(getCreatureSummons(cid)[1])
end
end
end
function getCombatByType(nick,combatee)
bonuselement = false
if combatee == ELECTRICDAMAGE then
if isInArray(electric2, nick) then
bonuselement = 2
elseif isInArray(electric1, nick) then
bonuselement = 0.5
elseif isInArray(electric0, nick) then
return false
else
bonuselement = 1
end

elseif combatee == WATERDAMAGE then
if isInArray(water2, nick) then
bonuselement = 2
elseif isInArray(water1, nick) then
bonuselement = 0.5
elseif isInArray(water0, nick) then
return false
else
bonuselement = 1
end
elseif combatee == GRASSDAMAGE then
if isInArray(grass2, nick) then
bonuselement = 2
elseif isInArray(grass1, nick) then
bonuselement = 0.5
elseif isInArray(grass0, nick) then
return false
else
bonuselement = 1
end
elseif combatee == FLYDAMAGE then
if isInArray(flying2, nick) then
bonuselement = 2
elseif isInArray(flying1, nick) then
bonuselement = 0.5
elseif isInArray(flying0, nick) then
return false
else
bonuselement = 1
end

elseif combatee == FIREDAMAGE then
if isInArray(fire2, nick) then
bonuselement = 2
elseif isInArray(fire1, nick) then
bonuselement = 0.5
elseif isInArray(fire0, nick) then
return false
else
bonuselement = 1
end
elseif combatee == ROCKDAMAGE then
if isInArray(rock2, nick) then
bonuselement = 2
elseif isInArray(rock1, nick) then
bonuselement = 0.5
elseif isInArray(rock0, nick) then
return false
else
bonuselement = 1
end

elseif combatee == GROUNDDAMAGE then
if isInArray(ground2, nick) then
bonuselement = 2
elseif isInArray(ground1, nick) then
bonuselement = 0.5
elseif isInArray(ground0, nick) then
return false
else
bonuselement = 1
end
elseif combatee == GHOSTDAMAGE then
if isInArray(ghost2, nick) then
bonuselement = 2
elseif isInArray(ghost1, nick) then
bonuselement = 0.5
elseif isInArray(ghost0, nick) then
return false
else
bonuselement = 1
end

elseif combatee == BUGDAMAGE then
if isInArray(bug2, nick) then
bonuselement = 2
elseif isInArray(bug1, nick) then
bonuselement = 0.5
elseif isInArray(bug0, nick) then
return false
else
bonuselement = 1
end


elseif combatee == NORMALDAMAGE then
if isInArray(normal2, nick) then
bonuselement = 2
elseif isInArray(normal1, nick) then
bonuselement = 0.5
elseif isInArray(normal0, nick) then
return false
else
bonuselement = 1
end
elseif combatee == FIGHTDAMAGE then
if isInArray(fighting2, nick) then
bonuselement = 2
elseif isInArray(fighting1, nick) then
bonuselement = 0.5
elseif isInArray(fighting0, nick) then
return false
else
bonuselement = 1
end
elseif combatee == POISONDAMAGE then
if isInArray(poison2, nick) then
bonuselement = 2
elseif isInArray(poison1, nick) then
bonuselement = 0.5
elseif isInArray(poison0, nick) then
return false
else
bonuselement = 1
end
elseif combatee == PSYCHICDAMAGE then
if isInArray(psychic2, nick) then
bonuselement = 1.2
elseif isInArray(psychic1, nick) then
bonuselement = 0.5
elseif isInArray(psychic0, nick) then
return false
else
bonuselement = 1
end
elseif combatee == ICEDAMAGE then
if isInArray(ice2, nick) then
bonuselement = 2
elseif isInArray(ice1, nick) then
bonuselement = 0.5
elseif isInArray(ice0, nick) then
return false
else
bonuselement = 1
end

elseif combatee == DRAGONDAMAGE then
if isInArray(dragon2, nick) then
bonuselement = 1.2
elseif isInArray(dragon1, nick) then
bonuselement = 0.5
elseif isInArray(dragon0, nick) then
return false
else
bonuselement = 1
end
elseif combatee == DARKDAMAGE then
if isInArray(dark2, nick) then
bonuselement = 2
elseif isInArray(dark1, nick) then
bonuselement = 0.5
elseif isInArray(dark0, nick) then
return false
else
bonuselement = 1
end
elseif combatee == STEELDAMAGE then
if isInArray(steel2, nick) then
bonuselement = 2
elseif isInArray(steel1, nick) then
bonuselement = 0.5
elseif isInArray(steel0, nick) then
return false
else
bonuselement = 1
end
else
bonuselement = 1
end
return bonuselement
end

function isTV(cid)
for x = 0, 100 do
local player = getGlobalStorageValue(500+x)
if isPlayer(player) and player == cid then
return true
end
end
return false
end

function ilusiontv(cid)
local postv = {x = 1550,y = 591,z = 7}
local tvclone = doCreateMonster("Tall Grass", postv)
doSetCreatureOutfit(tvclone, getCreatureOutfit(cid), -1)
doTeleportThing(tvclone, getCreaturePosition(cid))
setPlayerStorageValue(tvclone,1,cid)
registerCreatureEvent(tvclone, "Ilusion")
doCreatureSetHideHealth(tvclone,true)
end

function doCopyFile(file, newfile)
    local fil = io.open(file, "r")
    local text = fil:read("*a")
    local fil2 = io.open(newfile, "a+")
    fil2:write(text)
    fil2:close()
    fil:close()
return TRUE
end
function doEditName(file, newname, oldname)
    local fil = io.open(file, "a+")
    local text = fil:read("*all")
    fil:close()
    local k,x = text:find(oldname)
    local wrt = text:sub(1, k-1) .. newname .. text:sub(x+1)
    local fip = io.open(file, "w")
    fip:write(wrt)
    fip:close()
return TRUE
end
function ilusiontvnpc(cid,stringtv)
local postv = {x = 1550,y = 591,z = 7}
doCopyFile("data/npc/tv.xml","data/npc/tv"..getCreatureName(cid)..".xml")
doEditName("data/npc/tv"..getCreatureName(cid)..".xml", "[TV]"..getCreatureName(cid), "sxs")
local tvclone = doCreateNpc("tv"..getCreatureName(cid).."", postv, false)
os.remove("data/npc/tv"..getCreatureName(cid)..".xml")
doSetCreatureOutfit(tvclone, getCreatureOutfit(cid), -1)
doTeleportThing(tvclone, getCreaturePosition(cid))
setPlayerStorageValue(tvclone,1,cid)
registerCreatureEvent(tvclone, "Ilusion")
end


function isSound(cid)
if getPlayerStorageValue(cid,111111) >= 1 then
return true
else
return false
end
return false
end

function setSound(cid,mode)
setPlayerStorageValue(cid,111111,mode)
return true
end

function getPokeExpStage(st)
local nivel = st
local stage = 1
if nivel <= 5 then
stage = 5
elseif nivel <= 10 then
stage = 4
elseif nivel <= 25 then
stage = 3
elseif nivel <= 55 then
stage = 2
end
return stage
end

function getPokemonStage(st)
local nivel = st
local stage = 1
if nivel <= 5 then
stage = 1
elseif nivel <= 10 then
stage = 2
elseif nivel <= 45 then
stage = 3
elseif nivel <= 55 then
stage = 4
elseif nivel <= 100 then
stage = 5
elseif nivel <= 200 then
stage = nivel*0.02
elseif nivel <= 300 then
stage = nivel*0.03
elseif nivel <= 400 then
stage = nivel*0.04
elseif nivel <= 500 then
stage = nivel*0.05
elseif nivel <= 600 then
stage = nivel*0.06
elseif nivel <= 700 then
stage = nivel*0.07
elseif nivel <= 800 then
stage = nivel*0.08
elseif nivel <= 900 then
stage = nivel*0.09
elseif nivel <= 1000 then
stage = nivel*0.10
elseif nivel <= 1100 then
stage = nivel*0.11
elseif nivel <= 1200 then
stage = nivel*0.12
elseif nivel <= 1300 then
stage = nivel*0.13
elseif nivel <= 1400 then
stage = nivel*0.14
elseif nivel <= 1500 then
stage = nivel*0.15
elseif nivel <= 1600 then
stage = nivel*0.16
elseif nivel <= 1700 then
stage = nivel*0.17
elseif nivel <= 1800 then
stage = nivel*0.18
elseif nivel <= 1900 then
stage = nivel*0.19
elseif nivel <= 2000 then
stage = nivel*0.20
elseif nivel <= 2100 then
stage = nivel*0.21
elseif nivel <= 2200 then
stage = nivel*0.22
elseif nivel <= 2300 then
stage = nivel*0.23
elseif nivel <= 2400 then
stage = nivel*0.24
elseif nivel <= 2500 then
stage = nivel*0.25
elseif nivel <= 2600 then
stage = nivel*0.26
elseif nivel <= 2700 then
stage = nivel*0.27
elseif nivel <= 2800 then
stage = nivel*0.28
elseif nivel <= 2900 then
stage = nivel*0.29
elseif nivel <= 3000 then
stage = nivel*0.30
else
stage = nivel/50
end
return stage
end

function setPlayerTutor(cid,value)
if value == 0 then
setPlayerStorageValue(cid,44444,nil)
return true
end
setPlayerStorageValue(cid,44444,value)
return true
end

function isTutor(cid)
if getPlayerStorageValue(cid,44444) >= 1 then
return getPlayerStorageValue(cid,44444)
end
return false
end
function isSeniorTutor(cid)
if getPlayerStorageValue(cid,44444) >= 2 then
return getPlayerStorageValue(cid,44444)
end
return false
end


function doCleanStorage(cid,value)
setPlayerStorageValue(cid,value,nil)
	return true
end
function isTorunament(value)
if getGlobalStorageValue(169753) >= 1 then
return true
end
return false
end

function isTorneio(value)
if getGlobalStorageValue(77782) >= 1 then
return true
end
return false
end

function doTransformUid(item,item2)
local uid1 = getItemAttribute(item.uid, "uid")
local uid2 = getItemAttribute(item2.uid, "uid")
doItemSetAttribute(item.uid, "uid", uid2)
doItemSetAttribute(item2.uid, "uid", uid1)
return true
end

function doCloneBall(cid,item,item2)

local nome = getItemAttribute(item, "nome")

local nome2 = getItemAttribute(item2, "nome")
local fine = getItemAttribute(item, "fine")
local fine2 = getItemAttribute(item2, "fine")
local apelido = getItemAttribute(item, "apelido")
local apelido2 = getItemAttribute(item2, "apelido")
local description = getItemAttribute(item, "description")
local description2 = getItemAttribute(item2, "description")
local boost = getItemAttribute(item, "boost")
local boost2 = getItemAttribute(item2, "boost")
local exp = getItemAttribute(item, "exp")
local exp2 = getItemAttribute(item2, "exp")
local expb = getItemAttribute(item, "exp2")
local expb2 = getItemAttribute(item2, "exp2")
local catchby = getItemAttribute(item, "catchby")
local catchby2 = getItemAttribute(item2, "catchby")

local ma1 = getItemAttribute(item, "m1")
local mb1 = getItemAttribute(item2, "m1")
local ma2 = getItemAttribute(item ,"m2")
local mb2 = getItemAttribute(item2, "m2")
local ma3 = getItemAttribute(item, "m3")
local mb3 = getItemAttribute(item2, "m3")
local ma4 = getItemAttribute(item, "m4")
local mb4 = getItemAttribute(item2, "m4")
local ma5 = getItemAttribute(item, "m5")
local mb5 = getItemAttribute(item2, "m5")
local ma6 = getItemAttribute(item, "m6")
local mb6 = getItemAttribute(item2, "m6")
local ma7 = getItemAttribute(item, "m7")
local mb7 = getItemAttribute(item2, "m7")
local ma8 = getItemAttribute(item, "m8")
local mb8 = getItemAttribute(item2, "m8")
local ma9 = getItemAttribute(item, "m9")
local mb9 = getItemAttribute(item2, "m9")
local ma10 = getItemAttribute(item, "m10")
local mb10 = getItemAttribute(item2, "m10")
local ma11 = getItemAttribute(item ,"m11")
local mb11 = getItemAttribute(item2, "m11")
local ma12 = getItemAttribute(item, "m12")
local mb12 = getItemAttribute(item2, "m12")
local candy = getItemAttribute(item, "candy")
local candy2 = getItemAttribute(item2, "candy")
local ditto = getItemAttribute(item, "cold")
local ditto2 = getItemAttribute(item2, "cold")
local outifit = getItemAttribute(item, "outifit")
local outifit2 = getItemAttribute(item2, "outifit")
local nomepoke = getItemAttribute(item, "nomepoke")
local nomepoke2 = getItemAttribute(item2, "nomepoke")
local fb = getItemAttribute(item, "fb") 
local fb2 = getItemAttribute(item2, "fb") 
local fg = getItemAttribute(item, "fg")
local fg2 = getItemAttribute(item2, "fg")
local tmkpdo = 0
local tmkpdo2 = 0
local ptm = false
local ptm2 = false
local sexy = getItemAttribute(item, "sexy")
local sexy2 = getItemAttribute(item2, "sexy")
local aura = getItemAttribute(item, "aura")
local aura2 = getItemAttribute(item2, "aura")

if isTM(item) then
for rocks = 1, 12 do 
if getTM(item,"T"..rocks.."") then
tmkpdo = getTM(item,"T"..rocks.."")
ptm = rocks
end

end
TMClean(item)
end
if isTM(item2) then
for rocks = 1, 12 do 
if getTM(item2,"T"..rocks.."") then
tmkpdo2 = getTM(item2,"T"..rocks.."")
ptm2 = rocks
end

end
TMClean(item2)

end
doItemSetAttribute(item, "nome", nome2)
doItemSetAttribute(item2, "nome", nome)
if fine then
doItemSetAttribute(item, "fine", fine2)
end
if fine2 then
doItemSetAttribute(item2, "fine", fine)
end

if apelido or apelido2 then
doItemSetAttribute(item2, "apelido", nome)
doItemSetAttribute(item, "apelido", nome2)
end

if exp or exp2 then
doItemSetAttribute(item, "exp", "0")
doItemSetAttribute(item2, "exp", "0")
doItemSetAttribute(item, "exp2", "0")
doItemSetAttribute(item2, "exp2", "0")
end


if boost or boost2 then
doItemSetAttribute(item, "boost", "0")
doItemSetAttribute(item2, "boost", "0")
end

if candy or candy2 then
doItemSetAttribute(item, "candy", "0")
doItemSetAttribute(item2, "candy", "0")
end


if aura or aura2 then
doItemSetAttribute(item, "aura", "0")
doItemSetAttribute(item2, "aura", "0")
end


if apelido2 then

doItemSetAttribute(item, "apelido", apelido2)

end
if apelido then
doItemSetAttribute(item2, "apelido", apelido)
end
if description2 then
doItemSetAttribute(item, "description", description2)
end
if description then
doItemSetAttribute(item2, "description", description)
end
if boost2 then
doItemSetAttribute(item, "boost", boost2)
end
if boost then
doItemSetAttribute(item2, "boost", boost)
end

if candy2 then
doItemSetAttribute(item, "candy", candy2)
end
if candy then
doItemSetAttribute(item2, "candy", candy)
end

if exp2 then
doItemSetAttribute(item, "exp", exp2)
end
if exp then
doItemSetAttribute(item2, "exp", exp)
end
if expb2 then
doItemSetAttribute(item, "exp2", expb2)
end
if expb then
doItemSetAttribute(item2, "exp2", expb)
end
if catchby2 then
doItemSetAttribute(item, "catchby", catchby2)
end
if catchby then
doItemSetAttribute(item2, "catchby", catchby)
end

if tmkpdo2 >= 1 then
doItemSetAttribute(item, "T"..ptm2.."", tmkpdo2)
end
if tmkpdo >= 1 then
doItemSetAttribute(item2, "T"..ptm.."", tmkpdo)
end
if nomepoke2 then
doItemSetAttribute(item, "nomepoke", nomepoke2)
end
if nomepoke then
doItemSetAttribute(item2, "nomepoke", nomepoke)
end

if ditto2 then
doItemSetAttribute(item, "cold", ditto2)
end
if ditto then
doItemSetAttribute(item2, "cold", ditto)
end

if outifit2 then
doItemSetAttribute(item, "outifit", outifit2)
end
if outifit then
doItemSetAttribute(item2, "outifit", outifit)
end

doItemSetAttribute(item, "fg", "null")
doItemSetAttribute(item2, "fg", "null")
doItemSetAttribute(item, "fb", "null")
doItemSetAttribute(item2, "fb", "null")
doItemSetAttribute(item, "m1", "0")
doItemSetAttribute(item2, "m1", "0")
doItemSetAttribute(item, "m2", "0")
doItemSetAttribute(item2, "m2", "0")
doItemSetAttribute(item, "m3", "0")
doItemSetAttribute(item2, "m3", "0")
doItemSetAttribute(item, "m4", "0")
doItemSetAttribute(item2, "m4", "0")
doItemSetAttribute(item, "m5", "0")
doItemSetAttribute(item2, "m5", "0")
doItemSetAttribute(item, "m6", "0")
doItemSetAttribute(item2, "m6", "0")
doItemSetAttribute(item, "m7", "0")
doItemSetAttribute(item2, "m7", "0")
doItemSetAttribute(item, "m8", "0")
doItemSetAttribute(item2, "m8", "0")
doItemSetAttribute(item, "m9", "0")
doItemSetAttribute(item2, "m9", "0")
doItemSetAttribute(item, "m10", "0")
doItemSetAttribute(item2, "m10", "0")
doItemSetAttribute(item, "m11", "0")
doItemSetAttribute(item2, "m11", "0")
doItemSetAttribute(item, "m12", "0")
doItemSetAttribute(item2, "m12", "0")
if ma1 then
doItemSetAttribute(item2, "m1", ma1)
end
if mb1 then
doItemSetAttribute(item, "m1", mb1)
end

if ma2 then
doItemSetAttribute(item2, "m2", ma2)
end
if mb2 then
doItemSetAttribute(item, "m2", mb2)
end

if ma3 then
doItemSetAttribute(item2, "m3", ma3)
end
if mb3 then
doItemSetAttribute(item, "m3", mb3)
end
if ma4 then
doItemSetAttribute(item2, "m4", ma4)
end
if mb4 then
doItemSetAttribute(item, "m4", mb4)
end
if ma5 then
doItemSetAttribute(item2, "m5", ma5)
end
if mb5 then
doItemSetAttribute(item, "m5", mb5)
end

if ma6 then
doItemSetAttribute(item2, "m6", ma6)
end
if mb6 then
doItemSetAttribute(item, "m6", mb6)
end

if ma7 then
doItemSetAttribute(item2, "m7", ma7)
end
if mb7 then
doItemSetAttribute(item, "m7", mb7)
end

if ma8 then
doItemSetAttribute(item2, "m8", ma8)
end
if mb8 then
doItemSetAttribute(item, "m8", mb8)
end

if ma9 then
doItemSetAttribute(item2, "m9", ma9)
end
if mb9 then
doItemSetAttribute(item, "m9", mb9)
end

if ma10 then
doItemSetAttribute(item2, "m10", ma10)
end
if mb10 then
doItemSetAttribute(item, "m10", mb10)
end

if ma11 then
doItemSetAttribute(item2, "m11", ma11)
end
if mb11 then
doItemSetAttribute(item, "m11", mb11)
end

if ma12 then
doItemSetAttribute(item2, "m12", ma12)
end
if mb12 then
doItemSetAttribute(item, "m12", mb12)
end



if fb2 then
doItemSetAttribute(item, "fb", fb2)
end
if fb then
doItemSetAttribute(item2, "fb", fb)
end
if fg2 then
doItemSetAttribute(item, "fg", fg2)
end
if fg then
doItemSetAttribute(item2, "fg", fg)
end
if aura2 then
doItemSetAttribute(item, "aura", aura2)
end
if aura then
doItemSetAttribute(item2, "aura", aura)
end
if sexy2 then
doItemSetAttribute(item, "sexy", sexy2)
else
doItemSetAttribute(item, "sexy", math.random(4,5))
end
if sexy then
doItemSetAttribute(item2, "sexy", sexy)
else
doItemSetAttribute(item2, "sexy", math.random(4,5))
end



return true
end






function Torneio(value,cid,other)
local numerodoevento = getGlobalStorageValue(16980)
if numerodoevento >= 1 then
numerodoevento = numerodoevento
else
numerodoevento = 1
end
setPlayerStorageValue(cid,169780,nil)
if value == 1 then
doPlayerSendTextMessage(cid, 27, "Congratulations You are a Winner, take this")
doPlayerAddItem(cid, 7886, 1)
local trofeu = doPlayerAddItem(cid, 7749, 1)
local descri = "Reward #"..numerodoevento.." Event ,Tournament("..getCreatureName(cid)..")."
doItemSetAttribute(trofeu, "description", descri)
doTeleportThing(cid,getTownTemplePosition(getPlayerTown(cid)))
elseif value == 2 then
doPlayerSendTextMessage(cid, 27, "Congratulations You are a Second Position take this")
doPlayerAddItem(cid, 7885, 1)
local trofeu = doPlayerAddItem(cid, 7748, 1)
local descri = "Reward #"..numerodoevento.." Event ,Tournament("..getCreatureName(cid)..")."
doItemSetAttribute(trofeu, "description", descri)
if isPlayer(other) then
doPlayerSendTextMessage(other, 27, "Congratulations You are a three Position, take this")
doPlayerAddItem(other, 7886, 1)
local trofeu = doPlayerAddItem(other, 7749, 1)
local descri = "Reward #"..numerodoevento.." Event ,Tournament("..getCreatureName(other)..")."
doItemSetAttribute(trofeu, "description", descri)
doTeleportThing(other,getTownTemplePosition(getPlayerTown(other)))
setPlayerStorageValue(other,169753,nil)
end
return true
elseif value == 3 then
doPlayerSendTextMessage(cid, 27, "Congratulations You are a THIRD SURVIVOR, take this")
doPlayerAddItem(cid, 7885, 1)
local trofeu = doPlayerAddItem(cid, 7747, 1)
local descri = "Reward #"..numerodoevento.." Event ,THIRD SURVIVOR("..getCreatureName(cid)..")."
doItemSetAttribute(trofeu, "description", descri)
return true
end
return false
end

function getTorunament(value,cid,other)
local numerodoevento = getGlobalStorageValue(169754)
if numerodoevento >= 1 then
numerodoevento = numerodoevento
else
numerodoevento = 1
end
setPlayerStorageValue(cid,169753,nil)
if value == 1 then
doPlayerSendTextMessage(cid, 27, "Congratulations You are a LAST SURVIVOR, take this")
doPlayerAddItem(cid, 7886, 1)
local trofeu = doPlayerAddItem(cid, 7749, 1)
local descri = "Reward #"..numerodoevento.." Event ,LAST SURVIVOR("..getCreatureName(cid)..")."
doItemSetAttribute(trofeu, "description", descri)
doTeleportThing(cid,getTownTemplePosition(getPlayerTown(cid)))
elseif value == 2 then
doPlayerSendTextMessage(cid, 27, "Congratulations You are a SECOND SURVIVOR, take this")
doPlayerAddItem(cid, 7885, 1)
local trofeu = doPlayerAddItem(cid, 7748, 1)
local descri = "Reward #"..numerodoevento.." Event ,SECOND SURVIVOR("..getCreatureName(cid)..")."
doItemSetAttribute(trofeu, "description", descri)
if isPlayer(other) then
doPlayerSendTextMessage(other, 27, "Congratulations You are a LAST SURVIVOR, take this")
doPlayerAddItem(other, 7886, 1)
local trofeu = doPlayerAddItem(other, 7749, 1)
local descri = "Reward #"..numerodoevento.." Event ,LAST SURVIVOR("..getCreatureName(other)..")."
doItemSetAttribute(trofeu, "description", descri)
doTeleportThing(other,getTownTemplePosition(getPlayerTown(other)))
setPlayerStorageValue(other,169753,nil)
end
return true
elseif value == 3 then
doPlayerSendTextMessage(cid, 27, "Congratulations You are a THIRD SURVIVOR, take this")
doPlayerAddItem(cid, 7885, 1)
local trofeu = doPlayerAddItem(cid, 7747, 1)
local descri = "Reward #"..numerodoevento.." Event ,THIRD SURVIVOR("..getCreatureName(cid)..")."
doItemSetAttribute(trofeu, "description", descri)
return true
end
return false
end

function setTorunament(value)
if value == false then
local valor = getGlobalStorageValue(169753)
setGlobalStorageValue(169753,valor-1)
elseif value == true then
--setGlobalStorageValue(169753,0)
local numerodoevento = getGlobalStorageValue(169754)
if numerodoevento >= 1 then
numerodoevento = numerodoevento+1
else
numerodoevento = 1
end
setGlobalStorageValue(169754,numerodoevento)
end
return true
end
function addStatics(storage)
local valor = getGlobalStorageValue(storage)
if valor >= 1 then
setGlobalStorageValue(storage,valor+1)
else
setGlobalStorageValue(storage,1)
end
return true
end