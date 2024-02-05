
function onUse(cid, item, frompos, item2, topos)
r1 = math.random(1,28)
if getPlayerLevel(cid) >= 5 then
if doPlayerRemoveItem(cid,7891,1) == TRUE then
if r1 == 1 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Venusaur.")
local health = Venusaurlife -- Health do poke
local maxhealth = Venusaurlife -- Maximo de health do poke
local description = "Contains a Venusaur."
local poke1 = "This is Venusaur's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Venusaur")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 2 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Charizard.")
local health = Charizardlife -- Health do poke
local maxhealth = Charizardlife -- Maximo de health do poke
local description = "Contains a Charizard."
local poke1 = "This is Charizard's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Charizard")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 3 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Blastoise.")
local health = Blastoiselife -- Health do poke
local maxhealth = Blastoiselife -- Maximo de health do poke
local description = "Contains a Blastoise."
local poke1 = "This is Blastoise's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Blastoise")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 4 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Pidgeot.")
local health = Pidgeotlife -- Health do poke
local maxhealth = Pidgeotlife -- Maximo de health do poke
local description = "Contains a Pidgeot."
local poke1 = "This is Pidgeot's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Pidgeot")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 5 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Nidoking.")
local health = Nidokinglife -- Health do poke
local maxhealth = Nidokinglife -- Maximo de health do poke
local description = "Contains a Nidoking."
local poke1 = "This is Nidoking's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Nidoking")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 6 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Nidoqueen.")
local health = Nidoqueenlife -- Health do poke
local maxhealth = Nidoqueenlife -- Maximo de health do poke
local description = "Contains a Nidoqueen."
local poke1 = "This is Nidoqueen's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Nidoqueen")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 7 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Ninetales.")
local health = Ninetaleslife -- Health do poke
local maxhealth = Ninetaleslife -- Maximo de health do poke
local description = "Contains a Ninetales."
local poke1 = "This is Ninetales's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Ninetales")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 8 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Arcanine.")
local health = Arcaninelife -- Health do poke
local maxhealth = Arcaninelife -- Maximo de health do poke
local description = "Contains a Arcanine."
local poke1 = "This is Arcanine's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Arcanine")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 9 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Alakazam.")
local health = Alakazamlife -- Health do poke
local maxhealth = Alakazamlife -- Maximo de health do poke
local description = "Contains a Alakazam."
local poke1 = "This is Alakazam's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Alakazam")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 10 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Machamp.")
local health = Machamplife-- Health do poke
local maxhealth = Machamplife -- Maximo de health do poke
local description = "Contains a Machamp."
local poke1 = "This is Machamp's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Machamp")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 11 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Tentacruel.")
local health = Tentacruellife -- Health do poke
local maxhealth = Tentacruellife -- Maximo de health do poke
local description = "Contains a Tentacruel."
local poke1 = "This is Tentacruel's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Tentacruel")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 12 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Golem.")
local health = Golemlife -- Health do poke
local maxhealth = Golemlife -- Maximo de health do poke
local description = "Contains a Golem."
local poke1 = "This is Golem's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Golem")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 13 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Dewgong.")
local health = Dewgonglife -- Health do poke
local maxhealth = Dewgonglife -- Maximo de health do poke
local description = "Contains a Dewgong."
local poke1 = "This is Dewgong's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Dewgong")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 14 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Gengar.")
local health = Gengarlife -- Health do poke
local maxhealth = Gengarlife -- Maximo de health do poke
local description = "Contains a Gengar."
local poke1 = "This is Gengar's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Gengar")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 15 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Rhydon.")
local health = Rhydonlife -- Health do poke
local maxhealth = Rhydonlife -- Maximo de health do poke
local description = "Contains a Rhydon."
local poke1 = "This is Rhydon's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Rhydon")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 16 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Scyther.")
local health = Scytherlife -- Health do poke
local maxhealth = Scytherlife -- Maximo de health do poke
local description = "Contains a Scyther."
local poke1 = "This is Scyther's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Scyther")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)




elseif r1 == 17 then
doPlayerSendTextMessage(cid,22,"Você ganhou uma Jynx.")
local health = Jynxlife -- Health do poke
local maxhealth = Jynxlife -- Maximo de health do poke
local description = "Contains a Jynx."
local poke1 = "This is Jynx's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Jynx")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 18 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Electabuzz.")
local health = Electabuzzlife -- Health do poke
local maxhealth = Electabuzzlife -- Maximo de health do poke
local description = "Contains a Electabuzz."
local poke1 = "This is Electabuzz's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Electabuzz")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 19 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Magmar.")
local health = Magmarlife -- Health do poke
local maxhealth = Magmarlife -- Maximo de health do poke
local description = "Contains a Magmar."
local poke1 = "This is Magmar's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Magmar")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 20 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Gyarados.")
local health = Gyaradoslife -- Health do poke
local maxhealth = Gyaradoslife -- Maximo de health do poke
local description = "Contains a Gyarados."
local poke1 = "This is Gyarados's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Gyarados")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 21 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Lapras.")
local health = Lapraslife -- Health do poke
local maxhealth = Lapraslife -- Maximo de health do poke
local description = "Contains a Lapras."
local poke1 = "This is Lapras's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Lapras")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 22 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Omastar.")
local health = Omastarlife -- Health do poke
local maxhealth = Omastarlife -- Maximo de health do poke
local description = "Contains a Omastar."
local poke1 = "This is Omastar's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Omastar")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 23 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Kabutops.")
local health = Kabutopslife -- Health do poke
local maxhealth = Kabutopslife -- Maximo de health do poke
local description = "Contains a Kabutops."
local poke1 = "This is Kabutops's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Kabutops")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 24 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Aerodactyl.")
local health = Aerodactyllife -- Health do poke
local maxhealth = Aerodactyllife -- Maximo de health do poke
local description = "Contains a Aerodactyl."
local poke1 = "This is Aerodactyl's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Aerodactyl")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 25 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Snorlax.")
local health = Snorlaxlife -- Health do poke
local maxhealth = Snorlaxlife -- Maximo de health do poke
local description = "Contains a Snorlax."
local poke1 = "This is Snorlax's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Snorlax")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 26 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Dragonair.")
local health = Dragonairlife -- Health do poke
local maxhealth = Dragonairlife -- Maximo de health do poke
local description = "Contains a Dragonair."
local poke1 = "This is Dragonair's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Dragonair")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 27 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Dragonite.")
local health = Dragonitelife -- Health do poke
local maxhealth = Dragonitelife -- Maximo de health do poke
local description = "Contains a Dragonite."
local poke1 = "This is Dragonite's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Dragonite")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)

elseif r1 == 28 then
doPlayerSendTextMessage(cid,22,"Você ganhou um Poliwrath.")
local health = Poliwrathlife -- Health do poke
local maxhealth = Poliwrathlife -- Maximo de health do poke
local description = "Contains a Poliwrath."
local poke1 = "This is Poliwrath's pokeball. HP = ["..health.."/"..maxhealth.."]"
item = doCreateItemEx(2219)
doItemSetAttribute(item, "poke", poke1)
doItemSetAttribute(item, "nome", "Poliwrath")
doItemSetAttribute(item, "description", description)
doPlayerAddItemEx(cid, item, true)
doTransformItem(item, 2222)
doSendMagicEffect(getCreaturePosition(cid), 28)
end
end
end
end