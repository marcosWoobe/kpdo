--O projeto kpdo é um projeto open source ,uma instituiçao sem fins lucrativo,esse codigo pode ser utilizado e modificado a gosto sendo distribuido a cada modificação de prefencia para colaborar para a evolução do projeto.
--site do jogo: www.exaioros.com
--forum: forum.exaioros.com/forum
--a area em que se encontra para debater o desenvolvimento do jogo e do projeto é:
--http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--The kpdo project is an open source and free project, a non-profit institution, this code can be used and modified to taste being distributed to each Preference modification to contribute to the evolution of the project.
--site of the game is www.exaioros.com
--the forum is forum.exaioros.com/forum
--the area in which it is to discuss the development of the game and the project is
--Forum Open Source: http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--Contact mail:exaioros@gmail.com
--MY name:Renan
--Staff Exaioros kpdo
--[kpdo]Cater (forum)
---=-=-=-==-=-www.exaioros.com-=-=-=-==-=-=-=
--=-=-=-=-=-=-=-=forum.exaioros.com-=-=-=-=-=-=
--[[Storages
122545 = player q entra na arena              (normal)
122546 = monstros na arena                    (normal)
122547 = waves                                (global)
122548 = qnts monstros tem na arena           (global)                     1
122549 = nome dos players q vao pra arena     (global)
122550 = qnts players tem na arena            (global)
122551 = waves para cada player               (normal)
122552 = categoria            (global)
122553 = evento50         (global)
122554 = evento100       (global)
122555 = evento200     (global)

]]
------------------------------------------------------------------------------------------------------------------
wavesGolden = {                 --waves q vao ter na golden arena... o numero de pokes tem q ser igual ao numero de posis!!                           
[1] = {"Horsea s", "Caterpie s", "Rattata s", "Weedle s", "Oddish s", "Paras s", "Poliwag s", "Bellsprout s", "Shellder s"},       
[2] = {"Pidgey s", "Spearow s", "Ekans s", "Zubat s", "Oddish s", "Paras s", "Diglett s", "Meowth s", "Psyduck s"},                 
[3] = {"Raticate s", "Pikachu s", "Farfetchd s", "Koffing s", "Ponyta s", "Bulbasaur s", "Charmander s", "Squirtle s", "Pidgeotto s"},
[4] = {"Cyndaquil s", "Chikorita s", "Totodile s", "Sentret s", "Hoothoot s", "Ledyba s", "Spinarak s", "Chinchou s", "Pichu s"},
[5] = {"Cyndaquil s", "Pikachu s", "Totodile s", "Bulbasaur s", "Charmander s", "Squirtle s", "Chikorita s", "Koffing s", "Pidgeotto s"},
[6] = {"Ivysaur s", "Charmeleon s", "Wartortle s", "Fearow s", "Arbok s", "Parasect s", "Primeape s", "Kadabra s", "Victreebel s"},
[7] = {"Dodrio s", "Onix s", "Kingler s", "Electrode s", "Starmie s", "Porygon s", "Clefable s", "Venomoth s", "Persian s"},
[8] = {"Bayleef s", "Quilava s", "Croconaw s", "Furret s", "Crobat s", "Mareep s", "Marill s", "Skiploom s", "Wooper s"},
[9] = {"Bayleef s", "Quilava s", "Croconaw s", "Ivysaur s", "Charmeleon s", "Wartortle s", "Snubbull s", "Teddiursa s", "Remoraid s"},
[10] = {"Slugma s", "Houndour s", "Larvitar s", "Treecko s", "Torchic s", "Mudkip s", "Wurmple s", "Slakoth s", "Surskit s"},
[11] = {"Shroomish s", "Slakoth s", "Nincada s", "Whismur s", "Torchic s", "Mudkip s", "Wurmple s", "Venomoth s", "Remoraid s"},
[12] = {"Shiny Parasect s", "Shiny Venomoth s", "Shiny Vileplume s", "Shiny Dugtrio s", "Shiny Machoke s", "Shiny Victreebel s", "Shiny Graveler s", "Shiny Slowbro s", "Shiny Dewgong s"},
[13] = {"Shiny Electrode s", "Shiny Seadra s", "Shiny Pinsir s", "Shiny Wigglytuff s", "Shiny Clefable s", "Shiny Arbok s", "Shiny Fearow s", "Shiny Butterfree s", "Shiny Beedrill s"},                        
[14] = {"Shiny Quilava s", "Shiny Bayleef s", "Shiny Croconaw s", "Shiny Furret s", "Shiny Noctowl s", "Shiny Crobat s", "Shiny Mareep s", "Shiny Skiploom s", "Shiny Slugma s"}, 
[15] = {"Shiny Quilava s", "Shiny Bayleef s", "Shiny Croconaw s", "Shiny Electrode s", "Shiny Noctowl s", "Shiny Crobat s", "Shiny Mareep s", "Shiny Golem s", "Shiny Clefable s"},  --o numero de espaços na tabela tem q ser o ms do numero de posis!!!  ]]                                                 
}

wavesGolden50 = {                 --waves q vao ter na golden arena... o numero de pokes tem q ser igual ao numero de posis!!   
[1] = {"Horsea s", "Caterpie s", "Rattata s", "Weedle s", "Oddish s", "Paras s", "Poliwag s", "Bellsprout s", "Shellder s"},       
[2] = {"Pidgey s", "Spearow s", "Ekans s", "Zubat s", "Oddish s", "Paras s", "Diglett s", "Meowth s", "Psyduck s"},                 
[3] = {"Raticate s", "Pikachu s", "Farfetchd s", "Koffing s", "Ponyta s", "Bulbasaur s", "Charmander s", "Squirtle s", "Pidgeotto s"},
[4] = {"Cyndaquil s", "Chikorita s", "Totodile s", "Sentret s", "Hoothoot s", "Ledyba s", "Spinarak s", "Chinchou s", "Pichu s"},
[5] = {"Cyndaquil s", "Pikachu s", "Totodile s", "Bulbasaur s", "Charmander s", "Squirtle s", "Chikorita s", "Koffing s", "Pidgeotto s"},
[6] = {"Ivysaur s", "Charmeleon s", "Wartortle s", "Fearow s", "Arbok s", "Parasect s", "Primeape s", "Kadabra s", "Victreebel s"},
[7] = {"Dodrio s", "Onix s", "Kingler s", "Electrode s", "Starmie s", "Porygon s", "Clefable s", "Venomoth s", "Persian s"},
[8] = {"Bayleef s", "Quilava s", "Croconaw s", "Furret s", "Crobat s", "Mareep s", "Marill s", "Skiploom s", "Wooper s"},
[9] = {"Bayleef s", "Quilava s", "Croconaw s", "Ivysaur s", "Charmeleon s", "Wartortle s", "Snubbull s", "Teddiursa s", "Remoraid s"},
[10] = {"Slugma s", "Houndour s", "Larvitar s", "Treecko s", "Torchic s", "Mudkip s", "Wurmple s", "Slakoth s", "Surskit s"},
[11] = {"Shroomish s", "Slakoth s", "Nincada s", "Whismur s", "Torchic s", "Mudkip s", "Wurmple s", "Venomoth s", "Remoraid s"},
[12] = {"Shiny Parasect s", "Shiny Venomoth s", "Shiny Vileplume s", "Shiny Dugtrio s", "Shiny Machoke s", "Shiny Victreebel s", "Shiny Graveler s", "Shiny Slowbro s", "Shiny Dewgong s"},
[13] = {"Shiny Electrode s", "Shiny Seadra s", "Shiny Pinsir s", "Shiny Wigglytuff s", "Shiny Clefable s", "Shiny Arbok s", "Shiny Fearow s", "Shiny Butterfree s", "Shiny Beedrill s"},                        
[14] = {"Shiny Quilava s", "Shiny Bayleef s", "Shiny Croconaw s", "Shiny Furret s", "Shiny Noctowl s", "Shiny Crobat s", "Shiny Mareep s", "Shiny Skiploom s", "Shiny Slugma s"}, 
[15] = {"Shiny Quilava s", "Shiny Bayleef s", "Shiny Croconaw s", "Shiny Electrode s", "Shiny Noctowl s", "Shiny Crobat s", "Shiny Mareep s", "Shiny Golem s", "Shiny Clefable s"},  --o numero de espaços na tabela tem q ser o ms do numero de posis!!!  ]]                                                 
}

wavesGolden100 = {                
[1] = {"Ivysaur s", "Charmeleon s", "Wartortle s", "Fearow s", "Arbok s", "Parasect s", "Primeape s", "Kadabra s", "Victreebel s"},    
[2] = {"Bayleef s", "Quilava s", "Croconaw s", "Furret s", "Crobat s", "Mareep s", "Marill s", "Skiploom s", "Wooper s"},  --o numero de espaços na tabela tem q ser o ms do numero de posis!!!  ]]                                                 
[3] = {"Venusaur s", "Charizard s", "Blastoise s", "Pidgeot s", "Raichu s", "Sandslash s", "Nidoqueen s", "Nidoking s", "Poliwrath s"},
[4] = {"Alakazam s", "Tentacruel s", "Gengar s", "Magmar s", "Electabuzz s", "Jynx s", "Scyther s", "Gyarados s", "Aerodactyl s"},
[5] = {"Snorlax s", "Dragonite s", "Meganium s", "Typhlosion s", "Feraligatr s", "Togetic s", "Bellossom s", "Ampharos s", "Azumarill s"},
[6] = {"Jumpluff s", "Politoed s", "Yanma s", "Quagsire s", "Feraligatr s", "Misdreavus s", "Unown s", "Girafarig s", "Forretress s"},
[7] = {"Dunsparce s", "Steelix s", "Granbull s", "Piloswine s", "Corsola s", "Houndoom s", "Kingdra s", "Smeargle s", "Blissey s"},
[8] = {"Tyranitar s", "Sceptile s", "Blaziken s", "Marshtomp s", "Swampert s", "Mightyena s", "Ludicolo s", "Beautifly s", "Pelipper s"},
[9] = {"Shiftry s", "Dustox s", "Swellow s", "Kirlia s", "Gardevoir s", "Breloom s", "Slaking s", "Ninjask s", "Shedinja s"},
[10] = {"Exploud s", "Makuhita s", "Hariyama s", "Nosepass s", "Delcatty s", "Sableye s", "Mawile s", "Lairon s", "Aggron s"},
[11] = {"Meditite s", "Medicham s", "Manectric s", "Illumise s", "Roselia s", "Swalot s", "Carvanha s", "Sharpedo s", "Wailord s"},
[12] = {"Wailmer s", "Camerupt s", "Torkoal s", "Grumpig s", "Vibrava s", "Flygon s", "Cacturne s", "Cacnea s", "Zangoose s"},
[13] = {"Seviper s", "Lunatone s", "Solrock s", "Whiscash s", "Crawdaunt s", "Claydol s", "Armaldo s", "Feebas s", "Milotic s"},
[14] = {"Tropius s", "Absol s", "Walrein s", "Gorebyss s", "Relicanth s", "Latios s", "Regice s", "Mew s", "Kyogre s"},
[15] = {"Groudon s", "Mewtwo s", "Rayquaza s", "Jirachi s", "Deoxys s", "Articuno s", "Moltres s", "Zapdos s", "Celebi s"},
}

wavesGolden200 = {         
[1] = {"Tyranitar s", "Sceptile s", "Blaziken s", "Marshtomp s", "Swampert s", "Mightyena s", "Ludicolo s", "Beautifly s", "Pelipper s"},
[2] = {"Shiftry s", "Dustox s", "Swellow s", "Kirlia s", "Gardevoir s", "Breloom s", "Slaking s", "Ninjask s", "Shedinja s"},       
[3] = {"Exploud s", "Makuhita s", "Hariyama s", "Nosepass s", "Delcatty s", "Sableye s", "Mawile s", "Lairon s", "Aggron s"},
[4] = {"Meditite s", "Medicham s", "Manectric s", "Illumise s", "Roselia s", "Swalot s", "Carvanha s", "Sharpedo s", "Wailord s"},
[5] = {"Wailmer s", "Camerupt s", "Torkoal s", "Grumpig s", "Vibrava s", "Flygon s", "Cacturne s", "Cacnea s", "Zangoose s"},
[6] = {"Ancient Venusaur s", "Elder Charizard s", "Ancient Blastoise s", "Crystal Onix s", "Giant Snorlax s", "Shiny Meganium s", "Shiny Typhlosion s", "Shiny Feraligatr s", "Shiny Ariados s"},
[7] = {"Shiny Togetic s", "Shiny Ampharos s", "Shiny Jumpluff s", "Shiny Quagsire s", "Shiny Murkrow s", "Shiny Wobbuffet s", "Shiny Misdreavus s", "Shiny Girafarig s", "Shiny Forretress s"},
[8] = {"Shiny Gligar s", "Crystal Steelix s", "Shiny Qwilfish s", "Shiny Scizor s", "Shiny Shuckle s", "Shiny Heracross s", "Shiny Sneasel s", "Shiny Ursaring s", "Shiny Magcargo s"},
[9] = {"Shiny Piloswine s", "Shiny Corsola s", "Shiny Octillery s", "Shiny Delibird s", "Shiny Mantine s", "Shiny Skarmory s", "Shiny Houndoom s", "Shiny Kingdra s", "Shiny Donphan s"},
[10] = {"Shiny Piloswine s", "Shiny Corsola s", "Shiny Octillery s", "Shiny Delibird s", "Shiny Mantine s", "Shiny Skarmory s", "Shiny Houndoom s", "Shiny Kingdra s", "Shiny Donphan s"},
[11] = {"Meditite s", "Medicham s", "Manectric s", "Illumise s", "Roselia s", "Swalot s", "Carvanha s", "Sharpedo s", "Groudon s"},
[12] = {"Seviper s", "Lunatone s", "Solrock s", "Whiscash s", "Crawdaunt s", "Claydol s", "Armaldo s", "Feebas s", "Milotic s"},
[13] = {"Tropius s", "Absol s", "Walrein s", "Gorebyss s", "Relicanth s", "Latios s", "Regice s", "Solrock s", "Milotic s"},
[14] = {"Shiny Tyranitar s", "Shiny Miltank s", "Walrein s", "Latios s", "Relicanth s", "Carvanha s", "Sharpedo s", "Groudon s", "Milotic s"},
[15] = {"Groudon s", "Shiny Tyranitar s", "Walrein s", "Roselia s", "Shiny Mantine s", "Salamence s", "Ho-oh s", "Sharpedo s", "Milotic s"},

}

categorie50 = 50
categorie100 = 100
categorie200 = 200
horas = {"3:00", "8:00", "12:00", "17:00", "22:00"} --alterar aki os horarios da golden arena!
timeToWaves = 30
posGolden = {x=966, y=966, z=13}  --pos da golden pra onde os players vao ser teleportados!
posBackGolden = {x=953,y=686, z=7}

GoldenUpper = {x=947, y=953, z=13}    --posiçao da ponta superior esquerda da arena!
GoldenLower = {x=985, y=978, z=13}    --posiçao da ponta inferior direita da arena!
posisGolden = {
{x=953, y=959, z=13},  
{x=953, y=971, z=13},
{x=953, y=977, z=13},
{x=966, y=958, z=13},    --aki vcs colocam todas as posiçoes q os monstros vao nascer dentro da golden arena...
{x=966, y=963, z=13},    --lembrando q o numero de posis q vcs colocarem tem q ser igual ao numero de pokes q vcs vao colocar ali embaixo!
{x=966, y=972, z=13},
{x=979, y=959, z=13},
{x=979, y=963, z=13},                    --LEMBRANDO Q AGORA N PRECISA MAIS EDITAR MAIS NENHUM SCRIPT A N SER ESSE!!
{x=979, y=970, z=13},                    --E O GLOBALEVENTS/GLOBALEVENTS.XML COM OS HORARIOS!
}

function ehMonstro(cid)
if not isPlayer(cid) and not isSummon(cid) then
return true
end                                                   --function pro exp.lua...
return false
end

 
function registerarena(num)
if getGlobalStorageValue(num) <= 0 then
setGlobalStorageValue(num,1)
else
setGlobalStorageValue(num,getGlobalStorageValue(num)+1)
end
end

function doWave(start)                                                            --alterado v2.8 \/
if getGlobalStorageValue(122550) >= 1 and getGlobalStorageValue(122548) <= 0 then
   if start then
   if getGlobalStorageValue(122552) == categorie50 then
      doBroadcastMessage("The Bronze Arena are started!") 
	  elseif getGlobalStorageValue(122552) == categorie100 then
	   doBroadcastMessage("The Silver Arena are started!") 
	   	  elseif getGlobalStorageValue(122552) == categorie200 then
	   doBroadcastMessage("The Golden Arena are started!") 
end	  
   end
    if getGlobalStorageValue(122552) == categorie50 then
	registerarena(122553)

   local wave = getGlobalStorageValue(122547) <= 0 and 1 or getGlobalStorageValue(122547)
   local players = creaturesInGolden(GoldenUpper, GoldenLower, true)
   for i = 1, #posisGolden do
       if wavesGolden50[wave][i] ~= "" then                         
          local monster = doSummonCreature(wavesGolden50[wave][i], posisGolden[i])   
		  registerCreatureEvent(monster, "Summondeath")
local vids = (getCreatureHealth(monster) - 2)
local vida = (getCreatureHealth(monster))*2
doCreatureAddHealth(monster, -vids)
setCreatureMaxHealth(monster,vida)
doCreatureAddHealth(monster, vida)
setPlayerStorageValue(monster, 4559, categorie50)
          --doSetMonsterPassive(monster)               
          --doWildAttackPlayer(monster, players[math.random(#players)])         
          doSendMagicEffect(getThingPos(monster), 21)
          setPlayerStorageValue(monster, 122546, 1)
          local sto = getGlobalStorageValue(122548) <= 0 and 0 or getGlobalStorageValue(122548)
          setGlobalStorageValue(122548, sto+1)
       end
   end 
   for a = 1, #players do
       setPlayerStorageValue(players[a], 122551, wave) 
   end   
   setGlobalStorageValue(122547, wave+1) 
   
  elseif getGlobalStorageValue(122552) == categorie100 then
  	registerarena(122554)
   local wave = getGlobalStorageValue(122547) <= 0 and 1 or getGlobalStorageValue(122547)
   local players = creaturesInGolden(GoldenUpper, GoldenLower, true)
   for i = 1, #posisGolden do
       if wavesGolden100[wave][i] ~= "" then                         
          local monster = doSummonCreature(wavesGolden100[wave][i], posisGolden[i])   
		  registerCreatureEvent(monster, "Summondeath")
local vids = (getCreatureHealth(monster) - 2)
local vida = (getCreatureHealth(monster))*2
doCreatureAddHealth(monster, -vids)
setCreatureMaxHealth(monster,vida)
doCreatureAddHealth(monster, vida)
setPlayerStorageValue(monster, 4559, categorie100)
          --doSetMonsterPassive(monster)               
          --doWildAttackPlayer(monster, players[math.random(#players)])         
          doSendMagicEffect(getThingPos(monster), 21)
          setPlayerStorageValue(monster, 122546, 1)
          local sto = getGlobalStorageValue(122548) <= 0 and 0 or getGlobalStorageValue(122548)
          setGlobalStorageValue(122548, sto+1)
       end
   end 
   for a = 1, #players do
       setPlayerStorageValue(players[a], 122551, wave) 
   end   
   setGlobalStorageValue(122547, wave+1) 
     elseif getGlobalStorageValue(122552) == categorie200 then
	 	registerarena(122555)
   local wave = getGlobalStorageValue(122547) <= 0 and 1 or getGlobalStorageValue(122547)
   local players = creaturesInGolden(GoldenUpper, GoldenLower, true)
   for i = 1, #posisGolden do
       if wavesGolden200[wave][i] ~= "" then                         
          local monster = doSummonCreature(wavesGolden200[wave][i], posisGolden[i])   
		  registerCreatureEvent(monster, "Summondeath")
local vids = (getCreatureHealth(monster) - 2)
local vida = (getCreatureHealth(monster))*2
doCreatureAddHealth(monster, -vids)
setCreatureMaxHealth(monster,vida)
doCreatureAddHealth(monster, vida)
setPlayerStorageValue(monster, 4559, categorie200)
          --doSetMonsterPassive(monster)               
          --doWildAttackPlayer(monster, players[math.random(#players)])         
          doSendMagicEffect(getThingPos(monster), 21)
          setPlayerStorageValue(monster, 122546, 1)
          local sto = getGlobalStorageValue(122548) <= 0 and 0 or getGlobalStorageValue(122548)
          setGlobalStorageValue(122548, sto+1)
       end
   end 
   for a = 1, #players do
       setPlayerStorageValue(players[a], 122551, wave) 
   end   
   setGlobalStorageValue(122547, wave+1) 
   end
  
else
    if start then    
   if getGlobalStorageValue(122552) == categorie50 then
    doBroadcastMessage("Bronze Arena will not begin, because no player are registered!")
	  elseif getGlobalStorageValue(122552) == categorie100 then
	   doBroadcastMessage("Silver Arena will not begin, because no player are registered!")
	   	  elseif getGlobalStorageValue(122552) == categorie200 then
	    doBroadcastMessage("Golden Arena will not begin, because no player are registered!")
end		
       
       return true
    end
end
end
------------------------------------------------------------------------------------------------------------------
function hasTile(pos)    --Verifica se tem TILE na pos
pos.stackpos = 0
if getTileThingByPos(pos).itemid >= 1 then
   return true
end
return false
end

function puxaParticipantes()
local s = ""
if getGlobalStorageValue(122549) ~= -1 then
   s = string.explode(getGlobalStorageValue(122549), ",")
end

if type(s) ~= 'table' or s == "" then
return true                        --alterado v2.8 \/
end

for i = 1, #s do
    local sid = getPlayerByName(s[i])
    if isCreature(sid) then
	if #getCreatureSummons(sid) >= 1 then
doTeleportThing(getCreatureSummons(sid)[1], getClosestFreeTile(getCreatureSummons(sid)[1], posGolden))
end
       doTeleportThing(sid, getClosestFreeTile(sid, posGolden))  --pos pra onde os players vao ser teleportados quando a golden começar!
       doSendMagicEffect(getThingPos(sid), 21)
       setPlayerStorageValue(sid, 122545, 1)
       setGlobalStorageValue(122550, (getGlobalStorageValue(122550) <= 0 and 0 or getGlobalStorageValue(122550))+1)
    end
end
setGlobalStorageValue(22549, -1)
end
------------------------------------------------------------------------------------------------------------------
function endGoldenArena(onStart)
for sto = 122547, 122550 do
    setGlobalStorageValue(sto, -1)
end
addEvent(creaturesInGolden, 150, GoldenUpper, GoldenLower, false, true, true)
if not onStart then

   if getGlobalStorageValue(122552) == categorie50 then
     doBroadcastMessage("The Bronze Arena are finished!")
	  elseif getGlobalStorageValue(122552) == categorie100 then
	 doBroadcastMessage("The Silver Arena are finished!")
	   	  elseif getGlobalStorageValue(122552) == categorie200 then
	     doBroadcastMessage("The Golden Arena are finished!")
end		
for sto = 122551, 122555 do
    setGlobalStorageValue(sto, -1)
end
  
end
end
------------------------------------------------------------------------------------------------------------------
function creaturesInGolden(upper, lower, player, remove, clean) -- function by Vodkart and edited by Slicer
local players = {}   
   for x = upper.x - 1, lower.x + 1 do
       for y = upper.y - 1, lower.y + 1 do                                         
           local pos = {x = x, y = y, z = upper.z}
           local m = getTopCreature(pos).uid
           if remove ~= false and m ~= 0 and ehMonstro(m) then doRemoveCreature(m) end
           if clean ~= false and hasTile(pos) then doCleanTile(pos, false) end  --alterado v2.8
           if player ~= false and m ~= 0 and isPlayer(m) and getPlayerStorageValue(m, 122545) == 1 then table.insert(players, m) end 
       end
   end
   if player ~= false then return players end
end
------------------------------------------------------------------------------------------------------------------
function installRankGolden()                                                          --alterado v2.8 \/
if db.getResult("SELECT `Golden` FROM `players`;"):getID() ~= -1 then return true end
    
   if db.executeQuery("ALTER TABLE `players` ADD `Golden` integer not null default 0;") then
      if db.executeQuery("UPDATE `players` SET `Golden` = '10000' WHERE `id` = 1;") then  
         print("Table 'Golden' added with success!")
      end
   end
return true
end
------------------------------------------------------------------------------------------------------------------    
function getPlayerRecordWaves(cid)
if not isCreature(cid) then return 0 end
local pid = getPlayerGUID(cid)
local query = db.getResult("SELECT `Golden` FROM `players` WHERE `id` = "..pid..";")

if query:getID() == -1 then
return 0
end
return query:getDataInt("Golden")
end
------------------------------------------------------------------------------------------------------------------
function setPlayerRecordWaves(cid)             
if not isCreature(cid) then return false end
local waves = getPlayerStorageValue(cid, 122551)
local acc = getPlayerGUID(cid)
if waves > getPlayerRecordWaves(cid) then
   if db.executeQuery("UPDATE `players` SET `Golden` = '"..waves.."' WHERE `id` = "..acc..";") then
      setPlayerStorageValue(cid, 122551, -1)
      return true
   end
end
return false
end
------------------------------------------------------------------------------------------------------------------
function getRankGolden()                                                                      --alterado v2.9 \/
local query = db.getResult("SELECT `id`, `Golden` FROM `players` ORDER BY `Golden` DESC;")
local str = {}
table.insert(str, "Rank of the Golden Arena:\n\n")

if query:getID() ~= -1 then
   for i = 1, 10 do
      if not(query:next()) or query:getDataInt("Golden") == 0 then
         table.insert(str, i.."° None - 0 wave.\n")
      else
         local s = tonumber(query:getDataInt("Golden")) > 1 and "s" or "" 
         table.insert(str, i.."° "..getPlayerNameByGUID(query:getDataString("id")).." - "..query:getDataInt("Golden").." wave"..s..".\n")
      end
   end 
query:free()
end
return table.concat(str)
end
------------------------------------------------------------------------------------------------------------------