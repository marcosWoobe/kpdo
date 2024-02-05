local focus = 0

local talk_start = 0

local target = 0

local following = false

local attacking = false

local talkState = {}

function onThingMove(creature, thing, oldpos, oldstackpos)

end

function onCreatureAppear(creature)

end

function onCreatureDisappear(cid, pos)
if focus == cid then
selfSay('Good bye sir!')
focus = 0
talk_start = 0
end
end


function onCreatureTurn(creature)

end

function msgcontains(txt, str)
return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end

function sellPokemon(cid, name, price)
local pokename = name
local bp = getPlayerSlotItem(cid, CONST_SLOT_BACKPACK)
local itemsball = getItemsInContainerById(bp.uid, 2222)
local itemsultra = getItemsInContainerById(bp.uid, 2220) 
for _, pok in pairs(itemsball) do
if string.lower(getItemAttribute(pok, "poke"):sub(9, findLetter(getItemAttribute(pok, "poke"), "'")-1)) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, price)
selfSay('Wow! Thanks for this wonderful pokemon! Take your money.')
return true
end
end
for _, pok in pairs(itemsultra) do
if string.lower(getItemAttribute(pok, "poke"):sub(9, findLetter(getItemAttribute(pok, "poke"), "'")-1)) == pokename then
doRemoveItem(pok, 1)
doPlayerAddMoney(cid, price)
selfSay('Wow! Thanks for this wonderful pokemon! Take your money.')
return true
end
end
selfSay('Hey, you dont have this pokemon! Make sure if its not fainted and it is inside your backpack!')
end

function onCreatureSay(cid, type, msg)
local msg = string.lower(msg)
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
if (msgcontains(msg, 'bye') and focus == cid) then
selfSay('See you around then!')
focus = 0
elseif (msgcontains(msg, "let's fight") and focus == cid) then
elseif (msgcontains(msg, "i need your help") and focus == cid) then
elseif (msgcontains(msg, "i choose you") and focus == cid) then
elseif (msgcontains(msg, "thanks for helping") and focus == cid) then
elseif (msgcontains(msg, "it's battle time") and focus == cid) then
elseif (msgcontains(msg, "excellent work") and focus == cid) then
elseif (msgcontains(msg, "go,") and focus == cid) then
elseif (msgcontains(msg, "you were great") and focus == cid) then
elseif (msgcontains(msg, "well done") and focus == cid) then
elseif (msgcontains(msg, "come back") and focus == cid) then
elseif (msgcontains(msg, "let's do it") and focus == cid) then
elseif (msgcontains(msg, 'hi') and (focus == 0) and (focus ~= cid) and (getDistanceToCreature(cid) <= 4)) then
selfSay('Welcome to my store! I buy pokemons of all species, just tell me the name of the pokemon you want to sell.')
focus = cid
talkState[talkUser] = 1
talk_start = os.clock()
elseif ((msgcontains(msg, 'rattata') or msgcontains(msg, 'magikarp') or msgcontains(msg, 'caterpie') or msgcontains(msg, 'weedle')) and talkState[talkUser] == 1 and focus == cid) then
selfSay('I dont buy such a common pokemon!')
elseif (msgcontains(msg, 'no') and talkState[talkUser] ~= 1 and focus == cid) then
selfSay('Well, then what pokemon would you like to sell?')
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'poliwag') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a poliwag? I can buy it for 110 dollars.')
talkState[talkUser] = "poliwag"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "poliwag" and focus == cid) then
sellPokemon(cid, "poliwag", 11000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'horsea') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a horsea? I can buy it for 200 dollars.')
talkState[talkUser] = "horsea"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "horsea" and focus == cid) then
sellPokemon(cid, "horsea", 20000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'oddish') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me an oddish? I can buy it for 80 dollars.')
talkState[talkUser] = "oddish"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "oddish" and focus == cid) then
sellPokemon(cid, "oddish", 8000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'bellsprout') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a bellsprout? I can buy it for 100 dollars.')
talkState[talkUser] = "bellsprout"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "bellsprout" and focus == cid) then
sellPokemon(cid, "bellsprout", 10000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'pidgey') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a pidgey? I can buy it for 50 dollars.')
talkState[talkUser] = "pidgey"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "pidgey" and focus == cid) then
sellPokemon(cid, "pidgey", 5000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'weepinbell') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a weepinbell? I can buy it for 1500 dollars.')
talkState[talkUser] = "weepinbell"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "weepinbell" and focus == cid) then
sellPokemon(cid, "weepinbell", 150000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'pidgeotto') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a pidgeotto? I can buy it for 1200 dollars.')
talkState[talkUser] = "pidgeotto"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "pidgeotto" and focus == cid) then
sellPokemon(cid, "pidgeotto", 120000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'gloom') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a gloom? I can buy it for 1500 dollars.')
talkState[talkUser] = "gloom"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "gloom" and focus == cid) then
sellPokemon(cid, "gloom", 150000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'kakuna') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a kakuna? I can buy it for 250 dollars.')
talkState[talkUser] = "kakuna"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "kakuna" and focus == cid) then
sellPokemon(cid, "kakuna", 25000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'beedrill') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a beedrill? I can buy it for 1200 dollars.')
talkState[talkUser] = "beedrill"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "beedrill" and focus == cid) then
sellPokemon(cid, "beedrill", 120000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'sandshrew') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a beedrill? I can buy it for 850 dollars.')
talkState[talkUser] = "sandshrew"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "sandshrew" and focus == cid) then
sellPokemon(cid, "sandshrew", 85000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'sandslash') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a sandslash? I can buy it for 5000 dollars.')
talkState[talkUser] = "sandslash"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "sandslash" and focus == cid) then
sellPokemon(cid, "sandslash", 500000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'magnemite') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a magnemite? I can buy it for 600 dollars.')
talkState[talkUser] = "magnemite"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "magnemite" and focus == cid) then
sellPokemon(cid, "magnemite", 60000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'magneton') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a magneton? I can buy it for 2500 dollars.')
talkState[talkUser] = "magneton"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "magneton" and focus == cid) then
sellPokemon(cid, "magneton", 250000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'raticate') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a raticate? I can buy it for 850 dollars.')
talkState[talkUser] = "raticate"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "raticate" and focus == cid) then
sellPokemon(cid, "raticate", 85000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'seadra') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a seadra? I can buy it for 2500 dollars.')
talkState[talkUser] = "seadra"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "seadra" and focus == cid) then
sellPokemon(cid, "seadra", 250000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'geodude') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a geodude? I can buy it for 500 dollars.')
talkState[talkUser] = "geodude"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "geodude" and focus == cid) then
sellPokemon(cid, "geodude", 50000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'doduo') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a doduo? I can buy it for 650 dollars.')
talkState[talkUser] = "doduo"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "doduo" and focus == cid) then
sellPokemon(cid, "doduo", 65000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'dodrio') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a dodrio? I can buy it for 3000 dollars.')
talkState[talkUser] = "dodrio"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "dodrio" and focus == cid) then
sellPokemon(cid, "dodrio", 300000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'golbat') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a golbat? I can buy it for 1200 dollars.')
talkState[talkUser] = "golbat"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "golbat" and focus == cid) then
sellPokemon(cid, "golbat", 120000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'graveler') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a graveler? I can buy it for 1600 dollars.')
talkState[talkUser] = "graveler"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "graveler" and focus == cid) then
sellPokemon(cid, "graveler", 160000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'golem') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a golem? I can buy it for 4000 dollars.')
talkState[talkUser] = "golem"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "golem" and focus == cid) then
sellPokemon(cid, "golem", 400000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'voltorb') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a voltorb? I can buy it for 450 dollars.')
talkState[talkUser] = "voltorb"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "voltorb" and focus == cid) then
sellPokemon(cid, "voltorb", 45000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'abra') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me an abra? I can buy it for 800 dollars.')
talkState[talkUser] = "abra"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "abra" and focus == cid) then
sellPokemon(cid, "abra", 80000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'kadabra') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a kadabra? I can buy it for 6000 dollars.')
talkState[talkUser] = "kadabra"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "kadabra" and focus == cid) then
sellPokemon(cid, "kadabra", 600000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'alakazam') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me an alakazam? I can buy it for 12000 dollars.')
talkState[talkUser] = "alakazam"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "alakazam" and focus == cid) then
sellPokemon(cid, "alakazam", 1200000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'charmander') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a charmander? I can buy it for 3000 dollars.')
talkState[talkUser] = "charmander"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "charmander" and focus == cid) then
sellPokemon(cid, "charmander", 300000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'charmeleon') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a charmeleon? I can buy it for 5500 dollars.')
talkState[talkUser] = "charmeleon"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "charmeleon" and focus == cid) then
sellPokemon(cid, "charmeleon", 550000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'charizard') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a charizard? I can buy it for 8000 dollars.')
talkState[talkUser] = "charizard"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "charizard" and focus == cid) then
sellPokemon(cid, "charizard", 550000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'electrode') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me an electrode? I can buy it for 2000 dollars.')
talkState[talkUser] = "electrode"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "electrode" and focus == cid) then
sellPokemon(cid, "electrode", 200000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'vileplume') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a vileplume? I can buy it for 5000 dollars.')
talkState[talkUser] = "vileplume"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "vileplume" and focus == cid) then
sellPokemon(cid, "vileplume", 500000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'victreebel') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a victreebel? I can buy it for 5000 dollars.')
talkState[talkUser] = "victreebel"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "victreebel" and focus == cid) then
sellPokemon(cid, "victreebel", 500000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'pidgeot') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a pidgeot? I can buy it for 5500 dollars.')
talkState[talkUser] = "pidgeot"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "pidgeot" and focus == cid) then
sellPokemon(cid, "pidgeot", 550000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'zubat') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a zubat? I can buy it for 120 dollars.')
talkState[talkUser] = "zubat"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "zubat" and focus == cid) then
sellPokemon(cid, "zubat", 12000)
talkState[talkUser] = 1
----------------------------------------------------------------
elseif (msgcontains(msg, 'poliwrath') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a poliwrath? I can buy it for 7000 dollars.')
talkState[talkUser] = "poliwrath"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "poliwrath" and focus == cid) then
sellPokemon(cid, "poliwrath", 700000)
talkState[talkUser] = 1 
----------------------------------------------------------------
elseif (msgcontains(msg, 'grimer') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a grimer? I can buy it for 600 dollars.')
talkState[talkUser] = "grimer"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "grimer" and focus == cid) then
sellPokemon(cid, "grimer", 60000)
talkState[talkUser] = 1 
----------------------------------------------------------------
elseif (msgcontains(msg, 'muk') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a muk? I can buy it for 1800 dollars.')
talkState[talkUser] = "muk"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "muk" and focus == cid) then
sellPokemon(cid, "muk", 180000)
talkState[talkUser] = 1  
----------------------------------------------------------------
elseif (msgcontains(msg, 'poliwhirl') and talkState[talkUser] == 1 and focus == cid) then
selfSay('Are you sure you want to sell me a poliwhirl? I can buy it for 2200 dollars.')
talkState[talkUser] = "poliwhirl"
elseif (msgcontains(msg, 'yes') and talkState[talkUser] == "poliwhirl" and focus == cid) then
sellPokemon(cid, "poliwhirl", 220000)
talkState[talkUser] = 1
end
end
 
function onThink()
if focus == 0 then
selfTurn(1)
else
argx, argy, argz = selfGetPosition()
dir = getDirectionTo({x=argx,y=argy,z=argz}, getThingPos(focus))
    if dir == 7 then
    dir = 0
    elseif dir == 6 then
    dir = 3
    elseif dir == 5 then
    dir = 1
    elseif dir == 4 then
    dir = 3
    end
selfTurn(dir)
end

if (os.clock() - talk_start) > 59 then
if focus ~= 0 then
selfSay('We have been talking for too much time!')
focus = 0
end
end

if focus ~= 0 then
a, b, c = selfGetPosition()
if c ~= getThingPos(focus).z then
focus = 0
end
end

if focus ~= 0 then
if getDistanceToCreature(focus) > 4 then
selfSay('Come back to sell me pokemons!')
focus = 0
end
end

return true
end