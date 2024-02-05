local saffarienter = {x=307, y=1938, z=10}






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

local focus = 0
local talkState = {}
function creatureSayCallback(cid, type, msg)

local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid


		 local xt = string.lower(msg)
		        if msgcontains(xt, 'giant island') or msgcontains(xt, 'help') then
 	                 	selfSay('You want to enter in the Giant Island and take 50 giant balls for 2 "diamond"  or 1 "big diamond" and take 100 giant balls?')
 	                 	talkState[talkUser] = 2
 	                 	end
		                                 
			if msgcontains(xt, 'big diamond') and talkState[talkUser] == 2 then		
if doPlayerRemoveItem(cid, 11216, 1) == TRUE then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], saffarienter)
end
					doTeleportThing(cid,saffarienter)
					doPlayerAddItem(cid,11212,100)
    					doSendMagicEffect(saffarienter,10)
setPlayerStorageValue(cid, 61223, 1)
					selfSay("It was a pleasure doing business with you.")
					focus = 0
					talk_start = 0
					talkState[talkUser] = 0
				else
					selfSay("Sorry, you don\'t have enough big diamond.")
				end
				elseif msgcontains(xt, 'diamond') or msgcontains(xt, 'yes') and talkState[talkUser] == 2 then	
			if doPlayerRemoveItem(cid, 2145, 2) == TRUE then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], saffarienter)
end
					doTeleportThing(cid,saffarienter)
					doPlayerAddItem(cid,11212,50)
    					doSendMagicEffect(saffarienter,10)
setPlayerStorageValue(cid, 61223, 1)
					selfSay("It was a pleasure doing business with you.")
					focus = 0
					talk_start = 0
					talkState[talkUser] = 0
				else
					selfSay("Sorry, you don\'t have enough diamonds.")
				end
                        
       
end
   
end



npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|,Hello may I help you, Wanna go Giant Island now?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

