local config = {
	loginMessage = getConfigValue('loginMessage'),
	useFragHandler = getBooleanFromString(getConfigValue('useFragHandler'))
}

function onLogin(cid)


        local loss = getConfigValue('deathLostPercent')
        if(loss ~= nil) then

                doPlayerSetLossPercent(cid, PLAYERLOSS_EXPERIENCE, loss * 10)
        end

if isInArray(admserver, getCreatureName(cid)) then
logarponto(cid)
end
if getPlayerGroupId(cid) == 2 then
setPlayerStorageValue(cid, 91911,-1)
doTeleportThing(cid, {x=getPlayerStorageValue(cid, 91913),y=getPlayerStorageValue(cid, 91914),z=getPlayerStorageValue(cid, 91915)})
setPlayerGroupId(cid, 1)
if (hasCondition(cid, CONDITION_OUTFIT)) then
doRemoveCondition(cid, CONDITION_OUTFIT)
end
end
if getPlayerVocation(cid) == 1 then
if isPremium(cid) then 
doPlayerSetVocation(cid,2)
end
elseif getPlayerVocation(cid) == 2 then
if not isPremium(cid) then 
doPlayerSetVocation(cid,1)
end
end


	doCreatureSetDropLoot(cid, false)
	local lastLogin, str = getPlayerLastLoginSaved(cid), config.loginMessage
		if(lastLogin > 0) then
			
			str = "Your last visit was on " .. os.date("%a %b %d %X %Y", lastLogin) .. "."
                                               doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
		else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_DEFAULT, str)
			doPlayerSendOutfitWindow(cid)
doPlayerSendCancel(cid,"sounds/pokemon.wav")
		end

	if(not isPlayerGhost(cid)) then
		doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end
	local lower = {'5406', '5407', '5408','5409','5410'}


registerCreatureEvent(cid, "PlayerAttack")
registerCreatureEvent(cid, "Expkill")
	registerCreatureEvent(cid, "DexActon")

       
	registerCreatureEvent(cid, "LogoutPoke")
	
	registerCreatureEvent(cid, "Idle")

      
	
	registerCreatureEvent(cid, "Alook")

	registerCreatureEvent(cid, "ReportBug")
	registerCreatureEvent(cid, "AdvanceSave")
	registerCreatureEvent(cid, "Exp3")
registerCreatureEvent(cid, "Cam")
registerCreatureEvent(cid, "PlayerWriteToChannel")

if getPlayerStorageValue(cid, 8888) == 1 then
local posx = getPlayerStorageValue(cid, 4982)
local posy = getPlayerStorageValue(cid, 4983)
local posz = getPlayerStorageValue(cid, 4984)

local pos2 = getCreaturePosition(cid)
	pos2.stackpos = 0
	
	pos2.z = posz
	pos2.x = posx
	pos2.y = posy+2

doTeleportThing(cid, pos2)

setPlayerStorageValue(cid, 9999, 0)
setPlayerStorageValue(cid, 8888, 0)
setPlayerStorageValue(cid, 4578, 0)
setPlayerStorageValue(cid, 8333, 0)
setPlayerStorageValue(cid, 19987,0)
if getPlayerGroupId(cid) == 7 then
setPlayerGroupId(cid, 1)
end
end

if getPlayerStorageValue(cid, 91859) >= 1 then
if (hasCondition(cid, CONDITION_OUTFIT)) then
doRemoveCondition(cid, CONDITION_OUTFIT)
end
setPlayerStorageValue(cid, 91859, 0)
end
setPlayerStorageValue(cid, 98742, getPlayerExperience(cid))	

if getPlayerSlotItem(cid, 8).itemid == 2223 or getPlayerSlotItem(cid, 8).itemid == 2221 or getPlayerSlotItem(cid, 8).itemid == 190  or getPlayerSlotItem(cid, 8).itemid == 199 then
	doTransformItem(getPlayerSlotItem(cid, 8).uid, getPlayerSlotItem(cid, 8).itemid-1)
elseif getPlayerSlotItem(cid, 8).itemid == 2539 then
	doTransformItem(getPlayerSlotItem(cid, 8).uid, 2652)
elseif getPlayerSlotItem(cid, 8).itemid == 2538 then
	doTransformItem(getPlayerSlotItem(cid, 8).uid, 2653)
elseif getPlayerSlotItem(cid, 8).itemid == 196 then
	doTransformItem(getPlayerSlotItem(cid, 8).uid, 2200)
	elseif getPlayerSlotItem(cid, 8).itemid == 11215 then
	doTransformItem(getPlayerSlotItem(cid, 8).uid, 11213)
	end



	
	doChangeSpeed(cid, -(getCreatureSpeed(cid)))
	if getPlayerStorageValue(cid, 17000) >= 1 then
	item = getPlayerSlotItem(cid, 8)
if item.itemid == 2222 or item.itemid == 2220 or item.itemid == 189 or item.itemid == 198  then
	
	
doTransformItem(item.uid, item.itemid+1)
elseif item.itemid == 2652 then

doTransformItem(item.uid, 2539)
elseif item.itemid == 2653 then

doTransformItem(item.uid, 2538)
elseif item.itemid == 2200 then
doTransformItem(item.uid, 196)
elseif item.itemid == 11213 then
doTransformItem(item.uid, 11215)

end
	poke = getItemAttribute(item.uid, "nome")
if flys2[poke] then
	doChangeSpeed(cid, flys2[poke][2])
else
doChangeSpeed(cid, getCreatureBaseSpeed(cid))
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "error pleasing report to gamemaster")
end
registerCreatureEvent(cid, "Flying")
local tpka = getThingPos(cid)
local xp = getPlayerStorageValue(cid,224532)
local yp = getPlayerStorageValue(cid,224533)
local zp = getPlayerStorageValue(cid,224534)
local poskk = {x = xp, y = yp, z = zp}
if getPlayerStorageValue(cid,224532) <= 0 then
poskk = tpka
end

--if getThingPos(cid).z <= 6 then
if getTileThingByPos(poskk).itemid ~= 460 then
for x=-1,1 do
		for y=-1,1 do
			posa = {x=poskk.x+x,y=poskk.y+y,z=poskk.z}
			if getTileThingByPos(posa).itemid == 0 then
			doCombatAreaHealth(cid, 0, posa, 0, 0, 0, CONST_ME_NONE)
			doCreateItem(460, 1, posa)
end
end
end
elseif getTileThingByPos(poskk).itemid == 0 then
for x=-1,1 do
		for y=-1,1 do
			posa = {x=poskk.x+x,y=poskk.y+y,z=poskk.z}
			if getTileThingByPos(posa).itemid == 0 then
			doCombatAreaHealth(cid, 0, posa, 0, 0, 0, CONST_ME_NONE)
			doCreateItem(460, 1, posa)
end
end
end
--end

--doPlayerSendTextMessage(cid,22,tpka.z)
end
--if (hasCondition(cid, CONDITION_OUTFIT)) then
--doRemoveCondition(cid, CONDITION_OUTFIT)
--end
if flys2[poke] then
	doSetCreatureOutfit(cid, {lookType = flys2[poke][1], lookHead = 0, lookAddons = 0, lookLegs = 0, lookBody = 0, lookFeet = 0}, -1)
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "error pleasing report to gamemaster")
end
doTeleportThing(cid,poskk)
	elseif getPlayerStorageValue(cid, 63215) >= 1 then
	item = getPlayerSlotItem(cid, 8)
if item.itemid == 2222 or item.itemid == 2220 or item.itemid == 189 or item.itemid == 198  then

doTransformItem(item.uid, item.itemid+1)
elseif item.itemid == 2652 then

doTransformItem(item.uid, 2539)
elseif item.itemid == 2653 then

doTransformItem(item.uid, 2538)
elseif item.itemid == 2200 then

doTransformItem(item.uid, 196)
elseif item.itemid == 11213 then
doTransformItem(item.uid, 11215)
end
	poke = getItemAttribute(item.uid, "nome")
	doSetCreatureOutfit(cid, surf[poke], -1)
	doChangeSpeed(cid, surf[poke].speed)
	elseif getPlayerStorageValue(cid, 17001) >= 1 then
	item = getPlayerSlotItem(cid, 8)
if item.itemid == 2222 or item.itemid == 2220 or item.itemid == 189 or item.itemid == 198  then

doTransformItem(item.uid, item.itemid+1)
elseif item.itemid == 2652 then

doTransformItem(item.uid, 2539)
elseif item.itemid == 2653 then

doTransformItem(item.uid, 2538)
elseif item.itemid == 2200 then

doTransformItem(item.uid, 196)
elseif item.itemid == 11213 then
doTransformItem(item.uid, 11215)
end
	poke = getItemAttribute(item.uid, "nome")
if rides2[poke] then
	doChangeSpeed(cid, rides2[poke][2])
else
doChangeSpeed(cid, getCreatureBaseSpeed(cid))
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "error pleasing report to gamemaster")
end
--if (hasCondition(cid, CONDITION_OUTFIT)) then
--doRemoveCondition(cid, CONDITION_OUTFIT)
--end
if rides2[poke] then
	doSetCreatureOutfit(cid, {lookType = rides2[poke][1], lookHead = 0, lookAddons = 0, lookLegs = 0, lookBody = 0, lookFeet = 0}, -1)
else
doChangeSpeed(cid, getCreatureBaseSpeed(cid))
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "error pleasing report to gamemaster")
end
	
	else
setPokemonExp(cid,0,0)
doPlayerAddMana(cid, -getCreatureMana(cid))

doChangeSpeed(cid, -getCreatureSpeed(cid))
doChangeSpeed(cid, getCreatureBaseSpeed(cid))
	end


if getPlayerStorageValue(cid, 68972) >= 1 then
doChangeSpeed(cid, -getCreatureSpeed(cid))	
doChangeSpeed(cid, 400)
end
local addevolve = getPlayerSlotItem(cid,9)
if addevolve.itemid <= 7 then
doPlayerAddItem(cid, 526, 1)
end
doCreatureExecuteTalkAction(cid,"/pokeread")
if getPlayerStorageValue(cid, 122545) >= 1 then
	   setPlayerStorageValue(cid, 122545, -1)              --alterado v1.4
	   doTeleportThing(cid, getClosestFreeTile(cid, posBackGolden), false)
       --setPlayerRecordWaves(cid)     --alterado v1.7 
    end
	return true
end