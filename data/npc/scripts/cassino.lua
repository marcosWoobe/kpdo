
local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false
function onThingMove(creature, thing, oldpos, oldstackpos, cid, item, frompos, item2, topos) end
function onCreatureAppear(creature) end
function onCreatureDisappear(cid, pos)
if focus == cid then
selfSay('Good bye then.')
focus = 0
talk_start = 0
end
end
function onCreatureTurn(creature) end
function msgcontains(txt, str) return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)')) end
function onCreatureSay(cid, type, msg)
msg = string.lower(msg)
if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
selfSay('Hello ' .. getCreatureName(cid) .. ', Welcome to the cassino.!')
focus = cid
talk_start = os.clock()
talk = 1
elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')
elseif focus == cid then
talk_start = os.clock()
end                  
local Pokemons = {
["porygon"] = {price = 100000, level = 50},
["eevee"] = {price = 190000, level = 25},
["ditto"] = {price = 300000, level = 40},
}

if msgcontains(msg, 'offer') then
local str = ""
str = str .. "Pokemon Prices :\n\n"
for name, pos in pairsByKeys(Pokemons) do
str = str..name.." = "..pos.price.."\n"
end
str = str .. "" 
doShowTextDialog(cid, 6579, str) 
end
return true
local pokemon = Pokemons[string.lower(msg)]

if pokemon then
selfSay("You want to buy a ".. Pokemons[string.lower(msg)] .." by ".. Pokemons[string.lower(msg)].price .." coins?")
focus = 0




else
selfSay('What?.')
end  
if(msgcontains(msg, 'yes') and talk == 2 and getPlayerMoney(cid) < Pokemons[string.lower(msg)].price then
selfSay("You don't have money to buy this pokémon.")
else
local temp = Pokemons[string.lower].level
local health = 50000 -- Health do poke
local maxhealth = 50000  -- Maximo de health do poke
local description = "Contains a "..pokemon..", ST[+"..boostx.. "]=["..boost.."]."
local poke1 = "This is "..pokemon.."'s pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2222)
doItemSetAttribute(item, "exp2", "0")
doItemSetAttribute(item, "exp2", calcr)
local nomedaclonagem = getCreatureName(cid)
doItemSetAttribute(item, "fine", 100)
doItemSetAttribute(item, "nome", pokemon)
doItemSetAttribute(item, "apelido", pokemon2)
doItemSetAttribute(item, "description", description)
doItemSetAttribute(item, "boost", boostx)
doItemSetAttribute(item, "exp", "0")
doItemSetAttribute(item, "catchby", pokemon)
doItemSetAttribute(item, "m1", "0")
doItemSetAttribute(item, "m2", "0")
doItemSetAttribute(item, "m3", "0")
doItemSetAttribute(item, "m4", "0")
doItemSetAttribute(item, "m5", "0")
doItemSetAttribute(item, "m6", "0")
doItemSetAttribute(item, "m7", "0")
doItemSetAttribute(item, "m8", "0")
doItemSetAttribute(item, "m9", "0")
doItemSetAttribute(item, "m10", "0")
doItemSetAttribute(item, "m11", "0")
doItemSetAttribute(item, "m12", "0")
doItemSetAttribute(item, "cold","0")
doItemSetAttribute(item, "outifit","28")
doPlayerRemoveMoney(cid,price)
end
if msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 and talk >= -1 then
selfSay('Good Bye, ' .. getCreatureName(cid) .. '.')
focus = 0
talk_start = 0
end
end   
function onCreatureChangeOutfit(creature) end                
function onThink()
doNpcSetCreatureFocus(focus)
if (os.clock() - talk_start) > 30 then
if focus > 0 then
selfSay('Next please!')
end
focus = 0
talk_start = 0
end
if focus ~= 0 then
if getDistanceToCreature(focus) > 5 then
selfSay('Good Bye')
focus = 0
talk_start = 0
end
end
end