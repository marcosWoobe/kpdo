local pokeis = {'Bulbasaur','Ivysaur','Venusaur','Charmander','Charmeleon','Charizard','Squirtle','Wartortle','Blastoise','Caterpie',
'Metapod','Butterfree','Weedle','Kakuna','Beedrill','Pidgey','Pidgeotto','Pidgeot','Rattata','Raticate','Spearow','Fearow','Ekans','Arbok',
'Pikachu','Raichu','Sandshrew','Sandslash','Nidoran Female','Nidorina','Nidoqueen','Nidoran Male','Nidorino','Nidoking','Clefairy',
'Clefable','Vulpix','Ninetales','Jigglypuff','Wigglytuff','Zubat','Golbat','Oddish','Gloom','Vileplume','Paras','Parasect','Venonat',
'Venomoth','Diglett','Dugtrio','Meowth','Persian','Psyduck','Golduck','Mankey','Primeape','Growlithe','Arcanine','Poliwag','Poliwhirl',
'Poliwrath','Abra','Kadabra','Alakazam','Machop','Machoke','Machamp','Bellsprout','Weepinbell','Victreebel','Tentacool','Tentacruel',
'Geodude','Graveler','Golem','Ponyta','Rapidash','Slowpoke','Slowbro','Magnemite','Magneton','Farfetchd','Doduo','Dodrio','Seel',
'Dewgong','Grimer','Muk','Shellder','Cloyster','Gastly','Haunter','Gengar','Onix','Drowzee','Hypno','Krabby','Kingler','Voltorb',
'Electrode','Exeggcute','Exeggutor','Cubone','Marowak','Hitmonlee','Hitmonchan','Lickitung','Koffing','Weezing','Rhyhorn','Rhydon',
'Chansey','Tangela','Kangaskhan','Horsea','Seadra','Goldeen','Seaking','Staryu','Starmie','Mr. Mime','Scyther','Jynx','Electabuzz',
'Magmar','Pinsir','Tauros','Magikarp','Gyarados','Lapras','Ditto','Eevee','Vaporeon','Jolteon','Flareon','Porygon','Omanyte','Omastar',
'Kabuto','Kabutops','Aerodactyl','Snorlax','Articuno','Zapdos','Moltres','Dratini','Dragonair','Dragonite','Mewtwo','Mew'}




function onSay(cid)
	
	if #getCreatureSummons(cid) == 0 then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need a pokemon to  Check cds.")
	return 0
	end
local m1
local m2
if  isInArray('Dragonite', getCreatureName(getCreatureSummons(cid)[1])) then

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Pokemon: Dragonite.")
if exhaustion.get(cid, 1450003) then

		seconds1 = math.floor(((exhaustion.get(cid, 1450003)) + 1))
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Pokemon: Dragonite.You have to wait "..seconds1.." seconds to HeadButt")
		else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Move HeadButt - Ready - m1") 
		end
if exhaustion.get(cid, 8240002) then
		seconds2 = math.floor(((exhaustion.get(cid, 8240002)) + 1))              
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait "..seconds2.." seconds to Thundershock")
		else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Move Thundershock - Ready - m2") 
end
if exhaustion.get(cid, 6700003) then
		seconds3 = math.floor(((exhaustion.get(cid, 6700003)) + 1))              
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait "..seconds3.." seconds to Dragon Pulse")
		else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Move Dragon Pulse - Ready - m3") 
end
if exhaustion.get(cid, 6251005) then
		seconds4 = math.floor(((exhaustion.get(cid, 6251005)) + 1))              
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait "..seconds4.." seconds to Hyper Beam")
		else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Move Hyper Beam - Ready - m4") 
end
if exhaustion.get(cid, 6810005) then
		seconds5 = math.floor(((exhaustion.get(cid, 6810005)) + 1))              
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait "..seconds5.." seconds to Dragon Breath")
		else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Move Dragon Breath - Ready - m5") 
end
if exhaustion.get(cid, 6831005) then
		seconds6 = math.floor(((exhaustion.get(cid, 6831005)) + 1))              
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait "..seconds6.." seconds to Twister")
		else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Move Twister - Ready - m6") 
end
if exhaustion.get(cid, 655107) then
		seconds7 = math.floor(((exhaustion.get(cid, 655107)) + 1))              
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait "..seconds7.." seconds to Wing Attack")
		else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Move Wing Attack - Ready - m7") 
end
if exhaustion.get(cid, 6205018) then
		seconds8 = math.floor(((exhaustion.get(cid, 6205018)) + 1))              
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait "..seconds8.." seconds to Draco Meteor")
		else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Move Draco Meteor - Ready - m8") 
end
	end
return 0
end




