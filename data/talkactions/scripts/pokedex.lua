local nido = {'Nidoran'}
local pokemon = {
"Bulbasaur",
"Ivysaur",
"Venusaur",
"Charmander",
"Charmeleon",
"Charizard",
"Squirtle",
"Wartortle",
"Blastoise",
"Caterpie",
"Metapod",
"Butterfree",
"Weedle",
"Kakuna",
"Beedrill",
"Pidgey",
"Pidgeotto",
"Pidgeot",
"Rattata",
"Raticate",
"Spearow",
"Fearow",
"Ekans",
"Arbok",
"Pikachu",
"Raichu",
"Sandshrew",
"Sandslash",
"Nidoran Female",
"Nidorina",
"Nidoqueen",
"Nidoran Male",
"Nidorino",
"Nidoking",
"Clefairy",
"Clefable",
"Vulpix",
"Ninetales",
"Jigglypuff",
"Wigglytuff",
"Zubat",
"Golbat",
"Oddish",
"Gloom",
"Vileplume",
"Paras",
"Parasect",
"Venonat",
"Venomoth",
"Diglett",
"Dugtrio",
"Meowth",
"Persion",
"Psyduck",
"Golduck",
"Mankey",
"Primeape",
"Growlithe",
"Arcanine",
"Poliwag",
"Poliwhirl",
"Poliwrath",
"Abra",
"Kadabra",
"Alakazam",
"Machop",
"Machoke",
"Machamp",
"Bellsprout",
"bellsprout",
"Weepinbell",
"Victreebel",
"Tentacool",
"Tentacruel",
"Geodude",
"Graveler",
"Golem",
"Ponyta",
"Rapidash",
"Slowpoke",
"Slowbro",
"Magnemite",
"Magneton",
"Farfetchd",
"Doduo",
"Dodrio",
"Seel",
"Dewgong",
"Grimer",
"Muk",
"Shellder",
"Cloyster",
"Gastly",
"Haunter",
"Gengar",
"Onix",
"Drowzee",
"Hypno",
"Krabby",
"Kingler",
"Voltorb",
"Electrode",
"Exeggcute",
"Exeggutor",
"Cubone",
"Marowak",
"Hitmonlee",
"Hitmonchan",
"Lickitung",
"Koffing",
"Weezing",
"Rhyhorn",
"Rhydon",
"Chansey",
"Tangela",
"Kangaskhan",
"Horsea",
"Seadra",
"Goldeen",
"Seaking",
"Staryu",
"Starmie",
"Mr.mime",
"Scyther",
"Jynx",
"Electabuzz",
"Magmar",
"Pinsir",
"Tauros",
"Magikarp",
"Gyarados",
"Lapras",
"Ditto",
"Eevee",
"Vaporeon",
"Jolteon",
"Flareon",
"Porygon",
"Omanyte",
"Omastar",
"Kabuto",
"Kabutops",
"Aerodactyl",
"Snorlax",
"Articuno",
"Zapdos",
"Moltres",
"Dratini",
"Dragonair",
"Dragonite",
"Mewtwo",
"Mew",
"Elder Charizard",
}
local pokemons = {
{"Bulbasaur", 20, 1001},
{"Ivysaur", 40, 1002},
{"Venusaur", 85, 1003},
{"Charmander", 20, 1004},
{"Charmeleon", 40, 1005},
{"Charizard", 85, 1006},
{"Squirtle", 20, 1007},
{"Wartortle", 40, 1008},
{"Blastoise", 85, 1009},
{"Caterpie", 1, 1010},
{"Metapod", 10, 1011},
{"Butterfree", 30, 1012},
{"Weedle", 1, 1013},
{"Kakuna", 10, 1014},
{"Beedrill", 30, 1015},
{"Pidgey", 1, 1016},
{"Pidgeotto", 20, 1017},
{"Pidgeot", 65, 1018},
{"Rattata", 1, 1019},
{"Raticate", 20, 1020},
{"Spearow", 5, 1021},
{"Fearow", 50, 1022},
{"Ekans", 12, 1023},
{"Arbok", 30, 1024},
{"Pikachu", 20, 1025},
{"Raichu", 45, 1026},
{"Sandshrew", 18, 1027},
{"Sandslash", 55, 1028},
{"Nidoran Female", 10, 1029},
{"Nidorina", 25, 1030},
{"Nidoqueen", 65, 1031},
{"Nidoran Male", 10, 1032},
{"Nidorino", 25, 1033},
{"Nidoking", 65, 1034},
{"Clefairy", 10, 1035},
{"Clefable", 35, 1036},
{"Vulpix", 20, 1037},
{"Ninetales", 65, 1038},
{"Jigglypuff", 10, 1039},
{"Wigglytuff", 42, 1040},
{"Zubat", 10, 1041},
{"Golbat", 30, 1042},
{"Oddish", 5, 1043},
{"Gloom", 18, 1044},
{"Vileplume", 50, 1045},
{"Paras", 1, 1046},
{"Parasect", 50, 1047},
{"Venonat", 18, 1048},
{"Venomoth", 50, 1049},
{"Diglett", 5, 1050},
{"Dugtrio", 35, 1051},
{"Meowth", 12, 1052},
{"Persion", 25, 1053},
{"Psyduck", 12, 1054},
{"Golduck", 55, 1055},
{"Mankey", 10, 1056},
{"Primeape", 45, 1057},
{"Growlithe", 20, 1058},
{"Arcanine", 80, 1059},
{"Poliwag", 5, 1060},
{"Poliwhirl", 20, 1061},
{"Poliwrath", 65, 1062},
{"Abra", 10, 1063},
{"Kadabra", 50, 1064},
{"Alakazam", 80, 1065},
{"Machop", 18, 1066},
{"Machoke", 40, 1067},
{"Machamp", 65, 1068},
{"Bellsprout", 5, 1069},
{"Weepinbell", 18, 1070},
{"Victreebel", 50, 1071},
{"Tentacool", 12, 1072},
{"Tentacruel", 70, 1073},
{"Geodude", 12, 1074},
{"Graveler", 40, 1075},
{"Golem", 65, 1076},
{"Ponyta", 20, 1077},
{"Rapidash", 60, 1078},
{"Slowpoke", 12, 1079},
{"Slowbro", 45, 1080},
{"Magnemite", 12, 1081},
{"Magneton", 35, 1082},
{"Farfetchd", 40, 1083},
{"Doduo", 12, 1084},
{"Dodrio", 45, 1085},
{"Seel", 20, 1086},
{"Dewgong", 65, 1087},
{"Grimer", 12, 1088},
{"Muk", 30, 1089},
{"Shellder", 5, 1090},
{"Cloyster", 65, 1091},
{"Gastly", 18, 1092},
{"Haunter", 45, 1093},
{"Gengar", 80, 1094},
{"Onix", 50, 1095},
{"Drowzee", 22, 1096},
{"Hypno", 50, 1097},
{"Krabby", 5, 1098},
{"Kingler", 35, 1099},
{"Voltorb", 10, 1100},
{"Electrode", 40, 1101},
{"Exeggcute", 8, 1102},
{"Exeggutor", 48, 1103},
{"Cubone", 18, 1104},
{"Marowak", 45, 1105},
{"Hitmonlee", 60, 1106},
{"Hitmonchan", 60, 1107},
{"Lickitung", 45, 1108},
{"Koffing", 15, 1109},
{"Weezing", 30, 1110},
{"Rhyhorn", 35, 1111},
{"Rhydon", 65, 1112},
{"Chansey", 60, 1113},
{"Tangela", 40, 1114},
{"Kangaskhan", 60, 1115},
{"Horsea", 5, 1116},
{"Seadra", 45, 1117},
{"Goldeen", 10, 1118},
{"Seaking", 25, 1119},
{"Staryu", 15, 1120},
{"Starmie", 45, 1121},
{"Mr.mime", 60, 1122},
{"Scyther", 70, 1123},
{"Jynx", 65, 1124},
{"Electabuzz", 70, 1125},
{"Magmar", 70, 1126},
{"Pinsir", 42, 1127},
{"Tauros", 40, 1128},
{"Magikarp", 1, 1129},
{"Gyarados", 75, 1130},
{"Lapras", 70, 1131},
{"Ditto", 40, 1132},
{"Eevee", 20, 1133},
{"Vaporeon", 55, 1134},
{"Jolteon", 55, 1135},
{"Flareon", 55, 1136},
{"Porygon", 45, 1137},
{"Omanyte", 20, 1138},
{"Omastar", 70, 1139},
{"Kabuto", 20, 1140},
{"Kabutops", 70, 1141},
{"Aerodactyl", 100, 1142},
{"Snorlax", 85, 1143},
{"Articuno", 120, 1144},
{"Zapdos", 120, 1145},
{"Moltres", 120, 1146},
{"Dratini", 10, 1147},
{"Dragonair", 70, 1148},
{"Dragonite", 100, 1149},
{"Mewtwo", 120, 1150},
{"Mew", 120, 1151},
{"Elder Charizard", 120, 1152},
}
function onSay(cid, words, param, channel)
if isInArray(nido, param) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Type either \"Nidoran Male\" or \"Nidoran Female\".")
return 0
end
if not isInArray(pokemon, param) then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Wrong pokemon name.")
return 0
end
for _,n in pairs(pokemons) do
	if n[1] == param then
		if getPlayerStorageValue(cid, n[3]) <= 0 then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "This pokemon is still undiscovered.")
		return 0
		end
	local v = ((n[3]) + 1376)
	
	local dexstring = cp[n[1]]["!cd"]
local refutado = cp[n[1]]["XD"] 
local descricao = refutado.descricao
local habilidade = refutado.habilidade
local evoluction = refutado.evoluction
local desvantagem = refutado.desvantagem
local type = refutado.type
local nomedopoke = n[1]



local memoria = cp[nomedopoke]


if dexstring.nmoves == 1 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""













doShowTextDialog(cid, v,"Pokemon: "..nomedopoke.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.." ")
elseif dexstring.nmoves == 2 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""











doShowTextDialog(cid, v,"Pokemon: "..nomedopoke.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.." ")
elseif dexstring.nmoves == 3 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""








doShowTextDialog(cid, v,"Pokemon: "..nomedopoke.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.." ")
elseif dexstring.nmoves == 4 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""





doShowTextDialog(cid, v,"Pokemon: "..nomedopoke.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.." ")
elseif dexstring.nmoves == 5 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""



doShowTextDialog(cid, v,"Pokemon: "..nomedopoke.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.." ")
elseif dexstring.nmoves == 6 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""




doShowTextDialog(cid, v,"Pokemon: "..nomedopoke.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.." ")
elseif dexstring.nmoves == 7 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


doShowTextDialog(cid, v,"Pokemon: "..nomedopoke.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.." ")
elseif dexstring.nmoves == 8 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

doShowTextDialog(cid, v,"Pokemon: "..nomedopoke.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.." ")
elseif dexstring.nmoves == 9 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.." ")
elseif dexstring.nmoves == 10 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m10"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m10 = "\n>Move 10: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.." ")

elseif dexstring.nmoves == 11 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m10"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m10 = "\n>Move 10: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m11"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m11 = "\n>Move 11: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.." ")

elseif dexstring.nmoves == 12 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring2 = memoria["m2"]
spellstring = linestring2.spell
typespell = linestring2.type
lvneed = linestring2.minLv
excd = linestring2.cd
atk = linestring2.bonus
local m2 = "\n>Move 2: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m3"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m3 = "\n>Move 3: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""


linestring3 = memoria["m4"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m4 = "\n>Move 4: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m5"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m5 = "\n>Move 5: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m6"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m6 = "\n>Move 6: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m7"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m7 = "\n>Move 7: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m8"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m8 = "\n>Move 8: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m9"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m9 = "\n>Move 9: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m10"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m10 = "\n>Move 10: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m11"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m11 = "\n>Move 11: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""

linestring3 = memoria["m12"]
spellstring = linestring3.spell
typespell = linestring3.type
lvneed = linestring3.minLv
excd = linestring3.cd
atk = linestring3.bonus
local m12 = "\n>Move 12: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."\n"..m12.." ")
	end



	return 0
	end
end
end