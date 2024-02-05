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
function isCatch(cid)
if getPlayerSoul(cid) >= 50 then
return true
else
return false
end
end
function isDex(cid)
 local quantia = getPlayerStorageValue(cid, 999)
if quantia >= 130 then
return true
else
return false
end
end
function creatureSayCallback(cid, type, msg)


local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid


	if not npcHandler:isFocused(cid) then

		return false

elseif msgcontains(string.lower(msg), 'help') then
if getPlayerStorageValue(cid, 223298) <= 0 then
setPlayerStorageValue(cid,223298,0)
end
if getPlayerStorageValue(cid, 223298) >= 1 then
return selfSay('Your have a secret code for open secret statue, dont come back here.' )
end
selfSay('Hey you have 130 dex and 50 catchs species?' )
talkState[talkUser] = 1
elseif msgcontains(string.lower(msg), 'yes') and talkState[talkUser] == 1 then
if not isCatch(cid) then
return selfSay('You dont have 50 catchs pokemons species,sorry.' )
end
if not isDex(cid) then
return selfSay('You dont have 130 dex pokemons,sorry.' )
end
if isDex(cid) and isCatch(cid) then
talkState[talkUser] = 0
selfSay('Ok, Your have a secret code for open secret statue.' )
setPlayerStorageValue(cid, 223298,1)
end

end
 end
npcHandler:setMessage(MESSAGE_GREET, "Hello may I help you, I'm a study and colletcs yours dex,catchs!")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())