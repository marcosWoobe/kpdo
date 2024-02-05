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
function onUse(cid, item, frompos, item2, topos)

local box = {
[1] ={ np = "Contains a Ivysaur.",nm= "Victreebel"},
[2] ={ np = "Contains a Ivysaur.",nm= "Victreebel"},
[3] ={ np = "Contains a Ivysaur.",nm= "Victreebel"},
[4] ={ np = "Contains a Charmeleon.",nm= "Graveler"},
[5] ={ np = "Contains a Charmeleon.",nm= "Graveler"},
[6] ={ np = "Contains a Charmeleon.",nm= "Graveler"},
[7] ={ np = 'Contains a Wartortle.',nm= 'Rapidash'},
[8] ={ np = 'Contains a Wartortle.',nm= 'Rapidash'},
[9] ={ np = 'Contains a Wartortle.',nm= 'Rapidash'},
[10] ={ np = 'Contains a Raichu.',nm= 'Magneton'},
[11] ={ np = 'Contains a Raichu.',nm= 'Magneton'},
[12] ={ np = 'Contains a Raichu.',nm= 'Magneton'},
[13] ={ np = 'Contains a Raichu.',nm= 'Magneton'},
[14] ={ np = 'Contains a Raichu.',nm= 'Magneton'},
[15] ={ np = 'Contains a Fearow.',nm= 'Farfetchd'},
[16] ={ np = 'Contains a Fearow.',nm= 'Farfetchd'},
[17] ={ np = 'Contains a Fearow.',nm= 'Farfetchd'},
[18] ={ np = 'Contains a Fearow.',nm= 'Farfetchd'},
[19] ={ np = 'Contains a Fearow.',nm= 'Farfetchd'},
[20] ={ np = 'Contains a Vileplume.',nm= 'Dodrio'},
[21] ={ np = 'Contains a Vileplume.',nm= 'Dodrio'},
[22] ={ np = 'Contains a Vileplume.',nm= 'Dodrio'},
[23] ={ np = 'Contains a Vileplume.',nm= 'Dodrio'},
[24] ={ np = 'Contains a Vileplume.',nm= 'Dodrio'},
[25] ={ np = 'Contains a Venomoth.',nm= 'Cloyster'},
[26] ={ np = 'Contains a Venomoth.',nm= 'Coyster'},
[27] ={ np = 'Contains a Venomoth.',nm= 'Cloyster'},
[28] ={ np = 'Contains a Venomoth.',nm= 'Haunter'},
[29] ={ np = 'Contains a Venomoth.',nm= 'Haunter'},
[30] ={ np = 'Contains a Venomoth.',nm= 'Haunter'},
[31] ={ np = 'Contains a Venomoth.',nm= 'Haunter'},
[32] ={ np = 'Contains a Parasect.',nm= 'Onix'},
[33] ={ np = 'Contains a Parasect.',nm= 'Onix'},
[34] ={ np = 'Contains a Parasect.',nm= 'Onix'},
[35] ={ np = 'Contains a Parasect.',nm= 'Onix'},
[36] ={ np = 'Contains a Parasect.',nm= 'Onix'},
[37] ={ np = 'Contains a Clefable.',nm= 'Hypno'},
[38] ={ np = 'Contains a Clefable.',nm= 'Hypno'},
[39] ={ np = 'Contains a Clefable.',nm= 'Hypno'},
[40] ={ np = 'Contains a Clefable.',nm= 'Hypno'},
[41] ={ np = 'Contains a Clefable.',nm= 'Hypno'},
[42] ={ np = 'Contains a Wigglytuff.',nm= 'Kingler'},
[43] ={ np = 'Contains a Wigglytuff.',nm= 'Kingler'},
[44] ={ np = 'Contains a Sandslash.',nm= 'Electrode'},
[45] ={ np = 'Contains a Sandslash.',nm= 'Electrode'},
[46] ={ np = 'Contains a Sandslash.',nm= 'Electrode'},
[47] ={ np = 'Contains a Machoke.',nm= 'Exeggutor'},
[48] ={ np = 'Contains a Machoke.',nm= 'Exeggutor'},
[49] ={ np = 'Contains a Machoke.',nm= 'Exeggutor'},
[50] ={ np = 'Contains a Machoke.',nm= 'Marowak'},
[51] ={ np = 'Contains a Machoke.',nm= 'Marowak'},
[52] ={ np = 'Contains a Dugtrio.',nm= 'Hitmonchan'},
[53] ={ np = 'Contains a Dugtrio.',nm= 'Seadra'},
[54] ={ np = 'Contains a Dugtrio.',nm= 'Seadra'},
[55] ={ np = 'Contains a Dugtrio.',nm= 'Seadra'},
[56] ={ np = 'Contains a Golduck.',nm= 'Starmie'},
[57] ={ np = 'Contains a Golduck.',nm= 'Starmie'},
[58] ={ np = 'Contains a Golduck.',nm= 'Starmie'},
[59] ={ np = 'Contains a Golduck.',nm= 'Mr Mime'},
[60] ={ np = 'Contains a Golduck.',nm= 'Mr Mime'},
[61] ={ np = 'Contains a Primeape.',nm= 'Primeape'},
[62] ={ np = 'Contains a Primeape.',nm= 'Primeape'},
[63] ={ np = 'Contains a Primeape.',nm= 'Primeape'},
[64] ={ np = 'Contains a Kadabra.',nm= 'Kadabra'},
[65] ={ np = 'Contains a Kadabra.',nm= 'Kadabra'},
[66] ={ np = 'Contains a Kadabra.',nm= 'Kadabra'},
[67] ={ np = 'Contains a Kadabra.',nm= 'Kadabra'},
[68] ={ np = 'Contains a Kadabra.',nm= 'Kadabra'},
[69] ={ np = 'Contains a Flareon.',nm= 'Flareon'},
[70] ={ np = 'Contains a Tauros.',nm= 'Tauros'},
[71] ={ np = 'Contains a Tauros.',nm= 'Tauros'},
[72] ={ np = 'Contains a Jolteon.',nm= 'Jolteon'},
[73] ={ np = 'Contains a Vaporeon.',nm= 'Vaporeon'},
[74] ={ np = 'Contains a Pinsir.',nm= 'Pinsir'},
[75] ={ np = 'Contains a Pinsir.',nm= 'Pinsir'},
[76] ={ np = 'Contains a Lickitung.',nm= 'Lickitung'},
[77] ={ np = 'Contains a Tangela.',nm= 'Tangela'},
[78] ={ np = 'Contains a Tangela.',nm= 'Tangela'},
[79] ={ np = 'Contains a Chansey.',nm= 'Chansey'},
[80] ={ np = 'Contains a Chansey.',nm= 'Chansey'},
[81] ={ np = 'Contains a Ditto.',nm= 'Ditto'},
[82] ={ np = 'Contains a Hitmonlee.',nm= 'Hitmonlee'},
[83] ={ np = 'Contains a Slowbro.',nm= 'Slowbro'},
[84] ={ np = 'Contains a Slowbro.',nm= 'Slowbro'},
[85] ={ np = 'Contains a Kangaskhan.',nm= 'Kangaskhan'},
[86] ={ np = "Contains a Ivysaur.",nm= "Ivysaur"},
[87] ={ np = "Contains a Ivysaur.",nm= "Ivysaur"},
[88] ={ np = "Contains a Ivysaur.",nm= "Ivysaur"},
[89] ={ np = "Contains a Charmeleon.",nm= "Charmeleon"},
[90] ={ np = "Contains a Charmeleon.",nm= "Charmeleon"},
[91] ={ np = "Contains a Charmeleon.",nm= "Charmeleon"},
[92] ={ np = 'Contains a Wartortle.',nm= 'Wartortle'},
[93] ={ np = 'Contains a Wartortle.',nm= 'Wartortle'},
[94] ={ np = 'Contains a Wartortle.',nm= 'Wartortle'},
[95] ={ np = 'Contains a Raichu.',nm= 'Raichu'},
[96] ={ np = 'Contains a Raichu.',nm= 'Raichu'},
[97] ={ np = 'Contains a Raichu.',nm= 'Raichu'},
[98] ={ np = 'Contains a Raichu.',nm= 'Raichu'},
[99] ={ np = 'Contains a Raichu.',nm= 'Raichu'},
[100] ={ np = 'Contains a Fearow.',nm= 'Fearow'},
[101] ={ np = 'Contains a Fearow.',nm= 'Fearow'},
[102] ={ np = 'Contains a Fearow.',nm= 'Fearow'},
[103] ={ np = 'Contains a Fearow.',nm= 'Fearow'},
[104] ={ np = 'Contains a Fearow.',nm= 'Fearow'},
[105] ={ np = 'Contains a Vileplume.',nm= 'Vileplume'},
[106] ={ np = 'Contains a Vileplume.',nm= 'Vileplume'},
[107] ={ np = 'Contains a Vileplume.',nm= 'Vileplume'},
[108] ={ np = 'Contains a Vileplume.',nm= 'Vileplume'},
[109] ={ np = 'Contains a Vileplume.',nm= 'Vileplume'},
[110] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[111] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[112] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[113] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[114] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[115] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[116] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[117] ={ np = 'Contains a Parasect.',nm= 'Parasect'},
[118] ={ np = 'Contains a Parasect.',nm= 'Parasect'},
[119] ={ np = 'Contains a Parasect.',nm= 'Parasect'},
[120] ={ np = 'Contains a Parasect.',nm= 'Parasect'},
[121] ={ np = 'Contains a Parasect.',nm= 'Parasect'},
[122] ={ np = 'Contains a Clefable.',nm= 'Clefable'},
[123] ={ np = 'Contains a Clefable.',nm= 'Clefable'},
[124] ={ np = 'Contains a Clefable.',nm= 'Clefable'},
[125] ={ np = 'Contains a Clefable.',nm= 'Clefable'},
[126] ={ np = 'Contains a Clefable.',nm= 'Clefable'},
[127] ={ np = 'Contains a Wigglytuff.',nm= 'Wigglytuff'},
[128] ={ np = 'Contains a Wigglytuff.',nm= 'Wigglytuff'},
[129] ={ np = 'Contains a Sandslash.',nm= 'Sandslash'},
[130] ={ np = 'Contains a Sandslash.',nm= 'Sandslash'},
[131] ={ np = 'Contains a Sandslash.',nm= 'Sandslash'},
[132] ={ np = 'Contains a Machoke.',nm= 'Machoke'},
[133] ={ np = 'Contains a Machoke.',nm= 'Machoke'},
[134] ={ np = 'Contains a Machoke.',nm= 'Machoke'},
[135] ={ np = 'Contains a Machoke.',nm= 'Machoke'},
[136] ={ np = 'Contains a Machoke.',nm= 'Machoke'},
[137] ={ np = 'Contains a Dugtrio.',nm= 'Dugtrio'},
[138] ={ np = 'Contains a Dugtrio.',nm= 'Dugtrio'},
[139] ={ np = 'Contains a Dugtrio.',nm= 'Dugtrio'},
[140] ={ np = 'Contains a Dugtrio.',nm= 'Dugtrio'},
[141] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[142] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[143] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[144] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[145] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[146] ={ np = 'Contains a Primeape.',nm= 'Primeape'},
[147] ={ np = 'Contains a Primeape.',nm= 'Primeape'},
[148] ={ np = 'Contains a Primeape.',nm= 'Primeape'},
[149] ={ np = 'Contains a Kadabra.',nm= 'Kadabra'},
[150] ={ np = 'Contains a Kadabra.',nm= 'Kadabra'},
[151] ={ np = 'Contains a Kadabra.',nm= 'Kadabra'},
[152] ={ np = 'Contains a Kadabra.',nm= 'Kadabra'},
[153] ={ np = 'Contains a Kadabra.',nm= 'Kadabra'},
[154] ={ np = 'Contains a Flareon.',nm= 'Flareon'},
[155] ={ np = 'Contains a Tauros.',nm= 'Tauros'},
[156] ={ np = 'Contains a Tauros.',nm= 'Tauros'},
[157] ={ np = 'Contains a Jolteon.',nm= 'Jolteon'},
[158] ={ np = 'Contains a Vaporeon.',nm= 'Vaporeon'},
[159] ={ np = 'Contains a Pinsir.',nm= 'Pinsir'},
[160] ={ np = 'Contains a Pinsir.',nm= 'Pinsir'},
[161] ={ np = 'Contains a Lickitung.',nm= 'Lickitung'},
[162] ={ np = 'Contains a Tangela.',nm= 'Tangela'},
[163] ={ np = 'Contains a Tangela.',nm= 'Tangela'},
[164] ={ np = 'Contains a Chansey.',nm= 'Chansey'},
[165] ={ np = 'Contains a Chansey.',nm= 'Chansey'},
[166] ={ np = 'Contains a Hitmonlee.',nm= 'Hitmonlee'},
[167] ={ np = "Contains a Ivysaur.",nm= "Ivysaur"},
[168] ={ np = "Contains a Ivysaur.",nm= "Ivysaur"},
[169] ={ np = "Contains a Ivysaur.",nm= "Ivysaur"},
[170] ={ np = "Contains a Charmeleon.",nm= "Charmeleon"},
[171] ={ np = "Contains a Charmeleon.",nm= "Charmeleon"},
[172] ={ np = "Contains a Charmeleon.",nm= "Charmeleon"},
[173] ={ np = 'Contains a Wartortle.',nm= 'Wartortle'},
[174] ={ np = 'Contains a Wartortle.',nm= 'Wartortle'},
[175] ={ np = 'Contains a Wartortle.',nm= 'Wartortle'},
[176] ={ np = 'Contains a Raichu.',nm= 'Raichu'},
[177] ={ np = 'Contains a Raichu.',nm= 'Raichu'},
[178] ={ np = 'Contains a Raichu.',nm= 'Raichu'},
[179] ={ np = 'Contains a Raichu.',nm= 'Raichu'},
[180] ={ np = 'Contains a Raichu.',nm= 'Raichu'},
[181] ={ np = 'Contains a Fearow.',nm= 'Fearow'},
[182] ={ np = 'Contains a Fearow.',nm= 'Fearow'},
[183] ={ np = 'Contains a Fearow.',nm= 'Fearow'},
[184] ={ np = 'Contains a Fearow.',nm= 'Fearow'},
[185] ={ np = 'Contains a Fearow.',nm= 'Fearow'},
[186] ={ np = 'Contains a Vileplume.',nm= 'Vileplume'},
[187] ={ np = 'Contains a Vileplume.',nm= 'Vileplume'},
[188] ={ np = 'Contains a Vileplume.',nm= 'Vileplume'},
[189] ={ np = 'Contains a Vileplume.',nm= 'Vileplume'},
[190] ={ np = 'Contains a Vileplume.',nm= 'Vileplume'},
[191] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[192] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[193] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[194] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[195] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[196] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[197] ={ np = 'Contains a Venomoth.',nm= 'Venomoth'},
[198] ={ np = 'Contains a Parasect.',nm= 'Parasect'},
[199] ={ np = 'Contains a Parasect.',nm= 'Parasect'},
[200] ={ np = 'Contains a Parasect.',nm= 'Parasect'},
[201] ={ np = 'Contains a Parasect.',nm= 'Parasect'},
[202] ={ np = 'Contains a Parasect.',nm= 'Parasect'},
[203] ={ np = 'Contains a Clefable.',nm= 'Clefable'},
[204] ={ np = 'Contains a Clefable.',nm= 'Clefable'},
[205] ={ np = 'Contains a Clefable.',nm= 'Clefable'},
[206] ={ np = 'Contains a Clefable.',nm= 'Clefable'},
[207] ={ np = 'Contains a Clefable.',nm= 'Clefable'},
[208] ={ np = 'Contains a Wigglytuff.',nm= 'Wigglytuff'},
[209] ={ np = 'Contains a Wigglytuff.',nm= 'Wigglytuff'},
[210] ={ np = 'Contains a Sandslash.',nm= 'Sandslash'},
[211] ={ np = 'Contains a Sandslash.',nm= 'Sandslash'},
[212] ={ np = 'Contains a Sandslash.',nm= 'Sandslash'},
[213] ={ np = 'Contains a Machoke.',nm= 'Machoke'},
[214] ={ np = 'Contains a Machoke.',nm= 'Machoke'},
[215] ={ np = 'Contains a Machoke.',nm= 'Machoke'},
[216] ={ np = 'Contains a Machoke.',nm= 'Machoke'},
[217] ={ np = 'Contains a Machoke.',nm= 'Machoke'},
[218] ={ np = 'Contains a Dugtrio.',nm= 'Dugtrio'},
[219] ={ np = 'Contains a Dugtrio.',nm= 'Dugtrio'},
[220] ={ np = 'Contains a Dugtrio.',nm= 'Dugtrio'},
[221] ={ np = 'Contains a Dugtrio.',nm= 'Dugtrio'},
[222] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[223] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[224] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[225] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[226] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[227] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[228] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[229] ={ np = 'Contains a Golduck.',nm= 'Golduck'},
[230] ={ np = 'Contains a Golduck.',nm= 'Golduck'},

}

local level = 65 -- level para usar
local e = box[math.random(1,230)]
local boxid = 2222 -- id da ball que vai ser dada ao jogador



if getPlayerLevel(cid) >= level then
local calcular = pokesteeee[e.nm] 


if calcular then
addStatics(calcular.st)
end
if getPlayerFreeCap(cid) <= 0.99 then

b = doCreateItemEx(cid, boxid-1, 1)
doItemSetAttribute(b, "boost", "0")
doItemSetAttribute(b, "exp", "0")
doItemSetAttribute(b, "exp2", "0")
doItemSetAttribute(b, "catchby", getCreatureName(cid))
doItemSetAttribute(b, "m1", "0")
doItemSetAttribute(b, "m2", "0")
doItemSetAttribute(b, "m3", "0")
doItemSetAttribute(b, "m4", "0")
doItemSetAttribute(b, "m5", "0")
doItemSetAttribute(b, "m6", "0")
doItemSetAttribute(b, "m7", "0")
doItemSetAttribute(b, "m8", "0")
doItemSetAttribute(b, "m9", "0")
doItemSetAttribute(b, "m10", "0")
doItemSetAttribute(b, "m11", "0")
doItemSetAttribute(b, "m12", "0")
doItemSetAttribute(b, "fine", 100) 
doItemSetAttribute(b, "nome", e.nm)
doItemSetAttribute(b, "cold","0")
doItemSetAttribute(b, "outifit","28")
--doItemSetAttribute(b, "apelido", e.nm)
doItemSetAttribute(b, "description", "Contains a "..e.nm..".")
doPlayerSendMailByName(getCreatureName(cid), b,1)
doRemoveItem(item.uid, 1)
doPlayerSendTextMessage(cid,22,"You Open a Poke Box 3,Good Luck You pokeball has been sent to your depot")
else

itemm = doCreateItemEx(2219)
doPlayerAddItemEx(cid, itemm, true)
doTransformItem(itemm, 2222)
doItemSetAttribute(itemm, "boost", "0")
doItemSetAttribute(itemm, "exp", "0")
doItemSetAttribute(itemm, "exp2", "0")
doItemSetAttribute(itemm, "catchby", getCreatureName(cid))
doItemSetAttribute(itemm, "m1", "0")
doItemSetAttribute(itemm, "m2", "0")
doItemSetAttribute(itemm, "m3", "0")
doItemSetAttribute(itemm, "m4", "0")
doItemSetAttribute(itemm, "m5", "0")
doItemSetAttribute(itemm, "m6", "0")
doItemSetAttribute(itemm, "m7", "0")
doItemSetAttribute(itemm, "m8", "0")
doItemSetAttribute(itemm, "m9", "0")
doItemSetAttribute(itemm, "m10", "0")
doItemSetAttribute(itemm, "m11", "0")
doItemSetAttribute(itemm, "m12", "0")
doItemSetAttribute(itemm, "fine", 100) 
doItemSetAttribute(itemm, "cold","0")
doItemSetAttribute(itemm, "outifit","28")
--doItemSetAttribute(itemm, "apelido", e.nm)
doItemSetAttribute(itemm, "nome", e.nm)
doItemSetAttribute(itemm, "description", "Contains a "..e.nm..".")
doRemoveItem(item.uid, 1)
doPlayerSendTextMessage(cid,22,"You Open a Poke Box 3,You won a "..e.nm.."")


end
else
doPlayerSendCancel(cid, "You must be at least level "..level.." to use this box.")
end
return TRUE
end