---D__USE_SQLITE__
function onUse(cid, item, fromPos, itemEx, toPos)


function isSummon(sid)
    for i, pid in ipairs(getPlayersOnline()) do
        for c, cid in pairs(getCreatureSummons(pid)) do
            if (cid == sid) then
                return true
            end
        end 
    end
    return false
end  
 
local pokemon = itemEx.uid
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
{"Caterpie", 3, 1010},
{"Metapod", 10, 1011},
{"Butterfree", 30, 1012},
{"Weedle", 3, 1013},
{"Kakuna", 10, 1014},
{"Beedrill", 30, 1015},
{"Pidgey", 5, 1016},
{"Pidgeotto", 20, 1017},
{"Pidgeot", 65, 1018},
{"Rattata", 3, 1019},
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
{"Paras", 5, 1046},
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
{"Abra", 15, 1063},
{"Kadabra", 45, 1064},
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
{"Magnemite", 15, 1081},
{"Magneton", 40, 1082},
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
{"Shiny Gengar", 100, 113},
{"Onix", 50, 1095},
{"Drowzee", 22, 1096},
{"Hypno", 50, 1097},
{"Krabby", 5, 1098},
{"Kingler", 35, 1099},
{"Voltorb", 14, 1100},
{"Electrode", 38, 1101},
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
{"Tangela", 80, 1114},
{"Kangaskhan", 60, 1115},
{"Horsea", 5, 1116},
{"Seadra", 45, 1117},
{"Goldeen", 10, 1118},
{"Seaking", 25, 1119},
{"Staryu", 15, 1120},
{"Starmie", 45, 1121},
{"Mr Mime", 60, 1122},
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


pokestorages = {
[1001] = {"001","Bulbasaur"},
[1002] = {"002","Ivysaur"},
[1003] = {"003","Venusaur"},
[1004] = {"004","Charmander"},
[1005] = {"005","Charmeleon"},
[1006] = {"006","Charizard"},
[1007] = {"007","Squirtle"},
[1008] = {"008","Wartortle"},
[1009] = {"009","Blastoise"},
[1010] = {"010","Caterpie"},
[1011] = {"011","Metapod"},
[1012] = {"012","Butterfree"},
[1013] = {"013","Weedle"},
[1014] = {"014","Kakuna"},
[1015] = {"015","Beedril"},
[1016] = {"016","Pidgey"},
[1017] = {"017","Pidgeotto"},
[1018] = {"018","Pidgeot"},
[1019] = {"019","Rattata"},
[1020] = {"020","Raticate"},
[1021] = {"021","Spearow"},
[1022] = {"022","Fearow"},
[1023] = {"023","Ekans"},
[1024] = {"024","Arbok"},
[1025] = {"025","Pikachu"},
[1026] = {"026","Raichu"},
[1027] = {"027","Sandshrew"},
[1028] = {"028","Sandslash"},
[1029] = {"029","Nidoran(M)"},
[1030] = {"030","Nidorina"},
[1031] = {"031","Nidoquin"},
[1032] = {"032","Nidora(F)"},
[1033] = {"033","Nidorino"},
[1034] = {"034","Nidokin"},
[1035] = {"035","Clefairy"},
[1036] = {"036","Clefable"},
[1037] = {"037","Vulpix"},
[1038] = {"038","Ninetales"},
[1039] = {"039","Jigglypuff"},
[1040] = {"040","Wigglytuff"},
[1041] = {"041","Zubat"},
[1042] = {"042","Golbat"},
[1043] = {"043","Oddish"},
[1044] = {"044","Gloom"},
[1045] = {"045","Vileplume"},
[1046] = {"046","Paras"},
[1047] = {"047","Parasect"},
[1048] = {"048","Venomat"},
[1049] = {"049","Venomoth"},
[1050] = {"050","Diglett"},
[1051] = {"051","Dugtrio"},
[1052] = {"052","Meowth"},
[1053] = {"053","Persian"},
[1054] = {"054","Psyduck"},
[1055] = {"055","Golduck"},
[1056] = {"056","Mankey"},
[1057] = {"057","Primeape"},
[1058] = {"058","Growlithe"},
[1059] = {"059","Arcanine"},
[1060] = {"060","Poliwag"},
[1061] = {"061","Poliwhirl"},
[1062] = {"062","Poliwrath"},
[1063] = {"063","Abra"},
[1064] = {"064","Kadabra"},
[1065] = {"065","Alakazam"},
[1066] = {"066","Machop"},
[1067] = {"067","Machoke"},
[1068] = {"068","Machamp"},
[1069] = {"069","Bellsprout"},
[1070] = {"070","Weepinbell"},
[1071] = {"071","Victreebell"},
[1072] = {"072","Tentacool"},
[1073] = {"073","Tentacruel"},
[1074] = {"074","Geodude"},
[1075] = {"075","Graveler"},
[1076] = {"076","Golem"},
[1077] = {"077","Ponyta"},
[1078] = {"078","Rapidash"},
[1079] = {"079","Slowpoke"},
[1080] = {"080","Slowbro"},
[1081] = {"081","Magnemite"},
[1082] = {"082","Magneton"},
[1083] = {"083","Farfetch'd"},
[1084] = {"084","Doduo"},
[1085] = {"085","Dodrio"},
[1086] = {"086","Seel"},
[1087] = {"087","Dewong"},
[1088] = {"088","Grimer"},
[1089] = {"089","Muk"},
[1090] = {"090","Shellder"},
[1091] = {"091","Cloyster"},
[1092] = {"092","Gastly"},
[1093] = {"093","Haunter"},
[1094] = {"094","Gengar"},
[1095] = {"095","Onix"},
[1096] = {"096","Drowzee"},
[1097] = {"097","Hypno"},
[1098] = {"098","Krabby"},
[1099] = {"099","Kingler"},
[1100] = {"100","Voltorb"},
[1101] = {"101","Electrode"},
[1102] = {"102","Eggxecute"},
[1103] = {"103","Eggxecutor"},
[1104] = {"104","Cubone"},
[1105] = {"105","Marowak"},
[1106] = {"106","Hitmonlee"},
[1107] = {"107","Hitmonchan"},
[1108] = {"108","Likitung"},
[1109] = {"109","Koffing"},
[1110] = {"110","Weezing"},
[1111] = {"111","Rhyhorn"},
[1112] = {"112","Rhydon"},
[1113] = {"113","Chansey"},
[1114] = {"114","Tangela"},
[1115] = {"115","Kangaskhan"},
[1116] = {"116","Horsea"},
[1117] = {"117","Seadra"},
[1118] = {"118","Goldeen"},
[1119] = {"119","Seaking"},
[1120] = {"120","Staryu"},
[1121] = {"121","Starmie"},
[1122] = {"122","Mr.Mime"},
[1123] = {"123","Scyther"},
[1124] = {"124","Jynx"},
[1125] = {"125","Electrabuzz"},
[1126] = {"126","Magmar"},
[1127] = {"127","Pinsir"},
[1128] = {"128","Tauros"},
[1129] = {"129","Magikarp"},
[1130] = {"130","Gyarados"},
[1131] = {"131","Lapras"},
[1132] = {"132","Ditto"},
[1133] = {"133","Eevee"},
[1134] = {"134","Vaporeon"},
[1135] = {"135","Jolteon"},
[1136] = {"136","Flareon"},
[1137] = {"137","Porygon"},
[1138] = {"138","Omanite"},
[1139] = {"139","Omastar"},
[1140] = {"140","Kabuto"},
[1141] = {"141","Kabutops"},
[1142] = {"142","Aerodactyl"},
[1143] = {"143","Snorlax"},
[1144] = {"144","Articuno"},
[1145] = {"145","Zapdos"},
[1146] = {"146","Moltres"},
[1147] = {"147","Dratini"},
[1148] = {"148","Dragonair"},
[1149] = {"149","Dragonite"},
[1150] = {"150","Mewtwo"},
[1151] = {"151","Mew"}
}



local pokeballs = {'2221','2222', '2223','2224','2220','2538','2539', '2227','2653', '2542','2652', '2539','189','190','191','195','196','197','198','199','200'}







for _,n in pairs(pokemons) do




    if isSummon(pokemon) then
                     if getCreatureName(pokemon) == n[1] then


			
   if getPlayerStorageValue(cid, n[3]) <= 0 and getPlayerLevel(cid) >= n[2] then
          local bonus = (n[2])*50      
doPlayerAddExperience(cid, bonus)  
			doSendMagicEffect(getThingPos(cid), 210)
setPlayerStorageValue(cid, n[3], 1)
setPlayerStorageValue(cid, 999, getPlayerStorageValue(cid, 999)+1)
			local v = ((n[3]) + 1376)


local dono = getCreatureMaster(pokemon)
local nomedoplayer = getCreatureName(dono)
local pokehealth = getCreatureHealth(pokemon) 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have unlocked pokedex in pokemon " .. n[1] .. " It belongs to "..nomedoplayer.." You received "..bonus.." experience points.")
local pokemondoido = getPlayerSlotItem(dono, 8)
local nomedopoke9 = getCreatureName(pokemon)
local basehealt = pokes[nomedopoke9].vida
local baselv = pokes[nomedopoke9].level
local basehp = pokes[nomedopoke9].cons
local leveldoplayer = getPlayerLevel(dono)
local atributo = getItemAttribute(pokemondoido.uid, "exp")
local nomedopoke = getItemAttribute(pokemondoido.uid, "apelido")
local acomulado = getItemAttribute(pokemondoido.uid, "exp2")
local nivel = getItemAttribute(pokemondoido.uid, "boost")
local catchby = getItemAttribute(pokemondoido.uid, "catchby")
local somanivel = nivel+baselv
local metade = nivel+leveldoplayer
local somavida1 = metade*basehp
local somavida = somavida1+basehealt
local calcx = baselv*100
local final2 = somanivel*calcx
local final = final2-atributo
local nivelnext = nivel+1
local dexstring = cp[n[1]]["!cd"]
local refutado = cp[n[1]]["XD"] 
local descricao = refutado.descricao
local habilidade = refutado.habilidade
local evoluction = refutado.evoluction
local desvantagem = refutado.desvantagem
local type = refutado.type




local memoria = cp[nomedopoke9]


if dexstring.nmoves == 1 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""













doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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











doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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








doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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





doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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



doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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




doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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


doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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

doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")

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
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")

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
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."\n"..m12.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
	end

else
			doSendMagicEffect(getThingPos(cid), 210)

			local v = ((n[3]) + 1376)
local dono = getCreatureMaster(pokemon)
local nomedoplayer = getCreatureName(dono)
local pokehealth = getCreatureHealth(pokemon) 
 doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You use pokedex in pokemon " .. n[1] .. " It belongs to "..nomedoplayer.." ")
local pokemondoido = getPlayerSlotItem(dono, 8)
local nomedopoke9 = getCreatureName(pokemon)
local basehealt = pokes[nomedopoke9].vida
local baselv = pokes[nomedopoke9].level
local basehp = pokes[nomedopoke9].cons
local leveldoplayer = getPlayerLevel(dono)
local nomedopoke = getItemAttribute(pokemondoido.uid, "apelido")
local atributo = getItemAttribute(pokemondoido.uid, "exp")
local acomulado = getItemAttribute(pokemondoido.uid, "exp2")
local nivel = getItemAttribute(pokemondoido.uid, "boost")
local catchby = getItemAttribute(pokemondoido.uid, "catchby")
local somanivel = nivel+baselv
local metade = nivel+leveldoplayer
local somavida1 = metade*basehp
local somavida = somavida1+basehealt
local calcx = baselv*100
local final2 = somanivel*calcx
local final = final2-atributo
local nivelnext = nivel+1
local dexstring = cp[n[1]]["!cd"]
local refutado = cp[n[1]]["XD"] 
local descricao = refutado.descricao
local habilidade = refutado.habilidade
local evoluction = refutado.evoluction
local desvantagem = refutado.desvantagem
local type = refutado.type




local memoria = cp[nomedopoke9]


if dexstring.nmoves == 1 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""













doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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











doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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








doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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





doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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



doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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




doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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


doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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

doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
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
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")

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
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")

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
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."\n"..m12.."\n\n        >>>Status This Pokemon<<< \n Name: "..nomedopoke.."\nCaptured By: "..catchby.." \nLevel Start: "..baselv.."\nStage: "..nivel.." \nRequired level: "..somanivel.."\n\nHealth: ["..pokehealth.."/"..somavida.."] \n\nExp Need for next ST ["..nivelnext.."] = "..final.."\n\n".. "Exp total :"..acomulado.."")
	end


end
                     end   
    elseif isMonster(pokemon) then
                     if getCreatureName(pokemon) == n[1] and getPlayerStorageValue(cid, n[3]) <= 0 then
			   j = (n[2]) * 275
                           doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have unlocked " .. n[1] .. " in your pokedex!, You received "..j.." experience points.")
			   doSendMagicEffect(getThingPos(cid), 210)
                           doPlayerAddExperience(cid, (n[2])*100)
                           setPlayerStorageValue(cid, n[3], 1)
setPlayerStorageValue(cid, 999, getPlayerStorageValue(cid, 999)+1)
                     elseif getCreatureName(pokemon) == n[1] and getPlayerStorageValue(cid, n[3]) >= 1 then
			local v = ((n[3]) + 1376)
local dexstring = cp[n[1]]["!cd"]
local refutado = cp[n[1]]["XD"] 
local descricao = refutado.descricao
local habilidade = refutado.habilidade
local evoluction = refutado.evoluction
local desvantagem = refutado.desvantagem
local nomedopoke9 = getCreatureName(pokemon)
local pokehealth = getCreatureHealth(pokemon) 
local type = refutado.type




local memoria = cp[nomedopoke9]


if dexstring.nmoves == 1 then
linestring = memoria["m1"]
spellstring = linestring.spell
typespell = linestring.type
lvneed = linestring.minLv
excd = linestring.cd
atk = linestring.bonus

local m1 = "\n>Move 1: "..spellstring.."\nType: "..typespell.."\nLevel: "..lvneed.."\nAttack: "..atk.."\nCooldown: "..excd..""













doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."")
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











doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."")
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








doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."")
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





doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."")
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



doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."")
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




doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."")
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


doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."")
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

doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."")
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
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."")
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
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."")

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
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."")

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
doShowTextDialog(cid, v,"Pokemon: "..nomedopoke9.."\n"..refutado.type.."\n\n"..refutado.desvantagem.."\n\nDescription: "..refutado.descricao.."\n\nEvoluctions: \n"..refutado.evoluction.."\n\n"..refutado.habilidade.."\n\nMoves used:\n"..m1.."\n"..m2.."\n"..m3.."\n"..m4.."\n"..m5.."\n"..m6.."\n"..m7.."\n"..m8.."\n"..m9.."\n"..m10.."\n"..m11.."\n"..m12.."")
	end
                     

			
                     end
    end

end







local v = (1151 + 1376)





			if not isCreature(itemEx.uid) then
			return true
			end
 

                
        if isPlayer(itemEx.uid) then
	if getCreatureName(cid) == getCreatureName(itemEx.uid) then
               


  local quantia = getPlayerStorageValue(cid, 999)
         doPlayerSendTextMessage(cid, 27, "You Have " .. quantia .. " Discoverd pokemons already.")
doDexOpen(cid)







	elseif isPlayer(itemEx.uid) then
if getPlayerStorageValue(cid, 5333) >= 1 then 
doPlayerPopupFYI(cid, "You can't fight in battle, end battle for other")
return true
end
if getPlayerStorageValue(itemEx.uid, 5333) >= 1 then 
doPlayerPopupFYI(cid, "You can't fight this player in battle, wait this player end battle for other")
return true
end

setPlayerStorageValue(cid, 9113, itemEx.uid)
doCamsystem(cid)
end
        
end
return true
end  