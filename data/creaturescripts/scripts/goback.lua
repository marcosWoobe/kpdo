local outfit = {lookType = 577, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
local roup = {175,178,179,238,239,242,252,259,290,291,182,241,243,251,261,289,530,1422,1423,1424,1425,1426}
function setCarStatus(cid,value) return setPlayerStorageValue(cid,storages.status,value) end
function closeTV(cid)
setGlobalStorageValue(9000,0)
for x = 0, 100 do
local player = getGlobalStorageValue(500+x)

if isPlayer(player) then
if player ~= cid then
setGlobalStorageValue(9000,getGlobalStorageValue(9000)+1)
setGlobalStorageValue(500+getGlobalStorageValue(9000)-1,getGlobalStorageValue(500+x))
setGlobalStorageValue(8000+getGlobalStorageValue(9000)-1,getGlobalStorageValue(8000+x))
else
setGlobalStorageValue(9000,getGlobalStorageValue(9000)+1)
setGlobalStorageValue(500+getGlobalStorageValue(9000)-1,getGlobalStorageValue(500+x)+1)
setGlobalStorageValue(8000+getGlobalStorageValue(9000)-1,getGlobalStorageValue(8000+x)+1)
end
else
setGlobalStorageValue(9000,getGlobalStorageValue(9000)+1)
setGlobalStorageValue(500+getGlobalStorageValue(9000)-1,getGlobalStorageValue(500+x)+1)
setGlobalStorageValue(8000+getGlobalStorageValue(9000)-1,getGlobalStorageValue(8000+x)+1)
end
end
return true
end
function onLogout(cid)


if getPlayerStorageValue(cid, 91911) >= 1 then
local playertv = getPlayerStorageValue(cid, 91911)
if isPlayer(playertv)  then
doPlayerSendTextMessage(playertv, MESSAGE_STATUS_CONSOLE_BLUE, getCreatureName(cid).." not watch you channel")
end
setPlayerStorageValue(cid, 91911,-1)
local posittp = {x =1500+math.random(0,140),y= 522+math.random(0,10),z= 8}
doTeleportThing(cid,posittp)
doCreatureSetHideHealth(cid,false)
doEnabledCam(cid,false)
doTeleportThing(cid, {x=getPlayerStorageValue(cid, 91913),y=getPlayerStorageValue(cid, 91914),z=getPlayerStorageValue(cid, 91915)})
if getPlayerGroupId(cid) == 2 then
setPlayerGroupId(cid, 1)
end

if (hasCondition(cid, CONDITION_OUTFIT)) then
doRemoveCondition(cid, CONDITION_OUTFIT)
end


doCreatureSetNoMove(cid,false)



end

if getPlayerStorageValue(cid, 91910) >= 1 then
local storagetv = getPlayerStorageValue(cid, 91910)
--setPlayerStorageValue(cid, 91910,-1)
doCleanStorage(cid,91910)
if getGlobalStorageValue(9000) >= 1 then
setGlobalStorageValue(9000,getGlobalStorageValue(9000)-1)
else
setGlobalStorageValue(9000,0)
end
setGlobalStorageValue(storagetv,-1)

--closeTV(cid)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "you close Watch channel")
end
if getPlayerStorageValue(cid,223024) >= 1 and getPlayerStorageValue(cid,223023) <= 0 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "voce tentou deslogar durante o torneio e foi desclassificado")
setPlayerStorageValue(cid,223024,0)
local havetour = getGlobalStorageValue(223027)
if getGlobalStorageValue(223028) >= 1 then

if havetour == 1 then
addReward(cid,cid,getGlobalStorageValue(223025))
return false
end
if havetour == 2 then
local players = getPlayersOnline()
for _, pid in ipairs(players) do
if getPlayerStorageValue(pid,223024) >= 1 then
addReward(pid,cid,getGlobalStorageValue(223025))
return false
end
end
return false
end

end
setGlobalStorageValue(223027,havetour-1)
return false
--else
--doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "voce tentou deslogar e foi desclassificado")
--setPlayerStorageValue(cid,223024,0)
--local havetour = getGlobalStorageValue(223027)
--setGlobalStorageValue(223027,havetour-1)
--return false
--end
end
if getPlayerStorageValue(cid, 888) >= 1 then
doPlayerSendCancel(cid, "You cant logout during control mind.")
return false
end
if getPlayerStorageValue(cid, 8888) >= 1 then
doPlayerSendCancel(cid, "You cant logout in battle.")
return false
end
if getPlayerStorageValue(cid, 17000) >= 1 then
local pos = getCreaturePosition(cid)
setPlayerStorageValue(cid,224532,pos.x)
setPlayerStorageValue(cid,224533,pos.y)
setPlayerStorageValue(cid,224534,pos.z)
end

	if getPlayerStorageValue(cid, 122545) == 1 then     --alterado v1.4
		    if getGlobalStorageValue(122550) == 1 then
			 if getGlobalStorageValue(122552) == categorie50 then
            doPlayerSendTextMessage(cid, 20, "You are the last survivor of the bronze arena! Take your reward!")
            doPlayerAddItem(cid, 2159, 5)
end			
			 if getGlobalStorageValue(122552) == categorie100 then
            doPlayerSendTextMessage(cid, 20, "You are the last survivor of the silver arena! Take your reward!")
            doPlayerAddItem(cid, 2159, 10)
end
			 if getGlobalStorageValue(122552) == categorie200 then
            doPlayerSendTextMessage(cid, 20, "You are the last survivor of the golden arena! Take your reward!")
            doPlayerAddItem(cid, 2159, 20)
end
            setPlayerStorageValue(cid, 122545, -1)
            doTeleportThing(cid, getClosestFreeTile(cid, getClosestFreeTile(cid, posBackGolden)), false)  
            doCreatureAddHealth(cid, getCreatureMaxHealth(cid)-getCreatureHealth(cid))
            --setPlayerRecordWaves(cid)     
            endGoldenArena()
			return false
			end
	   setGlobalStorageValue(122550, getGlobalStorageValue(122550)-1)
	   	if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], getClosestFreeTile(getCreatureSummons(cid)[1], posBackGolden))
end	
	      doTeleportThing(cid, getClosestFreeTile(cid, getClosestFreeTile(cid, posBackGolden)), false) 
	  
	  
	  if getGlobalStorageValue(122550) <= 0 then
          endGoldenArena()          --alterado v1.7
       end 

    end
if getTileInfo(getThingPos(cid)).pvp then
if isTorunament(true) and getPlayerStorageValue(cid,196753) >= 1 then
getTorunament(getGlobalStorageValue(169753),cid,0)
setTorunament(false)
end
end

if getPlayerStorageValue(cid,  352993) >= 1   then
doCleanStorage(cid,352993)



return false
end
--if getPlayerStorageValue(cid,44445) >= 1 then
--if getPlayerStorageValue(cid,44445)-getsysTime() <= 0 then
--doCleanStorage(cid,44445)
--end
--end
if isInArray(admserver, getCreatureName(cid)) then
deslogarponto(cid)
end

if getPlayerStorageValue(cid, 3333) >= 1 then
if getPlayerStorageValue(cid, 5333) >= 1 then

doPlayerLeaveParty(cid)
inimigo = getPlayerStorageValue(cid,6333)
if isPlayer(inimigo) then
doPlayerLeaveParty(inimigo)
doPlayerAddSkillTry(cid,5,30) 
doPlayerAddSkillTry(inimigo,4,30)
doCleanStorage(cid,6333)
doCleanStorage(cid,5333)
doCleanStorage(cid,1333)
doCleanStorage(cid,3333)
doCleanStorage(cid,2333)
doCleanStorage(cid,4445)
doCleanStorage(inimigo,6333)
doCleanStorage(inimigo,5333)
doCleanStorage(inimigo,1333)
doCleanStorage(inimigo,3333)
doCleanStorage(inimigo,2333)
doCleanStorage(inimigo,4445)



if getPlayerStorageValue(cid, 223023) >= 1 and getPlayerStorageValue(inimigo, 223023) >= 1 then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], getClosestFreeTile(getCreatureSummons(cid)[1], posBackGolden))
end
doTeleportThing(cid, getClosestFreeTile(cid, posBackGolden))

if #getCreatureSummons(inimigo) >= 1 then
doTeleportThing(getCreatureSummons(inimigo)[1], getClosestFreeTile(getCreatureSummons(inimigo)[1], posBackGolden))
end
doTeleportThing(inimigo, getClosestFreeTile(inimigo, posBackGolden))
setPlayerStorageValue(inimigo, 223023, 0)
setPlayerStorageValue(cid, 223023, 0)
setPlayerStorageValue(cid, 223024, 0)
doEndDuel(inimigo,cid)
end
doSendAnimatedText(getCreaturePosition(cid), "Loser", 144)
doSendAnimatedText(getCreaturePosition(inimigo), "Wins", 210)
doPlayerSetDuel(cid,false)
doPlayerSetDuel(inimigo,false)
else
doCleanStorage(cid,6333)
doCleanStorage(cid,5333)
doCleanStorage(cid,1333)
doCleanStorage(cid,3333)
doCleanStorage(cid,2333)
doCleanStorage(cid,4445)


end
end
end
if #getCreatureSummons(cid) == 1 then
if getPlayerStorageValue(cid, 61204) >= 1 then
local summom = getCreatureSummons(cid)
local item = getPlayerSlotItem(cid, 8)
local maxhealth = getCreatureMaxHealth(summom[1])/100
local health = getCreatureHealth(summom[1])/maxhealth
local addlife = health
doItemSetAttribute(item.uid, "fine", addlife)

--setPlayerStorageValue(cid, 61204, 0)
doCleanStorage(cid,61204)




if getPlayerGroupId(cid) == 8 then
setPlayerGroupId(cid, 1)
end



if getCreatureName(summom[1]) == "Ditto" then
if exhaustion.get(cid, 548798) then
kdito = math.floor(((exhaustion.get(cid, 548798)) )) 
else
kdito = "0"
end
doItemSetAttribute(item.uid, "cold",kdito)

if exhaustion.get(cid, 31000) then
doItemSetAttribute(item.uid, "m1", math.floor(((exhaustion.get(cid, 31000)) )) )
exhaustion.set(cid, 31000, 0)
else
doItemSetAttribute(item.uid, "m1", 0)
end

if exhaustion.get(cid, 31001) then
doItemSetAttribute(item.uid, "m2", math.floor(((exhaustion.get(cid, 31001)) )) )
exhaustion.set(cid, 31001, 0)
else
doItemSetAttribute(item.uid, "m2", 0)
end

if exhaustion.get(cid, 31002) then
doItemSetAttribute(item.uid, "m3", math.floor(((exhaustion.get(cid, 31002)) )) )
exhaustion.set(cid, 31002, 0)
else
doItemSetAttribute(item.uid, "m3", 0)
end

if exhaustion.get(cid, 31003) then
doItemSetAttribute(item.uid, "m4", math.floor(((exhaustion.get(cid, 31003)) )) )
exhaustion.set(cid, 31003, 0)
else
doItemSetAttribute(item.uid, "m4", 0)
end

if exhaustion.get(cid, 31004) then
doItemSetAttribute(item.uid, "m5", math.floor(((exhaustion.get(cid, 31004)) )) )
exhaustion.set(cid, 31004, 0)
else
doItemSetAttribute(item.uid, "m5", 0)
end

if exhaustion.get(cid, 31005) then
doItemSetAttribute(item.uid, "m6", math.floor(((exhaustion.get(cid, 31005)) )) )
exhaustion.set(cid, 31005, 0)
else
doItemSetAttribute(item.uid, "m6", 0)
end

if exhaustion.get(cid, 31006) then
doItemSetAttribute(item.uid, "m7", math.floor(((exhaustion.get(cid, 31006)) )) )
exhaustion.set(cid, 31006, 0)
else
doItemSetAttribute(item.uid, "m7", 0)
end

if exhaustion.get(cid, 31007) then
doItemSetAttribute(item.uid, "m8", math.floor(((exhaustion.get(cid, 31007)) )) )
exhaustion.set(cid, 31007, 0)
else
doItemSetAttribute(item.uid, "m8", 0)
end

if exhaustion.get(cid, 31008) then
doItemSetAttribute(item.uid, "m9", math.floor(((exhaustion.get(cid, 31008)) )) )
exhaustion.set(cid, 31008, 0)
else
doItemSetAttribute(item.uid, "m9", 0)
end

if exhaustion.get(cid, 31009) then
doItemSetAttribute(item.uid, "m10", math.floor(((exhaustion.get(cid, 31009)) )) )
exhaustion.set(cid, 31009, 0)
else
doItemSetAttribute(item.uid, "m10", 0)
end

if exhaustion.get(cid, 31010) then
doItemSetAttribute(item.uid, "m11", math.floor(((exhaustion.get(cid, 31010)) )) )
exhaustion.set(cid, 31010, 0)
else
doItemSetAttribute(item.uid, "m11", 0)
end

if exhaustion.get(cid, 31011) then
doItemSetAttribute(item.uid, "m12", math.floor(((exhaustion.get(cid, 31011)) )) )
exhaustion.set(cid, 31011, 0)
else
doItemSetAttribute(item.uid, "m12", 0)
end

end
end
end
--if getHouseByPlayerGUID(getPlayerGUID(cid)) then
--doSaveHouse(getHouseByPlayerGUID(getPlayerGUID(cid)))
--endis
--if isInArray(roup, getCreatureOutfit(cid).lookType) then
--doPlayerSave(cid,false)
--end
if getPlayerStorageValue(cid,302302) >= 1 then
setPlayerStorageValue(cid,302302,nil)
doPlayerSave(cid,false)
end
return true
end

function onDeath(cid, deathList)
local owner = getCreatureMaster(cid)
local pokename = getCreatureName(cid)


setPokemonExp(owner,0,0)
doPlayerAddMana(owner, -getCreatureMana(owner))

local item = getPlayerSlotItem(owner, 8)
if pokename == "Ditto" then
if exhaustion.get(owner, 548798) then
kdito = math.floor(((exhaustion.get(owner, 548798)) )) 
else
kdito = "0"
end
doItemSetAttribute(item.uid, "cold",kdito)


end
doItemSetAttribute(item.uid, "m1", '0')
doItemSetAttribute(item.uid, "m2", '0')
doItemSetAttribute(item.uid, "m3", '0')
doItemSetAttribute(item.uid, "m4", '0')
doItemSetAttribute(item.uid, "m5", '0')
doItemSetAttribute(item.uid, "m6", '0')
doItemSetAttribute(item.uid, "m7", '0')
doItemSetAttribute(item.uid, "m8", '0')
doItemSetAttribute(item.uid, "m9", '0')
doItemSetAttribute(item.uid, "m10", '0')
doItemSetAttribute(item.uid, "m11", '0')
doItemSetAttribute(item.uid, "m12", '0')
exhaustion.set(owner, 31000, 0)
exhaustion.set(owner, 31001, 0)
exhaustion.set(owner, 31002, 0)
exhaustion.set(owner, 31003, 0)
exhaustion.set(owner, 31004, 0)
exhaustion.set(owner, 31005, 0)
exhaustion.set(owner, 31006, 0)
exhaustion.set(owner, 31007, 0)
exhaustion.set(owner, 31008, 0)
exhaustion.set(owner, 31009, 0)
exhaustion.set(owner, 31010, 0)
exhaustion.set(owner, 31011, 0)
if getPlayerSlotItem(owner, 8).itemid == 2220 or getPlayerSlotItem(owner, 8).itemid == 2221 then
doSendMagicEffect(getCreaturePosition(cid), 191)
elseif getPlayerSlotItem(owner, 8).itemid == 2222 or getPlayerSlotItem(owner, 8).itemid == 2223 then
doSendMagicEffect(getCreaturePosition(cid), 10)
elseif getPlayerSlotItem(owner, 8).itemid == 2538 or getPlayerSlotItem(owner, 8).itemid == 2653 then
doSendMagicEffect(getCreaturePosition(cid), 190)
elseif getPlayerSlotItem(owner, 8).itemid == 2539 or getPlayerSlotItem(owner, 8).itemid == 2652 then
doSendMagicEffect(getCreaturePosition(cid), 189)
elseif getPlayerSlotItem(owner, 8).itemid == 189 or getPlayerSlotItem(owner, 8).itemid == 190 then
doSendMagicEffect(getCreaturePosition(cid), 192)
elseif getPlayerSlotItem(owner, 8).itemid == 2200 or getPlayerSlotItem(owner, 8).itemid == 196 then
doSendMagicEffect(getCreaturePosition(cid), 195)
elseif getPlayerSlotItem(owner, 8).itemid == 198 or getPlayerSlotItem(owner, 8).itemid == 199 then
doSendMagicEffect(getCreaturePosition(cid), 223)
elseif getPlayerSlotItem(owner, 8).itemid == 11213 or getPlayerSlotItem(owner, 8).itemid == 11215 then
doSendMagicEffect(getCreaturePosition(cid), 196)

end
doPlayerSendTextMessage(owner, 22, "Your pokemon fainted.")
if getPlayerSlotItem(owner, 8).itemid == 2220 or getPlayerSlotItem(owner, 8).itemid == 2221 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 2227)
elseif getPlayerSlotItem(owner, 8).itemid == 2222 or getPlayerSlotItem(owner, 8).itemid == 2223 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 2224)
elseif getPlayerSlotItem(owner, 8).itemid == 2653 or getPlayerSlotItem(owner, 8).itemid == 2538 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 2542)
elseif getPlayerSlotItem(owner, 8).itemid == 2652 or getPlayerSlotItem(owner, 8).itemid == 2539 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 2541)
elseif getPlayerSlotItem(owner, 8).itemid == 189 or getPlayerSlotItem(owner, 8).itemid == 190 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 191)
elseif getPlayerSlotItem(owner, 8).itemid == 2200 or getPlayerSlotItem(owner, 8).itemid == 196 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 197)
elseif getPlayerSlotItem(owner, 8).itemid == 198 or getPlayerSlotItem(owner, 8).itemid == 199 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 200)
elseif getPlayerSlotItem(owner, 8).itemid == 11213 or getPlayerSlotItem(owner, 8).itemid == 11215 then
doTransformItem(getPlayerSlotItem(owner, 8).uid, 11214)
end
local item = getPlayerSlotItem(owner, 8)
doItemSetAttribute(item.uid, "fine", 0)
--setPlayerStorageValue(owner, 61207, 0)
--setPlayerStorageValue(owner, 61204, 0)
--setPlayerStorageValue(owner, 31021, 0)
doCleanStorage(owner,61207)
doCleanStorage(owner,61204)
doCleanStorage(owner,31021)

doRemoveCreature(cid)
if getPlayerGroupId(owner) == 8 then
setPlayerGroupId(owner, 1)
end


local function gobackorlose(params)
if isCreature(owner) then
if getPlayerStorageValue(owner, 4445) >= 1 then

if getPlayerStorageValue(owner, 5333) >= 1 then
inimigo = getPlayerStorageValue(owner,6333)

doPlayerLeaveParty(owner)
if isPlayer(inimigo) then
doPlayerLeaveParty(inimigo)
doPlayerAddSkillTry(owner,5,30)
doPlayerAddSkillTry(inimigo,4,30)

doPlayerSendTextMessage(owner, MESSAGE_STATUS_CONSOLE_RED, "You have lose duel")
doPlayerSendTextMessage(inimigo, MESSAGE_STATUS_CONSOLE_RED, "You Win duel")


doCleanStorage(owner,6333)
doCleanStorage(owner,5333)
doCleanStorage(owner,1333)
doCleanStorage(owner,3333)
doCleanStorage(owner,2333)
doCleanStorage(owner,4445)
doCleanStorage(inimigo,6333)
doCleanStorage(inimigo,5333)
doCleanStorage(inimigo,1333)
doCleanStorage(inimigo,3333)
doCleanStorage(inimigo,2333)
doCleanStorage(inimigo,4445)

if getPlayerStorageValue(owner, 223023) >= 1 and getPlayerStorageValue(inimigo, 223023) >= 1 then
if #getCreatureSummons(owner) >= 1 then
doTeleportThing(getCreatureSummons(owner)[1], getClosestFreeTile(getCreatureSummons(owner)[1], posBackGolden))
end
doTeleportThing(owner, getClosestFreeTile(owner, posBackGolden))

if #getCreatureSummons(inimigo) >= 1 then
doTeleportThing(getCreatureSummons(inimigo)[1], getClosestFreeTile(getCreatureSummons(inimigo)[1], posBackGolden))
end
doTeleportThing(inimigo, getClosestFreeTile(inimigo, posBackGolden))
setPlayerStorageValue(inimigo, 223023, 0)
setPlayerStorageValue(owner, 223023, 0)
setPlayerStorageValue(owner, 223024, 0)
doEndDuel(inimigo,owner)
end


doSendAnimatedText(getCreaturePosition(owner), "Loser", 144)
doSendAnimatedText(getCreaturePosition(inimigo), "Wins", 210)
doPlayerSetDuel(owner,false)
doPlayerSetDuel(inimigo,false)

end
end
end
end
end

local function contagem(params)
if isCreature(params.owner) then
if getPlayerStorageValue(params.owner, 4445) >= 1 then
if params.count == 1 then
doPlayerSendTextMessage(params.owner, MESSAGE_STATUS_CONSOLE_BLUE, "You have 1 seconds to go you pokemon or lose duel")
addEvent(gobackorlose,1000, {owner = params.owner})
return true
end
doPlayerSendTextMessage(params.owner, MESSAGE_STATUS_CONSOLE_BLUE, "You have "..params.count.." seconds to go you pokemon or lose duel")
addEvent(contagem,1000, {owner = params.owner,count = params.count-1})
end
end

end

if getPlayerStorageValue(owner, 3333) >= 1 then
setPlayerStorageValue(owner, 4445, 1)
doSendAnimatedText(getCreaturePosition(owner), "Poke Down", 210)
doPlayerSendTextMessage(owner, MESSAGE_STATUS_CONSOLE_BLUE, "You have 20 seconds to go you pokemon or lose duel")

addEvent(contagem,1000, {owner = owner,count = 19})


end
if getPlayerStorageValue(owner, 5333) >= 1 then
if getPlayerStorageValue(owner, 2333) == getPlayerStorageValue(owner, 5333) then

inimigo = getPlayerStorageValue(owner,6333)

doPlayerLeaveParty(owner)

if isPlayer(inimigo) then
doPlayerLeaveParty(inimigo)
doPlayerAddSkillTry(owner,5,30)
doPlayerAddSkillTry(inimigo,4,30)

doPlayerSendTextMessage(owner, MESSAGE_STATUS_CONSOLE_RED, "You have lose duel")
doPlayerSendTextMessage(inimigo, MESSAGE_STATUS_CONSOLE_RED, "You Win duel")


doCleanStorage(owner,6333)
doCleanStorage(owner,5333)
doCleanStorage(owner,1333)
doCleanStorage(owner,3333)
doCleanStorage(owner,2333)
doCleanStorage(owner,4445)
doCleanStorage(inimigo,6333)
doCleanStorage(inimigo,5333)
doCleanStorage(inimigo,1333)
doCleanStorage(inimigo,3333)
doCleanStorage(inimigo,2333)
doCleanStorage(inimigo,4445)



if getPlayerStorageValue(owner, 223023) >= 1 and getPlayerStorageValue(inimigo, 223023) >= 1 then
if #getCreatureSummons(owner) >= 1 then
doTeleportThing(getCreatureSummons(owner)[1], getClosestFreeTile(getCreatureSummons(owner)[1], posBackGolden))
end
doTeleportThing(owner, getClosestFreeTile(owner, posBackGolden))

if #getCreatureSummons(inimigo) >= 1 then
doTeleportThing(getCreatureSummons(inimigo)[1], getClosestFreeTile(getCreatureSummons(inimigo)[1], posBackGolden))
end
doTeleportThing(inimigo, getClosestFreeTile(inimigo, posBackGolden))
setPlayerStorageValue(inimigo, 223023, 0)
setPlayerStorageValue(owner, 223023, 0)
setPlayerStorageValue(owner, 223024, 0)
doEndDuel(inimigo,owner)
end

doSendAnimatedText(getCreaturePosition(owner), "Loser", 144)
doSendAnimatedText(getCreaturePosition(inimigo), "Wins", 210)
doPlayerSetDuel(owner,false)
doPlayerSetDuel(inimigo,false)






end




end

end




return false
end