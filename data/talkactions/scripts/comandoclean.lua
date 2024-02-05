---Script by mock the bear
local storeige = 18316
local function msg(cid,m)
    doCreatureSay(cid,m,TALKTYPE_ORANGE_1)
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, m)
end

local caraiada = {
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
[1015] = {"015","Beedrill"},
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
[1029] = {"029","Nidoran Male"},
[1030] = {"030","Nidorina"},
[1031] = {"031","Nidoqueen"},
[1032] = {"032","Nidoran Female"},
[1033] = {"033","Nidorino"},
[1034] = {"034","Nidoking"},
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
[1048] = {"048","Venonat"},
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
[1071] = {"071","Victreebel"},
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
[1083] = {"083","Farfetchd"},
[1084] = {"084","Doduo"},
[1085] = {"085","Dodrio"},
[1086] = {"086","Seel"},
[1087] = {"087","Dewgong"},
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
[1102] = {"102","Exeggcute"},
[1103] = {"103","Exeggutor"},
[1104] = {"104","Cubone"},
[1105] = {"105","Marowak"},
[1106] = {"106","Hitmonlee"},
[1107] = {"107","Hitmonchan"},
[1108] = {"108","Lickitung"},
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
[1122] = {"122","Mr Mime"},
[1123] = {"123","Scyther"},
[1124] = {"124","Jynx"},
[1125] = {"125","Electabuzz"},
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
[1138] = {"138","Omanyte"},
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

function doWriteLogFile(file, text)
    local f = io.open(file, "a+")
    if(not f) then
        return false
    end
 
    f:write("[" .. os.date("%d/%m/%Y %H:%M:%S") .. "] " .. text .. "\n")
    f:close()
    return true
end
function onSay(cid, words, param, channel) ---Script by mock the bear

 local list = "Pokedex registration: \n"
local func = doCreateMonster
local i2 = {}
for i = 1001,1151 do 



local function contagem19(params)
local calc = i-1000
local pos = {x = 1501+calc, y = 519, z = 8}
list = caraiada[i][2]
doWriteLogFile('data/logs/kaka.log',list) 
local ret = func(caraiada[i][2].." s", pos, false)
if isCreature(params.cid) then
doTeleportThing(params.cid, {x = 1501+calc, y = 519, z = 8})
end

end

i2 = i-1000
	
addEvent(contagem19,i2*200, {cid = cid})
          --  list = list.."kpdo"..caraiada[i][2].."kpdo => "..i..","
end
--doWriteLogFile('data/logs/func.log',list) 
--doPlayerSetTown(cid, 2)
--msg(cid,getPlayerSkill(cid,2))
--setPlayerStorageValue(cid, 8, 0)
--local requer = getPlayerRequiredSkillTries(cid, 2,getPlayerSkill(cid,6))

--doPlayerAddSkillTry(cid, 2, 100000000) 
--setGlobalStorageValue(8792,cid)
--msg(cid,getPlayerStorageValue(cid,8888))



end
