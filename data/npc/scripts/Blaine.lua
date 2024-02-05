local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


 
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


	if not npcHandler:isFocused(cid) then

		return false


	elseif msgcontains(msg, 'duel') or msgcontains(msg, 'battle') or msgcontains(msg, 'yes') then

if getPlayerStorageValue(cid, 9354) == 1 then
selfSay('Hey Man you Defeated me, dont come Back here')
npcHandler:releaseFocus(cid)	
return false
end

local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
talkState[talkUser] = 1	

  if #getCreatureSummons(cid) >= 1 then
local pos = getNpcPos()
	pos.stackpos = 0
	
	pos.z = 0
	pos.x = 800
	pos.y = 1382
local posplayer = getNpcPos()
posplayer.stackpos = 0
	posplayer.z = 0
	posplayer.x = 804
	posplayer.y = 1382
if getPlayerGroupId(cid) <= 9 then
setPlayerGroupId(cid, 7)
end
setPlayerStorageValue(cid, 4982, 809)
setPlayerStorageValue(cid, 4983, 1382)
setPlayerStorageValue(cid, 4984, 0)
setPlayerStorageValue(cid, 19987,1)

local rand = ginasio["Blaine"]["poke"]
local randomico = math.random(1,rand.poke)
local monster = ginasio["Blaine"][randomico]

gopoke = monster.poke



doTeleportThing(getCreatureSummons(cid)[1], posplayer)
doTeleportThing(testar, pos)
doTeleportThing(cid, posplayer)
	
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
registerCreatureEvent(k, "Summonkill")
registerCreatureEvent(k, "Summonthink")
registerCreatureEvent(k, "Summondeath")
setPlayerStorageValue(cid, 7787, 6) 
--setPlayerGroupId(cid, 1)



--doCreatureSetNoMove(cid, 1)
--registerCreatureEvent(k, "Gambiarra")

setPlayerStorageValue(testar, 5000, 1)
setPlayerStorageValue(testar, 4982, 809)
setPlayerStorageValue(testar, 4983, 1382)
setPlayerStorageValue(testar, 4984, 0)
--registerCreatureEvent(cid, "Gymkill")
npcHandler:releaseFocus(cid)	
else
selfSay('Please go you pokemon for battle') 

end
		
		
	end
	return true
end
 
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|, I just a pokemon trainer and I Leader Gym Cinnabar,like to fight, go battle a me?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())