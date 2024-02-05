function onUse(cid, item, frompos, item2, topos)

local box = {
[1] ={ np = "Contains a Shiny Treecko.",nm= "Shiny Treecko"},
[2] ={ np = "Contains a Shiny Grovyle.",nm= "Shiny Grovyle"},
[3] ={ np = "Contains a Shiny Sceptile.",nm= "Shiny Sceptile"},
[4] ={ np = "Contains a Shiny Torchic.",nm= "Shiny Torchic"},
[5] ={ np = "Contains a Shiny Combusken.",nm= "Shiny Combusken"},
[6] ={ np = "Contains a Shiny Blaziken.",nm= "Shiny Blaziken"},
[7] ={ np = 'Contains a Shiny Mudkip.',nm= 'Shiny Mudkip'},
[8] ={ np = 'Contains a Shiny Marshtomp.',nm= 'Shiny Marshtomp'},
[9] ={ np = 'Contains a Shiny Swampert.',nm= 'Shiny Swampert'},
[10] ={ np = 'Contains a Shiny Poochyena.',nm= 'Shiny xxxx'},
[11] ={ np = 'Contains a Shiny Mightyena.',nm= 'Shiny Mightyena'},
[12] ={ np = 'Contains a Shiny Zigzagoon.',nm= 'Shiny Zigzagoon'},
[13] ={ np = 'Contains a Shiny Linoone.',nm= 'Shiny Linoone'},
[14] ={ np = 'Contains a Shiny Wurmple.',nm= 'Shiny Wurmple'},
[15] ={ np = 'Contains a Shiny Silcoon.',nm= 'Shiny Silcoon'},
[16] ={ np = 'Contains a Shiny Beautifly.',nm= 'Shiny Beautifly'},
[17] ={ np = 'Contains a Shiny Cascoon.',nm= 'Shiny Cascoon'},
[18] ={ np = 'Contains a Shiny Dustox.',nm= 'Shiny Dustox'},
[19] ={ np = 'Contains a Shiny Lotad.',nm= 'Shiny Lotad'},
[20] ={ np = 'Contains a Shiny Lombre.',nm= 'Shiny Lombre'},
[21] ={ np = 'Contains a Shiny Ludicolo.',nm= 'Shiny Ludicolo'},
[22] ={ np = 'Contains a Shiny Seedot.',nm= 'Shiny Seedot'},
[23] ={ np = 'Contains a Shiny Nuzleaf.',nm= 'Shiny Nuzleaf'},
[24] ={ np = 'Contains a Shiny Shiftry.',nm= 'Shiny Shiftry'},
[25] ={ np = 'Contains a Shiny Taillow.',nm= 'Shiny Taillow'},
[26] ={ np = 'Contains a Shiny Swellow.',nm= 'Shiny Swellow'},
[27] ={ np = 'Contains a Shiny Wingull.',nm= 'Shiny Wingull'},
[28] ={ np = 'Contains a Shiny Pelipper.',nm= 'Shiny Pelipper'},
[29] ={ np = 'Contains a Shiny Ralts.',nm= 'Shiny Ralts'},
[30] ={ np = 'Contains a Shiny Gardevoir.',nm= 'Shiny Gardevoir'},
[31] ={ np = 'Contains a Shiny Surskit.',nm= 'Shiny Surskit'},
[32] ={ np = 'Contains a Shiny Masquerain.',nm= 'Shiny Masquerain'},
[33] ={ np = 'Contains a Shiny Shroomish.',nm= 'Shiny Shroomish'},
[34] ={ np = 'Contains a Shiny Breloom.',nm= 'Shiny Breloom'},
[35] ={ np = 'Contains a Shiny Slakoth.',nm= 'Shiny Slakoth'},
[36] ={ np = 'Contains a Shiny Vigoroth.',nm= 'Shiny Vigoroth'},
[37] ={ np = 'Contains a Shiny Slaking.',nm= 'Shiny Slaking'},
[38] ={ np = 'Contains a Shiny Nincada.',nm= 'Shiny Nincada'},
[39] ={ np = 'Contains a Shiny Ninjask.',nm= 'Shiny Ninjask'},
[40] ={ np = 'Contains a Shiny Shedinja.',nm= 'Shiny Shedinja'},
[41] ={ np = 'Contains a Shiny Whismur.',nm= 'Shiny Whismur'},
[42] ={ np = 'Contains a Shiny Loudred.',nm= 'Shiny Loudred'},
[43] ={ np = 'Contains a Shiny Exploud.',nm= 'Shiny Exploud'},
[44] ={ np = 'Contains a Shiny Makuhita.',nm= 'Shiny Makuhita'},
[45] ={ np = 'Contains a Shiny Hariyama.',nm= 'Shiny Hariyama'},
[46] ={ np = 'Contains a Shiny Nosepass.',nm= 'Shiny Nosepass'},
[47] ={ np = 'Contains a Shiny Skitty.',nm= 'Shiny Skitty'},
[48] ={ np = 'Contains a Shiny Delcatty.',nm= 'Shiny Delcatty'},
[49] ={ np = 'Contains a Shiny Sableye.',nm= 'Shiny Sableye'},
[50] ={ np = 'Contains a Shiny Mawile.',nm= 'Shiny Mawile'},
[51] ={ np = 'Contains a Shiny Aron.',nm= 'Shiny Aron'},
[52] ={ np = 'Contains a Shiny Lairon.',nm= 'Shiny Lairon'},
[53] ={ np = 'Contains a Shiny Aggron.',nm= 'Shiny Aggron'},
[54] ={ np = 'Contains a Shiny Meditite.',nm= 'Shiny Meditite'},
[55] ={ np = 'Contains a Shiny Medicham.',nm= 'Shiny Medicham'},
[56] ={ np = 'Contains a Shiny Electrike.',nm= 'Shiny Electrike'},
[57] ={ np = 'Contains a Shiny Manectric.',nm= 'Shiny Manectric'},
[58] ={ np = 'Contains a Shiny Plusle.',nm= 'Shiny Plusle'},
[59] ={ np = 'Contains a Shiny Minun.',nm= 'Shiny Minun'},
[60] ={ np = 'Contains a Shiny Volbeat.',nm= 'Shiny Volbeat'},
[61] ={ np = 'Contains a Shiny Illumise.',nm= 'Shiny Illumise'},
[62] ={ np = 'Contains a Shiny Roselia.',nm= 'Shiny Roselia'},
[63] ={ np = 'Contains a Shiny Gulpin.',nm= 'Shiny Gulpin'},
[64] ={ np = 'Contains a Shiny Swalot.',nm= 'Shiny Swalot'},
[65] ={ np = 'Contains a Shiny Carvanha.',nm= 'Shiny Carvanha'},
[66] ={ np = 'Contains a Shiny Sharpedo.',nm= 'Shiny Sharpedo'},
[67] ={ np = 'Contains a Shiny Wailmer.',nm= 'Shiny Wailmer'},
[68] ={ np = 'Contains a Shiny Wailord.',nm= 'Shiny Wailord'},
[69] ={ np = 'Contains a Shiny Numel.',nm= 'Shiny Numel'},
[70] ={ np = 'Contains a Shiny Camerupt.',nm= 'Shiny Camerupt'},
[71] ={ np = 'Contains a Shiny Torkoal.',nm= 'Shiny Torkoal'},
[72] ={ np = 'Contains a Shiny Spoink.',nm= 'Shiny Spoink'},
[73] ={ np = 'Contains a Shiny Grumpig.',nm= 'Shiny Grumpig'},
[74] ={ np = 'Contains a Shiny Spinda.',nm= 'Shiny Spinda'},
[75] ={ np = 'Contains a Shiny Trapinch.',nm= 'Shiny Trapinch'},
[76] ={ np = 'Contains a Shiny Vibrava.',nm= 'Shiny Vibrava'},
[77] ={ np = 'Contains a Shiny Flygon.',nm= 'Shiny Flygon'},
[78] ={ np = 'Contains a Shiny Cacnea.',nm= 'Shiny Cacnea'},
[79] ={ np = 'Contains a Shiny Cacturne.',nm= 'Shiny Cacturne'},
[80] ={ np = 'Contains a Shiny Swablu.',nm= 'Shiny Swablu'},
[81] ={ np = 'Contains a Shiny Altaria.',nm= 'Shiny Altaria'},
[82] ={ np = 'Contains a Shiny Zangoose.',nm= 'Shiny Zangoose'},
[83] ={ np = 'Contains a Shiny Seviper.',nm= 'Shiny Seviper'},
[84] ={ np = 'Contains a Shiny Lunatone.',nm= 'Shiny Lunatone'},
[85] ={ np = 'Contains a Shiny Solrock.',nm= 'Shiny Solrock'},
[86] ={ np = "Contains a Shiny Whiscash.",nm= "Shiny Whiscash"},
[87] ={ np = "Contains a Shiny Corphish.",nm= "Shiny Corphish"},
[88] ={ np = "Contains a Shiny Crawdaunt.",nm= "Shiny Crawdaunt"},
[89] ={ np = "Contains a Shiny Baltoy.",nm= "Shiny Baltoy"},
[90] ={ np = "Contains a Shiny Claydol.",nm= "Shiny Claydol"},
[91] ={ np = "Contains a Shiny Lileep.",nm= "Shiny Lileep"},
[92] ={ np = 'Contains a Shiny Cradily.',nm= 'Shiny Cradily'},
[93] ={ np = 'Contains a Shiny Anorith.',nm= 'Shiny Anorith'},
[94] ={ np = 'Contains a Shiny Armaldo.',nm= 'Shiny Armaldo'},
[95] ={ np = 'Contains a Shiny Feebas.',nm= 'Shiny Feebas'},
[96] ={ np = 'Contains a Shiny Milotic.',nm= 'Shiny Milotic'},
[97] ={ np = 'Contains a Shiny Kecleon.',nm= 'Shiny Kecleon'},
[98] ={ np = 'Contains a Shiny Shuppet.',nm= 'Shiny Shuppet'},
[99] ={ np = 'Contains a Shiny Banette.',nm= 'Shiny Banette'},
[100] ={ np = 'Contains a Shiny Duskull.',nm= 'Shiny Duskull'},
[101] ={ np = 'Contains a Shiny Dusclops.',nm= 'Shiny Dusclops'},
[102] ={ np = 'Contains a Shiny Tropius.',nm= 'Shiny Tropius'},
[103] ={ np = 'Contains a Shiny Chimecho.',nm= 'Shiny Chimecho'},
[104] ={ np = 'Contains a Shiny Absol.',nm= 'Shiny Absol'},
[105] ={ np = 'Contains a Shiny Snorunt.',nm= 'Shiny Snorunt'},
[106] ={ np = 'Contains a Shiny Glalie.',nm= 'Shiny Glalie'},
[107] ={ np = 'Contains a Shiny Spheal.',nm= 'Shiny Spheal'},
[108] ={ np = 'Contains a Shiny Sealeo.',nm= 'Shiny Sealeo'},
[109] ={ np = 'Contains a Shiny Walrein.',nm= 'Shiny Walrein'},
[110] ={ np = 'Contains a Shiny Clamperl.',nm= 'Shiny Clamperl'},
[111] ={ np = 'Contains a Shiny Huntail.',nm= 'Shiny Huntail'},
[112] ={ np = 'Contains a Shiny Gorebyss.',nm= 'Shiny Gorebyss'},
[113] ={ np = 'Contains a Shiny Relicanth.',nm= 'Shiny Relicanth'},
[114] ={ np = 'Contains a Shiny Luvdisc.',nm= 'Shiny Luvdisc'},
[115] ={ np = 'Contains a Shiny Bagon.',nm= 'Shiny Bagon'},
[116] ={ np = 'Contains a Shiny Shelgon.',nm= 'Shiny Shelgon'},
[117] ={ np = 'Contains a Shiny Salamence.',nm= 'Shiny Salamence'},
[118] ={ np = 'Contains a Shiny Beldum.',nm= 'Shiny Beldum'},
[119] ={ np = 'Contains a Shiny Metang.',nm= 'Shiny Metang'},
[120] ={ np = 'Contains a Shiny Metagross.',nm= 'Shiny Metagross'},

}

local level = 100 -- level para usar
local e = box[math.random(1,120)]
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
doPlayerSendTextMessage(cid,22,"You Open a Shiny PokeBox 3,Good Luck You pokeball has been sent to your depot")
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
doPlayerSendTextMessage(cid,22,"You Open a Shiny PokeBox 3,You won a "..e.nm.."")


end
else
doPlayerSendCancel(cid, "You must be at least level "..level.." to use this box.")
end
return TRUE
end