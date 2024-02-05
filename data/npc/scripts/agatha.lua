local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)


 local kantoliga = 23231
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
if getPlayerStorageValue(testar, 5000) == 1  or getTileInfo(getThingPos(cid)).pvp == false then


return false
end



	if not npcHandler:isFocused(cid) then
		return false


	elseif msgcontains(msg, 'duel') or msgcontains(msg, 'battle') or msgcontains(msg, 'yes') then
	if getPlayerStorageValue(cid, 121235) == 1 and getTileInfo(getThingPos(cid)).pvp then
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
talkState[talkUser] = 1	
if getPlayerStorageValue(cid, 9338) == 1 then
selfSay('Hey Man you Defeated me, dont come Back here')
npcHandler:releaseFocus(cid)	
return false
end
  if #getCreatureSummons(cid) >= 1 then

if getPlayerGroupId(cid) <= 9 then
setPlayerGroupId(cid, 7)
end
setPlayerStorageValue(cid, 4982, 538)
setPlayerStorageValue(cid, 4983, 997)
setPlayerStorageValue(cid, 4984, 3)
setPlayerStorageValue(cid, 19987,1)

local rand = ginasio["Agatha"]["poke"]
local randomico = math.random(1,rand.poke)
local monster = ginasio["Agatha"][randomico]

gopoke = monster.poke


		



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


local pos = getNpcPos()


setPlayerStorageValue(testar, 5000, 1)
setPlayerStorageValue(testar, 4982, pos.x)
setPlayerStorageValue(testar, 4983, pos.y)
setPlayerStorageValue(testar, 4984, pos.z)
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