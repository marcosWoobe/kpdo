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




	if not npcHandler:isFocused(cid) then

		return false


	elseif msgcontains(msg, 'task') or msgcontains(msg, 'help') or msgcontains(msg, 'yes') then

selfSay('Voce e um viadinho ' )
end
	return true
end
 end
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|,I just a researcher and I study Pokemon, you have tasks for collections?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())