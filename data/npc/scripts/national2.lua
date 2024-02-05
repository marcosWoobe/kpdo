local saffarienter = {x=768, y=169, z=7}






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
		        if msgcontains(xt, 'national park') then
 	                 	selfSay('You want to enter the national park for 5000 dollars?')
 	                 	talkState[talkUser] = 2
 	                 	end
		                                 
			if msgcontains(xt, 'yes') and talkState[talkUser] == 2 then
				if doPlayerRemoveMoney(cid, 500000) == TRUE then
					doTeleportThing(cid,saffarienter)
					doPlayerAddItem(cid,193,30)
    					doSendMagicEffect(saffarienter,10)
setPlayerStorageValue(cid, 61222, 1)
					selfSay("It was a pleasure doing business with you.")
					focus = 0
					talk_start = 0
					talkState[talkUser] = 0
				else
					selfSay("Sorry, you don\'t have enough moneyz.")
				end
                        
       
end
   
end



npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|,Hello may I help you,  Go national park or now?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())

