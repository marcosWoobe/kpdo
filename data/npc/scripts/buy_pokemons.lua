local keywordHandler = KeywordHandler:new() 
local npcHandler = NpcHandler:new(keywordHandler) 
NpcSystem.parseParameters(npcHandler) 
local talkState = {} 

function onCreatureAppear(cid) npcHandler:onCreatureAppear(cid) end 
function onCreatureDisappear(cid) npcHandler:onCreatureDisappear(cid) end 
function onCreatureSay(cid, type, msg) npcHandler:onCreatureSay(cid, type, msg) end 
function onThink() npcHandler:onThink() end 

function pairsByKeys (t, f) -- function for alphabetical order in list
      local a = {}
      for n in pairs(t) do table.insert(a, n) end
      table.sort(a, f)
      local i = 0
      local iter = function ()
        i = i + 1
        if a[i] == nil then return nil
        else return a[i], t[a[i]]
        end
      end
      return iter
    end


function sellPokemon(cid, name, price) 
local pokename = name
local bp = getPlayerSlotItem(cid, CONST_SLOT_BACKPACK)
local itemsball = getItemsInContainerById(bp.uid, 2224)
local itemsultra = getItemsInContainerById(bp.uid, 2227)
local itemsultra2 = getItemsInContainerById(bp.uid, 2541)
local itemsultra3 = getItemsInContainerById(bp.uid, 2542)
local itemsultra4 = getItemsInContainerById(bp.uid, 200)
local itemsultra5 = getItemsInContainerById(bp.uid, 197)
local itemsultra6 = getItemsInContainerById(bp.uid, 2222)
local itemsultra7 = getItemsInContainerById(bp.uid, 2220)
local itemsultra8 = getItemsInContainerById(bp.uid, 2653)
local itemsultra9 = getItemsInContainerById(bp.uid, 2652)
local itemsultra10 = getItemsInContainerById(bp.uid, 198)
local itemsultra11 = getItemsInContainerById(bp.uid, 2200)
local itemsultra12 = getItemsInContainerById(bp.uid, 11213)
local itemsultra13 = getItemsInContainerById(bp.uid, 11214)
local priceselling = price*100
for _, pok in pairs(itemsball) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra2) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra3) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra4) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra5) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra6) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra7) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra8) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra9) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra10) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra11) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra12) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end
for _, pok in pairs(itemsultra13) do
if string.lower(getItemAttribute(pok,"nome")) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, priceselling)
selfSay("Wow! Thanks for this wonderful pokemon! Take your money.")
return true
end
break
end

selfSay("Hey, you dont have this pokemon("..pokename..")! Make sure if its not fainted and it is inside your backpack!")
end


function creatureSayCallback(cid, type, msg) 
if(not npcHandler:isFocused(cid)) then 
return false 
end 

local talkUser = NPCHANDLER_CONVbehavior == CONVERSATION_DEFAULT and 0 or cid

    
local Pokemons = {
["bulbasaur"] = {price = 3000},
["ivysaur"] = {price = 5500},
["venusaur"] = {price = 13500},
["charmander"] = {price = 3000},
["charmeleon"] = {price = 5500},
["charizard"] = {price = 13500},
["squirtle"] = {price = 3000},
["wartortle"] = {price = 5500},
["blastoise"] = {price = 13500},
["caterpie"] = {price = 0},
["metapod"] = {price = 250},
["butterfree"] = {price = 2500},
["weedle"] = {price = 0},
["kakuna"] = {price = 250},
["beedrill"] = {price = 2500},
["pidgey"] = {price = 50},
["pidgeotto"] = {price = 1500},
["pidgeot"] = {price = 8000},
["rattata"] = {price = 0},
["raticate"] = {price = 1200},
["spearow"] = {price = 150},
["fearow"] = {price = 6000},
["ekans"] = {price = 450},
["arbok"] = {price = 2500},
["pikachu"] = {price = 4000},
["raichu"] = {price = 8000},
["sandshrew"] = {price = 850},
["sandslash"] = {price = 7000},
["nidoranfe"] = {price = 250},
["nidorina"] = {price = 2000},
["nidoqueen"] = {price = 8000},
["nidoran"] = {price = 250},
["nidorino"] = {price = 2000},
["nidoking"] = {price = 8000},
["clefairy"] = {price = 3000},
["clefable"] = {price = 6000},
["vulpix"] = {price = 1200},
["ninetales"] = {price = 8500},
["jigglypuff"] = {price = 2500},
["wigglytuff"] = {price = 5500},
["zubat"] = {price = 120},
["golbat"] = {price = 2000},
["oddish"] = {price = 80},
["gloom"] = {price = 2000},
["vileplume"] = {price = 6500},
["paras"] = {price = 50},
["parasect"] = {price = 2500},
["venonat"] = {price = 1000},
["venomoth"] = {price = 4000},
["diglett"] = {price = 400},
["dugtrio"] = {price = 4000},
["meowth"] = {price = 1200},
["persian"] = {price = 4000},
["psyduck"] = {price = 1000},
["golduck"] = {price = 8000},
["mankey"] = {price = 600},
["primeape"] = {price = 5000},
["growlithe"] = {price = 3500},
["arcanine"] = {price = 10000},
["poliwag"] = {price = 110},
["poliwhirl"] = {price = 2200},
["poliwrath"] = {price = 8500},
["abra"] = {price = 800},
["kadabra"] = {price = 6000},
["alakazam"] = {price = 15000},
["machop"] = {price = 850},
["machoke"] = {price = 5000},
["machamp"] = {price = 10000},
["bellsprout"] = {price = 100},
["weepinbell"] = {price = 2000},
["victreebel"] = {price = 6500},
["tentacool"] = {price = 350},
["tentacruel"] = {price = 6000},
["geodude"] = {price = 500},
["graveler"] = {price = 2500},
["golem"] = {price = 8000},
["ponyta"] = {price = 850},
["rapidash"] = {price = 4500},
["slowpoke"] = {price = 850},
["slowbro"] = {price = 6000},
["magnemite"] = {price = 600},
["magneton"] = {price = 3200},
["doduo"] = {price = 650},
["dodrio"] = {price = 3200},
["seel"] = {price = 2000},
["dewgong"] = {price = 8000},
["grimer"] = {price = 600},
["muk"] = {price = 2200},
["shellder"] = {price = 600},
["cloyster"] = {price = 5500},
["gastly"] = {price = 3500},
["haunter"] = {price = 7000},
["gengar"] = {price = 15000},
["onix"] = {price = 10000},
["drowzee"] = {price = 1100},
["hypno"] = {price = 8000},
["krabby"] = {price = 135},
["kingler"] = {price = 4000},
["voltorb"] = {price = 450},
["electrode"] = {price = 3000},
["exeggcute"] = {price = 320},
["exeggutor"] = {price = 7000},
["cubone"] = {price = 1000},
["marowak"] = {price = 5000},
["hitmonlee"] = {price = 80000},
["hitmonchan"] = {price = 80000},
["lickitung"] = {price = 15000},
["koffing"] = {price = 500},
["weezing"] = {price = 2200},
["rhyhorn"] = {price = 1100},
["rhydon"] = {price = 6000},
["chansey"] = {price = 40000},
["tangela"] = {price = 4000},
["kangaskhan"] = {price = 40000},
["horsea"] = {price = 200},
["seadra"] = {price = 4000},
["seaking"] = {price = 3000},
["farfetchd"] = {price = 10000},
["starmie"] = {price = 4000},
["scyther"] = {price = 110000},
["jynx"] = {price = 40000},
["electabuzz"] = {price = 70000},
["magmar"] = {price = 60000},
["pinsir"] = {price = 4000},
["tauros"] = {price = 2500},
["magikarp"] = {price = 0},
["gyarados"] = {price = 40000},
["lapras"] = {price = 110000},
["ditto"] = {price = 70000},
["eevee"] = {price = 45000},
["vaporeon"] = {price = 50000},
["jolteon"] = {price = 50000},
["flareon"] = {price = 50000},
["porygon"] = {price = 60000},
["omanyte"] = {price = 18000},
["omastar"] = {price = 50000},
["kabuto"] = {price = 18000},
["kabutops"] = {price = 50000},
["aerodactyl"] = {price = 500000},
["snorlax"] = {price = 130000},
["dratini"] = {price = 35000},
["dragonair"] = {price = 50000},
["mr mime"] = {price = 50000},
["dragonite"] = {price = 120000},
["chikorita"] = {price = 11500},
["bayleef"] = {price = 15000},
["meganium"] = {price = 29000},
["cyndaquil"] = {price = 13500},
["quilava"] = {price = 15000},
["typhlosion"] = {price = 25000},
["totodile"] = {price = 15500},
["croconaw"] = {price = 18000},
["feraligatr"] = {price = 25000},
["sentret"] = {price = 1700},
["furret"] = {price = 4200},
["hoothoot"] = {price = 1500},
["noctowl"] = {price = 5300},
["ledyba"] = {price = 1700},
["ledian"] = {price = 4500},
["spinarak"] = {price = 2800},
["ariados"] = {price = 8500},
["crobat"] = {price = 8500},
["chinchou"] = {price = 12500},
["lanturn"] = {price = 25000},
["pichu"] = {price = 1000},
["cleffa"] = {price = 800},
["igglybuff"] = {price = 800},
["toggepi"] = {price = 50000},
["togetic"] = {price = 75000},
["natu"] = {price = 2000},
["xatu"] = {price = 8000},
["mareep"] = {price = 50000},
["flaaffy"] = {price = 70000},
["ampharos"] = {price = 140000},
["bellossom"] = {price = 40000},
["sunkern"] = {price = 40000},
["sunflora"] = {price = 50000},
["marill"] = {price = 2500},
["azumarill"] = {price = 7000},
["sudowoodo"] = {price = 240000},
["politoed"] = {price = 70000},
["espeon"] = {price = 70000},
["umbreon"] = {price = 70000},
["slowking"] = {price = 70000},
["girafarig"] = {price = 50000},
["steelix"] = {price = 25000},
["snubbull"] = {price = 10000},
["granbull"] = {price = 70000},
["scizor"] = {price = 220000},
["heracross"] = {price = 50000},
["teddiursa"] = {price = 90000},
["ursaring"] = {price = 290000},
["corsola"] = {price = 110000},
["houndoom"] = {price = 20000},
["houndour"] = {price = 7000},
["kingdra"] = {price = 69000},
["miltank"] = {price = 180000},
["blissey"] = {price = 150000},
["larvitar"] = {price = 95000},
["pupitar"] = {price = 145000},
["tyranitar"] = {price = 340000},
["skiploom"] = {price = 105000},
["Jumpluff"] = {price = 115000},
["hoppip"] = {price = 95000},
}

if msgcontains(string.lower(msg), "pokemon") or msgcontains(string.lower(msg), "help") or msgcontains(string.lower(msg), "sell") then
selfSay("has some pokemon you want sell me? or you can look at the {list}!") 
talkState[talkUser] = 1
elseif msgcontains(msg, "list") or msgcontains(msg, "LIST") then
local str = ""
str = str .. "Pokemon Prices :\n\n"
for name, pos in pairsByKeys(Pokemons) do
str = str..name.." = "..pos.price.."\n"
end
str = str .. "" 
doShowTextDialog(cid, 6579, str) 
elseif talkState[talkUser] == 1 then
if getPlayerStorageValue(cid, 17000) >= 1 or getPlayerStorageValue(cid, 17001) > 1 then       
return selfSay("Please dont possible selling pokemons, you fly/ride")
elseif #getCreatureSummons(cid) >= 1 then
return selfSay("Please Back You pokemon and move in bag")
end
local pokemonsell = Pokemons[string.lower(msg)]
if not pokemonsell then
return selfSay("This pokemon dont possible selling")
end
sellPokemon(cid, string.lower(msg), pokemonsell.price)
elseif msg == "no" and talkState[talkUser] >= 1 then 
selfSay("Then not") 
talkState[talkUser] = 0 
npcHandler:releaseFocus(cid) 
end 
return TRUE 
end 

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback) 
npcHandler:addModule(FocusModule:new())