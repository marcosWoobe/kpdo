local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
 
function onCreatureAppear(cid)
selfSay('Run Run Man haha') 

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


	elseif msgcontains(msg, 'duel') or msgcontains(msg, 'battle') then
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
talkState[talkUser] = 1	
selfSay('Hey Man go battle me , use 3 pokemons or 6 pokemons chose you loser')
elseif msgcontains(msg, '3') or msgcontains(msg, '6')  then
  if #getCreatureSummons(cid) >= 1 then
local pos = getNpcPos()
	pos.stackpos = 0
	
	pos.z = 8
	pos.x = pos.x
	pos.y = pos.y
local posplayer = getNpcPos()
posplayer.stackpos = 0
	posplayer.z = 8
	posplayer.x = posplayer.x+4
	posplayer.y = posplayer.y

setPlayerStorageValue(cid, 4982, pos.x)
setPlayerStorageValue(cid, 4983, pos.y)
		local k = doCreateMonster('Dragonite s', getNpcPos())
doTeleportThing(k, pos)
doTeleportThing(getCreatureSummons(cid)[1], posplayer)
doTeleportThing(testar, pos)
doTeleportThing(cid, posplayer)
	

	doMonsterSetTarget(k, getCreatureSummons(cid)[1])
--registerCreatureEvent(k, "Gambiarra")
setPlayerStorageValue(cid, 9999, testar)
setPlayerStorageValue(cid, 8888, 1)
setPlayerStorageValue(cid, 4578, 0)
setPlayerStorageValue(cid, 6569, k)
setPlayerStorageValue(cid, 6578, getNpcName())
setPlayerStorageValue(k, 4555, 1)
setPlayerStorageValue(k, 4655, testar)
setPlayerStorageValue(k, 9548, cid)
setPlayerStorageValue(cid, 8333, 1)
registerCreatureEvent(k, "Summonkill")
registerCreatureEvent(k, "Summondeath")
setPlayerStorageValue(cid, 7787, msg) 
--setPlayerGroupId(cid, 1)



doCreatureSetNoMove(cid, 1)
--registerCreatureEvent(k, "Gambiarra")

setPlayerStorageValue(testar, 5000, 1)
--registerCreatureEvent(cid, "Gymkill")
npcHandler:releaseFocus(cid)	
else
selfSay('Please go you pokemon for battle') 

end
		
		
	end
	return true
end
 
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|, do you want to {duel}?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())