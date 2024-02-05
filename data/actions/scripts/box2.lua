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
[1] ={ np = "Contains a Ivysaur.",nm= "Bulbasaur"},
[2] ={ np = "Contains a Ivysaur.",nm= "Bulbasaur"},
[3] ={ np = "Contains a Ivysaur.",nm= "Bulbasaur"},
[4] ={ np = "Contains a Charmeleon.",nm= "Charmander"},
[5] ={ np = "Contains a Charmeleon.",nm= "Charmander"},
[6] ={ np = "Contains a Charmeleon.",nm= "Charmander"},
[7] ={ np = 'Contains a Wartortle.',nm= 'Squirtle'},
[8] ={ np = 'Contains a Wartortle.',nm= 'Squirtle'},
[9] ={ np = 'Contains a Wartortle.',nm= 'Squirtle'},
[10] ={ np = 'Contains a Raichu.',nm= 'Pidgeotto'},
[11] ={ np = 'Contains a Raichu.',nm= 'Pidgeotto'},
[12] ={ np = 'Contains a Raichu.',nm= 'Pidgeotto'},
[13] ={ np = 'Contains a Raichu.',nm= 'Pidgeotto'},
[14] ={ np = 'Contains a Raichu.',nm= 'Pidgeotto'},
[15] ={ np = 'Contains a Fearow.',nm= 'Raticate'},
[16] ={ np = 'Contains a Fearow.',nm= 'Raticate'},
[17] ={ np = 'Contains a Fearow.',nm= 'Raticate'},
[18] ={ np = 'Contains a Fearow.',nm= 'Raticate'},
[19] ={ np = 'Contains a Fearow.',nm= 'Raticate'},
[20] ={ np = 'Contains a Vileplume.',nm= 'Raticate'},
[21] ={ np = 'Contains a Vileplume.',nm= 'Raticate'},
[22] ={ np = 'Contains a Vileplume.',nm= 'Raticate'},
[23] ={ np = 'Contains a Vileplume.',nm= 'Raticate'},
[24] ={ np = 'Contains a Vileplume.',nm= 'Raticate'},
[25] ={ np = 'Contains a Abra.',nm= 'Butterfree'},
[26] ={ np = 'Contains a Abra.',nm= 'Butterfree'},
[27] ={ np = 'Contains a Abra.',nm= 'Butterfree'},
[28] ={ np = 'Contains a Abra.',nm= 'Beedrill'},
[29] ={ np = 'Contains a Abra.',nm= 'Beedrill'},
[30] ={ np = 'Contains a Abra.',nm= 'Beedrill'},
[31] ={ np = 'Contains a Abra.',nm= 'Beedrill'},
[32] ={ np = 'Contains a Ponyta.',nm= 'Ekans'},
[33] ={ np = 'Contains a Ponyta.',nm= 'Ekans'},
[34] ={ np = 'Contains a Ponyta.',nm= 'Ekans'},
[35] ={ np = 'Contains a Ponyta.',nm= 'Ekans'},
[36] ={ np = 'Contains a Ponyta.',nm= 'Ekans'},
[37] ={ np = 'Contains a Psyduck.',nm= 'Arbok'},
[38] ={ np = 'Contains a Psyduck.',nm= 'Arbok'},
[39] ={ np = 'Contains a Psyduck.',nm= 'Arbok'},
[40] ={ np = 'Contains a Psyduck.',nm= 'Arbok'},
[41] ={ np = 'Contains a Psyduck.',nm= 'Arbok'},
[42] ={ np = 'Contains a Wigglytuff.',nm= 'Gloom'},
[43] ={ np = 'Contains a Wigglytuff.',nm= 'Gloom'},
[44] ={ np = 'Contains a Sandslash.',nm= 'Gloom'},
[45] ={ np = 'Contains a Sandslash.',nm= 'Gloom'},
[46] ={ np = 'Contains a Sandslash.',nm= 'Gloom'},
[47] ={ np = 'Contains a Machoke.',nm= 'Nidorina'},
[48] ={ np = 'Contains a Machoke.',nm= 'Nidorina'},
[49] ={ np = 'Contains a Machoke.',nm= 'Nidorina'},
[50] ={ np = 'Contains a Machoke.',nm= 'Nidorina'},
[51] ={ np = 'Contains a Machoke.',nm= 'Nidorina'},
[52] ={ np = 'Contains a Dugtrio.',nm= 'Nidorina'},
[53] ={ np = 'Contains a Dugtrio.',nm= 'Nidorino'},
[54] ={ np = 'Contains a Dugtrio.',nm= 'Nidorino'},
[55] ={ np = 'Contains a Dugtrio.',nm= 'Nidorino'},
[56] ={ np = 'Contains a Golduck.',nm= 'Nidorino'},
[57] ={ np = 'Contains a Golduck.',nm= 'Nidorino'},
[58] ={ np = 'Contains a Golduck.',nm= 'Nidorino'},
[59] ={ np = 'Contains a Golduck.',nm= 'Muk'},
[60] ={ np = 'Contains a Golduck.',nm= 'Muk'},
[61] ={ np = 'Contains a Primeape.',nm= 'Pikachu'},
[62] ={ np = 'Contains a Primeape.',nm= 'Kabuto'},
[63] ={ np = 'Contains a Primeape.',nm= 'Omanyte'},
[64] ={ np = 'Contains a Kadabra.',nm= 'Staryu'},
[65] ={ np = 'Contains a Kadabra.',nm= 'Staryu'},
[66] ={ np = 'Contains a Kadabra.',nm= 'Staryu'},
[67] ={ np = 'Contains a Kadabra.',nm= 'Staryu'},
[68] ={ np = 'Contains a Kadabra.',nm= 'Staryu'},
[69] ={ np = 'Contains a Flareon.',nm= 'Seaking'},
[70] ={ np = 'Contains a Tauros.',nm= 'Seaking'},
[71] ={ np = 'Contains a Tauros.',nm= 'Seaking'},
[72] ={ np = 'Contains a Jolteon.',nm= 'Seaking'},
[73] ={ np = 'Contains a Vaporeon.',nm= 'Seaking'},
[74] ={ np = 'Contains a Pinsir.',nm= 'Drowzee'},
[75] ={ np = 'Contains a Pinsir.',nm= 'Drowzee'},
[76] ={ np = 'Contains a Lickitung.',nm= 'Drowzee'},
[77] ={ np = 'Contains a Tangela.',nm= 'Drowzee'},
[78] ={ np = 'Contains a Tangela.',nm= 'Drowzee'},
[79] ={ np = 'Contains a Chansey.',nm= 'Seel'},
[80] ={ np = 'Contains a Chansey.',nm= 'Seel'},
[81] ={ np = 'Contains a Ditto.',nm= 'Seel'},
[82] ={ np = 'Contains a Hitmonlee.',nm= 'Seel'},
[83] ={ np = 'Contains a Slowbro.',nm= 'Doduo'},
[84] ={ np = 'Contains a Slowbro.',nm= 'Doduo'},
[85] ={ np = 'Contains a Kangaskhan.',nm= 'Doduo'},
[86] ={ np = "Contains a Ivysaur.",nm= "Gastly"},
[87] ={ np = "Contains a Ivysaur.",nm= "Gastly"},
[88] ={ np = "Contains a Ivysaur.",nm= "Gastly"},
[89] ={ np = "Contains a Charmeleon.",nm= "Gastly"},
[90] ={ np = "Contains a Charmeleon.",nm= "Gastly"},
[91] ={ np = "Contains a Charmeleon.",nm= "Gastly"},
[92] ={ np = 'Contains a Wartortle.',nm= 'Voltorb'},
[93] ={ np = 'Contains a Wartortle.',nm= 'Voltorb'},
[94] ={ np = 'Contains a Wartortle.',nm= 'Voltorb'},
[95] ={ np = 'Contains a Raichu.',nm= 'Voltorb'},
[96] ={ np = 'Contains a Raichu.',nm= 'Voltorb'},
[97] ={ np = 'Contains a Raichu.',nm= 'Voltorb'},
[98] ={ np = 'Contains a Raichu.',nm= 'Voltorb'},
[99] ={ np = 'Contains a Raichu.',nm= 'Voltorb'},
[100] ={ np = 'Contains a Fearow.',nm= 'Grimer'},
[101] ={ np = 'Contains a Fearow.',nm= 'Grimer'},
[102] ={ np = 'Contains a Fearow.',nm= 'Grimer'},
[103] ={ np = 'Contains a Fearow.',nm= 'Grimer'},
[104] ={ np = 'Contains a Fearow.',nm= 'Grimer'},
[105] ={ np = 'Contains a Vileplume.',nm= 'Grimer'},
[106] ={ np = 'Contains a Vileplume.',nm= 'Grimer'},
[107] ={ np = 'Contains a Vileplume.',nm= 'Grimer'},
[108] ={ np = 'Contains a Vileplume.',nm= 'Grimer'},
[109] ={ np = 'Contains a Vileplume.',nm= 'Abra'},
[110] ={ np = 'Contains a Abra.',nm= 'Abra'},
[111] ={ np = 'Contains a Abra.',nm= 'Abra'},
[112] ={ np = 'Contains a Abra.',nm= 'Abra'},
[113] ={ np = 'Contains a Abra.',nm= 'Abra'},
[114] ={ np = 'Contains a Abra.',nm= 'Abra'},
[115] ={ np = 'Contains a Abra.',nm= 'Abra'},
[116] ={ np = 'Contains a Abra.',nm= 'Abra'},
[117] ={ np = 'Contains a Ponyta.',nm= 'Ponyta'},
[118] ={ np = 'Contains a Ponyta.',nm= 'Ponyta'},
[119] ={ np = 'Contains a Ponyta.',nm= 'Ponyta'},
[120] ={ np = 'Contains a Ponyta.',nm= 'Ponyta'},
[121] ={ np = 'Contains a Ponyta.',nm= 'Ponyta'},
[122] ={ np = 'Contains a Psyduck.',nm= 'Psyduck'},
[123] ={ np = 'Contains a Psyduck.',nm= 'Psyduck'},
[124] ={ np = 'Contains a Psyduck.',nm= 'Psyduck'},
[125] ={ np = 'Contains a Psyduck.',nm= 'Psyduck'},
[126] ={ np = 'Contains a Psyduck.',nm= 'Psyduck'},
[127] ={ np = 'Contains a Wigglytuff.',nm= 'Cubone'},
[128] ={ np = 'Contains a Wigglytuff.',nm= 'Cubone'},
[129] ={ np = 'Contains a Sandslash.',nm= 'Cubone'},
[130] ={ np = 'Contains a Sandslash.',nm= 'Machop'},
[131] ={ np = 'Contains a Sandslash.',nm= 'Machop'},
[132] ={ np = 'Contains a Machoke.',nm= 'Machop'},
[133] ={ np = 'Contains a Machoke.',nm= 'Vulpix'},
[134] ={ np = 'Contains a Machoke.',nm= 'Vulpix'},
[135] ={ np = 'Contains a Machoke.',nm= 'Vulpix'},
[136] ={ np = 'Contains a Machoke.',nm= 'Vulpix'},
[137] ={ np = 'Contains a Dugtrio.',nm= 'Vulpix'},
[138] ={ np = 'Contains a Dugtrio.',nm= 'Venonat'},
[139] ={ np = 'Contains a Dugtrio.',nm= 'Slowpoke'},
[140] ={ np = 'Contains a Dugtrio.',nm= 'Slowpoke'},
[141] ={ np = 'Contains a Golduck.',nm= 'Slowpoke'},
[142] ={ np = 'Contains a Golduck.',nm= 'Slowpoke'},
[143] ={ np = 'Contains a Golduck.',nm= 'Slowpoke'},
[144] ={ np = 'Contains a Golduck.',nm= 'Slowpoke'},
[145] ={ np = 'Contains a Golduck.',nm= 'Slowpoke'},
[146] ={ np = 'Contains a Primeape.',nm= 'Tentacool'},
[147] ={ np = 'Contains a Primeape.',nm= 'Tentacool'},
[148] ={ np = 'Contains a Primeape.',nm= 'Tentacool'},
[149] ={ np = 'Contains a Kadabra.',nm= 'Tentacool'},
[150] ={ np = 'Contains a Kadabra.',nm= 'Tentacool'},
[151] ={ np = 'Contains a Kadabra.',nm= 'Tentacool'},
[152] ={ np = 'Contains a Kadabra.',nm= 'Koffing'},
[153] ={ np = 'Contains a Kadabra.',nm= 'Koffing'},
[154] ={ np = 'Contains a Flareon.',nm= 'Koffing'},
[155] ={ np = 'Contains a Tauros.',nm= 'Weezing'},
[156] ={ np = 'Contains a Tauros.',nm= 'Weezing'},
[157] ={ np = 'Contains a Jolteon.',nm= 'Weezing'},
[158] ={ np = 'Contains a Vaporeon.',nm= 'Weezing'},
[159] ={ np = 'Contains a Pinsir.',nm= 'Weezing'},
[160] ={ np = 'Contains a Pinsir.',nm= 'Koffing'},
[161] ={ np = 'Contains a Lickitung.',nm= 'Koffing'},
[162] ={ np = 'Contains a Tangela.',nm= 'Koffing'},
[163] ={ np = 'Contains a Tangela.',nm= 'Mankey'},
[164] ={ np = 'Contains a Chansey.',nm= 'Mankey'},
[165] ={ np = 'Contains a Chansey.',nm= 'Mankey'},
[166] ={ np = 'Contains a Hitmonlee.',nm= 'Mankey'},
[167] ={ np = "Contains a Ivysaur.",nm= "Mankey"},
[168] ={ np = "Contains a Ivysaur.",nm= "Mankey"},
[169] ={ np = "Contains a Ivysaur.",nm= "Mankey"},
[170] ={ np = "Contains a Charmeleon.",nm= "Mankey"},
[171] ={ np = "Contains a Charmeleon.",nm= "Mankey"},
[172] ={ np = "Contains a Charmeleon.",nm= "Geodude"},
[173] ={ np = 'Contains a Wartortle.',nm= 'Geodude'},
[174] ={ np = 'Contains a Wartortle.',nm= 'Geodude'},
[175] ={ np = 'Contains a Wartortle.',nm= 'Geodude'},
[176] ={ np = 'Contains a Raichu.',nm= 'Geodude'},
[177] ={ np = 'Contains a Raichu.',nm= 'Geodude'},
[178] ={ np = 'Contains a Raichu.',nm= 'Geodude'},
[179] ={ np = 'Contains a Raichu.',nm= 'Dratini'},
[180] ={ np = 'Contains a Raichu.',nm= 'Pikachu'},
[181] ={ np = 'Contains a Fearow.',nm= 'Pikachu'},
[182] ={ np = 'Contains a Fearow.',nm= 'Pikachu'},
[183] ={ np = 'Contains a Fearow.',nm= 'Clefairy'},
[184] ={ np = 'Contains a Fearow.',nm= 'Clefairy'},
[185] ={ np = 'Contains a Fearow.',nm= 'Clefairy'},
[186] ={ np = 'Contains a Vileplume.',nm= 'Clefairy'},
[187] ={ np = 'Contains a Vileplume.',nm= 'Clefairy'},
[188] ={ np = 'Contains a Vileplume.',nm= 'Weepinbell'},
[189] ={ np = 'Contains a Vileplume.',nm= 'Weepinbell'},
[190] ={ np = 'Contains a Vileplume.',nm= 'Jigglypuff'},
[191] ={ np = 'Contains a Abra.',nm= 'Abra'},
[192] ={ np = 'Contains a Abra.',nm= 'Abra'},
[193] ={ np = 'Contains a Abra.',nm= 'Abra'},
[194] ={ np = 'Contains a Abra.',nm= 'Abra'},
[195] ={ np = 'Contains a Abra.',nm= 'Abra'},
[196] ={ np = 'Contains a Abra.',nm= 'Abra'},
[197] ={ np = 'Contains a Abra.',nm= 'Abra'},
[198] ={ np = 'Contains a Ponyta.',nm= 'Ponyta'},
[199] ={ np = 'Contains a Ponyta.',nm= 'Ponyta'},
[200] ={ np = 'Contains a Ponyta.',nm= 'Ponyta'},
[201] ={ np = 'Contains a Ponyta.',nm= 'Ponyta'},
[202] ={ np = 'Contains a Ponyta.',nm= 'Ponyta'},
[203] ={ np = 'Contains a Psyduck.',nm= 'Psyduck'},
[204] ={ np = 'Contains a Psyduck.',nm= 'Psyduck'},
[205] ={ np = 'Contains a Psyduck.',nm= 'Psyduck'},
[206] ={ np = 'Contains a Psyduck.',nm= 'Psyduck'},
[207] ={ np = 'Contains a Psyduck.',nm= 'Psyduck'},
[208] ={ np = 'Contains a Wigglytuff.',nm= 'Jigglypuff'},
[209] ={ np = 'Contains a Wigglytuff.',nm= 'Jigglypuff'},
[210] ={ np = 'Contains a Sandslash.',nm= 'Jigglypuff'},
[211] ={ np = 'Contains a Sandslash.',nm= 'Jigglypuff'},
[212] ={ np = 'Contains a Sandslash.',nm= 'Jigglypuff'},
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

local level = 40 -- level para usar
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
--doItemSetAttribute(b, "apelido", e.nm)
doItemSetAttribute(b, "description", "Contains a "..e.nm..".")
doPlayerSendMailByName(getCreatureName(cid), b,1)
doRemoveItem(item.uid, 1)
doPlayerSendTextMessage(cid,22,"You Open a Poke Box 2,Good Luck You pokeball has been sent to your depot")
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
doItemSetAttribute(itemm, "nome", e.nm)
--doItemSetAttribute(itemm, "apelido", e.nm)
doItemSetAttribute(itemm, "description", "Contains a "..e.nm..".")
doRemoveItem(item.uid, 1)
doPlayerSendTextMessage(cid,22,"You Open a Poke Box 2,You won a "..e.nm.."")


end
else
doPlayerSendCancel(cid, "You must be at least level "..level.." to use this box.")
end
return TRUE
end