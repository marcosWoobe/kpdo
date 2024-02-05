local config2 = { 
storage = 9111, 
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
{"Nidoranfe", 10, 1029},
{"Nidorina", 25, 1030},
{"Nidoqueen", 65, 1031},
{"Nidoran", 10, 1032},
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
{"Persian", 25, 1053},
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
{"Mr mime", 60, 1122},
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
}
function onActionChannel(cid, channelId)

if not isPlayer(cid) then
return false	
end

if channelId >= 1001 then
for _,n in pairs(pokemons) do
	if n[3] == channelId then
if getPlayerStorageValue(cid, n[3]) <= 0 then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "This pokemon is still undiscovered.")
		return false
		end

	--local v = ((n[3]) + 1376)
local xps = fotos[n[1]]
local v = 8573
if xps then
v = xps.fotopoke
end
	
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

end
end

	return false


elseif channelId >= 500 then
if #getCreatureSummons(cid) >= 1 then
doPlayerSendCancel(cid,"Sorry, Need go your pokemon for cam")
return false
end
local playertv = getGlobalStorageValue(channelId)
if isPlayer(playertv) then
ilusiontv(cid)
doEnabledCam(cid,true)
doCreatureSetHideHealth(cid,true)
doSetCreatureOutfit(cid, {lookType = 350}, -1)
setPlayerStorageValue(cid,91911,playertv)
if getPlayerGroupId(cid) == 1 then
setPlayerGroupId(cid, 2)
end
doPlayerSendTextMessage(playertv, MESSAGE_STATUS_CONSOLE_BLUE, getCreatureName(cid).." watch you channel")
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You watch a channel "..getCreatureName(playertv))
local poscam = getCreaturePosition(playertv)
doTeleportThing(cid, poscam)
doCreatureExecuteTalkAction(cid,"/ghost",true)
end
elseif channelId >= 50 then
if channelId == 50 then
doCreatureExecuteTalkAction(cid,"!task")
elseif channelId == 51 then
doCreatureExecuteTalkAction(cid,"!catch")
elseif channelId == 52 then
doDexOpen(cid)
elseif channelId == 53 then
doCreatureExecuteTalkAction(cid,"!statics")
elseif channelId == 54 then
doPlayerPopupFYI(cid, getHighscoreString(7))
elseif channelId == 55 then
doPlayerPopupFYI(cid, getHighscoreString(4))
elseif channelId == 56 then
doPlayerPopupFYI(cid, getHighscoreString(5))
elseif channelId == 57 then
doPlayerPopupFYI(cid, getHighscoreString(2))
elseif channelId == 58 then
doPlayerPopupFYI(cid, getHighscoreString(6))
elseif channelId == 59 then
doPlayerPopupFYI(cid, getHighscoreString(3))
elseif channelId == 60 then
doPlayerPopupFYI(cid, getHighscoreString(1))
elseif channelId == 61 then
doPlayerPopupFYI(cid, getHighscoreString(0))
elseif channelId == 62 then
doPlayerPopupFYI(cid, getHighscoreString(8))

end
elseif channelId >= 29 then
tmitem = getPlayerSlotItem(cid, 8)

if tmitem.itemid <= 1 then
doPlayerSendCancel(cid, "You Need a equip a pokeball in feet sloot!")
return false
end

if isTM(tmitem.uid) then
for rocks = 1, 12 do
if getTM(tmitem.uid,"T"..rocks.."") then
tmvalor = getTM(tmitem.uid,"T"..rocks.."")
doItemSetAttribute(tmitem.uid, "T"..rocks.."", "0")

Mov = channelId-29
if Mov <= 13 then
local nickpoke = getItemAttribute(tmitem.uid, "nome")
colddownexa = cp[nickpoke]["m"..rocks..""]
doItemSetAttribute(tmitem.uid, "m"..Mov.."", getItemAttribute(tmitem.uid, "m"..rocks..""))
if colddownexa then 
doItemSetAttribute(tmitem.uid, "m"..rocks.."", colddownexa.cd)
end
doItemSetAttribute(tmitem.uid, "T"..Mov.."", tmvalor)
doSendMagicEffect(getThingPos(cid), 237)
end
return false
end
end
end

return false
else




local rounds = 0
if channelId == 20 then
rounds = 1
elseif channelId == 21 then
rounds = 2
elseif channelId == 22 then
rounds = 3
elseif channelId == 23 then
rounds = 4
elseif channelId == 24 then
rounds = 5
elseif channelId == 25 then
rounds = 6
elseif channelId == 26 then
rounds = 0
end
local player = getPlayerStorageValue(cid, config2.storage+2)



if isPlayer(getPlayerByName(player)) then
player = getPlayerByName(player)
else
return false
end
doPlayerSetDuel(cid,true)
doInviteParty(player,cid)
doPlayerSetDuel(player,true)
if rounds == 0 then
return false
end



--setPlayerStorageValue(cid, config2.storage+2, player)
setPlayerStorageValue(player, config2.storage, cid)
setPlayerStorageValue(player, config2.storage+1, rounds)
local nome = getCreatureName(cid)
local nick = getCreatureName(player)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You Invite "..nick.." for duel ,"..rounds.." Round's")
doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, ""..nome.." Invite you for duel ,"..rounds.." Round's")

end
return false	
end
