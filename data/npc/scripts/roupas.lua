local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local roupas = {
["reapper"] = {price = 300,storageid = 45963},
["reggae"] = {price = 300,storageid = 45964},
["kung-fu"] = {price = 800,storageid = 45965},
["rocket"] = {price = 1000,storageid = 45966},
["adventurer"] = {price = 600,storageid = 45967},
["bussiness"] = {price = 800,storageid = 45968},
["athlete"] = {price = 600,storageid = 45969},
["punk"] = {price = 200,storageid = 45970},
["fisher"] = {price = 1200,storageid = 45971},
["research"] = {price = 1300,storageid = 45972},
["snow"] = {price = 900,storageid = 45973},
["scary"] = {price = 1,storageid = 45974},
["dragon"] = {price = 1,storageid = 45975},
["beach"] = {price = 1,storageid = 45976},
["twister"] = {price = 1,storageid = 45977},
["venom"] = {price = 1,storageid = 45978},
["norman"] = {price = 1,storageid = 45979},
["flame"] = {price = 1,storageid = 45980},
["garden"] = {price = 1,storageid = 45981},
["gorten"] = {price = 1,storageid = 45982},
["ninja"] = {price = 1,storageid = 45983},
["model"] = {price = 1,storageid = 45984},
["blizzard"] = {price = 1,storageid = 45985},
["dark"] = {price = 1,storageid = 45986},
["sea"] = {price = 1,storageid = 45987},
["leaf"] = {price = 1,storageid = 45988},
["wizzard"] = {price = 1,storageid = 45989},
["ancient"] = {price = 1,storageid = 45990},
["ash"] = {price = 2,storageid = 45992,tipe= 175},
["brock"] = {price = 2,storageid = 45993,tipe= 178},
["gary"] = {price = 2,storageid = 45994,tipe= 179},
["surge"] = {price = 2,storageid = 45995,tipe= 238},
["blaine"] = {price = 2,storageid = 45996,tipe= 239},
["koga"] = {price = 2,storageid = 45997,tipe= 242},
["giovanni"] = {price = 2,storageid = 45998,tipe= 252},
["james"] = {price = 2,storageid = 45999,tipe= 259},
["bruno"] = {price = 2,storageid = 46000,tipe= 290},
["lance"] = {price = 2,storageid = 46001,tipe= 291},
["officer jenny"] = {price = 2,storageid = 46002,tipe= 182},
["erika"] = {price = 2,storageid = 46003,tipe= 241},
["sabrina"] = {price = 2,storageid = 46004,tipe= 243},
["female professor"] = {price = 2,storageid = 46005,tipe= 251},
["jesse"] = {price = 2,storageid = 46006,tipe= 261},
["lorelei"] = {price = 2,storageid = 46007,tipe= 289},
["agatha"] = {price = 2,storageid = 46008,tipe= 530},


}
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
	talkState[talkUser] = 1
selfSay('ok i have this outfits and tematic outfit say tematic to others, Reapper,Reggae,Kung-Fu,Rocket,Adventurer,Bussiness,Athlete,Punk,Fisher,Research,snow,scary,dragon,beach,twister,norman,flame,garden,gorten,ninja,model,blizzard,dark,sea,leaf,wizzard,ancient,venom') 
elseif isInArray({"tematic", "other","tematic outfit"}, string.lower(msg)) then
	talkState[talkUser] = 2
selfSay('ok i have this outfit tematic male ash,brock,gary,surge,blaine,koga,giovanni,james,bruno,lance. outfit female have officer jenny,erika,sabrina,female professor,jesse,lorelei,agatha ')
else
local ropa = roupas[string.lower(msg)]

if not ropa then
if 	talkState[talkUser] == 1 then
return selfSay('sorry i have only,  Reapper,Reggae,Kung-Fu,Rocket,Adventurer,Bussiness,Athlete,Punk,Fisher,Research,snow,scary,dragon,beach,twister,norman,flame,garden,gorten,ninja,model,blizzard,dark,sea,leaf,wizzard,ancient,venom') 
else
return selfSay('sorry i have only this outfit tematic male ash,brock,gary,surge,blaine,koga,giovanni,james,bruno,lance. outfit female have officer jenny,erika,sabrina,female professor,jesse,lorelei,agatha ') 
end
end

if getPlayerStorageValue(cid,ropa.storageid) >= 1 then
return selfSay('Hey you have this outfit')
end

if ropa.price == 1 then
if(doPlayerRemoveItem(cid, 2145, ropa.price) == true) then  
selfSay('Ok Tanks, take this outifit '..msg..'.')
setPlayerStorageValue(cid,ropa.storageid,1)
else
selfSay('Sorry you need a 1 diamond for buy this outifit.')
end

return true

end

if ropa.price == 2 then
if(doPlayerRemoveItem(cid, 11216, ropa.price) == true) then  
selfSay('Ok Thanks, take this outifit '..msg..'.')
setPlayerStorageValue(cid,ropa.storageid,1)
else
selfSay('Sorry you need a 2 bid diamond for buy this outifit.')
end

return true

end

if(doPlayerRemoveMoney(cid, ropa.price*10)) then
selfSay('Ok Tanks, take this outifit '..msg..'.')
setPlayerStorageValue(cid,ropa.storageid,1)
talkState[talkUser] = 0
else
selfSay('Sorry you need a '..ropa.price..' dollars for buy '..msg..' outifit.')
end

end
	return true

 end
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|,Hello may I help you,I'm a Personal selling Outfits,have tematic outfit say help or other to offers Your buy?")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())