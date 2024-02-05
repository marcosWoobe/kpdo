local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

local roupas = {
["yellow"] = {price = 100000,storageid = 9517},
["blue"] = {price = 100000,storageid = 9518},
["green"] = {price = 100000,storageid = 9519},
["red"] = {price = 100000,storageid = 9520},
["white"] = {price = 100000,storageid = 9521},
["golden"] = {price = 100000,storageid = 1994},
["arbok"] = {price = 2,storageid = 9522},
["charizard"] = {price = 2,storageid = 9523},
["cubone"] = {price = 2,storageid = 9524},
["ditto"] = {price = 2,storageid = 9525},
["dragonite"] = {price = 2,storageid = 9526},
["haunter"] = {price = 2,storageid = 9527},
["machamp"] = {price = 2,storageid = 9528},
["mr.mime"] = {price = 2,storageid = 9529},
["pidgeot"] = {price = 2,storageid = 9530},
["pikachu"] = {price = 2,storageid = 9531},
["scyther"] = {price = 2,storageid = 9532},
["aerodactyl"] = {price = 2,storageid = 9559},
["chikorita"] = {price = 2,storageid = 9560},
["eevee"] = {price = 2,storageid = 9561},
["espeon"] = {price = 2,storageid = 9562},
["flareon"] = {price = 2,storageid = 9563},
["forretress"] = {price = 2,storageid = 9564},
["geodude"] = {price = 2,storageid = 9565},
["golduck"] = {price = 2,storageid = 9566},
["jolteon"] = {price = 2,storageid = 9567},
["jynx"] = {price = 2,storageid = 9568},
["mew"] = {price = 2,storageid = 9569},
["mewtwo"] = {price = 2,storageid = 9570},
["mudkip"] = {price = 2,storageid = 9571},
["sandslash"] = {price = 2,storageid = 9572},
["scizor"] = {price = 2,storageid = 9573},
["torchic"] = {price = 2,storageid = 9574},
["treecko"] = {price = 2,storageid = 9575},
["umbreon"] = {price = 2,storageid = 9576},
["vaporeon"] = {price = 2,storageid = 9577},
["victreebel"] = {price = 2,storageid = 9578},
["wartortle"] = {price = 2,storageid = 9579},
["sneasel"] = {price = 2,storageid = 9580},
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

function creatureSayCallback(cid, type, msg)





	if not npcHandler:isFocused(cid) then

		return false


	elseif isInArray({"Yes", "Help","trade","bags"}, msg) then
selfSay('I have this free account pokebags of 20 slots for 1k each, yellow,golden,white,red,green,blue and this vip account pokemon bags of 36 slots for 2 diamonds each, aerodactyl,arbok,charizard,chikorita,cubone,ditto,dragonite,eevee,espeon,flareon,forretress,geodude,golduck,haunter,jolteon,jynx,machamp,mew,mewtwo,mr.mime,mudkip,pidgeot,pikachu,sandslash,scizor,scyther,sneasel,snorlax,torchic,treecko,umbreon,vaporeon,victreebel,wartortle.') 
else
local ropa = roupas[string.lower(msg)]
if not ropa then
return selfSay('sorry i have only this bags, yellow,golden,white,red,green,blue and special bags pokemons aerodactyl,arbok,charizard,chikorita,cubone,ditto,dragonite,eevee,espeon,flareon,forretress,geodude,golduck,haunter,jolteon,jynx,machamp,mew,mewtwo,mr.mime,mudkip,pidgeot,pikachu,sandslash,scizor,scyther,sneasel,snorlax,torchic,treecko,umbreon,vaporeon,victreebel,wartortle.') 
end


if ropa.price >= 10 then
if(doPlayerRemoveMoney(cid, ropa.price)) then
selfSay('Ok Tanks, take this bag '..msg..'.')
doPlayerAddItem(cid, ropa.storageid)
else
return selfSay('Sorry you need a '..ropa.price..' dollars for buy '..msg..' bag.')
end
return true
end
if (doPlayerRemoveItem(cid, 2145, ropa.price) == true) then  
selfSay('Ok Tanks, take this bag '..msg..'.')
doPlayerAddItem(cid, ropa.storageid)
else
selfSay('Sorry you need a '..ropa.price..' diamond for buy '..msg..' bag.')
end


end
	return true

 end
npcHandler:setMessage(MESSAGE_GREET, "Hello |PLAYERNAME|,Hello may I help you? I'm selling bags, say bags for see my offers")
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())