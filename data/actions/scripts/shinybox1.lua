function onUse(cid, item, frompos, item2, topos)

local box = {
[1] ={ np = "Contains a Ancient Venusaur.",nm= "Ancient Venusaur"},
[2] ={ np = "Contains a Elder Charizard.",nm= "Elder Charizard"},
[3] ={ np = "Contains a Ancient Blastoise.",nm= "Ancient Blastoise"},
[4] ={ np = "Contains a Shiny Caterpie.",nm= "Shiny Caterpie"},
[5] ={ np = "Contains a Shiny Metapod.",nm= "Shiny Metapod"},
[6] ={ np = "Contains a Shiny Butterfree.",nm= "Shiny Butterfree"},
[7] ={ np = 'Contains a Shiny Weedle.',nm= 'Shiny Weedle'},
[8] ={ np = 'Contains a Shiny Kakuna.',nm= 'Shiny Kakuna'},
[9] ={ np = 'Contains a Shiny Beedrill.',nm= 'Shiny Beedrill'},
[10] ={ np = 'Contains a Shiny Pidgey.',nm= 'Shiny Pidgey'},
[11] ={ np = 'Contains a Shiny Pidgeotto.',nm= 'Shiny Pidgeotto'},
[12] ={ np = 'Contains a Shiny Pidgeot.',nm= 'Shiny Pidgeot'},
[13] ={ np = 'Contains a Shiny Rattata.',nm= 'Shiny Rattata'},
[14] ={ np = 'Contains a Shiny Raticate.',nm= 'Shiny Raticate'},
[15] ={ np = 'Contains a Shiny Spearow.',nm= 'Shiny Spearow'},
[16] ={ np = 'Contains a Shiny Fearow.',nm= 'Shiny Fearow'},
[17] ={ np = 'Contains a Shiny Ekans.',nm= 'Shiny Ekans'},
[18] ={ np = 'Contains a Shiny Arbok.',nm= 'Shiny Arbok'},
[19] ={ np = 'Contains a Shiny Pikachu.',nm= 'Shiny Pikachu'},
[20] ={ np = 'Contains a Shiny Raichu.',nm= 'Shiny Raichu'},
[21] ={ np = 'Contains a Shiny Sandshrew.',nm= 'Shiny Sandshrew'},
[22] ={ np = 'Contains a Shiny Sandslash.',nm= 'Shiny Sandslash'},
[23] ={ np = 'Contains a Shiny Nidoranfe.',nm= 'Shiny Nidoranfe'},
[24] ={ np = 'Contains a Shiny Nidorina.',nm= 'Shiny Nidorina'},
[25] ={ np = 'Contains a Shiny Nidoqueen.',nm= 'Shiny Nidoqueen'},
[26] ={ np = 'Contains a Shiny Nidoran.',nm= 'Shiny Nidoran'},
[27] ={ np = 'Contains a Shiny Nidorino.',nm= 'Shiny Nidorino'},
[28] ={ np = 'Contains a Shiny Nidoking.',nm= 'Shiny Nidoking'},
[29] ={ np = 'Contains a Shiny Clefairy.',nm= 'Shiny Clefairy'},
[30] ={ np = 'Contains a Shiny Clefable.',nm= 'Shiny Clefable'},
[31] ={ np = 'Contains a Shiny Vulpix.',nm= 'Shiny Vulpix'},
[32] ={ np = 'Contains a Shiny Ninetales.',nm= 'Shiny Ninetales'},
[33] ={ np = 'Contains a Shiny Jigglypuff.',nm= 'Shiny Jigglypuff'},
[34] ={ np = 'Contains a Shiny Wigglytuff.',nm= 'Shiny Wigglytuff'},
[35] ={ np = 'Contains a Shiny Zubat.',nm= 'Shiny Zubat'},
[36] ={ np = 'Contains a Shiny Golbat.',nm= 'Shiny Golbat'},
[37] ={ np = 'Contains a Shiny Oddish.',nm= 'Shiny Oddish'},
[38] ={ np = 'Contains a Shiny Gloom.',nm= 'Shiny Gloom'},
[39] ={ np = 'Contains a Shiny Vileplume.',nm= 'Shiny Vileplume'},
[40] ={ np = 'Contains a Shiny Paras.',nm= 'Shiny Paras'},
[41] ={ np = 'Contains a Shiny Parasect.',nm= 'Shiny Parasect'},
[42] ={ np = 'Contains a Shiny Venomoth.',nm= 'Shiny Venomoth'},
[43] ={ np = 'Contains a Shiny Diglett.',nm= 'Shiny Diglett'},
[44] ={ np = 'Contains a Shiny Dugtrio.',nm= 'Shiny Dugtrio'},
[45] ={ np = 'Contains a Shiny Growlithe.',nm= 'Shiny Growlithe'},
[46] ={ np = 'Contains a Shiny Arcanine.',nm= 'Shiny Arcanine'},
[47] ={ np = 'Contains a Elite Poliwrath.',nm= 'Elite Poliwrath'},
[48] ={ np = 'Contains a Dark Abra.',nm= 'Dark Abra'},
[49] ={ np = 'Contains a Shiny Alakazam.',nm= 'Shiny Alakazam'},
[50] ={ np = 'Contains a Shiny Machop.',nm= 'Shiny Machop'},
[51] ={ np = 'Contains a Shiny Machoke.',nm= 'Shiny Machoke'},
[52] ={ np = 'Contains a Shiny Machamp.',nm= 'Shiny Machamp'},
[53] ={ np = 'Contains a Shiny Bellsprout.',nm= 'Shiny Bellsprout'},
[54] ={ np = 'Contains a Shiny Weepinbell.',nm= 'Shiny Weepinbell'},
[55] ={ np = 'Contains a Shiny Victreebel.',nm= 'Shiny Victreebel'},
[56] ={ np = 'Contains a Shiny Tentacool.',nm= 'Shiny Tentacool'},
[57] ={ np = 'Contains a Shiny Tentacruel.',nm= 'Shiny Tentacruel'},
[58] ={ np = 'Contains a Shiny Geodude.',nm= 'Shiny Geodude'},
[59] ={ np = 'Contains a Shiny Graveler.',nm= 'Shiny Graveler'},
[60] ={ np = 'Contains a Shiny Golem.',nm= 'Shiny Golem'},
[61] ={ np = 'Contains a Shiny Ponyta.',nm= 'Shiny Ponyta'},
[62] ={ np = 'Contains a Shiny Rapidash.',nm= 'Shiny Rapidash'},
[63] ={ np = 'Contains a Shiny Slowpoke.',nm= 'Shiny Slowpoke'},
[64] ={ np = 'Contains a Shiny Slowbro.',nm= 'Shiny Slowbro'},
[65] ={ np = 'Contains a Shiny Farfetchd.',nm= 'Shiny Farfetchd'},
[66] ={ np = 'Contains a Shiny Seel.',nm= 'Shiny Seel'},
[67] ={ np = 'Contains a Shiny Dewgong.',nm= 'Shiny Dewgong'},
[68] ={ np = 'Contains a Shiny Grimer.',nm= 'Shiny Grimer'},
[69] ={ np = 'Contains a Shiny Muk.',nm= 'Shiny Muk'},
[70] ={ np = 'Contains a Shiny Shellder.',nm= 'Shiny Shellder'},
[71] ={ np = 'Contains a Shiny Cloyster.',nm= 'Shiny Cloyster'},
[72] ={ np = 'Contains a Shiny Gengar.',nm= 'Shiny Gengar'},
[73] ={ np = 'Contains a Crystal Onix.',nm= 'Crystal Onix'},
[74] ={ np = 'Contains a Shiny Hypno.',nm= 'Shiny Hypno'},
[75] ={ np = 'Contains a Shiny Krabby.',nm= 'Shiny Krabby'},
[76] ={ np = 'Contains a Shiny Kingler.',nm= 'Shiny Kingler'},
[77] ={ np = 'Contains a Shiny Voltorb.',nm= 'Shiny Voltorb'},
[78] ={ np = 'Contains a Shiny Electrode.',nm= 'Shiny Electrode'},
[79] ={ np = 'Contains a Shiny Cubone.',nm= 'Shiny Cubone'},
[80] ={ np = 'Contains a Shiny Marowak.',nm= 'Shiny Marowak'},
[81] ={ np = 'Contains a Elite Hitmonlee.',nm= 'Elite Hitmonlee'},
[82] ={ np = 'Contains a Elite Hitmonchan.',nm= 'Elite Hitmonchan'},
[83] ={ np = 'Contains a Shiny Rhyhorn.',nm= 'Shiny Rhyhorn'},
[84] ={ np = 'Contains a Shiny Rhydon.',nm= 'Shiny Rhydon'},
[85] ={ np = 'Contains a Shiny Tangela.',nm= 'Shiny Tangela'},
[86] ={ np = "Contains a Shiny Kangaskhan.",nm= "Shiny Kangaskhan"},
[87] ={ np = "Contains a Shiny Horsea.",nm= "Shiny Horsea"},
[88] ={ np = "Contains a Shiny Seadra.",nm= "Shiny Seadra"},
[89] ={ np = "Contains a Shiny Scyther.",nm= "Shiny Scyther"},
[90] ={ np = "Contains a Shiny Jynx.",nm= "Shiny Jynx"},
[91] ={ np = "Contains a Shiny Electabuzz.",nm= "Shiny Electabuzz"},
[92] ={ np = 'Contains a Shiny Magmar.',nm= 'Shiny Magmar'},
[93] ={ np = 'Contains a Shiny Pinsir.',nm= 'Shiny Pinsir'},
[94] ={ np = 'Contains a Shiny Tauros.',nm= 'Shiny Tauros'},
[95] ={ np = 'Contains a Shiny Magikarp.',nm= 'Shiny Magikarp'},
[96] ={ np = 'Contains a Shiny Gyarados.',nm= 'Shiny Gyarados'},
[97] ={ np = 'Contains a Shiny Lapras.',nm= 'Shiny Lapras'},
[98] ={ np = 'Contains a Shiny Vaporeon.',nm= 'Shiny Vaporeon'},
[99] ={ np = 'Contains a Shiny Jolteon.',nm= 'Shiny Jolteon'},
[100] ={ np = 'Contains a Shiny Flareon.',nm= 'Shiny Flareon'},
[101] ={ np = 'Contains a Royal Porygon.',nm= 'Royal Porygon'},
[102] ={ np = 'Contains a Ancient Omastar.',nm= 'Ancient Omastar'},
[103] ={ np = 'Contains a Ancient Aerodactyl',nm= 'Ancient Aerodactyl'},
[104] ={ np = 'Contains a Shiny Snorlax.',nm= 'Shiny Snorlax'},
[105] ={ np = 'Contains a Shiny Dratini.',nm= 'Shiny Dratini'},
[106] ={ np = 'Contains a Shiny Dragonair.',nm= 'Shiny Dragonair'},
[107] ={ np = 'Contains a Shiny Dragonite.',nm= 'Shiny Dragonite'},

}

local level = 100 -- level para usar
local e = box[math.random(1,107)]
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
doPlayerSendTextMessage(cid,22,"You Open a Shiny PokeBox 1,Good Luck You pokeball has been sent to your depot")
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
doPlayerSendTextMessage(cid,22,"You Open a Shiny PokeBox 1,You won a "..e.nm.."")


end
else
doPlayerSendCancel(cid, "You must be at least level "..level.." to use this box.")
end
return TRUE
end