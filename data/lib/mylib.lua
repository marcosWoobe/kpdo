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
function doCreateTile(cid, tileid, pos)
        doCombatAreaHealth(cid, 0, pos, 0, 0, 0, CONST_ME_NONE)
        doCreateItem(tileid, 1, pos)
end

grass3 = {
"Bulbasaur",
"Ivysaur",
"Venusaur",
"Oddish",
"Gloom",
"Vileplume",
"Bellsprout",
"Weepinbell",
"Victreebel",
"Exeggcute",
"Exeggutor",
"Tangela"
}

fire3 = {
"Charmander",
"Charmeleon",
"Charizard",
"Vulpix",
"Ninetales",
"Growlithe",
"Arcanine",
"Ponyta",
"Rapidash",
"Magmar",
"Flareon",
"Moltres"
}

water3 = {
"Squirtle",
"Wartortle",
"Blastoise",
"Psyduck",
"Golduck",
"Poliwag",
"Poliwhirl",
"Poliwrath",
"Tentacool",
"Tentacruel",
"Slowpoke",
"Slowbro",
"Seel",
"Dewgong",
"Cloyster",
"Krabby",
"Kingler",
"Horsea",
"Seadra",
"Goldeen",
"Seaking",
"Staryu",
"Starmie",
"Magikarp",
"Gyarados",
"Lapras",
"Vaporeon"
}

bug3 = {
"Caterpie",
"Metapod",
"Butterfree",
"Weedle",
"Kakuna",
"Beedrill",
"Paras",
"Parasect",
"Venonat",
"Venomoth",
"Scyther",
"Pinsir"
}

electric3 = {
"Pikachu",
"Raichu",
"Magnemite",
"Magneton",
"Voltorb",
"Electrode",
"Electabuzz",
"Jolteon",
"Zapdos"
}


normal3 = {
"Rattata",
"Raticate",
"Clefairy",
"Clefable",
"Meowth",
"Persian",
"Doduo",
"Dodrio",
"Lickitung",
"Chansey",
"Kangaskhan",
"Tauros",
"Ditto",
"Eevee",
"Snorlax"
}

flying3 = {
"Pidgey",
"Pidgeotto",
"Pidgeot",
"Spearow",
"Fearow",
"Farfetchd"
}

poison3 = {
"Ekans",
"Arbok",
"Nidoran Female",
"Nidorina",
"Nidoqueen",
"Nidoran Male",
"Nidorino",
"Nidoking",
"Zubat",
"Golbat",
"Grimer",
"Muk",
"Koffing",
"Weezing"
}

psychic3 = {
"Abra",
"Kadabra",
"Alakazam",
"Drowzee",
"Hypno",
"Mr. Mime",
"Mewtwo",
"Mew"
}

dragon3 = {
"Dratini",
"Dragonair",
"Dragonite"
}

rock3 = {
"Geodude",
"Graveler",
"Golem",
"Onix",
"Omanyte",
"Omastar",
"Kabuto",
"Kabutops",
"Aerodactyl"
}

ground3 = {
"Sandshrew",
"Sandslash",
"Diglett",
"Dugtrio",
"Geodude",
"Graveler",
"Golem",
"Onix",
"Cubone",
"Marowak",
"Rhyhorn",
"Rhydon"
}

ice3 = {
"Jynx",
"Articuno"
}

ghost3 = {
"Gastly",
"Haunter",
"Gengar"
}

fighting3 = {
"Machop",
"Machoke",
"Machamp",
"Mankey",
"Primeape",
"Hitmonlee",
"Hitmonchan"
}

