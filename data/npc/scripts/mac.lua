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



	if not npcHandler:isFocused(cid) then

		return false


	elseif isInArray({"Yes", "Help","yes","help"}, msg) then
if getPlayerStorageValue(cid, 121235) >= 1 then
if getPlayerStorageValue(cid, 9337) <= 0 then
selfSay('sorry You dont have Zephyr Badge,go to Gym Falkner for take') 
return true
end
if getPlayerStorageValue(cid, 9336) <= 0 then
selfSay('sorry You dont have Hive Badge,go to Gym Bugsy for take') 
return true
end
if getPlayerStorageValue(cid, 9335) <= 0 then
selfSay('sorry You dont have Plain Badge,go to Gym Whitney for take') 
return true
end
if getPlayerStorageValue(cid, 9334) <= 0 then
selfSay('sorry You dont have Fog Badge,go to Gym Morty for take') 
return true
end
if getPlayerStorageValue(cid, 9333) <= 0 then
selfSay('sorry You dont have Storm Badge,go to Gym Chuck for take') 
return true
end
if getPlayerStorageValue(cid, 9332) <= 0 then
selfSay('sorry You dont have Mineral Badge,go to Gym Jasmine for take') 
return true
end
if getPlayerStorageValue(cid, 9331) <= 0 then
selfSay('sorry You dont have Glacier Badge,go to Gym Pryce for take') 
return true
end
if getPlayerStorageValue(cid, 9330) <= 0 then
selfSay('sorry You dont have Rising Badge,go to Gym Clair for take') 
return true
end

selfSay('Congratulations, You are a Elite Promotion finishing') 
setPlayerStorageValue(cid, 9340, 1)

return true
end
if getPlayerStorageValue(cid,9355 ) <= 0 then
selfSay('sorry You dont have Water Badge,go to Misty Gym Cerulean for take') 
return true
end
if getPlayerStorageValue(cid,9357 ) <= 0 then
selfSay('sorry You dont have Psychic Badge,go to Sabrina Gym Saffron for take') 
return true
end
if getPlayerStorageValue(cid,9358 ) <= 0 then
selfSay('sorry You dont have Leaf Badge,go to Erika Gym Celadon for take') 
return true
end

if getPlayerStorageValue(cid,9359 ) <= 0 then
selfSay('sorry You dont have Thunder Badge,go to Surge Gym Vermilion for take') 
return true
end
if getPlayerStorageValue(cid,9353 ) <= 0 then
selfSay('sorry You dont have Rock Badge,go to Brock Gym Pewter for take') 
return true
end
if getPlayerStorageValue(cid,9354 ) <= 0 then
selfSay('sorry You dont have Fire Badge,go to Blaine Gym Cinnabar for take') 
return true
end

if getPlayerStorageValue(cid,9356 ) <= 0 then
selfSay('sorry You dont have Venom Badge,go to Koga Gym Fuchsia for take') 
return true
end
if getPlayerStorageValue(cid,9360 ) <= 0 then
selfSay('sorry You dont have Thunder Badge,go to Giovanni Gym Viridian for take') 
return true
end

selfSay('you choose a vocation ,Dragon Tamer,Dark Face,Leaf Blade,Flame Lord,Creature Tamer,Earth King,Psychic Master,Rock Master,Sea king,Avalanche King,Venom King,Fight Champion,Hurricane King,Thunder Lord,Bug King') 
talkState[talkUser] = 1
elseif  isInArray({"dragon", "Dragon Tamer"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 3)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Dragon Tamer') 
talkState[talkUser] = 0
elseif  isInArray({"ghost", "Dark Face"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 4)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Dark Face') 
talkState[talkUser] = 0
elseif  isInArray({"grass","Leaf Blade"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 5)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Leaf Blade') 
talkState[talkUser] = 0
elseif  isInArray({"fire","Flame Lord"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 6)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Flame Lord') 
talkState[talkUser] = 0
elseif  isInArray({"normal","Creature Tamer"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 7)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Creature Tamer') 
talkState[talkUser] = 0
elseif  isInArray({"ground","Earth King"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 8)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Earth King') 
talkState[talkUser] = 0
elseif  isInArray({"psychic","Psychic Master"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 9)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Psychic Master') 
talkState[talkUser] = 0
elseif  isInArray({"rock","Rock Master"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 10)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Rock Master') 
talkState[talkUser] = 0
elseif  isInArray({"water","Sea king"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 11)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Sea king') 
talkState[talkUser] = 0
elseif  isInArray({"ice","Avalanche King"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 12)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Avalanche King') 
talkState[talkUser] = 0
elseif  isInArray({"poison","Venom King"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 13)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Venom King') 
talkState[talkUser] = 0
elseif  isInArray({"fight","Fight Champion"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 14)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Fight Champion') 
talkState[talkUser] = 0
elseif  isInArray({"flying","Hurricane King"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 15)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Hurricane King') 
talkState[talkUser] = 0
elseif  isInArray({"electric","Thunder Lord"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 16)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Thunder Lord') 
talkState[talkUser] = 0
elseif  isInArray({"bug","Bug King"}, msg)  and  talkState[talkUser] == 1 then
doPlayerSetVocation(cid, 17)
setPlayerStorageValue(cid, 121235, 1)
selfSay('Congratulations, You are a Bug King') 
talkState[talkUser] = 0
end
	return true

 end
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|,Hello may I help you, I'm a researcher, and I challenge the coaches to win the pokemon Insigmas,  can become a Pokemon master in the desired element, you have all insigma?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())