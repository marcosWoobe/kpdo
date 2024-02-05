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
function healPokes(cid)
local pokeballs = {'2222', '2224'}
local ultraballs = {'2220', '2227'}
local superballs = {'2653', '2542'}
local greatballs = {'2652', '2541'}
local unikeballs = {'189', '191'}
local hyperballs = {'198', '200'}
local saffariballs = {'2200', '197'}
local giantball = {'11213', '11214'}


	for x = 31000, 31011 do
exhaustion.set(cid, x, 0)
	end
	
if isInArray(pokeballs, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
	local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
               doItemSetAttribute(feet.uid, "fine", 100)
			   			doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
	doTransformItem(feet.uid, 2222)
	end
	if isInArray(ultraballs, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
	local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
               doItemSetAttribute(feet.uid, "fine", 100)
			   			doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
	doTransformItem(feet.uid, 2220)
	end
	if isInArray(superballs, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
	local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
                doItemSetAttribute(feet.uid, "fine", 100)
							doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
	doTransformItem(feet.uid, 2653)
	end
if isInArray(greatballs, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
	local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
	doItemSetAttribute(feet.uid, "fine", 100)
				doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
	doTransformItem(feet.uid, 2652)
	end
	if isInArray(unikeballs, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
	local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
                doItemSetAttribute(feet.uid, "fine", 100)
							doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
	doTransformItem(feet.uid, 189)
	end
	if isInArray(hyperballs, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
	local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
                doItemSetAttribute(feet.uid, "fine", 100)
							doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
	doTransformItem(feet.uid, 198)
	end
if isInArray(saffariballs, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
	local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
                doItemSetAttribute(feet.uid, "fine", 100)
				doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
	doTransformItem(feet.uid, 2200)
	end
	if isInArray(giantball, getPlayerSlotItem(cid, CONST_SLOT_FEET).itemid) then
	local feet = getPlayerSlotItem(cid, CONST_SLOT_FEET)
                doItemSetAttribute(feet.uid, "fine", 100)
				doItemSetAttribute(feet.uid, "m1", "0")
doItemSetAttribute(feet.uid, "m2", "0")
doItemSetAttribute(feet.uid, "m3", "0")
doItemSetAttribute(feet.uid, "m4", "0")
doItemSetAttribute(feet.uid, "m5", "0")
doItemSetAttribute(feet.uid, "m6", "0")
doItemSetAttribute(feet.uid, "m7", "0")
doItemSetAttribute(feet.uid, "m8", "0")
doItemSetAttribute(feet.uid, "m9", "0")
doItemSetAttribute(feet.uid, "m10", "0")
doItemSetAttribute(feet.uid, "m11", "0")
doItemSetAttribute(feet.uid, "m12", "0")
	doTransformItem(feet.uid, 11213)
	end
		local bp = getPlayerSlotItem(cid, CONST_SLOT_BACKPACK)
			if #getCreatureSummons(cid) >= 1 then
			local jui = getCreatureSummons(cid)[1]
			doCreatureAddHealth(jui, getCreatureMaxHealth(jui)-getCreatureHealth(jui))
			doSendMagicEffect(getThingPos(jui), 12)
			end
			local items = getItemsInContainerById(bp.uid, 2224)
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			doTransformItem(uid, 2222)
			end
                       local items = getItemsInContainerById(bp.uid, 2541)
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			doTransformItem(uid, 2652)
			end
     local items = getItemsInContainerById(bp.uid, 2542)
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			doTransformItem(uid, 2653)
			end
			local items = getItemsInContainerById(bp.uid, 2227) 
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			doTransformItem(uid, 2220)
			end
			local items = getItemsInContainerById(bp.uid, 2222) 
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			end
					local items = getItemsInContainerById(bp.uid, 11213) 
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			end
local items = getItemsInContainerById(bp.uid, 2653) 
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			end
local items = getItemsInContainerById(bp.uid, 2652) 
			for _, uid in pairs(items) do
	doItemSetAttribute(uid, "fine", 100)
	doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			end
			local items = getItemsInContainerById(bp.uid, 2220) 
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			end
	local items = getItemsInContainerById(bp.uid, 189) 
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			end
	local items = getItemsInContainerById(bp.uid, 2200) 
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			end
local items = getItemsInContainerById(bp.uid, 198) 
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			end
	local items = getItemsInContainerById(bp.uid, 200) 
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
			doTransformItem(uid, 198)
			doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			end
	local items = getItemsInContainerById(bp.uid, 197) 
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)
			doTransformItem(uid, 2200)
			doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			end
local items = getItemsInContainerById(bp.uid, 191) 
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)

			doTransformItem(uid, 189)
			doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			end
			local items = getItemsInContainerById(bp.uid, 11214) 
			for _, uid in pairs(items) do
doItemSetAttribute(uid, "fine", 100)

			doTransformItem(uid, 11213)
			doItemSetAttribute(uid, "m1", "0")
doItemSetAttribute(uid, "m2", "0")
doItemSetAttribute(uid, "m3", "0")
doItemSetAttribute(uid, "m4", "0")
doItemSetAttribute(uid, "m5", "0")
doItemSetAttribute(uid, "m6", "0")
doItemSetAttribute(uid, "m7", "0")
doItemSetAttribute(uid, "m8", "0")
doItemSetAttribute(uid, "m9", "0")
doItemSetAttribute(uid, "m10", "0")
doItemSetAttribute(uid, "m11", "0")
doItemSetAttribute(uid, "m12", "0")
			end
			
			
			return true
			end
			
function addReward(winner,loser,categoria)
local playerduel = 223023 -- playerstorage
local subscribe = 223024 -- playerstorage 
local enabledtour = 223025 -- globalstorage
local listsubscribe = 223026 -- globalstorage
local countsubscribe = 223027 -- globalstorage
local start = 223028 -- globalstorage
local goldsub = 223029 -- globalstorage
local silversub = 223030 -- globalstorage
local bronzesub = 223031 -- globalstorage
local gold = 1
local silver = 2
local bronze = 3





if categoria == gold then
 doPlayerAddItem(winner, 2159,100) 
 doPlayerAddItem(loser, 2159,50) 
doPlayerSendTextMessage(winner, 27, "Congratulations You are a Winner, take this")
local trofeu = doPlayerAddItem(winner, 7752, 1)
local numerodoevento = getGlobalStorageValue(start+categoria)
local descri = "Reward #"..numerodoevento.." Event ,Tournament Gold("..getCreatureName(winner)..")."
doItemSetAttribute(trofeu, "description", descri)
local posttpa = getTownTemplePosition(getPlayerTown(winner))
if #getCreatureSummons(winner) >= 1 then
doTeleportThing(getCreatureSummons(winner)[1],posttpa)
end
doTeleportThing(winner,posttpa)

doPlayerSendTextMessage(loser, 27, "Congratulations You are a Second Position take this")
local trofeu = doPlayerAddItem(loser, 7751, 1)
local descri = "Reward #"..numerodoevento.." Event ,Tournament Gold("..getCreatureName(loser)..")."
doItemSetAttribute(trofeu, "description", descri)
local posttp = getTownTemplePosition(getPlayerTown(loser))
if #getCreatureSummons(loser) >= 1 then
doTeleportThing(getCreatureSummons(loser)[1],posttp)
end
doTeleportThing(loser,posttp)
doBroadcastMessage("Tournament Gold will end ,First Position "..getCreatureName(winner)..", Second Position "..getCreatureName(loser).." .")
end
if categoria == silver then
 doPlayerAddItem(winner, 2159,50) 
 doPlayerAddItem(loser, 2159,25) 
doPlayerSendTextMessage(winner, 27, "Congratulations You are a Winner, take this")
local trofeu = doPlayerAddItem(winner, 7752, 1)
local numerodoevento = getGlobalStorageValue(start+categoria)
local descri = "Reward #"..numerodoevento.." Event ,Tournament Silver("..getCreatureName(winner)..")."
doItemSetAttribute(trofeu, "description", descri)

local posttpa = getTownTemplePosition(getPlayerTown(winner))
if #getCreatureSummons(winner) >= 1 then
doTeleportThing(getCreatureSummons(winner)[1],posttpa)
end
doTeleportThing(winner,posttpa)

doPlayerSendTextMessage(loser, 27, "Congratulations You are a Second Position take this")
local trofeu = doPlayerAddItem(loser, 7751, 1)
local descri = "Reward #"..numerodoevento.." Event ,Tournament Silver("..getCreatureName(loser)..")."
doItemSetAttribute(trofeu, "description", descri)
local posttp = getTownTemplePosition(getPlayerTown(loser))
if #getCreatureSummons(loser) >= 1 then
doTeleportThing(getCreatureSummons(loser)[1],posttp)
end
doTeleportThing(loser,posttp)
doBroadcastMessage("Tournament Silver will end ,First Position "..getCreatureName(winner)..", Second Position "..getCreatureName(loser).." .")
end

if categoria == bronze then
 doPlayerAddItem(winner, 2159,25) 
 doPlayerAddItem(loser, 2159,10) 
doPlayerSendTextMessage(winner, 27, "Congratulations You are a Winner, take this")
local trofeu = doPlayerAddItem(winner, 7752, 1)
local numerodoevento = getGlobalStorageValue(start+categoria)
local descri = "Reward #"..numerodoevento.." Event ,Tournament Bronze("..getCreatureName(winner)..")."

local posttpa = getTownTemplePosition(getPlayerTown(winner))
if #getCreatureSummons(winner) >= 1 then
doTeleportThing(getCreatureSummons(winner)[1],posttpa)
end
doItemSetAttribute(trofeu, "description", descri)
doTeleportThing(winner,posttpa)

doPlayerSendTextMessage(loser, 27, "Congratulations You are a Second Position take this")
local trofeu = doPlayerAddItem(loser, 7751, 1)
local descri = "Reward #"..numerodoevento.." Event ,Tournament Bronze("..getCreatureName(loser)..")."
doItemSetAttribute(trofeu, "description", descri)
local posttp = getTownTemplePosition(getPlayerTown(loser))
if #getCreatureSummons(loser) >= 1 then
doTeleportThing(getCreatureSummons(loser)[1],posttp)
end
doTeleportThing(loser,posttp)

doBroadcastMessage("Tournament Bronze will end ,First Position "..getCreatureName(winner)..", Second Position "..getCreatureName(loser).." .")
end

setGlobalStorageValue(enabledtour,nil)
setGlobalStorageValue(listsubscribe,"nulo")
setGlobalStorageValue(countsubscribe,nil)
setGlobalStorageValue(start,nil)

end

 function getarena()
  local playerduel = 223023 -- playerstorage
local subscribe = 223024 -- playerstorage 
local enabledtour = 223025 -- globalstorage
local listsubscribe = 223026 -- globalstorage
local countsubscribe = 223027 -- globalstorage
local start = 223028 -- globalstorage
local goldsub = 223029 -- globalstorage
local silversub = 223030 -- globalstorage
local bronzesub = 223031 -- globalstorage
local globaluse = 223032 -- globalstorage
local playeruse = 223033 -- playerstorage
local gold = 1
local silver = 2
local bronze = 3
local posColiseum = {x =953 ,y =688 ,z = 7}
 for arena = 1 , 10 do
 if getGlobalStorageValue(globaluse+arena) <= 0 then
 return arena
 end
 
 end
 
 return false
 end
 
 function Cleanarena()
local globaluse = 223032 -- globalstorage
 for arena = 1 , 10 do
setGlobalStorageValue(globaluse+arena,0)
end
return true
end
 
 
 function tourstart()
 local playerduel = 223023 -- playerstorage
local subscribe = 223024 -- playerstorage 
local enabledtour = 223025 -- globalstorage
local listsubscribe = 223026 -- globalstorage
local countsubscribe = 223027 -- globalstorage
local start = 223028 -- globalstorage
local goldsub = 223029 -- globalstorage
local silversub = 223030 -- globalstorage
local bronzesub = 223031 -- globalstorage
local globaluse = 223032 -- globalstorage
local playeruse = 223033 -- playerstorage
local gold = 1
local silver = 2
local bronze = 3
local posColiseum = {x =953 ,y =688 ,z = 7}
local arenabattlep = {
[1] = {x = 478,nome = "Psychic"},
[2] = {x = 531,nome = "Venom"},
[3] = {x = 577,nome = "Rock"},
[4] = {x = 625,nome = "Fire"},
[5] = {x = 685,nome = "Ground"},
[6] = {x = 750,nome = "Grass"},
[7] = {x = 813,nome = "Ice"},
[8] = {x = 884,nome = "Water"},
[9] = {x = 947,nome = "Dark"},
[10] = {x = 1023,nome = "Electric"},
}
local countsta = getGlobalStorageValue(countsubscribe)
if countsta <= 2 then
 doBroadcastMessage("Tournament Canceled minime is 3 players.")
 setGlobalStorageValue(enabledtour,nil)
setGlobalStorageValue(listsubscribe,"nulo")
setGlobalStorageValue(countsubscribe,nil)
setGlobalStorageValue(start,nil)
local players = getPlayersOnline()
 for _, pid in ipairs(players) do
  if getPlayerStorageValue(pid,subscribe) >= 1 then
  setPlayerStorageValue(pid,subscribe,0)
  end
  end
  
 return true
 end
setGlobalStorageValue(start,1)

local players = getPlayersOnline()

setGlobalStorageValue(countsubscribe,0)
local countst = 0
local formulario = "nulo"

 for _, pid in ipairs(players) do
 if getPlayerStorageValue(pid,subscribe) == getGlobalStorageValue(enabledtour) then
 if formulario == "nulo" then
formulario = getCreatureName(pid)
else
formulario = formulario..","..getCreatureName(pid)
end


 countst = countst+1
 setGlobalStorageValue(countsubscribe,countst)
 if #getCreatureSummons(pid) >= 1 then
doTeleportThing(getCreatureSummons(pid)[1], getClosestFreeTile(getCreatureSummons(pid)[1], posColiseum))
end
       doTeleportThing(pid, getClosestFreeTile(pid, posColiseum))
 end
 end
 setGlobalStorageValue(listsubscribe,formulario)
 local playerstring = string.explode(formulario, ",") 
 
 for i = 1 , 20 do
local player = getPlayerByName(playerstring[i])
local enemy = getPlayerByName(playerstring[i+1])
if isPlayer(player) and isPlayer(enemy) then
if getPlayerStorageValue(player,playerduel) <= 0 and getPlayerStorageValue(enemy,playerduel) <= 0 then

local arena = getarena()
if not arena then
return doBroadcastMessage("Tournament Battle begin have "..countst.."/"..countsta.." players subscribes.")
end
local posarena = arenabattlep[arena]

if not posarena then
return doBroadcastMessage("Tournament Battle begin have "..countst.."/"..countsta.." players subscribes.")
end
setGlobalStorageValue(globaluse+arena,1)
setPlayerStorageValue(enemy,playeruse,globaluse+arena)
setPlayerStorageValue(player,playeruse,globaluse+arena)


if #getCreatureSummons(player) >= 1 then
doTeleportThing(getCreatureSummons(player)[1],{x = posarena.x,y=24, z=14})
end

doTeleportThing(player, {x= posarena.x,y=24, z=14} )


if #getCreatureSummons(enemy) >= 1 then
doTeleportThing(getCreatureSummons(enemy)[1],{x =posarena.x+6,y=24, z=14})
end
setPlayerStorageValue(enemy,223023,1)
setPlayerStorageValue(player,223023,1)
doTeleportThing(enemy, {x = posarena.x+6,y=24, z=14})
local rounds = 6
doBattleDuel(player,enemy,rounds)
local arenanome = posarena.nome
  doBroadcastMessage("Tournament Battle "..getCreatureName(enemy).." VS "..getCreatureName(player).." Arena "..arenanome..".")
 end
 end
 end
 doBroadcastMessage("Tournament Battle begin have "..countst.."/"..countsta.." players subscribes.")
 return true
end
function doEndDuel(winner,loser)
local playerduel = 223023 -- playerstorage
local subscribe = 223024 -- playerstorage 
local enabledtour = 223025 -- globalstorage
local listsubscribe = 223026 -- globalstorage
local countsubscribe = 223027 -- globalstorage
local start = 223028 -- globalstorage
local globaluse = 223032 -- globalstorage
local playeruse = 223033 -- playerstorage
local gold = 1
local silver = 2
local bronze = 3
local categoria = getGlobalStorageValue(enabledtour)
local havetour = getGlobalStorageValue(countsubscribe)
setGlobalStorageValue(getPlayerStorageValue(winner,playeruse),0)

if havetour == 2 then
setPlayerStorageValue(winner,subscribe,0)
addReward(winner,loser,categoria)
doPlayerAddSkillTry(loser,0,30) 
doPlayerAddSkillTry(winner,1,30) 
return true
end
setGlobalStorageValue(countsubscribe,havetour-1)

healPokes(winner)
healPokes(loser)
doPlayerAddSkillTry(loser,0,30) 
doPlayerAddSkillTry(winner,1,30) 

return true
end

function doBattleDuel(player,enemy,rounds)
local function start(params)
if isCreature(params.cid) and isCreature(params.enemy) then
if getPlayerStorageValue(params.cid, 5333) >= 1 and getPlayerStorageValue(params.enemy, 5333) >= 1 then
if #getCreatureSummons(params.cid) == 0 then
doPlayerAddSkillTry(params.cid,5,30) 
doPlayerAddSkillTry(params.enemy,4,30)

doPlayerSendTextMessage(params.cid, MESSAGE_STATUS_CONSOLE_RED, "You have lose duel")
doPlayerSendTextMessage(params.enemy, MESSAGE_STATUS_CONSOLE_RED, "You Win duel")


if getPlayerStorageValue(params.cid, 223023) >= 1 and getPlayerStorageValue(params.enemy, 223023) >= 1 then
if #getCreatureSummons(params.cid) >= 1 then
doTeleportThing(getCreatureSummons(params.cid)[1], getClosestFreeTile(getCreatureSummons(params.cid)[1], posBackGolden))
end
doTeleportThing(params.cid, getClosestFreeTile(params.cid, posBackGolden))

if #getCreatureSummons(params.enemy) >= 1 then
doTeleportThing(getCreatureSummons(params.enemy)[1], getClosestFreeTile(getCreatureSummons(params.enemy)[1], posBackGolden))
end
doTeleportThing(params.enemy, getClosestFreeTile(params.enemy, posBackGolden))
setPlayerStorageValue(params.enemy, 223023, 0)
setPlayerStorageValue(params.cid, 223023, 0)
setPlayerStorageValue(params.cid, 223024, 0)
doEndDuel(params.enemy,params.cid)
end

setPlayerStorageValue(params.enemy, 5333, 0)
setPlayerStorageValue(params.cid, 5333, 0)
setPlayerStorageValue(params.enemy, 1333, 0)
setPlayerStorageValue(params.cid, 1333, 0)
setPlayerStorageValue(params.enemy, 3333, 0)
setPlayerStorageValue(params.cid, 6333, 0)
setPlayerStorageValue(params.enemy, 6333, 0)
setPlayerStorageValue(params.cid, 3333, 0)
setPlayerStorageValue(params.enemy, 2333, 0)
setPlayerStorageValue(params.cid, 2333, 0)
setPlayerStorageValue(params.enemy, 4445, 0)
setPlayerStorageValue(params.cid, 4445, 0)
setPlayerStorageValue(params.player, 7777, 0)
setPlayerStorageValue(params.enemy, 7777, 0)
--doCreatureSetNoMove(enemy, 0)
--doCreatureSetNoMove(cid, 0)




doSendAnimatedText(getCreaturePosition(params.cid), "Loser", 144)
doSendAnimatedText(getCreaturePosition(params.enemy), "Wins", 210)
doPlayerLeaveParty(params.cid)
doPlayerSetDuel(params.cid,false)
return true
end
if #getCreatureSummons(params.enemy) == 0 then
doPlayerAddSkillTry(params.cid,4,30) 
doPlayerAddSkillTry(params.enemy,5,30)

doPlayerSendTextMessage(params.enemy, MESSAGE_STATUS_CONSOLE_RED, "You have lose duel")
doPlayerSendTextMessage(params.cid, MESSAGE_STATUS_CONSOLE_RED, "You Win duel")


if getPlayerStorageValue(params.cid, 223023) >= 1 and getPlayerStorageValue(params.enemy, 223023) >= 1 then


if #getCreatureSummons(params.cid) >= 1 then
doTeleportThing(getCreatureSummons(params.cid)[1], getClosestFreeTile(getCreatureSummons(params.cid)[1], posBackGolden))
end
doTeleportThing(params.cid, getClosestFreeTile(params.cid, posBackGolden))

if #getCreatureSummons(params.enemy) >= 1 then
doTeleportThing(getCreatureSummons(params.enemy)[1], getClosestFreeTile(getCreatureSummons(params.enemy)[1], posBackGolden))
end
doTeleportThing(params.enemy, getClosestFreeTile(params.enemy, posBackGolden))
setPlayerStorageValue(params.enemy, 223023, 0)
setPlayerStorageValue(params.cid, 223023, 0)
setPlayerStorageValue(params.enemy, 223024, 0)
doEndDuel(params.cid,params.enemy)
end

setPlayerStorageValue(params.enemy, 5333, 0)
setPlayerStorageValue(params.cid, 5333, 0)
setPlayerStorageValue(params.enemy, 1333, 0)
setPlayerStorageValue(params.cid, 1333, 0)
setPlayerStorageValue(params.enemy, 3333, 0)
setPlayerStorageValue(params.cid, 3333, 0)
setPlayerStorageValue(params.cid, 6333, 0)
setPlayerStorageValue(params.enemy, 6333, 0)
setPlayerStorageValue(params.enemy, 2333, 0)
setPlayerStorageValue(params.cid, 2333, 0)
setPlayerStorageValue(params.enemy, 4445, 0)
setPlayerStorageValue(params.cid, 4445, 0)
setPlayerStorageValue(params.player, 7777, 0)
setPlayerStorageValue(params.enemy, 7777, 0)
--doCreatureSetNoMove(params.enemy, 0)
--doCreatureSetNoMove(params.cid, 0)




doSendAnimatedText(getCreaturePosition(params.enemy), "Loser", 144)
doSendAnimatedText(getCreaturePosition(params.cid), "Wins", 210)
doPlayerLeaveParty(params.enemy)
doPlayerSetDuel(params.enemy,false)
return true
end
setPlayerStorageValue(params.enemy, 1333, 1)
setPlayerStorageValue(params.cid, 1333, 1)
setPlayerStorageValue(params.enemy, 2333, 1)
setPlayerStorageValue(params.cid, 2333, 1)
doSendAnimatedText(getCreaturePosition(params.cid), "Start", 210)
doSendAnimatedText(getCreaturePosition(params.enemy), "Start", 210)

	end		
			end
end
local function contagem5(params)
if isCreature(params.cid) and isCreature(params.enemy) then
if getPlayerStorageValue(params.cid, 5333) >= 1 and getPlayerStorageValue(params.enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(params.cid), "1", 210)
doSendAnimatedText(getCreaturePosition(params.enemy), "1", 210)
addEvent(start,1000, {cid = params.cid,enemy = params.enemy})
end
	end		
			end
local function contagem4(params)
if isCreature(params.cid) and isCreature(params.enemy) then
if getPlayerStorageValue(params.cid, 5333) >= 1 and getPlayerStorageValue(params.enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(params.cid), "2", 210)
doSendAnimatedText(getCreaturePosition(params.enemy), "2", 210)
addEvent(contagem5,1000, {cid = params.cid,enemy = params.enemy})
end
			end
			end

local function contagem3(params)
if isCreature(params.cid) and isCreature(params.enemy) then
if getPlayerStorageValue(params.cid, 5333) >= 1 and getPlayerStorageValue(params.enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(params.cid), "3", 210)
doSendAnimatedText(getCreaturePosition(params.enemy), "3", 210)
addEvent(contagem4,1000, {cid = params.cid,enemy = params.enemy})
end
	end		
			end
local function contagem2(params)
if isCreature(params.cid) and isCreature(params.enemy) then
if getPlayerStorageValue(params.cid, 5333) >= 1 and getPlayerStorageValue(params.enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(params.cid), "4", 210)
doSendAnimatedText(getCreaturePosition(params.enemy), "4", 210)
addEvent(contagem3,1000, {cid = params.cid,enemy = params.enemy})
end
end			
			end
local function contagem(params)
if isCreature(params.cid) and isCreature(params.enemy) then
if getPlayerStorageValue(params.cid, 5333) >= 1 and getPlayerStorageValue(params.enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(params.cid), "5", 210)
doSendAnimatedText(getCreaturePosition(params.enemy), "5", 210)
addEvent(contagem2,1000,  {cid = params.cid,enemy = params.enemy})
end
end
end


local function contagem6(params)
if isCreature(params.cid) and isCreature(params.enemy) then
if getPlayerStorageValue(params.cid, 5333) >= 1 and getPlayerStorageValue(params.enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(params.cid), "6", 210)
doSendAnimatedText(getCreaturePosition(params.enemy), "6", 210)
addEvent(contagem,1000,  {cid = params.cid,enemy = params.enemy})
end
end
end

local function contagem7(params)
if isCreature(params.cid) and isCreature(params.enemy) then
if getPlayerStorageValue(params.cid, 5333) >= 1 and getPlayerStorageValue(params.enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(params.cid), "7", 210)
doSendAnimatedText(getCreaturePosition(params.enemy), "7", 210)
addEvent(contagem6,1000,  {cid = params.cid,enemy = params.enemy})
end
end
end

local function contagem8(params)
if isCreature(params.cid) and isCreature(params.enemy) then
if getPlayerStorageValue(params.cid, 5333) >= 1 and getPlayerStorageValue(params.enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(params.cid), "8", 210)
doSendAnimatedText(getCreaturePosition(params.enemy), "8", 210)
addEvent(contagem7,1000,  {cid = params.cid,enemy = params.enemy})
end
end
end

local function contagem9(params)
if isCreature(params.cid) and isCreature(params.enemy) then
if getPlayerStorageValue(params.cid, 5333) >= 1 and getPlayerStorageValue(params.enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(params.cid), "9", 210)
doSendAnimatedText(getCreaturePosition(params.enemy), "9", 210)
addEvent(contagem8,1000,  {cid = params.cid,enemy = params.enemy})
end
end
end

local function contagem10(params)
if isCreature(params.cid) and isCreature(params.enemy) then
if getPlayerStorageValue(params.cid, 5333) >= 1 and getPlayerStorageValue(params.enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(params.cid), "10", 210)
doSendAnimatedText(getCreaturePosition(params.enemy), "10", 210)
addEvent(contagem9,1000,  {cid = params.cid,enemy = params.enemy})
end
end
end
			
			



setPlayerStorageValue(enemy, 9111, -1)
setPlayerStorageValue(enemy, 9113, -1) 
setPlayerStorageValue(player, 9113, -1)   
setPlayerStorageValue(player, 9111, -1) 
setPlayerStorageValue(enemy, 5333, rounds)
setPlayerStorageValue(player, 5333, rounds)
setPlayerStorageValue(enemy, 1333, 0)
setPlayerStorageValue(player, 1333, 0)
setPlayerStorageValue(enemy, 3333, 1)
setPlayerStorageValue(player, 3333, 1)
setPlayerStorageValue(player, 6333, enemy)
setPlayerStorageValue(enemy, 6333, player)
setPlayerStorageValue(player, 7777, 1)
setPlayerStorageValue(enemy, 7777, 1)
setPlayerStorageValue(enemy,223023,1)
setPlayerStorageValue(player,223023,1)
 
if #getCreatureSummons(player) >= 1 then
setPlayerStorageValue(player, 2333, 1)
else
doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 5 seconds to go you pokemon or lose duel")
end
if #getCreatureSummons(enemy) >= 1 then
setPlayerStorageValue(enemy, 2333, 1)
else
doPlayerSendTextMessage(enemy, MESSAGE_STATUS_CONSOLE_BLUE, "You have 5 seconds to go you pokemon or lose duel")
end

addEvent(contagem10,100, {cid = player,enemy = enemy,rounds = rounds})

end