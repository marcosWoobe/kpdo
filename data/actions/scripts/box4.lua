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
[1] ={ np = "Contains a Venusaur.",nm= "Venusaur"},
[2] ={ np = "Contains a Venusaur.",nm= "Venusaur"},
[3] ={ np = "Contains a Venusaur.",nm= "Venusaur"},
[4] ={ np = "Contains a Charizard.",nm= "Charizard"},
[5] ={ np = "Contains a Charizard.",nm= "Charizard"},
[6] ={ np = "Contains a Charizard.",nm= "Charizard"},
[7] ={ np = 'Contains a Blastoise.',nm= 'Blastoise'},
[8] ={ np = 'Contains a Blastoise.',nm= 'Blastoise'},
[9] ={ np = 'Contains a Blastoise.',nm= 'Blastoise'},
[10] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[11] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[12] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[13] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[14] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[15] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[16] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[17] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[18] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[19] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[20] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[21] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[22] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[23] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[24] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[25] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[26] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[27] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[28] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[29] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[30] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[31] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[32] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[33] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[34] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[35] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[36] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[37] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[38] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[39] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[40] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[41] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[42] ={ np = 'Contains a Alakazam.',nm= 'Alakazam'},
[43] ={ np = 'Contains a Alakazam.',nm= 'Alakazam'},
[44] ={ np = 'Contains a Dewgong.',nm= 'Dewgong'},
[45] ={ np = 'Contains a Dewgong.',nm= 'Dewgong'},
[46] ={ np = 'Contains a Dewgong.',nm= 'Dewgong'},
[47] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[48] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[49] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[50] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[51] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[52] ={ np = 'Contains a Tentacruel.',nm= 'Tentacruel'},
[53] ={ np = 'Contains a Tentacruel.',nm= 'Tentacruel'},
[54] ={ np = 'Contains a Tentacruel.',nm= 'Tentacruel'},
[55] ={ np = 'Contains a Tentacruel.',nm= 'Tentacruel'},
[56] ={ np = 'Contains a Golem.',nm= 'Golem'},
[57] ={ np = 'Contains a Golem.',nm= 'Golem'},
[58] ={ np = 'Contains a Golem.',nm= 'Golem'},
[59] ={ np = 'Contains a Golem.',nm= 'Golem'},
[60] ={ np = 'Contains a Golem.',nm= 'Golem'},
[61] ={ np = 'Contains a Gengar.',nm= 'Gengar'},
[62] ={ np = 'Contains a Gengar.',nm= 'Gengar'},
[63] ={ np = 'Contains a Gengar.',nm= 'Gengar'},
[64] ={ np = 'Contains a Rhydon.',nm= 'Rhydon'},
[65] ={ np = 'Contains a Rhydon.',nm= 'Rhydon'},
[66] ={ np = 'Contains a Rhydon.',nm= 'Rhydon'},
[67] ={ np = 'Contains a Rhydon.',nm= 'Rhydon'},
[68] ={ np = 'Contains a Rhydon.',nm= 'Rhydon'},
[69] ={ np = 'Contains a Scyther.',nm= 'Scyther'},
[70] ={ np = 'Contains a Jynx.',nm= 'Jynx'},
[71] ={ np = 'Contains a Jynx.',nm= 'Jynx'},
[72] ={ np = 'Contains a Electabuzz.',nm= 'Electabuzz'},
[73] ={ np = 'Contains a Magmar.',nm= 'Magmar'},
[74] ={ np = 'Contains a Gyarados.',nm= 'Gyarados'},
[75] ={ np = 'Contains a Gyarados.',nm= 'Gyarados'},
[76] ={ np = 'Contains a Lapras.',nm= 'Lapras'},
[77] ={ np = 'Contains a Omastar.',nm= 'Omastar'},
[78] ={ np = 'Contains a Omastar.',nm= 'Omastar'},
[79] ={ np = 'Contains a Kabutops.',nm= 'Kabutops'},
[80] ={ np = 'Contains a Kabutops.',nm= 'Kabutops'},
[81] ={ np = 'Contains a Dragonite.',nm= 'Dragonite'},
[82] ={ np = 'Contains a Snorlax.',nm= 'Snorlax'},
[83] ={ np = 'Contains a Dragonair.',nm= 'Dragonair'},
[84] ={ np = 'Contains a Dragonair.',nm= 'Dragonair'},
[85] ={ np = 'Contains a Aerodactyl.',nm= 'Aerodactyl'},
[86] ={ np = "Contains a Venusaur.",nm= "Venusaur"},
[87] ={ np = "Contains a Venusaur.",nm= "Venusaur"},
[88] ={ np = "Contains a Venusaur.",nm= "Venusaur"},
[89] ={ np = "Contains a Charizard.",nm= "Charizard"},
[90] ={ np = "Contains a Charizard.",nm= "Charizard"},
[91] ={ np = "Contains a Charizard.",nm= "Charizard"},
[92] ={ np = 'Contains a Blastoise.',nm= 'Blastoise'},
[93] ={ np = 'Contains a Blastoise.',nm= 'Blastoise'},
[94] ={ np = 'Contains a Blastoise.',nm= 'Blastoise'},
[95] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[96] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[97] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[98] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[99] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[100] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[101] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[102] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[103] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[104] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[105] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[106] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[107] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[108] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[109] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[110] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[111] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[112] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[113] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[114] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[115] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[116] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[117] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[118] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[119] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[120] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[121] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[122] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[123] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[124] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[125] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[126] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[127] ={ np = 'Contains a Alakazam.',nm= 'Alakazam'},
[128] ={ np = 'Contains a Alakazam.',nm= 'Alakazam'},
[129] ={ np = 'Contains a Dewgong.',nm= 'Dewgong'},
[130] ={ np = 'Contains a Dewgong.',nm= 'Dewgong'},
[131] ={ np = 'Contains a Dewgong.',nm= 'Dewgong'},
[132] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[133] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[134] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[135] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[136] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[137] ={ np = 'Contains a Tentacruel.',nm= 'Tentacruel'},
[138] ={ np = 'Contains a Tentacruel.',nm= 'Tentacruel'},
[139] ={ np = 'Contains a Tentacruel.',nm= 'Tentacruel'},
[140] ={ np = 'Contains a Tentacruel.',nm= 'Tentacruel'},
[141] ={ np = 'Contains a Golem.',nm= 'Golem'},
[142] ={ np = 'Contains a Golem.',nm= 'Golem'},
[143] ={ np = 'Contains a Golem.',nm= 'Golem'},
[144] ={ np = 'Contains a Golem.',nm= 'Golem'},
[145] ={ np = 'Contains a Golem.',nm= 'Golem'},
[146] ={ np = 'Contains a Gengar.',nm= 'Gengar'},
[147] ={ np = 'Contains a Gengar.',nm= 'Gengar'},
[148] ={ np = 'Contains a Gengar.',nm= 'Gengar'},
[149] ={ np = 'Contains a Rhydon.',nm= 'Rhydon'},
[150] ={ np = 'Contains a Rhydon.',nm= 'Rhydon'},
[151] ={ np = 'Contains a Rhydon.',nm= 'Rhydon'},
[152] ={ np = 'Contains a Rhydon.',nm= 'Rhydon'},
[153] ={ np = 'Contains a Rhydon.',nm= 'Rhydon'},
[154] ={ np = 'Contains a Scyther.',nm= 'Scyther'},
[155] ={ np = 'Contains a Jynx.',nm= 'Jynx'},
[156] ={ np = 'Contains a Jynx.',nm= 'Jynx'},
[157] ={ np = 'Contains a Electabuzz.',nm= 'Electabuzz'},
[158] ={ np = 'Contains a Magmar.',nm= 'Magmar'},
[159] ={ np = 'Contains a Gyarados.',nm= 'Gyarados'},
[160] ={ np = 'Contains a Gyarados.',nm= 'Gyarados'},
[161] ={ np = 'Contains a Lapras.',nm= 'Lapras'},
[162] ={ np = 'Contains a Omastar.',nm= 'Omastar'},
[163] ={ np = 'Contains a Omastar.',nm= 'Omastar'},
[164] ={ np = 'Contains a Kabutops.',nm= 'Kabutops'},
[165] ={ np = 'Contains a Kabutops.',nm= 'Kabutops'},
[166] ={ np = 'Contains a Snorlax.',nm= 'Snorlax'},
[167] ={ np = "Contains a Venusaur.",nm= "Venusaur"},
[168] ={ np = "Contains a Venusaur.",nm= "Venusaur"},
[169] ={ np = "Contains a Venusaur.",nm= "Venusaur"},
[170] ={ np = "Contains a Charizard.",nm= "Charizard"},
[171] ={ np = "Contains a Charizard.",nm= "Charizard"},
[172] ={ np = "Contains a Charizard.",nm= "Charizard"},
[173] ={ np = 'Contains a Blastoise.',nm= 'Blastoise'},
[174] ={ np = 'Contains a Blastoise.',nm= 'Blastoise'},
[175] ={ np = 'Contains a Blastoise.',nm= 'Blastoise'},
[176] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[177] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[178] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[179] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[180] ={ np = 'Contains a Pidgeot.',nm= 'Pidgeot'},
[181] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[182] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[183] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[184] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[185] ={ np = 'Contains a Nidoqueen.',nm= 'Nidoqueen'},
[186] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[187] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[188] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[189] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[190] ={ np = 'Contains a Nidoking.',nm= 'Nidoking'},
[191] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[192] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[193] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[194] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[195] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[196] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[197] ={ np = 'Contains a Ninetales.',nm= 'Ninetales'},
[198] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[199] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[200] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[201] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[202] ={ np = 'Contains a Arcanine.',nm= 'Arcanine'},
[203] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[204] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[205] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[206] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[207] ={ np = 'Contains a Poliwrath.',nm= 'Poliwrath'},
[208] ={ np = 'Contains a Alakazam.',nm= 'Alakazam'},
[209] ={ np = 'Contains a Alakazam.',nm= 'Alakazam'},
[210] ={ np = 'Contains a Dewgong.',nm= 'Dewgong'},
[211] ={ np = 'Contains a Dewgong.',nm= 'Dewgong'},
[212] ={ np = 'Contains a Dewgong.',nm= 'Dewgong'},
[213] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[214] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[215] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[216] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[217] ={ np = 'Contains a Machamp.',nm= 'Machamp'},
[218] ={ np = 'Contains a Tentacruel.',nm= 'Tentacruel'},
[219] ={ np = 'Contains a Tentacruel.',nm= 'Tentacruel'},
[220] ={ np = 'Contains a Tentacruel.',nm= 'Tentacruel'},
[221] ={ np = 'Contains a Tentacruel.',nm= 'Tentacruel'},
[222] ={ np = 'Contains a Golem.',nm= 'Golem'},
[223] ={ np = 'Contains a Golem.',nm= 'Golem'},
[224] ={ np = 'Contains a Golem.',nm= 'Golem'},
[225] ={ np = 'Contains a Golem.',nm= 'Golem'},
[226] ={ np = 'Contains a Golem.',nm= 'Golem'},
[227] ={ np = 'Contains a Golem.',nm= 'Golem'},
[228] ={ np = 'Contains a Golem.',nm= 'Golem'},
[229] ={ np = 'Contains a Golem.',nm= 'Golem'},
[230] ={ np = 'Contains a Golem.',nm= 'Golem'},

}

local level = 85 -- level para usar
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
doPlayerSendTextMessage(cid,22,"You Open a Poke Box 4,Good Luck You pokeball has been sent to your depot")
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
doPlayerSendTextMessage(cid,22,"You Open a Poke Box 4,You won a "..e.nm.."")


end
else
doPlayerSendCancel(cid, "You must be at least level "..level.." to use this box.")
end
return TRUE
end