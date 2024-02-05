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
[1] ={ np = "Contains a Ivysaur.",nm= "Weedle"},
[2] ={ np = "Contains a Ivysaur.",nm= "Weedle"},
[3] ={ np = "Contains a Ivysaur.",nm= "Weedle"},
[4] ={ np = "Contains a Charmeleon.",nm= "Weedle"},
[5] ={ np = "Contains a Charmeleon.",nm= "Weedle"},
[6] ={ np = "Contains a Charmeleon.",nm= "Weedle"},
[7] ={ np = 'Contains a Wartortle.',nm= 'Weedle'},
[8] ={ np = 'Contains a Wartortle.',nm= 'Weedle'},
[9] ={ np = 'Contains a Wartortle.',nm= 'Caterpie'},
[10] ={ np = 'Contains a Raichu.',nm= 'Caterpie'},
[11] ={ np = 'Contains a Raichu.',nm= 'Caterpie'},
[12] ={ np = 'Contains a Raichu.',nm= 'Caterpie'},
[13] ={ np = 'Contains a Raichu.',nm= 'Caterpie'},
[14] ={ np = 'Contains a Raichu.',nm= 'Caterpie'},
[15] ={ np = 'Contains a Fearow.',nm= 'Caterpie'},
[16] ={ np = 'Contains a Fearow.',nm= 'Caterpie'},
[17] ={ np = 'Contains a Fearow.',nm= 'Caterpie'},
[18] ={ np = 'Contains a Fearow.',nm= 'Caterpie'},
[19] ={ np = 'Contains a Fearow.',nm= 'Caterpie'},
[20] ={ np = 'Contains a Vileplume.',nm= 'Caterpie'},
[21] ={ np = 'Contains a Vileplume.',nm= 'Pidgey'},
[22] ={ np = 'Contains a Vileplume.',nm= 'Pidgey'},
[23] ={ np = 'Contains a Vileplume.',nm= 'Pidgey'},
[24] ={ np = 'Contains a Vileplume.',nm= 'Pidgey'},
[25] ={ np = 'Contains a Abra.',nm= 'Pidgey'},
[26] ={ np = 'Contains a Abra.',nm= 'Pidgey'},
[27] ={ np = 'Contains a Abra.',nm= 'Pidgey'},
[28] ={ np = 'Contains a Abra.',nm= 'Pidgey'},
[29] ={ np = 'Contains a Abra.',nm= 'Pidgey'},
[30] ={ np = 'Contains a Abra.',nm= 'Pidgey'},
[31] ={ np = 'Contains a Abra.',nm= 'Pidgey'},
[32] ={ np = 'Contains a Ponyta.',nm= 'Rattata'},
[33] ={ np = 'Contains a Ponyta.',nm= 'Rattata'},
[34] ={ np = 'Contains a Ponyta.',nm= 'Rattata'},
[35] ={ np = 'Contains a Ponyta.',nm= 'Rattata'},
[36] ={ np = 'Contains a Ponyta.',nm= 'Rattata'},
[37] ={ np = 'Contains a Psyduck.',nm= 'Rattata'},
[38] ={ np = 'Contains a Psyduck.',nm= 'Rattata'},
[39] ={ np = 'Contains a Psyduck.',nm= 'Rattata'},
[40] ={ np = 'Contains a Psyduck.',nm= 'Rattata'},
[41] ={ np = 'Contains a Psyduck.',nm= 'Rattata'},
[42] ={ np = 'Contains a Wigglytuff.',nm= 'Rattata'},
[43] ={ np = 'Contains a Wigglytuff.',nm= 'Metapod'},
[44] ={ np = 'Contains a Sandslash.',nm= 'Metapod'},
[45] ={ np = 'Contains a Sandslash.',nm= 'Metapod'},
[46] ={ np = 'Contains a Sandslash.',nm= 'Kakuna'},
[47] ={ np = 'Contains a Machoke.',nm= 'Kakuna'},
[48] ={ np = 'Contains a Machoke.',nm= 'Kakuna'},
[49] ={ np = 'Contains a Machoke.',nm= 'Spearow'},
[50] ={ np = 'Contains a Machoke.',nm= 'Spearow'},
[51] ={ np = 'Contains a Machoke.',nm= 'Spearow'},
[52] ={ np = 'Contains a Dugtrio.',nm= 'Spearow'},
[53] ={ np = 'Contains a Dugtrio.',nm= 'Spearow'},
[54] ={ np = 'Contains a Dugtrio.',nm= 'Diglett'},
[55] ={ np = 'Contains a Dugtrio.',nm= 'Diglett'},
[56] ={ np = 'Contains a Golduck.',nm= 'Diglett'},
[57] ={ np = 'Contains a Golduck.',nm= 'Diglett'},
[58] ={ np = 'Contains a Golduck.',nm= 'Diglett'},
[59] ={ np = 'Contains a Golduck.',nm= 'Zubat'},
[60] ={ np = 'Contains a Golduck.',nm= 'Zubat'},
[61] ={ np = 'Contains a Primeape.',nm= 'Zubat'},
[62] ={ np = 'Contains a Primeape.',nm= 'Paras'},
[63] ={ np = 'Contains a Primeape.',nm= 'Paras'},
[64] ={ np = 'Contains a Kadabra.',nm= 'Paras'},
[65] ={ np = 'Contains a Kadabra.',nm= 'Paras'},
[66] ={ np = 'Contains a Kadabra.',nm= 'Paras'},
[67] ={ np = 'Contains a Kadabra.',nm= 'Oddish'},
[68] ={ np = 'Contains a Kadabra.',nm= 'Oddish'},
[69] ={ np = 'Contains a Flareon.',nm= 'Oddish'},
[70] ={ np = 'Contains a Tauros.',nm= 'Oddish'},
[71] ={ np = 'Contains a Tauros.',nm= 'Oddish'},
[72] ={ np = 'Contains a Jolteon.',nm= 'Poliwag'},
[73] ={ np = 'Contains a Vaporeon.',nm= 'Poliwag'},
[74] ={ np = 'Contains a Pinsir.',nm= 'Poliwag'},
[75] ={ np = 'Contains a Pinsir.',nm= 'Poliwag'},
[76] ={ np = 'Contains a Lickitung.',nm= 'Poliwag'},
[77] ={ np = 'Contains a Tangela.',nm= 'Bellsprout'},
[78] ={ np = 'Contains a Tangela.',nm= 'Bellsprout'},
[79] ={ np = 'Contains a Chansey.',nm= 'Bellsprout'},
[80] ={ np = 'Contains a Chansey.',nm= 'Bellsprout'},
[81] ={ np = 'Contains a Ditto.',nm= 'Bellsprout'},
[82] ={ np = 'Contains a Hitmonlee.',nm= 'Magnemite'},
[83] ={ np = 'Contains a Slowbro.',nm= 'Magnemite'},
[84] ={ np = 'Contains a Slowbro.',nm= 'Magnemite'},
[85] ={ np = 'Contains a Kangaskhan.',nm= 'Shellder'},
[86] ={ np = "Contains a Ivysaur.",nm= "Shellder"},
[87] ={ np = "Contains a Ivysaur.",nm= "Shellder"},
[88] ={ np = "Contains a Ivysaur.",nm= "Shellder"},
[89] ={ np = "Contains a Charmeleon.",nm= "Krabby"},
[90] ={ np = "Contains a Charmeleon.",nm= "Krabby"},
[91] ={ np = "Contains a Charmeleon.",nm= "Krabby"},
[92] ={ np = 'Contains a Wartortle.',nm= 'Krabby'},
[93] ={ np = 'Contains a Wartortle.',nm= 'Krabby'},
[94] ={ np = 'Contains a Wartortle.',nm= 'Krabby'},
[95] ={ np = 'Contains a Raichu.',nm= 'Krabby'},
[96] ={ np = 'Contains a Raichu.',nm= 'Krabby'},
[97] ={ np = 'Contains a Raichu.',nm= 'Krabby'},
[98] ={ np = 'Contains a Raichu.',nm= 'Krabby'},
[99] ={ np = 'Contains a Raichu.',nm= 'Krabby'},
[100] ={ np = 'Contains a Fearow.',nm= 'Krabby'},
[101] ={ np = 'Contains a Fearow.',nm= 'Krabby'},
[102] ={ np = 'Contains a Fearow.',nm= 'Exeggcute'},
[103] ={ np = 'Contains a Fearow.',nm= 'Exeggcute'},
[104] ={ np = 'Contains a Fearow.',nm= 'Exeggcute'},
[105] ={ np = 'Contains a Vileplume.',nm= 'Exeggcute'},
[106] ={ np = 'Contains a Vileplume.',nm= 'Horsea'},
[107] ={ np = 'Contains a Vileplume.',nm= 'Horsea'},
[108] ={ np = 'Contains a Vileplume.',nm= 'Horsea'},
[109] ={ np = 'Contains a Vileplume.',nm= 'Horsea'},
[110] ={ np = 'Contains a Abra.',nm= 'Horsea'},
[111] ={ np = 'Contains a Abra.',nm= 'Horsea'},
[112] ={ np = 'Contains a Abra.',nm= 'Horsea'},
[113] ={ np = 'Contains a Abra.',nm= 'Horsea'},
[114] ={ np = 'Contains a Abra.',nm= 'Horsea'},
[115] ={ np = 'Contains a Abra.',nm= 'Goldeen'},
[116] ={ np = 'Contains a Abra.',nm= 'Goldeen'},
[117] ={ np = 'Contains a Ponyta.',nm= 'Goldeen'},
[118] ={ np = 'Contains a Ponyta.',nm= 'Goldeen'},
[119] ={ np = 'Contains a Ponyta.',nm= 'Goldeen'},
[120] ={ np = 'Contains a Ponyta.',nm= 'Magikarp'},
[121] ={ np = 'Contains a Ponyta.',nm= 'Magikarp'},
[122] ={ np = 'Contains a Psyduck.',nm= 'Magikarp'},
[123] ={ np = 'Contains a Golduck.',nm= 'Magikarp'},

}

local level = 15 -- level para usar
local e = box[math.random(1,123)]
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
doPlayerSendTextMessage(cid,22,"You Open a Poke Box 1,Good Luck You pokeball has been sent to your depot")
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
doPlayerSendTextMessage(cid,22,"You Open a Poke Box 1,You won a "..e.nm.."")


end
else
doPlayerSendCancel(cid, "You must be at least level "..level.." to use this box.")
end
return TRUE
end