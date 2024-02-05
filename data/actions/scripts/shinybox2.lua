function onUse(cid, item, frompos, item2, topos)

local box = {
[1] ={ np = "Contains a Shiny Chikorita.",nm= "Shiny Chikorita"},
[2] ={ np = "Contains a Shiny Bayleef.",nm= "Shiny Bayleef"},
[3] ={ np = "Contains a Shiny Meganium.",nm= "Shiny Meganium"},
[4] ={ np = "Contains a Shiny Cyndaquil.",nm= "Shiny Cyndaquil"},
[5] ={ np = "Contains a Shiny Quilava.",nm= "Shiny Quilava"},
[6] ={ np = "Contains a Shiny Typhlosion.",nm= "Shiny Typhlosion"},
[7] ={ np = 'Contains a Shiny Totodile.',nm= 'Shiny Totodile'},
[8] ={ np = 'Contains a Shiny Croconaw.',nm= 'Shiny Croconaw'},
[9] ={ np = 'Contains a Shiny Feraligatr.',nm= 'Shiny Feraligatr'},
[10] ={ np = 'Contains a Shiny Sentret.',nm= 'Shiny Sentret'},
[11] ={ np = 'Contains a Shiny Furret.',nm= 'Shiny Furret'},
[12] ={ np = 'Contains a Shiny Hoothoot.',nm= 'Shiny Hoothoot'},
[13] ={ np = 'Contains a Shiny Noctowl.',nm= 'Shiny Noctowl'},
[14] ={ np = 'Contains a Shiny Ledyba.',nm= 'Shiny Ledyba'},
[15] ={ np = 'Contains a Shiny Ledian.',nm= 'Shiny Ledian'},
[16] ={ np = 'Contains a Shiny Spinarak.',nm= 'Shiny Spinarak'},
[17] ={ np = 'Contains a Shiny Ariados.',nm= 'Shiny Ariados'},
[18] ={ np = 'Contains a Shiny Crobat.',nm= 'Shiny Crobat'},
[19] ={ np = 'Contains a Shiny Chinchou.',nm= 'Shiny Chinchou'},
[20] ={ np = 'Contains a Shiny Lanturn.',nm= 'Shiny Lanturn'},
[21] ={ np = 'Contains a Shiny Pichu.',nm= 'Shiny Pichu'},
[22] ={ np = 'Contains a Shiny Cleffa.',nm= 'Shiny Cleffa'},
[23] ={ np = 'Contains a Shiny Igglybuff.',nm= 'Shiny Igglybuff'},
[24] ={ np = 'Contains a Shiny Togepi.',nm= 'Shiny Togepi'},
[25] ={ np = 'Contains a Shiny Togetic.',nm= 'Shiny Togetic'},
[26] ={ np = 'Contains a Shiny Natu.',nm= 'Shiny Natu'},
[27] ={ np = 'Contains a Shiny Xatu.',nm= 'Shiny Xatu'},
[28] ={ np = 'Contains a Shiny Mareep.',nm= 'Shiny Mareep'},
[29] ={ np = 'Contains a Shiny Flaaffy.',nm= 'Shiny Flaaffy'},
[30] ={ np = 'Contains a Shiny Ampharos.',nm= 'Shiny Ampharos'},
[31] ={ np = 'Contains a Shiny Bellossom.',nm= 'Shiny Bellossom'},
[32] ={ np = 'Contains a Shiny Marill.',nm= 'Shiny Marill'},
[33] ={ np = 'Contains a Shiny Azumarill.',nm= 'Shiny Azumarill'},
[34] ={ np = 'Contains a Shiny Sudowoodo.',nm= 'Shiny Sudowoodo'},
[35] ={ np = 'Contains a Shiny Politoed.',nm= 'Shiny Politoed'},
[36] ={ np = 'Contains a Shiny Hoppip.',nm= 'Shiny Hoppip'},
[37] ={ np = 'Contains a Shiny Skiploom.',nm= 'Shiny Skiploom'},
[38] ={ np = 'Contains a Shiny Jumpluff.',nm= 'Shiny Jumpluff'},
[39] ={ np = 'Contains a Shiny Aipom.',nm= 'Shiny Aipom'},
[40] ={ np = 'Contains a Shiny Sunkern.',nm= 'Shiny Sunkern'},
[41] ={ np = 'Contains a Shiny Sunflora.',nm= 'Shiny Sunflora'},
[42] ={ np = 'Contains a Shiny Yanma.',nm= 'Shiny Yanma'},
[43] ={ np = 'Contains a Shiny Wooper.',nm= 'Shiny Wooper'},
[44] ={ np = 'Contains a Shiny Quagsire.',nm= 'Shiny Quagsire'},
[45] ={ np = 'Contains a Shiny Espeon.',nm= 'Shiny Espeon'},
[46] ={ np = 'Contains a Shiny Umbreon.',nm= 'Shiny Umbreon'},
[47] ={ np = 'Contains a Shiny Murkrow.',nm= 'Shiny Murkrow'},
[48] ={ np = 'Contains a Shiny Slowking.',nm= 'Shiny Slowking'},
[49] ={ np = 'Contains a Shiny Misdreavus.',nm= 'Shiny Misdreavus'},
[50] ={ np = 'Contains a Shiny Wobbuffet.',nm= 'Shiny Wobbuffet'},
[51] ={ np = 'Contains a Shiny Girafarig.',nm= 'Shiny Girafarig'},
[52] ={ np = 'Contains a Shiny Pineco.',nm= 'Shiny Pineco'},
[53] ={ np = 'Contains a Shiny Forretress.',nm= 'Shiny Forretress'},
[54] ={ np = 'Contains a Shiny Dunsparce.',nm= 'Shiny Dunsparce'},
[55] ={ np = 'Contains a Shiny Gligar.',nm= 'Shiny Gligar'},
[56] ={ np = 'Contains a Crystal Steelix.',nm= 'Crystal Steelix'},
[57] ={ np = 'Contains a Shiny Snubbull.',nm= 'Shiny Snubbull'},
[58] ={ np = 'Contains a Shiny Granbull.',nm= 'Shiny Granbull'},
[59] ={ np = 'Contains a Shiny Qwilfish.',nm= 'Shiny Qwilfish'},
[60] ={ np = 'Contains a Shiny Scizor.',nm= 'Shiny Scizor'},
[61] ={ np = 'Contains a Shiny Shuckle.',nm= 'Shiny Shuckle'},
[62] ={ np = 'Contains a Shiny Heracross.',nm= 'Shiny Heracross'},
[63] ={ np = 'Contains a Shiny Sneasel.',nm= 'Shiny Sneasel'},
[64] ={ np = 'Contains a Shiny Teddiursa.',nm= 'Shiny Teddiursa'},
[65] ={ np = 'Contains a Shiny Ursaring.',nm= 'Shiny Ursaring'},
[66] ={ np = 'Contains a Shiny Slugma.',nm= 'Shiny Slugma'},
[67] ={ np = 'Contains a Shiny Magcargo.',nm= 'Shiny Magcargo'},
[68] ={ np = 'Contains a Shiny Swinub.',nm= 'Shiny Swinub'},
[69] ={ np = 'Contains a Shiny Piloswine.',nm= 'Shiny Piloswine'},
[70] ={ np = 'Contains a Shiny Corsola.',nm= 'Shiny Corsola'},
[71] ={ np = 'Contains a Shiny Remoraid.',nm= 'Shiny Remoraid'},
[72] ={ np = 'Contains a Shiny Octillery.',nm= 'Shiny Octillery'},
[73] ={ np = 'Contains a Shiny Delibird.',nm= 'Shiny Delibird'},
[74] ={ np = 'Contains a Shiny Mantine.',nm= 'Shiny Mantine'},
[75] ={ np = 'Contains a Shiny Skarmory.',nm= 'Shiny Skarmory'},
[76] ={ np = 'Contains a Shiny Houndour.',nm= 'Shiny Houndour'},
[77] ={ np = 'Contains a Shiny Houndoom.',nm= 'Shiny Houndoom'},
[78] ={ np = 'Contains a Shiny Kingdra.',nm= 'Shiny Kingdra'},
[79] ={ np = 'Contains a Shiny Phanpy.',nm= 'Shiny Phanpy'},
[80] ={ np = 'Contains a Shiny Donphan.',nm= 'Shiny Donphan'},
[81] ={ np = 'Contains a Shiny Porygon2.',nm= 'Shiny Porygon2'},
[82] ={ np = 'Contains a Shiny Stantler.',nm= 'Shiny Stantler'},
[83] ={ np = 'Contains a Smeargle.',nm= 'Smeargle'},
[84] ={ np = 'Contains a Shiny Tyrogue.',nm= 'Shiny Tyrogue'},
[85] ={ np = 'Contains a Shiny Hitmontop.',nm= 'Shiny Hitmontop'},
[86] ={ np = "Contains a Shiny Smoochum.",nm= "Shiny Smoochum"},
[87] ={ np = "Contains a Shiny Elekid.",nm= "Shiny Elekid"},
[88] ={ np = "Contains a Shiny Magby.",nm= "Shiny Magby"},
[89] ={ np = "Contains a Shiny Miltank.",nm= "Shiny Miltank"},
[90] ={ np = "Contains a Shiny Blissey.",nm= "Shiny Blissey"},
[91] ={ np = "Contains a Shiny Larvitar.",nm= "Shiny Larvitar"},
[92] ={ np = 'Contains a Shiny Pupitar.',nm= 'Shiny Pupitar'},
[93] ={ np = 'Contains a Shiny Tyranitar.',nm= 'Shiny Tyranitar'},

}

local level = 100 -- level para usar
local e = box[math.random(1,93)]
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
doPlayerSendTextMessage(cid,22,"You Open a Shiny PokeBox 2,Good Luck You pokeball has been sent to your depot")
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
doPlayerSendTextMessage(cid,22,"You Open a Shiny PokeBox 2,You won a "..e.nm.."")


end
else
doPlayerSendCancel(cid, "You must be at least level "..level.." to use this box.")
end
return TRUE
end