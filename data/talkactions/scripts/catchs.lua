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
local pokestorages = {
[1001] = {"001","Bulbasaur","20"},
[1002] = {"002","Ivysaur","45"},
[1003] = {"003","Venusaur","85"},
[1004] = {"004","Charmander","20"},
[1005] = {"005","Charmeleon","45"},
[1006] = {"006","Charizard","85"},
[1007] = {"007","Squirtle","20"},
[1008] = {"008","Wartortle","45"},
[1009] = {"009","Blastoise","85"},
[1010] = {"010","Caterpie","5"},
[1011] = {"011","Metapod","20"},
[1012] = {"012","Butterfree","60"},
[1013] = {"013","Weedle","5"},
[1014] = {"014","Kakuna","20"},
[1015] = {"015","Beedrill","60"},
[1016] = {"016","Pidgey","10"},
[1017] = {"017","Pidgeotto","20"},
[1018] = {"018","Pidgeot","70"},
[1019] = {"019","Rattata","5"},
[1020] = {"020","Raticate","30"},
[1021] = {"021","Spearow","10"},
[1022] = {"022","Fearow","50"},
[1023] = {"023","Ekans","12"},
[1024] = {"024","Arbok","50"},
[1025] = {"025","Pikachu","20"},
[1026] = {"026","Raichu","80"},
[1027] = {"027","Sandshrew","18"},
[1028] = {"028","Sandslash","70"},
[1029] = {"029","Nidoran","10"},
[1030] = {"030","Nidorina","35"},
[1031] = {"031","Nidoqueen","65"},
[1032] = {"032","Nidoranfe","10"},
[1033] = {"033","Nidorino","35"},
[1034] = {"034","Nidoking","65"},
[1035] = {"035","Clefairy","30"},
[1036] = {"036","Clefable","50"},
[1037] = {"037","Vulpix","30"},
[1038] = {"038","Ninetales","65"},
[1039] = {"039","Jigglypuff","30"},
[1040] = {"040","Wigglytuff","50"},
[1041] = {"041","Zubat","10"},
[1042] = {"042","Golbat","30"},
[1043] = {"043","Oddish","5"},
[1044] = {"044","Gloom","18"},
[1045] = {"045","Vileplume","65"},
[1046] = {"046","Paras","10"},
[1047] = {"047","Parasect","50"},
[1048] = {"048","Venonat","18"},
[1049] = {"049","Venomoth","50"},
[1050] = {"050","Diglett","15"},
[1051] = {"051","Dugtrio","35"},
[1052] = {"052","Meowth","20"},
[1053] = {"053","Persian","45"},
[1054] = {"054","Psyduck","15"},
[1055] = {"055","Golduck","75"},
[1056] = {"056","Mankey","20"},
[1057] = {"057","Primeape","45"},
[1058] = {"058","Growlithe","30"},
[1059] = {"059","Arcanine","80"},
[1060] = {"060","Poliwag","5"},
[1061] = {"061","Poliwhirl","20"},
[1062] = {"062","Poliwrath","70"},
[1063] = {"063","Abra","15"},
[1064] = {"064","Kadabra","50"},
[1065] = {"065","Alakazam","80"},
[1066] = {"066","Machop","15"},
[1067] = {"067","Machoke","35"},
[1068] = {"068","Machamp","75"},
[1069] = {"069","Bellsprout","5"},
[1070] = {"070","Weepinbell","18"},
[1071] = {"071","Victreebel","65"},
[1072] = {"072","Tentacool","15"},
[1073] = {"073","Tentacruel","80"},
[1074] = {"074","Geodude","20"},
[1075] = {"075","Graveler","40"},
[1076] = {"076","Golem","70"},
[1077] = {"077","Ponyta","20"},
[1078] = {"078","Rapidash","60"},
[1079] = {"079","Slowpoke","12"},
[1080] = {"080","Slowbro","45"},
[1081] = {"081","Magnemite","15"},
[1082] = {"082","Magneton","40"},
[1083] = {"083","Farfetchd","40"},
[1084] = {"084","Doduo","15"},
[1085] = {"085","Dodrio","40"},
[1086] = {"086","Seel","20"},
[1087] = {"087","Dewgong","65"},
[1088] = {"088","Grimer","30"},
[1089] = {"089","Muk","75"},
[1090] = {"090","Shellder","5"},
[1091] = {"091","Cloyster","65"},
[1092] = {"092","Gastly","20"},
[1093] = {"093","Haunter","40"},
[1094] = {"094","Gengar","80"},
[1095] = {"095","Onix","50"},
[1096] = {"096","Drowzee","22"},
[1097] = {"097","Hypno","50"},
[1098] = {"098","Krabby","5"},
[1099] = {"099","Kingler","50"},
[1100] = {"100","Voltorb","15"},
[1101] = {"101","Electrode","40"},
[1102] = {"102","Exeggcute","8"},
[1103] = {"103","Exeggutor","48"},
[1104] = {"104","Cubone","15"},
[1105] = {"105","Marowak","70"},
[1106] = {"106","Hitmonlee","75"},
[1107] = {"107","Hitmonchan","75"},
[1108] = {"108","Lickitung","45"},
[1109] = {"109","Koffing","30"},
[1110] = {"110","Weezing","85"},
[1111] = {"111","Rhyhorn","30"},
[1112] = {"112","Rhydon","70"},
[1113] = {"113","Chansey","60"},
[1114] = {"114","Tangela","80"},
[1115] = {"115","Kangaskhan","85"},
[1116] = {"116","Horsea","5"},
[1117] = {"117","Seadra","50"},
[1118] = {"118","Goldeen","15"},
[1119] = {"119","Seaking","30"},
[1120] = {"120","Staryu","15"},
[1121] = {"121","Starmie","45"},
[1122] = {"122","Mr Mime","60"},
[1123] = {"123","Scyther","85"},
[1124] = {"124","Jynx","90"},
[1125] = {"125","Electabuzz","90"},
[1126] = {"126","Magmar","90"},
[1127] = {"127","Pinsir","65"},
[1128] = {"128","Tauros","75"},
[1129] = {"129","Magikarp","1"},
[1130] = {"130","Gyarados","90"},
[1131] = {"131","Lapras","85"},
[1132] = {"132","Ditto","40"},
[1133] = {"133","Eevee","25"},
[1134] = {"134","Vaporeon","70"},
[1135] = {"135","Jolteon","70"},
[1136] = {"136","Flareon","70"},
[1137] = {"137","Porygon","50"},
[1138] = {"138","Omanyte","30"},
[1139] = {"139","Omastar","85"},
[1140] = {"140","Kabuto","25"},
[1141] = {"141","Kabutops","85"},
[1142] = {"142","Aerodactyl","100"},
[1143] = {"143","Snorlax","90"},
[1144] = {"144","Articuno","155"},
[1145] = {"145","Zapdos","155"},
[1146] = {"146","Moltres","155"},
[1147] = {"147","Dratini","20"},
[1148] = {"148","Dragonair","70"},
[1149] = {"149","Dragonite","100"},
[1150] = {"150","Mewtwo","155"},
[1151] = {"151","Mew","155"},
[1152] = {"152","Chikorita","24"},
[1153] = {"153","Bayleef","52"},
[1154] = {"154","Meganium","95"},
[1155] = {"155","Cyndaquil","24"},
[1156] = {"156","Quilava","52"},
[1157] = {"157","Typhlosion","95"},
[1158] = {"158","Totodile","24"},
[1159] = {"159","Croconaw","52"},
[1160] = {"160","Feraligatr","95"},
[1161] = {"161","Sentret","20"},
[1162] = {"162","Furret","56"},
[1163] = {"163","Hoothoot","42"},
[1164] = {"164","Noctowl","52"},
[1165] = {"165","Ledyba","20"},
[1166] = {"166","Ledian","70"},
[1167] = {"167","Spinarak","20"},
[1168] = {"168","Ariados","80"},
[1169] = {"169","Crobat","55"},
[1170] = {"170","Chinchou","22"},
[1171] = {"171","Lanturn","85"},
[1172] = {"172","Pichu","14"},
[1173] = {"173","Cleffa","15"},
[1174] = {"174","Igglybuff","15"},
[1175] = {"175","Togepi","20"},
[1176] = {"176","Togetic","90"},
[1177] = {"177","Natu","20"},
[1178] = {"178","Xatu","70"},
[1179] = {"179","Mareep","50"},
[1180] = {"180","Flaaffy","90"},
[1181] = {"181","Ampharos","120"},
[1182] = {"182","Bellossom","80"},
[1183] = {"183","Marill","45"},
[1184] = {"184","Azumarill","75"},
[1185] = {"185","Sudowoodo","140"},
[1186] = {"186","Politoed","80"},
[1187] = {"187","Hoppip","20"},
[1188] = {"188","Skiploom","50"},
[1189] = {"189","Jumpluff","100"},
[1190] = {"190","Aipom","80"},
[1191] = {"191","Sunkern","20"},
[1192] = {"192","Sunflora","90"},
[1193] = {"193","Yanma","100"},
[1194] = {"194","Wooper","40"},
[1195] = {"195","Quagsire","100"},
[1196] = {"196","Espeon","75"},
[1197] = {"197","Umbreon","75"},
[1198] = {"198","Murkrow","120"},
[1199] = {"199","Slowking","95"},
[1200] = {"200","Misdreavus","100"},
[1201] = {"201","Unown","100"},
[1202] = {"202","Wobbuffet","150"},
[1203] = {"203","Girafarig","80"},
[1204] = {"204","Pineco","70"},
[1205] = {"205","Forretress","70"},
[1206] = {"206","Dunsparce","80"},
[1207] = {"207","Gligar","150"},
[1208] = {"208","Steelix","100"},
[1209] = {"209","Snubbull","40"},
[1210] = {"210","Granbull","90"},
[1211] = {"211","Qwilfish","150"},
[1212] = {"212","Scizor","120"},
[1213] = {"213","Shuckle","150"},
[1214] = {"214","Heracross","85"},
[1215] = {"215","Sneasel","140"},
[1216] = {"216","Teddiursa","40"},
[1217] = {"217","Ursaring","120"},
[1218] = {"218","Slugma","50"},
[1219] = {"219","Magcargo","150"},
[1220] = {"220","Swinub","85"},
[1221] = {"221","Piloswine","125"},
[1222] = {"222","Corsola","85"},
[1223] = {"223","Remoraid","40"},
[1224] = {"224","Octillery","120"},
[1225] = {"225","Delibird","130"},
[1226] = {"226","Mantine","150"},
[1227] = {"227","Skarmory","200"},
[1228] = {"228","Houndour","50"},
[1229] = {"229","Houndoom","95"},
[1230] = {"230","Kingdra","90"},
[1231] = {"231","Phanpy","70"},
[1232] = {"232","Donphan","150"},
[1233] = {"233","Porygon2","120"},
[1234] = {"234","Stantler","70"},
[1235] = {"235","Smeargle","100"},
[1236] = {"236","Tyrogue","35"},
[1237] = {"237","Hitmontop","150"},
[1238] = {"238","Smoochum","40"},
[1239] = {"239","Elekid","40"},
[1240] = {"240","Magby","40"},
[1241] = {"241","Miltank","110"},
[1242] = {"242","Blissey","100"},
[1243] = {"243","Raikou","180"},
[1244] = {"244","Entei","180"},
[1245] = {"245","Suicune","180"},
[1246] = {"246","Larvitar","40"},
[1247] = {"247","Pupitar","80"},
[1248] = {"248","Tyranitar","150"},
[1249] = {"249","Lugia","200"},
[1250] = {"250","Ho-oh","200"},
[1251] = {"251","Celebi","200"},
[1252] = {"252","Treecko","45"},
[1253] = {"253","Grovyle","85"},
[1254] = {"254","Sceptile","130"},
[1255] = {"255","Torchic","45"},
[1256] = {"256","Combusken","85"},
[1257] = {"257","Blaziken","130"},
[1258] = {"258","Mudkip","45"},
[1259] = {"259","Marshtomp","85"},
[1260] = {"260","Swampert","130"},
[1261] = {"261","Poochyena","70"},
[1262] = {"262","Mightyena","110"},
[1263] = {"263","Zigzagoon","40"},
[1264] = {"264","Linoone","75"},
[1265] = {"265","Wurmple","20"},
[1266] = {"266","Silcoon","60"},
[1267] = {"267","Beautifly","90"},
[1268] = {"268","Cascoon","60"},
[1269] = {"269","Dustox","90"},
[1270] = {"270","Lotad","70"},
[1271] = {"271","Lombre","90"},
[1272] = {"272","Ludicolo","150"},
[1273] = {"273","Seedot","65"},
[1274] = {"274","Nuzleaf","80"},
[1275] = {"275","Shiftry","120"},
[1276] = {"276","Taillow","70"},
[1277] = {"277","Swellow","100"},
[1278] = {"278","Wingull","90"},
[1279] = {"279","Pelipper","120"},
[1280] = {"280","Ralts","70"},
[1281] = {"281","Kirlia","110"},
[1282] = {"282","Gardevoir","160"},
[1283] = {"283","Surskit","40"},
[1284] = {"284","Masquerain","70"},
[1285] = {"285","Shroomish","40"},
[1286] = {"286","Breloom","90"},
[1287] = {"287","Slakoth","35"},
[1288] = {"288","Vigoroth","75"},
[1289] = {"289","Slaking","150"},
[1290] = {"290","Nincada","60"},
[1291] = {"291","Ninjask","110"},
[1292] = {"292","Shedinja","110"},
[1293] = {"293","Whismur","35"},
[1294] = {"294","Loudred","75"},
[1295] = {"295","Exploud","100"},
[1296] = {"296","Makuhita","120"},
[1297] = {"297","Hariyama","200"},
[1298] = {"298","Azurill","20"},
[1299] = {"299","Nosepass","120"},
[1300] = {"300","Skitty","75"},
[1301] = {"301","Delcatty","100"},
[1302] = {"302","Sableye","200"},
[1303] = {"303","Mawile","150"},
[1304] = {"304","Aron","80"},
[1305] = {"305","Lairon","140"},
[1306] = {"306","Aggron","210"},
[1307] = {"307","Meditite","120"},
[1308] = {"308","Medicham","200"},
[1309] = {"309","Electrike","90"},
[1310] = {"310","Manectric","150"},
[1311] = {"311","Plusle","90"},
[1312] = {"312","Minun","90"},
[1313] = {"313","Volbeat","85"},
[1314] = {"314","Illumise","85"},
[1315] = {"315","Roselia","110"},
[1316] = {"316","Gulpin","75"},
[1317] = {"317","Swalot","120"},
[1318] = {"318","Carvanha","120"},
[1319] = {"319","Sharpedo","200"},
[1320] = {"320","Wailmer","160"},
[1321] = {"321","Wailord","250"},
[1322] = {"322","Numel","90"},
[1323] = {"323","Camerupt","150"},
[1324] = {"324","Torkoal","200"},
[1325] = {"325","Spoink","80"},
[1326] = {"326","Grumpig","120"},
[1327] = {"327","Spinda","90"},
[1328] = {"328","Trapinch","70"},
[1329] = {"329","Vibrava","120"},
[1330] = {"330","Flygon","180"},
[1331] = {"331","Cacnea","130"},
[1332] = {"332","Cacturne","200"},
[1333] = {"333","Swablu","90"},
[1334] = {"334","Altaria","140"},
[1335] = {"335","Zangoose","220"},
[1336] = {"336","Seviper","140"},
[1337] = {"337","Lunatone","150"},
[1338] = {"338","Solrock","150"},
[1339] = {"339","Barboach","70"},
[1340] = {"340","Whiscash","120"},
[1341] = {"341","Corphish","60"},
[1342] = {"342","Crawdaunt","100"},
[1343] = {"343","Baltoy","75"},
[1344] = {"344","Claydol","125"},
[1345] = {"345","Lileep","80"},
[1346] = {"346","Cradily","100"},
[1347] = {"347","Anorith","120"},
[1348] = {"348","Armaldo","200"},
[1349] = {"349","Feebas","110"},
[1350] = {"350","Milotic","250"},
[1351] = {"351","Castform","100"},
[1352] = {"352","Kecleon","75"},
[1353] = {"353","Shuppet","80"},
[1354] = {"354","Banette","130"},
[1355] = {"355","Duskull","70"},
[1356] = {"356","Dusclops","100"},
[1357] = {"357","Tropius","280"},
[1358] = {"358","Chimecho","80"},
[1359] = {"359","Absol","175"},
[1360] = {"360","Wynaut","80"},
[1361] = {"361","Snorunt","85"},
[1362] = {"362","Glalie","130"},
[1363] = {"363","Spheal","75"},
[1364] = {"364","Sealeo","125"},
[1365] = {"365","Walrein","200"},
[1366] = {"366","Clamperl","75"},
[1367] = {"367","Huntail","125"},
[1368] = {"368","Gorebyss","125"},
[1369] = {"369","Relicanth","130"},
[1370] = {"370","Luvdisc","85"},
[1371] = {"371","Bagon","110"},
[1372] = {"372","Shelgon","170"},
[1373] = {"373","Salamence","310"},
[1374] = {"374","Beldum","100"},
[1375] = {"375","Metang","160"},
[1376] = {"376","Metagross","290"},
[1377] = {"377","Regirock","310"},
[1378] = {"378","Regice","310"},
[1379] = {"379","Registeel","310"},
[1380] = {"380","Latias","320"},
[1381] = {"381","Latios","320"},
[1382] = {"382","Kyogre","310"},
[1383] = {"383","Groudon","310"},
[1384] = {"384","Rayquaza","310"},
[1385] = {"385","Jirachi","330"},
[1386] = {"386","Deoxys","330"},
}

function onSay(cid, words, param)
if exhaustion.get(cid, 5549989) then
return doPlayerSendCancel(cid, "You need wait "..exhaustion.get(cid, 5549989).." seconds to use this talk")
end

exhaustion.set(cid, 5549989, 10)	
 local list = "Number of caughts poke: "..getPlayerStorageValue(cid, 19000).."\n"
        local pokemonss = 0

--for i = 45963,45984 do
--setPlayerStorageValue(cid,i,1)
--end
    for i = 1001,1251 do
local valor = getPlayerStorageValue(cid, i+20000) 
        if valor >= 1 then
            list = list.."\n[".. pokedexlines[i][1] .."]-["..valor.."] ".. pokedexlines[i][2] ..""
                        pokemonss = pokemonss + 1
        else
            list = list.."\n[".. pokedexlines[i][1] .."]-[0] ".. pokedexlines[i][2] ..""
        end
    end
	 doShowTextDialog(cid, 2149,  list)
	 local list = "Number of caughts poke: "..getPlayerStorageValue(cid, 19000).."\n"
	    for i = 1252,1493 do
local valor = getPlayerStorageValue(cid, i+20000) 
        if valor >= 1 then
            list = list.."\n[".. pokedexlines[i][1] .."]-["..valor.."] ".. pokedexlines[i][2] ..""
                        pokemonss = pokemonss + 1
        else
            list = list.."\n[".. pokedexlines[i][1] .."]-[0] ".. pokedexlines[i][2] ..""
        end
    end


 

            doShowTextDialog(cid, 2149,  list)
     
doPlayerAddSoul(cid, -getPlayerSoul(cid))
doPlayerAddSoul(cid,  pokemonss)
     return true 
end