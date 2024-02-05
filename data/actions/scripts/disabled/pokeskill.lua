local pokes = {
["Bulbasaur"] = {level = 20, cons = 40, vida = Bulbasaurlife},
["Ivysaur"] = {level = 40, cons = 45, vida = Ivysaurlife},
["Venusaur"] = {level = 85, cons = 60, vida = Venusaurlife},
["Charmander"] = {level = 20, cons = 60, vida = Charmanderlife},
["Charmeleon"] = {level = 40, cons = 60, vida = Charmeleonlife},
["Charizard"] = {level = 85, cons = 60, vida = Charizardlife},
["Squirtle"] = {level = 20, cons = 40, vida = Squirtlelife},
["Wartortle"] = {level = 40, cons = 45, vida = Wartortlelife},
["Blastoise"] = {level = 85, cons = 60, vida = Blastoiselife},
["Caterpie"] = {level = 1, cons = 13, vida = Caterpielife},
["Metapod"] = {level = 10, cons = 30, vida = Metapodlife},
["Butterfree"] = {level = 30, cons = 40, vida = Butterfreelife},
["Weedle"] = {level = 1, cons = 16, vida = Weedlelife},
["Kakuna"] = {level = 10, cons = 32, vida = Kakunalife},
["Beedrill"] = {level = 30, cons = 40, vida = Beedrilllife},
["Pidgey"] = {level = 1, cons = 22, vida = Pidgeylife},
["Pidgeotto"] = {level = 20, cons = 47, vida = Pidgeottolife},
["Pidgeot"] = {level = 65, cons = 65, vida = Pidgeotlife},
["Rattata"] = {level = 1, cons = 19, vida = Rattatalife},
["Raticate"] = {level = 20, cons = 50, vida = Raticatelife},
["Spearow"] = {level = 5, cons = 22, vida = Spearowlife},
["Fearow"] = {level = 50, cons = 50, vida = Fearowlife},
["Ekans"] = {level = 12, cons = 27, vida = Ekanslife},
["Arbok"] = {level = 30, cons = 60, vida = Arboklife},
["Pikachu"] = {level = 20, cons = 45, vida = Pikachulife},
["Raichu"] = {level = 50, cons = 60, vida = Raichulife},
["Sandshrew"] = {level = 18, cons = 30, vida = Sandshrewlife},
["Sandslash"] = {level = 55, cons = 60, vida = Sandslashlife},
["Nidoran Female"] = {level = 10, cons = 27, vida = Nidoranfelife},
["Nidorina"] = {level = 25, cons = 50, vida = Nidorinalife},
["Nidoqueen"] = {level = 65, cons = 70, vida = Nidoqueenlife},
["Nidoran Male"] = {level = 10, cons = 34, vida = Nidoranmalife},
["Nidorino"] = {level = 25, cons = 50, vida = Nidorinolife},
["Nidoking"] = {level = 65, cons = 70, vida = Nidokinglife},
["Clefairy"] = {level = 10, cons = 30, vida = Clefairylife},
["Clefable"] = {level = 35, cons = 70, vida = Clefablelife},
["Vulpix"] = {level = 20, cons = 32, vida = Vulpixlife},
["Ninetales"] = {level = 65, cons = 65, vida = Ninetaleslife},
["Jigglypuff"] = {level = 10, cons = 30, vida = Jigglypufflife},
["Wigglytuff"] = {level = 42, cons = 70, vida = Wigglytufflife},
["Zubat"] = {level = 5, cons = 28, vida = Zubatlife},
["Golbat"] = {level = 30, cons = 70, vida = Golbatlife},
["Oddish"] = {level = 5, cons = 21, vida = Oddishlife},
["Gloom"] = {level = 18, cons = 51, vida = Gloomlife},
["Vileplume"] = {level = 50, cons = 65, vida = Vileplumelife},
["Paras"] = {level = 1, cons = 40, vida = Paraslife},
["Parasect"] = {level = 50, cons = 80, vida = Parasectlife},
["Venonat"] = {level = 18, cons = 50, vida = Venonatlife},
["Venomoth"] = {level = 50, cons = 60, vida = Venomothlife},
["Diglett"] = {level = 5, cons = 45, vida = Diglettlife},
["Dugtrio"] = {level = 35, cons = 50, vida = Dugtriolife},
["Meowth"] = {level = 12, cons = 52, vida = Meowthlife},
["Persian"] = {level = 25, cons = 85, vida = Persianlife},
["Psyduck"] = {level = 12, cons = 50, vida = Psyducklife},
["Golduck"] = {level = 55, cons = 50, vida = Golducklife},
["Mankey"] = {level = 10, cons = 60, vida = Mankeylife},
["Primeape"] = {level = 45, cons = 50, vida = Primeapelife},
["Growlithe"] = {level = 20, cons = 50, vida = Growlithelife},
["Arcanine"] = {level = 80, cons = 55, vida = Arcaninelife},
["Poliwag"] = {level = 5, cons = 20, vida = Poliwaglife},
["Poliwhirl"] = {level = 20, cons = 44, vida = Poliwhirllife},
["Poliwrath"] = {level = 65, cons = 60, vida = Poliwrathlife},
["Abra"] = {level = 15, cons = 15, vida = Abralife},
["Kadabra"] = {level = 50, cons = 40, vida = Kadabralife},
["Alakazam"] = {level = 80, cons = 40, vida = Alakazamlife},
["Shiny Alakazam"] = {level = 100, cons = 50, vida = shinyAlakazamlife},
["Machop"] = {level = 18, cons = 60, vida = Machoplife},
["Machoke"] = {level = 40, cons = 80, vida = Machokelife},
["Machamp"] = {level = 65, cons = 80, vida = Machamplife},
["Bellsprout"] = {level = 5, cons = 24, vida = Bellsproutlife},
["Weepinbell"] = {level = 18, cons = 49, vida = Weepinbelllife},
["Victreebel"] = {level = 50, cons = 50, vida = Victreebellife},
["Tentacool"] = {level = 12, cons = 52, vida = Tentacoollife},
["Tentacruel"] = {level = 70, cons = 60, vida = Tentacruellife},
["Geodude"] = {level = 15, cons = 30, vida = Geodudelife},
["Graveler"] = {level = 40, cons = 50, vida = Gravelerlife},
["Golem"] = {level = 70, cons = 70, vida = Golemlife},
["Ponyta"] = {level = 20, cons = 50, vida = Ponytalife},
["Rapidash"] = {level = 60, cons = 80, vida = Rapidashlife},
["Slowpoke"] = {level = 12, cons = 55, vida = Slowpokelife},
["Slowbro"] = {level = 45, cons = 70, vida = Slowbrolife},
["Magnemite"] = {level = 15, cons = 27, vida = Magnemitelife},
["Magneton"] = {level = 40, cons = 50, vida = Magnetonlife},
["Farfetchd"] = {level = 40, cons = 50, vida = Farfetchdlife},
["Doduo"] = {level = 12, cons = 50, vida = Doduolife},
["Dodrio"] = {level = 45, cons = 50, vida = Dodriolife},
["Seel"] = {level = 20, cons = 50, vida = Seellife},
["Dewgong"] = {level = 65, cons = 60, vida = Dewgonglife},
["Grimer"] = {level = 12, cons = 30, vida = Grimerlife},
["Muk"] = {level = 30, cons = 70, vida = Muklife},
["Shellder"] = {level = 5, cons = 45, vida = Shellderlife},
["Cloyster"] = {level = 65, cons = 60, vida = Cloysterlife},
["Gastly"] = {level = 18, cons = 30, vida = Gastlylife},
["Haunter"] = {level = 45, cons = 40, vida = Haunterlife},
["Gengar"] = {level = 80, cons = 45, vida = Gengarlife},
["Onix"] = {level = 50, cons = 70, vida = Onixlife},
["Drowzee"] = {level = 22, cons = 25, vida = Drowzeelife},
["Hypno"] = {level = 50, cons = 45, vida = Hypnolife},
["Krabby"] = {level = 5, cons = 45, vida = Krabbylife},
["Kingler"] = {level = 35, cons = 60, vida = Kinglerlife},
["Voltorb"] = {level = 14, cons = 30, vida = Voltorblife},
["Electrode"] = {level = 38, cons = 60, vida = Electrodelife},
["Exeggcute"] = {level = 8, cons = 42, vida = Exeggcutelife},
["Exeggutor"] = {level = 48, cons = 60, vida = Exeggutorlife},
["Cubone"] = {level = 18, cons = 50, vida = Cubonelife},
["Marowak"] = {level = 45, cons = 70, vida = Marowaklife},
["Hitmonlee"] = {level = 60, cons = 80, vida = Hitmonleelife},
["Hitmonchan"] = {level = 60, cons = 75, vida = Hitmonchanlife},
["Lickitung"] = {level = 45, cons = 50, vida = Lickitunglife},
["Koffing"] = {level = 15, cons = 30, vida = Koffinglife},
["Weezing"] = {level = 30, cons = 60, vida = Weezinglife},
["Rhyhorn"] = {level = 35, cons = 50, vida = Rhyhornlife},
["Rhydon"] = {level = 65, cons =  80, vida = Rhydonlife},
["Chansey"] = {level = 60, cons = 90, vida = Chanseylife},
["Tangela"] = {level = 40, cons = 85, vida = Tangelalife},
["Kangaskhan"] = {level = 60, cons = 100, vida = Kangaskhanlife},
["Horsea"] = {level = 5, cons = 19, vida = Horsealife},
["Seadra"] = {level = 45, cons = 68, vida = Seadralife},
["Goldeen"] = {level = 10, cons = 50, vida = Goldeenlife},
["Seaking"] = {level = 25, cons = 80, vida = Seakinglife},
["Staryu"] = {level = 15, cons = 55, vida = Staryulife},
["Starmie"] = {level = 45, cons = 95, vida = Starmielife},
["Mr Mime"] = {level = 60, cons = 50, vida = mrmimelife},
["Scyther"] = {level = 70, cons = 100, vida = Scytherlife},
["Jynx"] = {level = 65, cons = 75, vida = Jynxlife},
["Electabuzz"] = {level = 70, cons = 90, vida = Electabuzzlife},
["Magmar"] = {level = 70, cons = 90, vida = Magmarlife},
["Pinsir"] = {level = 42, cons = 100, vida = Pinsirlife},
["Tauros"] = {level = 40, cons = 100, vida = Tauroslife},
["Magikarp"] = {level = 1, cons = 5, vida = Magikarplife},
["Gyarados"] = {level = 75, cons = 90, vida = Gyaradoslife},
["Lapras"] = {level = 70, cons = 90, vida = Lapraslife},
["Ditto"] = {level = 40, cons = 70, vida = Dittolife},
["Eevee"] = {level = 20, cons = 55, vida = Eeveelife},
["Vaporeon"] = {level = 55, cons = 70, vida = Vaporeonlife},
["Jolteon"] = {level = 55, cons = 70, vida = Jolteonlife},
["Flareon"] = {level = 55, cons = 70, vida = Flareonlfe},
["Porygon"] = {level = 45, cons = 70, vida = Porygonlife},
["Omanyte"] = {level = 20, cons = 55, vida = Omanytelife},
["Omastar"] = {level = 70, cons = 90, vida = Omastarlife},
["Kabuto"] = {level = 20, cons = 55, vida = Kabutolife},
["Kabutops"] = {level = 70, cons = 90, vida = Kabutopslife},
["Aerodactyl"] = {level = 100, cons = 100, vida = Aerodactyllife},
["Snorlax"] = {level = 85, cons = 100, vida = Snorlaxlife},
["Articuno"] = {level = 120, cons = 100, vida = Articunolife},
["Zapdos"] = {level = 120, cons = 100, vida = Zapdoslife},
["Moltres"] = {level = 120, cons = 100, vida = Moltreslife},
["Dratini"] = {level = 10, cons = 55, vida = Dratinilife},
["Dragonair"] = {level = 70, cons = 60, vida = Dragonairlife},
["Dragonite"] = {level = 100, cons = 100, vida = Dragonitelife},
["Mewtwo"] = {level = 100, cons = 175, vida = Mewtwolife},
["Mew"] = {level = 100, cons = 125, vida = Mewlife},
["Elder Charizard"] = {level = 100, cons = 125, vida = Dragonitelife},
["Shiny Arcanine"] = {level = 100, cons = 125, vida = Dragonitelife},
["Crystal Onix"] = {level = 100, cons = 125, vida = Dragonitelife},
}
function onUse(cid, item, frompos, item2, topos)

if #getCreatureSummons(cid) == 1 then

local pokemon = getPlayerSlotItem(cid, 8)
local nomedopoke = getCreatureName(getCreatureSummons(cid)[1])
local basehealt = pokes[nomedopoke].vida
local baselv = pokes[nomedopoke].level
local basehp = pokes[nomedopoke].cons
local leveldoplayer = getPlayerLevel(cid)
local atributo = getItemAttribute(pokemon.uid, "exp")
local acomulado = getItemAttribute(pokemon.uid, "exp2")
local nivel = getItemAttribute(pokemon.uid, "boost")
local somanivel = nivel+baselv
local metade = nivel+leveldoplayer
local somavida1 = metade*basehp
local somavida = somavida1+basehealt
local calcx = 1*100*nivel
local final1 = nivel*100*baselv+calcx
local final = atributo-final1
local nivelnext = nivel+1
doShowTextDialog(cid, 2501, "Pokemon Name: "..nomedopoke.."\n\nLevel Start: "..baselv.."\n\nNivel: ["..nivel.."] \n\nLevel need for use this pokemon: ["..somanivel.."]\n\nBaseHP:["..basehealt.."]\n[+]\nYou Level: ["..leveldoplayer.."] + Nivel: "..nivel.." [*] \n\Base HP level:["..basehp.."] \nTotal life = ["..somavida.."] \n\nExp Need for next LV ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You Need go you poke for check pokemon skills")
end
return True
end