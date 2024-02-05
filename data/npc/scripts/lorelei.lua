local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


 local kantoliga = 23231
 function executePlayer(params)
	local playerkick = params.playerkick
	if isPlayer(playerkick) then
if getPlayerStorageValue(playerkick,8334) >= 1 then
 
if getPlayerStorageValue(playerkick, 6445) >= 1 then
local npc = params.npckpdo
local posx = getPlayerStorageValue(playerkick, 4982)
local posy = getPlayerStorageValue(playerkick, 4983)
local posz = getPlayerStorageValue(playerkick, 4984)
local xnpc = getPlayerStorageValue(npc, 4982)
local ynpc = getPlayerStorageValue(npc, 4983)
local znpc = getPlayerStorageValue(npc, 4984)
local pos = getCreaturePosition(playerkick)



	pos.stackpos = 0
	
	pos.z = znpc
	pos.x = xnpc
	pos.y = ynpc


local pos2 = getCreaturePosition(playerkick)
	pos2.stackpos = 0
	
	pos2.z = posz
	pos2.x = posx
	pos2.y = posy+2

if #getCreatureSummons(playerkick) >= 1 then
doTeleportThing(getCreatureSummons(playerkick)[1], pos2)
end


doTeleportThing(playerkick, pos2)

--setPlayerStorageValue(cid, 9999, 0)
--setPlayerStorageValue(cid, 8888, 0)
setPlayerStorageValue(npc, 5000, 0)
--setPlayerStorageValue(cid, 4578, 0)
--setPlayerStorageValue(cid, 8333, 0)
--setPlayerStorageValue(cid, 19987,0)
doCleanStorage(playerkick,19987)
doCleanStorage(playerkick,8333)
doCleanStorage(playerkick,4578)
doCleanStorage(playerkick,8888)
doCleanStorage(playerkick,8334)
doCleanStorage(playerkick,9999)
local nome = getCreatureName(playerkick) 
local criatura = getPlayerStorageValue(playerkick, 6569)
doSendMagicEffect(getCreaturePosition(criatura), 10)
doRemoveCreature(criatura)

setPlayerGroupId(playerkick, 1)
doCreatureSay(npckpdo,  "Hey "..nome.." you are a loser Trainer", 1)
else
if #getCreatureSummons(playerkick) >= 1 then
doTeleportThing(getCreatureSummons(playerkick)[1], {x= 538,y= 997,z= 3})
end
doTeleportThing(playerkick, {x= 538,y= 997,z= 3})

doCleanStorage(playerkick,8334)
end

end
end
doTeleportThing(params.npckpdo, {x= 538,y= 997,z= 3})
	doBroadcastMessage("Kanto Indigo Cleaned go to lorelei to battle.")
	return true
end
function onCreatureAppear(cid)
 

npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 
			
npcHandler:onCreatureDisappear(cid) 
end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 
						
npcHandler:onThink() 

end
 local talkState = {}
local focus = 0
function creatureSayCallback(cid, type, msg)

local testar = getNpcCid()
if getPlayerStorageValue(testar, 5000) == 1 then


return false
end
if globalexhaustion.get(kantoliga) then
local seconds = math.floor(((globalexhaustion.get(kantoliga)) + 1))  
selfSay("Please wait "..seconds.." seconds to battle , have player") 
return true
end


	if not npcHandler:isFocused(cid) then
		return false


	elseif msgcontains(msg, 'duel') or msgcontains(msg, 'battle') or msgcontains(msg, 'yes') then
	if getPlayerStorageValue(cid, 121235) == 1 then
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
talkState[talkUser] = 1	
if getPlayerStorageValue(cid, 9338) == 1 then
selfSay('Hey Man you Defeated me, dont come Back here')
npcHandler:releaseFocus(cid)	
return false
end
  if #getCreatureSummons(cid) >= 1 then
local pos = getNpcPos()
	pos.stackpos = 0
	
	pos.z = 5
	pos.x = 537
	pos.y = 998
local posplayer = getNpcPos()
posplayer.stackpos = 0
	posplayer.z = 5
	posplayer.x = 540
	posplayer.y = 998
if getPlayerGroupId(cid) <= 9 then
setPlayerGroupId(cid, 7)
end
setPlayerStorageValue(cid, 4982, 538)
setPlayerStorageValue(cid, 4983, 997)
setPlayerStorageValue(cid, 4984, 3)
setPlayerStorageValue(cid, 19987,1)

local rand = ginasio["Lorelei"]["poke"]
local randomico = math.random(1,rand.poke)
local monster = ginasio["Lorelei"][randomico]

gopoke = monster.poke


		

doTeleportThing(getCreatureSummons(cid)[1], posplayer)
doTeleportThing(testar, pos)
doTeleportThing(cid, posplayer)
globalexhaustion.set(kantoliga, 1800)
setGlobalStorageValue(kantoliga+1,cid)
	addEvent(executePlayer, 60000*29,{npckpdo = testar,playerkick = cid})
	local player = getPlayerName(cid)
	doBroadcastMessage("Kanto Indigo Start Player : "..player.."")
local k = doCreateMonster(gopoke, getNpcPos())
local vids = (getCreatureHealth(k) - 2)
doCreatureAddHealth(k, -vids)
setCreatureMaxHealth(k, monster.Health)
doCreatureAddHealth(k, monster.Health)
	

	doMonsterSetTarget(k, getCreatureSummons(cid)[1])

setPlayerStorageValue(cid, 9999, testar)
setPlayerStorageValue(cid, 8888, 1)
setPlayerStorageValue(cid, 4578, 0)
setPlayerStorageValue(cid, 6569, k)
setPlayerStorageValue(cid, 6578, getNpcName())
setPlayerStorageValue(k, 4555, 1)
setPlayerStorageValue(k, 4559, monster.level)
setPlayerStorageValue(k, 4655, testar)
setPlayerStorageValue(k, 9548, cid)
setPlayerStorageValue(cid, 8333, 1)
setPlayerStorageValue(cid, 8334, 1)
registerCreatureEvent(k, "Summonkill")
registerCreatureEvent(k, "Summonthink")
registerCreatureEvent(k, "Summondeath")
setPlayerStorageValue(cid, 7787, 6) 
--setPlayerGroupId(cid, 1)



--doCreatureSetNoMove(cid, 1)
--registerCreatureEvent(k, "Gambiarra")

setPlayerStorageValue(testar, 5000, 1)
setPlayerStorageValue(testar, 4982, 538)
setPlayerStorageValue(testar, 4983, 999)
setPlayerStorageValue(testar, 4984, 3)
--registerCreatureEvent(cid, "Gymkill")
npcHandler:releaseFocus(cid)	
else
selfSay('Please go you pokemon for battle') 

end
else
selfSay('Need to Defeated alls gym kanto and complet promotion quest') 
end
		
		
	end
	return true
end
 
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|, I just a Elite pokemon trainer and I Leader Indigo kanto,like to fight, go battle a me?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())