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
[1124] = {"124","Jynx","80"},
[1125] = {"125","Electabuzz","80"},
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
}
function doWriteLogFile(file, text)
    local f = io.open(file, "a+")
    if(not f) then
        return false
    end
 
    f:write("[" .. os.date("%d/%m/%Y %H:%M:%S") .. "] " .. text .. "\n")
    f:close()
    return true
end
function onSay(cid, words, param)
if exhaustion.get(cid, 5549989) then
return doPlayerSendCancel(cid, "You need wait "..exhaustion.get(cid, 5549989).." seconds to use this talk")
end

exhaustion.set(cid, 5549989, 10)	

 local list = "Pokemons Statics (Real Time)\n"
       
    for i = 1001,1151 do
local valor = getGlobalStorageValue(cid, i) 


     

            list = list.."\n "..pokestorages[i][1].."-"..pokestorages[i][2].."-("..valor..")"
                     
       
 end

    




    
            doShowTextDialog(cid, 2149,  list)
     
     return true 
end