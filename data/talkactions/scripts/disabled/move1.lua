





function getCreaturesInRange(position, radiusx, radiusy, showMonsters, showPlayers)
        local creaturesList = {}
                for x = -radiusx, radiusx do
                        for y = -radiusy, radiusy do
                                if not (x == 0 and y == 0) then
                                        creature = getTopCreature({x = position.x+x, y = position.y+y, z = position.z, stackpos = STACKPOS_TOP_CREATURE})
                                        if (creature.type == 1 and showPlayers == 1) or (creature.type == 2 and showMonsters == 1) then
                                                table.insert(creaturesList, creature.uid)
                                        end
                                end
                        end
                end
return creaturesList
end
local sleep = createConditionObject(CONDITION_PARALYZE)
setConditionParam(sleep, CONDITION_PARAM_TICKS, 4*1000)
setConditionFormula(sleep, -1.7, 0, -1.8, 0)

local paralize = createConditionObject(CONDITION_HASTE)
setConditionParam(paralize, CONDITION_PARAM_TICKS, 5000)
setConditionFormula(paralize, -0.7, 0, -0.8, 0)

local paralize500 = createConditionObject(CONDITION_HASTE)
setConditionParam(paralize500, CONDITION_PARAM_TICKS, 4500)
setConditionFormula(paralize500, -0.7, 0, -0.8, 0)


local paralize1000 = createConditionObject(CONDITION_HASTE)
setConditionParam(paralize1000, CONDITION_PARAM_TICKS, 4000)
setConditionFormula(paralize1000, -0.7, 0, -0.8, 0)

local paralize1500 = createConditionObject(CONDITION_HASTE)
setConditionParam(paralize1500, CONDITION_PARAM_TICKS, 3500)
setConditionFormula(paralize1500, -0.7, 0, -0.8, 0)

local paralize2000 = createConditionObject(CONDITION_HASTE)
setConditionParam(paralize2000, CONDITION_PARAM_TICKS, 3000)
setConditionFormula(paralize2000, -0.7, 0, -0.8, 0)

local paralize2500 = createConditionObject(CONDITION_HASTE)
setConditionParam(paralize2500, CONDITION_PARAM_TICKS, 2500)
setConditionFormula(paralize2500, -0.7, 0, -0.8, 0)


local paralize3000 = createConditionObject(CONDITION_HASTE)
setConditionParam(paralize3000, CONDITION_PARAM_TICKS, 2000)
setConditionFormula(paralize3000, -0.7, 0, -0.8, 0)

local paralize3500 = createConditionObject(CONDITION_HASTE)
setConditionParam(paralize3500, CONDITION_PARAM_TICKS, 1500)
setConditionFormula(paralize3500, -0.7, 0, -0.8, 0)


local paralize4000 = createConditionObject(CONDITION_HASTE)
setConditionParam(paralize4000, CONDITION_PARAM_TICKS, 1000)
setConditionFormula(paralize4000, -0.7, 0, -0.8, 0)

local paralize4500 = createConditionObject(CONDITION_HASTE)
setConditionParam(paralize4500, CONDITION_PARAM_TICKS, 500)
setConditionFormula(paralize4500, -0.7, 0, -0.8, 0)



function Paralize(inparalize)
if (hasCondition(inparalize, CONDITION_HASTE)) then
  doRemoveCondition(inparalize, CONDITION_HASTE)
end

local function stunmiss(params)

if isMonster(inparalize) then
if not (hasCondition(inparalize, CONDITION_HASTE)) then
setPlayerStorageValue(inparalize, 3, 0)
end
end
end

local function versleep10(params)

if isMonster(inparalize) then
if not (hasCondition(inparalize, CONDITION_PARALYZE)) then
if (hasCondition(inparalize, CONDITION_HASTE)) then
  return true
end
addEvent(stunmiss, 500)
  return true
else
return true
end

else
return True
end
end
local function versleep9(params)

if isMonster(inparalize) then
if not (hasCondition(inparalize, CONDITION_PARALYZE)) then
if (hasCondition(inparalize, CONDITION_HASTE)) then
  return true
end
addEvent(stunmiss, 1000)
doAddCondition(inparalize , paralize4500)
  return true
else
addEvent(versleep10, 500)
end

else
return True
end
end

local function versleep8(params)

if isMonster(inparalize) then
if not (hasCondition(inparalize, CONDITION_PARALYZE)) then
if (hasCondition(inparalize, CONDITION_HASTE)) then
  return true
end
addEvent(stunmiss, 1500)
doAddCondition(inparalize , paralize4000)
  return true
else
addEvent(versleep9, 500)
end

else
return True
end
end


local function versleep7(params)

if isMonster(inparalize) then
if not (hasCondition(inparalize, CONDITION_PARALYZE)) then
if (hasCondition(inparalize, CONDITION_HASTE)) then
  return true
end
addEvent(stunmiss, 2000)
doAddCondition(inparalize , paralize3500)
  return true
else
addEvent(versleep8, 500)
end

else
return True
end
end

local function versleep6(params)

if isMonster(inparalize) then
if not (hasCondition(inparalize, CONDITION_PARALYZE)) then
if (hasCondition(inparalize, CONDITION_HASTE)) then
  return true
end
addEvent(stunmiss, 2500)
doAddCondition(inparalize , paralize3000)
  return true
else
addEvent(versleep7, 500)
end

else
return True
end
end


local function versleep5(params)

if isMonster(inparalize) then
if not (hasCondition(inparalize, CONDITION_PARALYZE)) then
if (hasCondition(inparalize, CONDITION_HASTE)) then
  return true
end
addEvent(stunmiss, 3000)
doAddCondition(inparalize , paralize2500)
  return true
else
addEvent(versleep6, 500)
end

else
return True
end
end

local function versleep4(params)

if isMonster(inparalize) then
if not (hasCondition(inparalize, CONDITION_PARALYZE)) then
if (hasCondition(inparalize, CONDITION_HASTE)) then
  return true
end
addEvent(stunmiss, 3500)
doAddCondition(inparalize , paralize2000)
  return true
else
addEvent(versleep5, 500)
end

else
return True
end
end

local function versleep3(params)

if isMonster(inparalize) then
if not (hasCondition(inparalize, CONDITION_PARALYZE)) then
if (hasCondition(inparalize, CONDITION_HASTE)) then
  return true
end
addEvent(stunmiss, 4000)
doAddCondition(inparalize , paralize1500)
  return true
else
addEvent(versleep4, 500)
end

else
return True
end
end

local function versleep2(params)

if isMonster(inparalize) then
if not (hasCondition(inparalize, CONDITION_PARALYZE)) then
if (hasCondition(inparalize, CONDITION_HASTE)) then
  return true
end
addEvent(stunmiss, 4500)
doAddCondition(inparalize , paralize1000)
  return true
else
addEvent(versleep3, 500)
end

else
return True
end
end

local function versleep(params)

if isMonster(inparalize) then
if not (hasCondition(inparalize, CONDITION_PARALYZE)) then
if (hasCondition(inparalize, CONDITION_HASTE)) then
  return true
end
addEvent(stunmiss, 5000)
doAddCondition(inparalize , paralize500)
  return true
else
addEvent(versleep2, 500)
end

else
return True
end
end
if (hasCondition(inparalize, CONDITION_PARALYZE)) then
addEvent(versleep, 500)
return true
end

doAddCondition(inparalize , paralize)




setPlayerStorageValue(inparalize, 3, 1)


addEvent(stunmiss, 6000)


       

       
        
end


local singx = createConditionObject(CONDITION_PARALYZE)
setConditionParam(singx, CONDITION_PARAM_TICKS, 7*1000)
setConditionFormula(singx, -1.7, 0, -1.8, 0)
function Sleep(insleep)
if (hasCondition(insleep, CONDITION_PARALYZE)) then
  doRemoveCondition(insleep, CONDITION_PARALYZE)
  
end

doAddCondition(insleep , sleep)





p = getCreaturePosition(insleep)
doSendAnimatedText(p, "Sleep", 154)
local function stopsleep(params)

if isMonster(insleep) then
if not (hasCondition(insleep, CONDITION_PARALYZE)) then
setPlayerStorageValue(insleep, 8, 0)
end
else
return True
end
end
addEvent(stopsleep, 5000)
setPlayerStorageValue(insleep, 8, 1)

local function sleepxx(params)

if isMonster(insleep) then
doSendMagicEffect(getCreaturePosition(insleep), 32)
else
return True
end

end

    addEvent(sleepxx, 1000)
addEvent(sleepxx, 2000)
addEvent(sleepxx, 3000)
addEvent(sleepxx, 4000)



       
end


function Sing(insleep)

if (hasCondition(insleep, CONDITION_PARALYZE)) then
  doRemoveCondition(insleep, CONDITION_PARALYZE)
  
end
doAddCondition(insleep , singx)
p = getCreaturePosition(insleep)
doSendAnimatedText(p, "Sing", 154)
local function stopsleep(params)

if isMonster(insleep) then
if not (hasCondition(insleep, CONDITION_PARALYZE)) then
setPlayerStorageValue(insleep, 8, -1)
end
else
return True
end
end
addEvent(stopsleep, 8000)
setPlayerStorageValue(insleep, 8, 1)

local function sleepxx(params)

if isMonster(insleep) then
doSendMagicEffect(getCreaturePosition(insleep), 32)
else
return True
end

end

    addEvent(sleepxx, 1000)
addEvent(sleepxx, 2000)
addEvent(sleepxx, 3000)
addEvent(sleepxx, 4000)
addEvent(sleepxx, 5000)
addEvent(sleepxx, 6000)
addEvent(sleepxx, 7000)




       
end



local conditioninvi = createConditionObject(CONDITION_INVISIBLE)
setConditionParam(conditioninvi, CONDITION_PARAM_TICKS, 3000)











function rest(insleep)
if (hasCondition(insleep, CONDITION_PARALYZE)) then
  doRemoveCondition(insleep, CONDITION_PARALYZE)
  
end
doAddCondition(insleep , sleep)
p = getCreaturePosition(insleep)
local function stopsleep(params)

if isMonster(insleep) then
if not (hasCondition(insleep, CONDITION_PARALYZE)) then
setPlayerStorageValue(insleep, 8, -1)
end
else
return True
end
end
addEvent(stopsleep, 5000)
setPlayerStorageValue(insleep, 8, 1)

local function sleepxx(params)

if isMonster(insleep) then
doSendMagicEffect(getCreaturePosition(insleep), 32)
else
return True
end

end

    addEvent(sleepxx, 1000)
addEvent(sleepxx, 2000)
addEvent(sleepxx, 3000)
addEvent(sleepxx, 4000)



       
end


function Hypnosis(insleep)

 if (hasCondition(insleep, CONDITION_PARALYZE)) then
  doRemoveCondition(insleep, CONDITION_PARALYZE)
  
end
doAddCondition(insleep , sleep)
p = getCreaturePosition(insleep)
doSendAnimatedText(p, "Hypnosis", 154)
local function stopsleep(params)

if isMonster(insleep) then
 if not (hasCondition(insleep, CONDITION_PARALYZE)) then
setPlayerStorageValue(insleep, 8, -1)
end
else
return True
end
end
addEvent(stopsleep, 5000)
setPlayerStorageValue(insleep, 8, 1)

local function sleepxx(params)

if isMonster(insleep) then
doSendMagicEffect(getCreaturePosition(insleep), 32)
else
return True
end

end

    addEvent(sleepxx, 1000)
addEvent(sleepxx, 2000)
addEvent(sleepxx, 3000)
addEvent(sleepxx, 4000)



       
end
local caralhadax = createConditionObject(CONDITION_PARALYZE)
setConditionParam(caralhadax, CONDITION_PARAM_TICKS, 20000)
setConditionFormula(caralhadax, -1.7, 0, -1.8, 0)




function Roar(ruido)
if getPlayerStorageValue(ruido, 8) >= 1 then
return True
end
local temk = 1000 - (2.3 * getCreatureSpeed(ruido))
p = getCreaturePosition(ruido)
setPlayerStorageValue(ruido, 10, 1)

doChangeSpeed(ruido,-getCreatureSpeed(ruido))
local function stopsleep(params)


if isMonster(ruido) then
doChangeSpeed(ruido,-getCreatureSpeed(ruido))
doChangeSpeed(ruido,getCreatureBaseSpeed(ruido))
setPlayerStorageValue(ruido, 10, 0)
else
return True
end
end


 
local function sleepxxxx(params)

if isMonster(ruido) then
doChangeSpeed(ruido,getCreatureSpeed(ruido))
doPushCreature(ruido, 1, 1, 0)	
doChangeSpeed(ruido, -getCreatureSpeed(ruido))

doSendMagicEffect(getCreaturePosition(ruido), 115)
else
return True
end

end
for i = 1, 6 do
    addEvent(sleepxxxx, temk*i)
end
addEvent(stopsleep, temk*7)





end

function fear(ruido)
if getPlayerStorageValue(ruido, 8) >= 1 then
return True
end
local temk = 1000 - (2.3 * getCreatureSpeed(ruido))
p = getCreaturePosition(ruido)
setPlayerStorageValue(ruido, 10, 1)

doChangeSpeed(ruido,-getCreatureSpeed(ruido))
local function stopsleep(params)


if isMonster(ruido) then
doChangeSpeed(ruido,-getCreatureSpeed(ruido))
doChangeSpeed(ruido,getCreatureBaseSpeed(ruido))
setPlayerStorageValue(ruido, 10, 0)
else
return True
end
end


 
local function sleepxxxx(params)

if isMonster(ruido) then
doChangeSpeed(ruido,getCreatureSpeed(ruido))
doPushCreature(ruido, 1, 1, 0)	
doChangeSpeed(ruido, -getCreatureSpeed(ruido))

doSendMagicEffect(getCreaturePosition(ruido), 139)
else
return True
end

end
for i = 1, 6 do
    addEvent(sleepxxxx, temk*i)
end
addEvent(stopsleep, temk*7)





end




       




function Confunso(inparalize)
p = getCreaturePosition(inparalize)
setPlayerStorageValue(inparalize, 5, 1)
doSendMagicEffect(p, 31)

local function stunparar(params)
if isMonster(inparalize) then
setPlayerStorageValue(inparalize, 5, -1)
else
return True
end
end
addEvent(stunparar, 4500)

local function sleepxxxx(params)

if isMonster(inparalize) then
doSendMagicEffect(getCreaturePosition(inparalize), 31)
else
return True
end

end

    addEvent(sleepxxxx, 1000)
addEvent(sleepxxxx, 2000)
addEvent(sleepxxxx, 3000)
addEvent(sleepxxxx, 4000)
        doSendAnimatedText(getCreaturePosition(inparalize), "X.X", 210)

        
        
end

function love(inparalize)
p = getCreaturePosition(inparalize)
setPlayerStorageValue(inparalize, 5, 1)
doSendMagicEffect(p, 147)

local function stunparar(params)
if isMonster(inparalize) then
setPlayerStorageValue(inparalize, 5, -1)
else
return True
end
end
addEvent(stunparar, 4500)

local function sleepxxxx(params)

if isMonster(inparalize) then
doSendMagicEffect(getCreaturePosition(inparalize), 147)
else
return True
end

end

    addEvent(sleepxxxx, 1000)
addEvent(sleepxxxx, 2000)
addEvent(sleepxxxx, 3000)
addEvent(sleepxxxx, 4000)
        doSendAnimatedText(getCreaturePosition(inparalize), "s2", 144)

        
        
end


		
		




local config = {
                jumps = 10,
                walktime = 500
}

combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
setCombatParam(combat, COMBAT_PARAM_TYPE, PSYCHICDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 134)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -15, 5, 5, 1.8, 3, -20, -40)

    function movesx(cid, pos, n,dmg,dmg2)


        local n = n or 0

        if (n < config.jumps) then
            if (isCreature(cid)) then
local dmg = getPlayerStorageValue(cid, 985)
local dmg2 = getPlayerStorageValue(cid, 986)
                local pos = pos or getCreaturePosition(cid)
                local target = getCreatureTarget(cid)

                local dir = (target ~= 0) and getDirectionTo(pos, getCreaturePosition(target)) or getCreatureLookDirection(cid)
                local tpos = (target ~= 0) and getCreaturePosition(target)

                local newPos

                if ((target ~= 0) and ((pos.x == tpos.x) and (pos.y == tpos.y))) then
                    newPos = tpos
                else
                    newPos = getPosByDir(pos, dir)
                end

                if ((getTopCreature(newPos).uid == 0) and doTileQueryAdd(cid, newPos) ~= 1) then return false end
doAreaCombatHealth(cid, PSYCHICDAMAGE, newPos, 0, -dmg, -dmg2, 134)
                --doCombat(cid, combat, {
                   -- pos = newPos,
                  --  type = 2
               -- })

                addEvent(movesx, config.walktime, cid, newPos, n + 1)
            end
        end
    end

local config = {
                jumps = 10,
                walktime = 500
}

combatx = createCombatObject()
setCombatParam(combatx, COMBAT_PARAM_TARGETCASTERORTOPMOST, true)
setCombatParam(combatx, COMBAT_PARAM_TYPE, GHOSTDAMAGEWILD)
setCombatParam(combatx, COMBAT_PARAM_EFFECT, 38)
setCombatFormula(combatx, COMBAT_FORMULA_LEVELMAGIC, -1, -10, -1, -15, 5, 5, 1.8, 3, -20, -40)

    function ghostmew(cid, pos, n,dmg,dmg2)

        local n = n or 0

        if (n < config.jumps) then
            if (isCreature(cid)) then
local dmg = getPlayerStorageValue(cid, 985)
local dmg2 = getPlayerStorageValue(cid, 986)
                local pos = pos or getCreaturePosition(cid)
                local target = getCreatureTarget(cid)

                local dir = (target ~= 0) and getDirectionTo(pos, getCreaturePosition(target)) or getCreatureLookDirection(cid)
                local tpos = (target ~= 0) and getCreaturePosition(target)

                local newPos

                if ((target ~= 0) and ((pos.x == tpos.x) and (pos.y == tpos.y))) then
                    newPos = tpos
                else
                    newPos = getPosByDir(pos, dir)
                end

                if ((getTopCreature(newPos).uid == 0) and doTileQueryAdd(cid, newPos) ~= 1) then return false end

                doAreaCombatHealth(cid, GHOSTDAMAGEWILD, newPos, 0, -dmg, -dmg2, 38)

                addEvent(ghostmew, config.walktime, cid, newPos, n + 1)
            end
        end
    end

    

    
	
	
		
	

function Poison(inpoison, ef, rounds)
        if rounds == 0 then return false end
        if not inpoison then return false end
if isMonster(inpoison) then
        local p = getCreaturePosition(inpoison)
        doAreaCombatHealth(pet, POISONDAMAGE, p, 0, -10, -10, ef)
        return addEvent(Poison, 800, inpoison, ef, rounds-1)
end
end

local naotemcd = {''}
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
'Kabuto','Kabutops','Aerodactyl','Snorlax','Articuno','Zapdos','Moltres','Dratini','Dragonair','Dragonite','Mewtwo','Mew','Elder Charizard','Crystal Onix'}



function onSay(cid, words, param)
	
	if #getCreatureSummons(cid) == 0 then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need a pokemos to  moves.")
	return 0
	end
	

		if isInArray({"Ditto"}, getCreatureName(getCreatureSummons(cid)[1])) then
		if isInArray({"28"}, getCreatureOutfit(getCreatureSummons(cid)[1]).lookType) then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You need a transform to use moves.")
	return 0
	end

if exhaustion.get(cid, 548798) then
dittocold = math.floor(((exhaustion.get(cid, 548798)) )) 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Ditto needs "..dittocold.." seconds to learn the moves")
return 0
end
local ditto = getPlayerSlotItem(cid, 8)
local ropax = getItemAttribute(ditto.uid, "nomepoke")
        


if words == "!cd" then
pokemon = cp[ropax][words]
pokemon.pokenome = "Ditto"

else
pokemon = cp[ropax][words]

end



else
         pokemon = cp[getCreatureName(getCreatureSummons(cid)[1])][words]
end

            
if not pokemon then
                   return true

	end
if words == "!cd" then
if pokemon.nmoves == 1 then
if exhaustion.get(cid, pokemon.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, pokemon.exm1)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ""..frasename.."\n"..frasecd.."")
end
if pokemon.nmoves == 2 then
if exhaustion.get(cid, pokemon.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, pokemon.exm1)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, pokemon.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, pokemon.exm2)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."")
end
if pokemon.nmoves == 3 then
if exhaustion.get(cid, pokemon.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, pokemon.exm1)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, pokemon.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, pokemon.exm2)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, pokemon.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, pokemon.exm3)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."")
end
if pokemon.nmoves == 4 then
if exhaustion.get(cid, pokemon.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, pokemon.exm1)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, pokemon.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, pokemon.exm2)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, pokemon.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, pokemon.exm3)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, pokemon.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, pokemon.exm4)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."")
end
if pokemon.nmoves == 5 then
if exhaustion.get(cid, pokemon.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, pokemon.exm1)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, pokemon.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, pokemon.exm2)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, pokemon.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, pokemon.exm3)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, pokemon.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, pokemon.exm4)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, pokemon.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, pokemon.exm5)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."")
end
if pokemon.nmoves == 6 then
if exhaustion.get(cid, pokemon.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, pokemon.exm1)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, pokemon.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, pokemon.exm2)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, pokemon.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, pokemon.exm3)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, pokemon.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, pokemon.exm4)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, pokemon.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, pokemon.exm5)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, pokemon.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, pokemon.exm6)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."")
end
if pokemon.nmoves == 7 then
if exhaustion.get(cid, pokemon.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, pokemon.exm1)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, pokemon.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, pokemon.exm2)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, pokemon.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, pokemon.exm3)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, pokemon.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, pokemon.exm4)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, pokemon.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, pokemon.exm5)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, pokemon.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, pokemon.exm6)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
if exhaustion.get(cid, pokemon.exm7) then
seconds7 = math.floor(((exhaustion.get(cid, pokemon.exm7)) + 1))  
frasecd7 = ""..pokemon.spellm7.." - m7: wait "..seconds7.." seconds."


else
frasecd7 = ""..pokemon.spellm7.." - m7: ready."
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."\n"..frasecd7.."")
end
if pokemon.nmoves == 8 then
if exhaustion.get(cid, pokemon.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, pokemon.exm1)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, pokemon.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, pokemon.exm2)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, pokemon.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, pokemon.exm3)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, pokemon.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, pokemon.exm4)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, pokemon.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, pokemon.exm5)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, pokemon.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, pokemon.exm6)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
if exhaustion.get(cid, pokemon.exm7) then
seconds7 = math.floor(((exhaustion.get(cid, pokemon.exm7)) + 1))  
frasecd7 = ""..pokemon.spellm7.." - m7: wait "..seconds7.." seconds."


else
frasecd7 = ""..pokemon.spellm7.." - m7: ready."
end
if exhaustion.get(cid, pokemon.exm8) then
seconds8 = math.floor(((exhaustion.get(cid, pokemon.exm8)) + 1))  
frasecd8 = ""..pokemon.spellm8.." - m8: wait "..seconds8.." seconds."


else
frasecd8 = ""..pokemon.spellm8.." - m8: ready."
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."\n"..frasecd7.."\n"..frasecd8.."")
end
if pokemon.nmoves == 9 then
if exhaustion.get(cid, pokemon.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, pokemon.exm1)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, pokemon.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, pokemon.exm2)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, pokemon.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, pokemon.exm3)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, pokemon.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, pokemon.exm4)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, pokemon.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, pokemon.exm5)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, pokemon.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, pokemon.exm6)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
if exhaustion.get(cid, pokemon.exm7) then
seconds7 = math.floor(((exhaustion.get(cid, pokemon.exm7)) + 1))  
frasecd7 = ""..pokemon.spellm7.." - m7: wait "..seconds7.." seconds."


else
frasecd7 = ""..pokemon.spellm7.." - m7: ready."
end
if exhaustion.get(cid, pokemon.exm8) then
seconds8 = math.floor(((exhaustion.get(cid, pokemon.exm8)) + 1))  
frasecd8 = ""..pokemon.spellm8.." - m8: wait "..seconds8.." seconds."


else
frasecd8 = ""..pokemon.spellm8.." - m8: ready."
end
if exhaustion.get(cid, pokemon.exm9) then
seconds9 = math.floor(((exhaustion.get(cid, pokemon.exm9)) + 1))  
frasecd9 = ""..pokemon.spellm9.." - m9: wait "..seconds9.." seconds."


else
frasecd9 = ""..pokemon.spellm9.." - m9: ready."
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."\n"..frasecd7.."\n"..frasecd8.."\n"..frasecd9.."")
end
if pokemon.nmoves == 10 then
if exhaustion.get(cid, pokemon.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, pokemon.exm1)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, pokemon.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, pokemon.exm2)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, pokemon.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, pokemon.exm3)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, pokemon.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, pokemon.exm4)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, pokemon.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, pokemon.exm5)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, pokemon.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, pokemon.exm6)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
if exhaustion.get(cid, pokemon.exm7) then
seconds7 = math.floor(((exhaustion.get(cid, pokemon.exm7)) + 1))  
frasecd7 = ""..pokemon.spellm7.." - m7: wait "..seconds7.." seconds."


else
frasecd7 = ""..pokemon.spellm7.." - m7: ready."
end
if exhaustion.get(cid, pokemon.exm8) then
seconds8 = math.floor(((exhaustion.get(cid, pokemon.exm8)) + 1))  
frasecd8 = ""..pokemon.spellm8.." - m8: wait "..seconds8.." seconds."


else
frasecd8 = ""..pokemon.spellm8.." - m8: ready."
end
if exhaustion.get(cid, pokemon.exm9) then
seconds9 = math.floor(((exhaustion.get(cid, pokemon.exm9)) + 1))  
frasecd9 = ""..pokemon.spellm9.." - m9: wait "..seconds9.." seconds."


else
frasecd9 = ""..pokemon.spellm9.." - m9: ready."
end
if exhaustion.get(cid, pokemon.exm10) then
seconds10 = math.floor(((exhaustion.get(cid, pokemon.exm10)) + 1))  
frasecd10 = ""..pokemon.spellm10.." - m10: wait "..seconds10.." seconds."


else
frasecd10 = ""..pokemon.spellm10.." - m10: ready."
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."\n"..frasecd7.."\n"..frasecd8.."\n"..frasecd9.."\n"..frasecd10.."")
end
if pokemon.nmoves == 11 then
if exhaustion.get(cid, pokemon.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, pokemon.exm1)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, pokemon.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, pokemon.exm2)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, pokemon.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, pokemon.exm3)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, pokemon.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, pokemon.exm4)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, pokemon.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, pokemon.exm5)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, pokemon.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, pokemon.exm6)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
if exhaustion.get(cid, pokemon.exm7) then
seconds7 = math.floor(((exhaustion.get(cid, pokemon.exm7)) + 1))  
frasecd7 = ""..pokemon.spellm7.." - m7: wait "..seconds7.." seconds."


else
frasecd7 = ""..pokemon.spellm7.." - m7: ready."
end
if exhaustion.get(cid, pokemon.exm8) then
seconds8 = math.floor(((exhaustion.get(cid, pokemon.exm8)) + 1))  
frasecd8 = ""..pokemon.spellm8.." - m8: wait "..seconds8.." seconds."


else
frasecd8 = ""..pokemon.spellm8.." - m8: ready."
end
if exhaustion.get(cid, pokemon.exm9) then
seconds9 = math.floor(((exhaustion.get(cid, pokemon.exm9)) + 1))  
frasecd9 = ""..pokemon.spellm9.." - m9: wait "..seconds9.." seconds."


else
frasecd9 = ""..pokemon.spellm9.." - m9: ready."
end
if exhaustion.get(cid, pokemon.exm10) then
seconds10 = math.floor(((exhaustion.get(cid, pokemon.exm10)) + 1))  
frasecd10 = ""..pokemon.spellm10.." - m10: wait "..seconds10.." seconds."


else
frasecd10 = ""..pokemon.spellm10.." - m10: ready."
end
if exhaustion.get(cid, pokemon.exm11) then
seconds11 = math.floor(((exhaustion.get(cid, pokemon.exm11)) + 1))  
frasecd11 = ""..pokemon.spellm11.." - m11: wait "..seconds11.." seconds."


else
frasecd11 = ""..pokemon.spellm11.." - m11: ready."
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."\n"..frasecd7.."\n"..frasecd8.."\n"..frasecd9.."\n"..frasecd10.."\n"..frasecd11.."")
end
if pokemon.nmoves == 12 then
if exhaustion.get(cid, pokemon.exm1) then
seconds1 = math.floor(((exhaustion.get(cid, pokemon.exm1)) + 1))  
frasename = "Pokemon: "..pokemon.pokenome.."" 
frasecd = ""..pokemon.spellm1.." - m1: wait "..seconds1.." seconds."


else
frasename = "Pokemon: "..pokemon.pokenome.." "
frasecd = ""..pokemon.spellm1.." - m1: ready."
end
if exhaustion.get(cid, pokemon.exm2) then
seconds2 = math.floor(((exhaustion.get(cid, pokemon.exm2)) + 1))  
frasecd2 = ""..pokemon.spellm2.." - m2: wait "..seconds2.." seconds."


else
frasecd2 = ""..pokemon.spellm2.." - m2: ready."
end
if exhaustion.get(cid, pokemon.exm3) then
seconds3 = math.floor(((exhaustion.get(cid, pokemon.exm3)) + 1))  
frasecd3 = ""..pokemon.spellm3.." - m3: wait "..seconds3.." seconds."


else
frasecd3 = ""..pokemon.spellm3.." - m3: ready."
end
if exhaustion.get(cid, pokemon.exm4) then
seconds4 = math.floor(((exhaustion.get(cid, pokemon.exm4)) + 1))  
frasecd4 = ""..pokemon.spellm4.." - m4: wait "..seconds4.." seconds."


else
frasecd4 = ""..pokemon.spellm4.." - m4: ready."
end
if exhaustion.get(cid, pokemon.exm5) then
seconds5 = math.floor(((exhaustion.get(cid, pokemon.exm5)) + 1))  
frasecd5 = ""..pokemon.spellm5.." - m5: wait "..seconds5.." seconds."


else
frasecd5 = ""..pokemon.spellm5.." - m5: ready."
end
if exhaustion.get(cid, pokemon.exm6) then
seconds6 = math.floor(((exhaustion.get(cid, pokemon.exm6)) + 1))  
frasecd6 = ""..pokemon.spellm6.." - m6: wait "..seconds6.." seconds."


else
frasecd6 = ""..pokemon.spellm6.." - m6: ready."
end
if exhaustion.get(cid, pokemon.exm7) then
seconds7 = math.floor(((exhaustion.get(cid, pokemon.exm7)) + 1))  
frasecd7 = ""..pokemon.spellm7.." - m7: wait "..seconds7.." seconds."


else
frasecd7 = ""..pokemon.spellm7.." - m7: ready."
end
if exhaustion.get(cid, pokemon.exm8) then
seconds8 = math.floor(((exhaustion.get(cid, pokemon.exm8)) + 1))  
frasecd8 = ""..pokemon.spellm8.." - m8: wait "..seconds8.." seconds."


else
frasecd8 = ""..pokemon.spellm8.." - m8: ready."
end
if exhaustion.get(cid, pokemon.exm9) then
seconds9 = math.floor(((exhaustion.get(cid, pokemon.exm9)) + 1))  
frasecd9 = ""..pokemon.spellm9.." - m9: wait "..seconds9.." seconds."


else
frasecd9 = ""..pokemon.spellm9.." - m9: ready."
end
if exhaustion.get(cid, pokemon.exm10) then
seconds10 = math.floor(((exhaustion.get(cid, pokemon.exm10)) + 1))  
frasecd10 = ""..pokemon.spellm10.." - m10: wait "..seconds10.." seconds."


else
frasecd10 = ""..pokemon.spellm10.." - m10: ready."
end
if exhaustion.get(cid, pokemon.exm11) then
seconds11 = math.floor(((exhaustion.get(cid, pokemon.exm11)) + 1))  
frasecd11 = ""..pokemon.spellm11.." - m11: wait "..seconds11.." seconds."


else
frasecd11 = ""..pokemon.spellm11.." - m11: ready."
end
if exhaustion.get(cid, pokemon.exm12) then
seconds12 = math.floor(((exhaustion.get(cid, pokemon.exm12)) + 1))  
frasecd12 = ""..pokemon.spellm12.." - m12: wait "..seconds12.." seconds."


else
frasecd12 = ""..pokemon.spellm12.." - m12: ready."
end
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, ""..frasename.."\n"..frasecd.."\n"..frasecd2.."\n"..frasecd3.."\n"..frasecd4.."\n"..frasecd5.."\n"..frasecd6.."\n"..frasecd7.."\n"..frasecd8.."\n"..frasecd9.."\n"..frasecd10.."\n"..frasecd11.."\n"..frasecd12.."")
end

return 0
end 


	

	
	
	
if getTileInfo(getCreaturePosition(getCreatureSummons(cid)[1])).protection then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cant use moves in protection zone")
	return true
end	
	if getPlayerLevel(cid) < pokemon.minLv then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You don\'t have enough level to  this move.")
	return 0
	end

	

 if getPlayerStorageValue(getCreatureSummons(cid)[1], 8) >= 1 then
 doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry You pokemon sleeping.")

	
	return true
	end
 if getPlayerStorageValue(getCreatureSummons(cid)[1], 10) >= 1 then
 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry your pokemon scared to battle")
	
	return true
	end

 if getPlayerStorageValue(getCreatureSummons(cid)[1], 9) >= 1 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Sorry your pokemon dont have target ,evasive pokemon")
setPlayerStorageValue(getCreatureSummons(cid)[1], 9,0)	
	return true
	end
if exhaustion.get(cid, 5545789) then	
doPlayerSendCancel(cid, "You Pokemon are Exausted!")
	return true
end
exhaustion.set(cid, 5545789, 0.3)

	if exhaustion.get(cid, pokemon.ex) then
		seconds = math.floor(((exhaustion.get(cid, pokemon.ex)) + 1))
                spell = pokemon.spell
			doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have to wait "..seconds.." seconds to "..spell..".")
		return 0
		end

	if getPlayerStorageValue(getCreatureSummons(cid)[1], 3) >= 1 then
		if math.random(1,100) <= 33 then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)
	doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "MISS", 215)
	setPlayerStorageValue(getCreatureSummons(cid)[1], 3, -1)

	exhaustion.set(cid, pokemon.ex, pokemon.cd)
	return true
end
	end

	if getPlayerStorageValue(getCreatureSummons(cid)[1], 5) >= 1 then
		if math.random(1,100) <= 33 then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "SELF HIT", 180)
		local levels = getPlayerLevel(cid)
		doTargetCombatHealth(cid, getCreatureSummons(cid)[1], COMBAT_PHYSICALDAMAGE, -(math.random((levels*3),(levels*5))), -((math.random((levels*3),(levels*5))+10)), 3)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)

		return true
		end
	end

if pokemon.target ~= "no" then
if not isMonster(getCreatureTarget(cid)) and not isPlayer(getCreatureTarget(cid)) then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You don\'t have any targets.")
	return 0
	end
		if getDistanceBetween(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid))) > pokemon.dista then
		doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Get closer to the target to  this move.")
		return 0
		end
		if not isSightClear(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), false) then
		return 0
		end
end
local leveldoplayer = {}
	if pokemon.type == "flying" then
if getPlayerVocation(cid) == 15 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)
	
end
elementa = FLYDAMAGEWILD
	elseif pokemon.type == "ground" then
if getPlayerVocation(cid) == 8 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)
		
end

		elementa = GROUNDDAMAGE
	elseif pokemon.type == "electric" then
if getPlayerVocation(cid) == 16 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end
if getPlayerStorageValue(cid, 9359) == 1 then	
leveldoplayer = leveldoplayer+25
end
		elementa = ELECTRICDAMAGEWILD
	elseif pokemon.type == "ghost" then
if getPlayerVocation(cid) == 4 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end

		elementa = GHOSTDAMAGEWILD
	elseif pokemon.type == "normal" then
if getPlayerVocation(cid) == 7 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end
if getPlayerStorageValue(cid, 9360) == 1 then	
leveldoplayer = leveldoplayer+30
end
		elementa = NORMALDAMAGE
	elseif pokemon.type == "fighting" then
if getPlayerVocation(cid) == 14 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end
		elementa = FIGHTDAMAGEWILD
	elseif pokemon.type == "poison" then
if getPlayerVocation(cid) == 13 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end
if getPlayerStorageValue(cid, 9356) == 1 then	
leveldoplayer = leveldoplayer+25
end
		elementa = POISONDAMAGE
	elseif pokemon.type == "rock" then
if getPlayerVocation(cid) == 10 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end
if getPlayerStorageValue(cid, 9353) == 1 then	
leveldoplayer = leveldoplayer+20
end
		elementa = ROCKDAMAGEWILD
	elseif pokemon.type == "bug" then
if getPlayerVocation(cid) == 17 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end

		elementa = BUGDAMAGEWILD
	elseif pokemon.type == "fire" then
if getPlayerVocation(cid) == 6 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end
if getPlayerStorageValue(cid, 9354) == 1 then	
leveldoplayer = leveldoplayer+20
end
		elementa = FIREDAMAGE
	elseif pokemon.type == "water" then
if getPlayerVocation(cid) == 11 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end
if getPlayerStorageValue(cid, 9355) == 1 then	
leveldoplayer = leveldoplayer+20
end
		elementa = WATERDAMAGE
	elseif pokemon.type == "grass" then
if getPlayerVocation(cid) == 5 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end
if getPlayerStorageValue(cid, 9358) == 1 then	
leveldoplayer = leveldoplayer+25
end
		elementa = GRASSDAMAGE
	elseif pokemon.type == "psychic" then
if getPlayerVocation(cid) == 9 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end

if getPlayerStorageValue(cid, 9357) == 1 then	
leveldoplayer = leveldoplayer+20
end
		elementa = PSYCHICDAMAGE
	elseif pokemon.type == "ice" then
if getPlayerVocation(cid) == 12 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end
		elementa = ICEDAMAGE
	elseif pokemon.type == "dragon" then
if getPlayerVocation(cid) == 3 then
leveldoplayer = getPlayerLevel(cid)+30
else
leveldoplayer = getPlayerLevel(cid)		
end
		elementa = DRAGONDAMAGEWILD
	end

	local element = elementa
	local num1 = (pokemon.base1)
	local num2 = (pokemon.base2)
	local num3 = (pokemon.bonus)
local item2 = getPlayerSlotItem(cid, 8)
local boost = getItemAttribute(item2.uid, "boost")

local lvpokemon = boost+leveldoplayer
        
        
	if getPlayerStorageValue(getCreatureSummons(cid)[1], 254) >= 1 then
	num3 = num3 * 1.8
	setPlayerStorageValue(getCreatureSummons(cid)[1], 254, 0)
	end
	setPlayerStorageValue(getCreatureSummons(cid)[1], 1000, ((num1)+(lvpokemon*(num3))))
	if pokemon.spell == "Dynamic Punch" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
local function throw(params)
			if isCreature(params.cid) then
                        if isCreature(params.target) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(params.target),26)
end
			end
			end
			local function damage(params)
			if isCreature(params.cid) then
                        if isCreature(params.target) then
			doAreaCombatHealth(params.cid, element, getThingPos(params.target), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
			end
			end
			end
local sumonado = getCreatureSummons(cid)[1] 
local target = getCreatureTarget(cid)
addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 150, {cid = sumonado,target = target})
addEvent(throw, 250, {cid = sumonado,target = target})
addEvent(throw, 350, {cid = sumonado,target = target})
addEvent(throw, 550, {cid = sumonado,target = target})
		addEvent(damage, 0, {cid = sumonado,target = target})
		addEvent(damage, 150, {cid = sumonado,target = target})
	addEvent(damage, 250, {cid = sumonado,target = target})
addEvent(damage, 350, {cid = sumonado,target = target})
addEvent(damage, 550, {cid = sumonado,target = target})
		
		


	return 0	
elseif pokemon.spell == "Quick Attack" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
local target = getCreatureTarget(cid)
local monsterpos = getCreatureLookDir(target)
local monstertp = getCreaturePosition(target)
local evasiontp = getCreaturePosition(getCreatureSummons(cid)[1])
if monsterpos == 0 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y+1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(getCreatureSummons(cid)[1],monstertp)
setPlayerStorageValue(target, 9,1)
	
 
end
elseif monsterpos == 2 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y-1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(getCreatureSummons(cid)[1],monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 1 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x-1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(getCreatureSummons(cid)[1],monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 3 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x+1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(getCreatureSummons(cid)[1],monstertp)
setPlayerStorageValue(target, 9,1)

 
end

end
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		return 0
elseif pokemon.spell == "Pluck" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		return 0

elseif pokemon.spell == "Slam" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0
elseif pokemon.spell == "Body Slam" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0
elseif pokemon.spell == "Rapid Hit" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], NORMALDAMAGE, getThingPos(getCreatureTarget(params.cid)), 0, -0, -0, 3)
		end
		end
		end
		end

		addEvent(hit, 80, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 280, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 480, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
		return 0
elseif pokemon.spell == "Drill Peck" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)),0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		end
		end
		end
		end


		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif pokemon.spell == "Triple Kick" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)),0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 113)
		end
		end
		end
		end


		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif pokemon.spell == "Multi-Kick" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)

		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
if isInArray({"Elite Hitmonlee"}, getCreatureName(getCreatureSummons(params.cid)[1])) then
outfitx = {lookType = 527, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], outfitx, 800)
else
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], lee, 800)
end

		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		end
		end
		end
		end

		local hitalvo = getCreatureTarget(cid)
		local function hit2(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
if isInArray({"Elite Hitmonlee"}, getCreatureName(getCreatureSummons(params.cid)[1])) then
outfitx = {lookType = 527, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], outfitx, 800)
else
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], lee, 800)
end

		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 113)
		end
		end
		end
		end

		
		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 680, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 980, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 1180, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif pokemon.spell == "Triple Kick Lee" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)

		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
if isInArray({"Elite Hitmonlee"}, getCreatureName(getCreatureSummons(params.cid)[1])) then
outfitx = {lookType = 527, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], outfitx, 800)
else
doSetCreatureOutfit(getCreatureSummons(params.cid)[1], lee, 800)
end
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, 0, 0, 110)
		end
		end
		end
		end

local hitalvo = getCreatureTarget(cid)
		local function hit2(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then


		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 113)
		end
		end
		end
		end



	

		
		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
	addEvent(hit2, 480, {cid = cid, hitalvo = hitalvo})
	addEvent(hit2, 680, {cid = cid, hitalvo = hitalvo})
	addEvent(hit2, 780, {cid = cid, hitalvo = hitalvo})
	
	

		return 0
elseif pokemon.spell == "Triple Punch" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)),0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		end
		end
		end
		end


		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif pokemon.spell == "Punch-Machine" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
doSendMagicEffect(getThingPos(getCreatureTarget(params.cid)), 224)

		end
		end
		end
		end
	local function hit2(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		end
		end
		end
		end


		addEvent(hit, 500, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 1000, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 1500, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 2000, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 2500, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 3000, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 3500, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 4000, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 4500, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 5000, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 5500, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 6000, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif pokemon.spell == "Karate Chop" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
	
		

	

		return 0

elseif pokemon.spell == "Bite" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
		return 0
elseif pokemon.spell == "Slash" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 160)
		return 0
elseif pokemon.spell == "StickSlash" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 212)
		return 0
elseif pokemon.spell == "Splash" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 53)
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		return 0
elseif pokemon.spell == "Doubleslap" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function slap(params)
					if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	end
end
		end
		addEvent(slap, 0, {cid = cid})
		addEvent(slap, 600, {cid = cid})
		return 0
elseif pokemon.spell == "Mega Punch" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		return 0
elseif pokemon.spell == "Toxic Spikes" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		return 0
elseif pokemon.spell == "Mega Kick" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(params.cid)),0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		end
		end
		end
		end


		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
		return 0
elseif pokemon.spell == "Thunder Punch" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 40)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 11)
		return 0
elseif pokemon.spell == "Thunder Fang" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 146)
doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 40)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 11)
		return 0

elseif pokemon.spell == "Shadow Punch" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 18)
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)
		return 0
elseif pokemon.spell == "Scratch" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 142)
	return 0
	elseif pokemon.spell == "Iron Tail" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 160)
	return 0
	elseif pokemon.spell == "Confusion" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), confusionx, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
  local d = getCreaturesInRange(getThingPos(getCreatureSummons(cid)[1]), 2, 2, 1, 0)

                    
        for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(getCreatureMaster(pid), 3333) >= 1 or getGlobalStorageValue(3333) >= 1 then
Confunso(pid)
end
elseif isMonster(pid) then
                               Confunso(pid)

end
                        end

	return 0



elseif pokemon.spell == "Psy Target" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)

setPlayerStorageValue(getCreatureSummons(cid)[1], 985, ((num1)+(lvpokemon*(num3))))
setPlayerStorageValue(getCreatureSummons(cid)[1], 986, ((num2)+(lvpokemon*(num3))))
movesx(getCreatureSummons(cid)[1],false,false,false,false)		
return 0
elseif pokemon.spell == "Dark Target" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
setPlayerStorageValue(getCreatureSummons(cid)[1], 985, ((num1)+(lvpokemon*(num3))))
setPlayerStorageValue(getCreatureSummons(cid)[1], 986, ((num2)+(lvpokemon*(num3))))
ghostmew(getCreatureSummons(cid)[1],false,false,false,false)
		
return 0
elseif pokemon.spell == "Psy beam" then
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), bmn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 108)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), bms, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 109)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), bme, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 107)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), bmw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 106)
		end
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0
elseif pokemon.spell == "Aurora Beam" then
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), bmn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 108)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), bms, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 109)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), bme, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 107)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), bmw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 106)
		end
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0

elseif pokemon.spell == "Psy Wave" then
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		end
	doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0
elseif pokemon.spell == "Fury Wave" then
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), furywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), furywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), furywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), furywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		end
	doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0
elseif pokemon.spell == "Hyper Voice" then
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 22)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 22)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 22)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 22)
		end
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0
elseif pokemon.spell == "Thunder Wave" then
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		end
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0

elseif pokemon.spell == "Squishy Licking" then
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 145)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 145)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 145)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 145)
		end
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0
elseif pokemon.spell == "Icy Wind" then
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		end
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0
	elseif pokemon.spell == "Psychic" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psychic, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 134)
	return 0
	elseif pokemon.spell == "Thunder" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), Thunder, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 11)
	return 0
elseif pokemon.spell == "Pin Missile" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 13)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0
elseif pokemon.spell == "Thrash" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 10)
local target = getCreatureTarget(cid)
local monsterpos = getCreatureLookDir(target)
local monstertp = getCreaturePosition(target)
local evasiontp = getCreaturePosition(getCreatureSummons(cid)[1])
if monsterpos == 0 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y+1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(getCreatureSummons(cid)[1],monstertp)
setPlayerStorageValue(target, 9,1)
	
 
end
elseif monsterpos == 2 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y-1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(getCreatureSummons(cid)[1],monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 1 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x-1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(getCreatureSummons(cid)[1],monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 3 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x+1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(getCreatureSummons(cid)[1],monstertp)
setPlayerStorageValue(target, 9,1)

 
end

end
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		return 0
elseif pokemon.spell == "Night Shade" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psychic, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 38)
	return 0
	elseif pokemon.spell == "Absorb" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local life = getCreatureHealth(getCreatureTarget(cid))
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 14)
		local newlife = life - getCreatureHealth(getCreatureTarget(cid))
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 14)
		doCreatureAddHealth(getCreatureSummons(cid)[1], newlife)
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..newlife.."", 35)
	return 0
	elseif pokemon.spell == "Super Vines" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)

		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 213)

	return 0
	elseif pokemon.spell == "Mud Shot" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
Paralize(getCreatureTarget(cid))
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 1)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 34)
	return 0

elseif pokemon.spell == "Mud Slap" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)

Paralize(getCreatureTarget(cid))
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 1)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	return 0

elseif pokemon.spell == "Lovey Kiss" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)

Paralize(getCreatureTarget(cid))
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 16)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 147)
	return 0

	elseif pokemon.spell == "Mud Bomb" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		setPlayerStorageValue(getCreatureTarget(cid), 3, 1)
		local mudalvo = getCreatureTarget(cid)
	local function ver(params)
	if isCreature(params.mudalvo) then
	if getPlayerStorageValue(params.mudalvo, 3) >= 1 then
	setPlayerStorageValue(params.mudalvo, 3, -1)
	end
	end
	end
local function sleepxx(params)

if isMonster(params.mudalvo) then
doSendMagicEffect(getCreaturePosition(params.mudalvo), 34)
else
return True
end

end
Paralize(getCreatureTarget(cid))

    addEvent(sleepxx, 1000,{mudalvo = mudalvo})
addEvent(sleepxx, 2000,{mudalvo = mudalvo})
addEvent(sleepxx, 3000,{mudalvo = mudalvo})
addEvent(sleepxx, 4000,{mudalvo = mudalvo})
		addEvent(ver, 4500, {mudalvo = mudalvo})
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 1)
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 116)
	return 0	

elseif pokemon.spell == "Sludge" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		setPlayerStorageValue(getCreatureTarget(cid), 3, 1)
		local mudalvo = getCreatureTarget(cid)
	local function ver(params)
	if isCreature(params.mudalvo) then
	if getPlayerStorageValue(params.mudalvo, 3) >= 1 then
	setPlayerStorageValue(params.mudalvo, 3, -1)
	end
	end
	end
local function sleepxx(params)

if isMonster(params.mudalvo) then
doSendMagicEffect(getCreaturePosition(params.mudalvo), 116)
else
return True
end

end

Paralize(getCreatureTarget(cid))


    addEvent(sleepxx, 1000,{mudalvo = mudalvo})
addEvent(sleepxx, 2000,{mudalvo = mudalvo})
addEvent(sleepxx, 3000,{mudalvo = mudalvo})
addEvent(sleepxx, 4000,{mudalvo = mudalvo})
		addEvent(ver, 4500, {mudalvo = mudalvo})
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 1)
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 116)
	return 0	
elseif pokemon.spell == "Bubbles" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)),2)
		end
end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		end
end
			end
			local function damage2(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
	end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage2, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		return 0
elseif pokemon.spell == "Clamp" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)),2)
		end
end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 1)
end
end
			end
			local function damage2(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
		end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		return 0
elseif pokemon.spell == "Ice Shards" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)),28)
		end
end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		end
end
			end
			local function damage2(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 52)
		end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage2, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		return 0

elseif pokemon.spell == "Ice Punch" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)),28)
                  end
                   end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 43)
		end
end
			end
	
		addEvent(damage, 100, {cid = cid})
	
		addEvent(throw, 0, {cid = cid})
		
		return 0
elseif pokemon.spell == "Aqua tail" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 2)
		end
                       end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
		end
                     end
			end
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
	return 0

elseif pokemon.spell == "Dream Eather" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 18)
		end
                      end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
if getPlayerStorageValue(getCreatureTarget(params.cid), 8) >= 1 then
		local life = getCreatureHealth(getCreatureTarget(cid))
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 138)
		local newlife = life - getCreatureHealth(getCreatureTarget(cid))
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 14)
		doCreatureAddHealth(getCreatureSummons(cid)[1], newlife)
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..newlife.."", 35)
end
end
end
end
			
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
	return 0
elseif pokemon.spell == "Nightmare" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
			if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 18)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
if getPlayerStorageValue(getCreatureTarget(params.cid), 8) >= 1 then

		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 138)


end
			end
			end
			end
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
	return 0
elseif pokemon.spell == "String Shot" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		setPlayerStorageValue(getCreatureTarget(cid), 3, 1)
		local alvo = getCreatureTarget(cid)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 23)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 137)
		local function string(params)
		if isCreature(params.alvo) then
		if getPlayerStorageValue(params.alvo, 3) >= 1 then
		doSendMagicEffect(getThingPos(params.alvo), 137)
		end
		end
		end
		local function normalstr(params)
		if isCreature(params.alvo) then
		if getPlayerStorageValue(params.alvo, 3) >= 1 then
		setPlayerStorageValue(params.alvo, 3, -1)
		end
		end
		end
		addEvent(string, 250, {alvo = alvo})
		addEvent(string, 500, {alvo = alvo})
		addEvent(string, 750, {alvo = alvo})
		addEvent(string, 1000, {alvo = alvo})
		addEvent(string, 1250, {alvo = alvo})
		addEvent(string, 1500, {alvo = alvo})
		addEvent(string, 1750, {alvo = alvo})
		addEvent(string, 2000, {alvo = alvo})
		addEvent(string, 2250, {alvo = alvo})
		addEvent(string, 2500, {alvo = alvo})
		addEvent(string, 2750, {alvo = alvo})
		addEvent(string, 3000, {alvo = alvo})
		addEvent(normalstr, 3050, {alvo = alvo})
		return 0


elseif pokemon.spell == "Falling Rocks" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 11)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 44)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end

	return 0
elseif pokemon.spell == "Team Slice" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 19)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		end
		end
		end

	local function fall2(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 20)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		end
		end
		end
if isInArray({"Shiny Scyther"}, getCreatureName(getCreatureSummons(cid)[1])) then		
for rocks = 1, 72 do
addEvent(fall2, rocks*35, {cid = cid})
end
else
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end
end
	return 0

elseif pokemon.spell == "Pay Day" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 6)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 9)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end

	return 0
elseif pokemon.spell == "Metronome" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 11)
		doAreaCombatHealth(getCreatureSummons(cid)[1], ROCKDAMAGEWILD, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 44)
		end
		end
		end

local function eletri(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 40)
		doAreaCombatHealth(getCreatureSummons(cid)[1], ELECTRICDAMAGEWILD, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 11)
		end
		end
		end

local function blizzard(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 28)
		doAreaCombatHealth(getCreatureSummons(cid)[1], ICEDAMAGE, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 52)
		end
		end
		end

local function rain(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 2)
		doAreaCombatHealth(getCreatureSummons(cid)[1], WATERDAMAGE, pos, pu, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		end
		end
		end

local function go2(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], FIREDAMAGE, getThingPos(getCreatureSummons(cid)[1]), combat_arr1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 6)
end
end
	
		
local function go(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		doAreaCombatHealth(getCreatureSummons(cid)[1], FIREDAMAGE, getThingPos(getCreatureSummons(cid)[1]), combat_arr2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
	end
end
		
		
local function go1(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], FIREDAMAGE, getThingPos(getCreatureSummons(cid)[1]),combat_arr3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 15)
end
end
local function go3(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], FIREDAMAGE, getThingPos(getCreatureSummons(cid)[1]),combat_arr4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
end
end
local function shadow(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 18)
		doAreaCombatHealth(getCreatureSummons(cid)[1], GHOSTDAMAGEWILD, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)
		end
		end
		end

	local function dragon(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 3)
		doAreaCombatHealth(getCreatureSummons(cid)[1], DRAGONDAMAGEWILD, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
		end
		end
		end

local function go23(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], PSYCHICDAMAGE, getThingPos(getCreatureSummons(cid)[1]), psy2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 134)
end
end
	
		
		
local function go3(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		doAreaCombatHealth(getCreatureSummons(cid)[1], PSYCHICDAMAGE, getThingPos(getCreatureSummons(cid)[1]), psy4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 137)
	end
end
		
		
		
local function go13(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], PSYCHICDAMAGE, getThingPos(getCreatureSummons(cid)[1]), AREA_GREATLOVE, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 133)
end
end
	

local metronomerandom = math.random(1,8)

if metronomerandom == 1 then 	
for rocks = 1, 72 do
addEvent(dragon, rocks*35, {cid = cid})
end
elseif metronomerandom == 2 then 
		
for rocks = 1, 72 do
addEvent(shadow, rocks*35, {cid = cid})
end
elseif metronomerandom == 3 then 
addEvent(go2, 600, {cid = cid})	
addEvent(go, 1000, {cid = cid})
	addEvent(go, 300, {cid = cid})
	addEvent(go1, 600, {cid = cid})
	addEvent(go2, 900, {cid = cid})
	addEvent(go3, 1200, {cid = cid})
elseif metronomerandom == 4 then 		
for rocks = 1, 72 do
addEvent(rain, rocks*35, {cid = cid})
end
elseif metronomerandom == 5 then 		
for rocks = 1, 72 do
addEvent(blizzard, rocks*35, {cid = cid})
end
elseif metronomerandom == 6 then 		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end
elseif metronomerandom == 7 then 		
for rocks = 1, 72 do
addEvent(eletri, rocks*35, {cid = cid})
end
elseif metronomerandom == 8 then 
addEvent(go3, 1000, {cid = cid})
addEvent(go13, 300, {cid = cid})
addEvent(go23, 600, {cid = cid})	
end
	return 0
elseif pokemon.spell == "Electric Storm" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 40)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 11)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end

	return 0
elseif pokemon.spell == "Blizzard" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 28)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 52)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end

	return 0

elseif pokemon.spell == "Hydro Rain" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureSummons(params.cid)[1]) then
		local pos = getThingPos(getCreatureSummons(cid)[1])
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(getCreatureSummons(cid)[1])
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 2)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, pos, pu, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end


	return 0
elseif pokemon.spell == "Bone Rain" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		
		local pos = getThingPos(params.cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(params.cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 7)
		doAreaCombatHealth(params.cid, element, pos, pu, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		end
		
		end
	local sumonado = getCreatureSummons(cid)[1]	
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = sumonado})
end


	return 0

elseif pokemon.spell == "Sludge Rain" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		
		local pos = getThingPos(params.cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(params.cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 38)
		doAreaCombatHealth(params.cid, element, pos, pu, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 116)
		end
		
		end
	local sumonado = getCreatureSummons(cid)[1]		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = sumonado})
end


	return 0
elseif pokemon.spell == "Mortal Gas" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		
		local pos = getThingPos(params.cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(params.cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 23)
		doAreaCombatHealth(params.cid, element, pos, pu, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		end
		
		end
	local sumonado = getCreatureSummons(cid)[1]	
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = sumonado})
end


	return 0
elseif pokemon.spell == "Hydro Pump" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		
	
		
	
	

					
		
	local function fall2(params)
		
		
		if isCreature(params.cid) then
	
	local pos1 = getThingPos(params.cid)

		pos1.x = pos1.x + 3
	local pos2 = getThingPos(params.cid)

		pos2.x = pos2.x - 3

	local pos3 = getThingPos(params.cid)

		pos3.x = pos3.x + 3
                pos3.y = pos3.y + 3
	local pos4 = getThingPos(params.cid)

		pos4.x = pos4.x + 3
                pos4.y = pos4.y - 3

	local pos5 = getThingPos(params.cid)

		pos5.y = pos5.y + 3
	local pos6 = getThingPos(params.cid)

		pos6.y = pos6.y - 3

	local pos7 = getThingPos(params.cid)

		pos7.x = pos7.x - 3
                pos7.y = pos7.y - 3
local pos8 = getThingPos(params.cid)

		pos8.x = pos8.x - 3
                pos8.y = pos8.y + 3




	doSendDistanceShoot(getThingPos(params.cid),pos1 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos2 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos3 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos4 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos5 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos6 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos7 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos8 , 2)



		
					doAreaCombatHealth(params.cid, element, getThingPos(params.cid), pump2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		end
		end

	local function fall3(params)
		
		
		if isCreature(params.cid) then
	
	local pos1 = getThingPos(params.cid)

		pos1.x = pos1.x + 1
	local pos2 = getThingPos(params.cid)

		pos2.x = pos2.x - 1

	local pos3 = getThingPos(params.cid)

		pos3.y = pos3.y + 1
               
	local pos4 = getThingPos(params.cid)

		pos3.y = pos3.y - 1

local pos5 = getThingPos(params.cid)

		pos5.x = pos5.x + 1
                pos5.y = pos5.y + 1 
	local pos6 = getThingPos(params.cid)

		pos6.x = pos6.x + 1
                pos6.y = pos6.y - 1 

	local pos7 = getThingPos(params.cid)

		pos7.x = pos7.x - 1
                pos7.y = pos7.y + 1 
               
	local pos8 = getThingPos(params.cid)

	        pos8.x = pos8.x - 1
                pos8.y = pos8.y - 1 






	doSendDistanceShoot(getThingPos(params.cid),pos1 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos2 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos3 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos4 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos5 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos6 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos7 , 2)
doSendDistanceShoot(getThingPos(params.cid),pos8 , 2)


doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), pump, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		
					
		end
		end


		
	
	

local sumonado = getCreatureSummons(cid)[1]

addEvent(fall2, 300, {cid = sumonado})
addEvent(fall3, 0, {cid = sumonado})



	return 0

elseif pokemon.spell == "Mega Horn" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		
		local pos = getThingPos(params.cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(params.cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 25)
		doAreaCombatHealth(params.cid, element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 29)
		
		end
		end
	local sumonado = getCreatureSummons(cid)[1]	
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = sumonado})
end

	return 0

elseif pokemon.spell == "Shadow Storm" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		
		local pos = getThingPos(params.cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(params.cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 18)
		doAreaCombatHealth(params.cid, element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)
		end
		
		end
	local sumonado = getCreatureSummons(cid)[1]	
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = sumonado})
end

	return 0
elseif pokemon.spell == "Magma Meteor" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function fall(params)
		if isCreature(params.cid) then
		
		local pos = getThingPos(params.cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(params.cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 3)
		doAreaCombatHealth(params.cid, element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
		end
		
		end
local sumonado = getCreatureSummons(cid)[1]		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = sumonado})
end

	return 0
elseif pokemon.spell == "Reflect" then

doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 135)
		setPlayerStorageValue(getCreatureSummons(cid)[1], 34, 1)
	return 0
elseif pokemon.spell == "Water Gun" then
	
		
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 74)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 75)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 76)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 77)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 75)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 78)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 69)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 70)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 71)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 72)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 70)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 73)
		end
		doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0
elseif pokemon.spell == "Ground Chop" then
	
		
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
local function area1(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
local function area2(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]),wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
		addEvent(area1, 200,{cid = cid})
addEvent(area2, 300,{cid = cid})

		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		local function area1(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
local function area2(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]),wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
	addEvent(area1, 200,{cid = cid})
addEvent(area2, 300,{cid = cid})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
local function area1(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
local function area2(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]),wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
	addEvent(area1, 200,{cid = cid})
addEvent(area2, 300,{cid = cid})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
local function area1(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
local function area2(params)
if isCreature(getCreatureSummons(params.cid)[1]) then
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]),wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
	addEvent(area1, 200,{cid = cid})
addEvent(area2, 300,{cid = cid})		


		end
		doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0
elseif pokemon.spell == "Poison Gun" then
	
		
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 7)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 7)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 7)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))),  20)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 7)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))),  8)
		end
		doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0
elseif pokemon.spell == "Toxic" then
	
		
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))),  114)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))),  114)
		end
		doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0
	elseif pokemon.spell == "Water Spout" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), {x=getThingPos(getCreatureSummons(cid)[1]).x, y=getThingPos(getCreatureSummons(cid)[1]).y-5, z=getThingPos(getCreatureSummons(cid)[1]).z}, 2)
		local function spout(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		for x = -2,2 do
			for y = -2,2 do
		local newpos = getThingPos(getCreatureSummons(params.cid)[1])
		newpos.x = newpos.x+x
		newpos.y = newpos.y+y
		doSendDistanceShoot({x=getThingPos(getCreatureSummons(params.cid)[1]).x, y=getThingPos(getCreatureSummons(params.cid)[1]).y-5, z=getThingPos(getCreatureSummons(params.cid)[1]).z}, newpos, 2)
		end
		end
		end
		end
		
		local function spdmg(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureSummons(params.cid)[1]), waterspout, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		end
		end

		addEvent(spout, 300, {cid = cid})
		addEvent(spdmg, 450, {cid = cid})
	return 0

elseif pokemon.spell == "Fire Blast" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 35)

		
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 61, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 61, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 61, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 61, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 61, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 61, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 63, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 63, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 63, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 63, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 63, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 63, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0

elseif pokemon.spell == "Acient Power" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then

		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 18)

		
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 61, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 61, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 61, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 61, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 61, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 61, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 63, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 63, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 63, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 63, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 63, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 63, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif pokemon.spell == "Stickmerang" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		
	local function area1(params)	
if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.arr,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 212) 
end
end
local sumonado = getCreatureSummons(cid)[1]

		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
addEvent(area1,100,{cid = sumonado,arr = Stick04})
addEvent(area1,400,{cid = sumonado,arr = Stick04a})
addEvent(area1,800,{cid = sumonado,arr = Stick04b})
addEvent(area1,1200,{cid = sumonado,arr = Stick04c})
addEvent(area1,1600,{cid = sumonado,arr = Stick04d})
addEvent(area1,2000,{cid = sumonado,arr = Stick04e})

		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
addEvent(area1,100,{cid = sumonado,arr = Stick01})
addEvent(area1,400,{cid = sumonado,arr = Stick01a})
addEvent(area1,800,{cid = sumonado,arr = Stick01b})
addEvent(area1,1200,{cid = sumonado,arr = Stick01c})
addEvent(area1,1600,{cid = sumonado,arr = Stick01d})
addEvent(area1,2000,{cid = sumonado,arr = Stick01e})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
addEvent(area1,100,{cid = sumonado,arr = Stick03})
addEvent(area1,400,{cid = sumonado,arr = Stick03a})
addEvent(area1,800,{cid = sumonado,arr = Stick03b})
addEvent(area1,1200,{cid = sumonado,arr = Stick03c})
addEvent(area1,1600,{cid = sumonado,arr = Stick03d})
addEvent(area1,2000,{cid = sumonado,arr = Stick03e})
		
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
addEvent(area1,100,{cid = sumonado,arr = Stick02})
addEvent(area1,400,{cid = sumonado,arr = Stick02a})
addEvent(area1,800,{cid = sumonado,arr = Stick02b})
addEvent(area1,1200,{cid = sumonado,arr = Stick02c})
addEvent(area1,1600,{cid = sumonado,arr = Stick02d})
addEvent(area1,2000,{cid = sumonado,arr = Stick02e})	
		end
		return 0
elseif pokemon.spell == "Bonemerang" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		
	local function area1(params)	
if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.arr,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 117) 
end
end
local sumonado = getCreatureSummons(cid)[1]

		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
addEvent(area1,100,{cid = sumonado,arr = Stick04})
addEvent(area1,400,{cid = sumonado,arr = Stick04a})
addEvent(area1,800,{cid = sumonado,arr = Stick04b})
addEvent(area1,1200,{cid = sumonado,arr = Stick04c})
addEvent(area1,1600,{cid = sumonado,arr = Stick04d})
addEvent(area1,2000,{cid = sumonado,arr = Stick04e})

		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
addEvent(area1,100,{cid = sumonado,arr = Stick01})
addEvent(area1,400,{cid = sumonado,arr = Stick01a})
addEvent(area1,800,{cid = sumonado,arr = Stick01b})
addEvent(area1,1200,{cid = sumonado,arr = Stick01c})
addEvent(area1,1600,{cid = sumonado,arr = Stick01d})
addEvent(area1,2000,{cid = sumonado,arr = Stick01e})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
addEvent(area1,100,{cid = sumonado,arr = Stick03})
addEvent(area1,400,{cid = sumonado,arr = Stick03a})
addEvent(area1,800,{cid = sumonado,arr = Stick03b})
addEvent(area1,1200,{cid = sumonado,arr = Stick03c})
addEvent(area1,1600,{cid = sumonado,arr = Stick03d})
addEvent(area1,2000,{cid = sumonado,arr = Stick03e})
		
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
addEvent(area1,100,{cid = sumonado,arr = Stick02})
addEvent(area1,400,{cid = sumonado,arr = Stick02a})
addEvent(area1,800,{cid = sumonado,arr = Stick02b})
addEvent(area1,1200,{cid = sumonado,arr = Stick02c})
addEvent(area1,1600,{cid = sumonado,arr = Stick02d})
addEvent(area1,2000,{cid = sumonado,arr = Stick02e})	
		end
		return 0
elseif pokemon.spell == "Fist Machine" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)

		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 215, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 215, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 215, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 215, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 215, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 215, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 216, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 216, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 216, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 216, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 216, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 216, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0


elseif pokemon.spell == "Destroyer Hand" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]),params.ar,26)

		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, champ, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)

		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
			if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 215, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 215, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 215, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 215, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 215, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 215, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 216, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 216, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 216, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 216, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 216, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 216, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif pokemon.spell == "Gust" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 42)

		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 42, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 42, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 42, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 42, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 42, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 42, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 42, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 42, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 42, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 42, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 42, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 42, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif pokemon.spell == "Spark" then
		doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
				local function spark(params)
				if isCreature(params.cid) then
				if isCreature(getCreatureSummons(params.cid)[1]) then
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), params.cidpos, 40)
				doAreaCombatHealth(getCreatureSummons(cid)[1], element, params.cidpos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
				end
				end
				end
		for a = -1, 1 do
			for b = -1, 1 do
			cidpos = getThingPos(getCreatureSummons(cid)[1])
			cidpos.x = cidpos.x+a
			cidpos.y = cidpos.y+b
			addEvent(spark, math.abs(a)*350 + math.abs(b)*650, {cid = cid, cidpos = cidpos})
			end
		end		
		return 0
elseif pokemon.spell == "Stick Wave" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)

		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 212, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 212, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 212, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 212, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 212, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 212, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 212, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 212, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 212, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 212, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 212, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 212, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif pokemon.spell == "Hydro Cannon" then
		doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, whirl3,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 65, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 65, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 65, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 65, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 65, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 65, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 67, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 67, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 67, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 67, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 67, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 67, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif pokemon.spell == "Fire Fang" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 146)
		local function damage(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
		end
		end
		end
		addEvent(damage, 200, {cid = cid})
		return 0
elseif pokemon.spell == "Poison Fang" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 146)
		local function damage(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		end
		end
		end
		addEvent(damage, 200, {cid = cid})
		return 0

elseif pokemon.spell == "Fireball" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
			if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 3)
			end
			end
			end
			local function damage(params)
			if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), waba, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
			end
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0
elseif pokemon.spell == "Water ball" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
			if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), getThingPos(getCreatureTarget(params.cid)), 2)
			end
			end
			end
			local function damage(params)
			if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(getCreatureTarget(cid)), waba, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0


	elseif pokemon.spell == "Ember" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 3)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 15)
		return 0

elseif pokemon.spell == "Rollout" then
local summons = getCreatureSummons(cid)[1]
local mon = getCreatureName(summons)
local spd = getCreatureSpeed(summons)
local bspd = getCreatureBaseSpeed(summons)
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)

doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd+100)
		if getCreatureName(getCreatureSummons(cid)[1]) == "Golem" then


		doSetCreatureOutfit(getCreatureSummons(cid)[1], golem, 8300)
		
		elseif getCreatureName(getCreatureSummons(cid)[1]) == "Electrode" then
		doSetCreatureOutfit(getCreatureSummons(cid)[1], electrode, 8300)

	elseif getCreatureName(getCreatureSummons(cid)[1]) == "Voltorb" then
		doSetCreatureOutfit(getCreatureSummons(cid)[1], voltorb, 8300)

		elseif getCreatureName(getCreatureSummons(cid)[1]) == "Sandshrew" then
		doSetCreatureOutfit(getCreatureSummons(cid)[1], sandshrew, 8300)

		elseif getCreatureName(getCreatureSummons(cid)[1]) == "Sandslash" then
		doSetCreatureOutfit(getCreatureSummons(cid)[1], sandslash, 8300)

		end
		setPlayerStorageValue(getCreatureSummons(cid)[1], 4, 1)
			local function roll(params)
			if isCreature(params.cid) then
			if isCreature(getCreatureSummons(params.cid)[1]) then
			if getCreatureCondition(getCreatureSummons(params.cid)[1], CONDITION_OUTFIT) == true then
			doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), rollout, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 255)
			end
			end
			end
			end
		for r = 1, 15 do
		addEvent(roll, 500*r, {cid = cid})
		end

			local function stoproll(params)
			if isCreature(params.cid) then
			
			doChangeSpeed(params.cid, bspd-100)
			if getPlayerStorageValue(params.cid, 4) >= 1 then
			setPlayerStorageValue(params.cid, 4, 0)
doChangeSpeed(params.cid, -spd)
doChangeSpeed(params.cid, bspd)
	
			
			end
			end
			end
viado = summons
		addEvent(stoproll, 8300, {cid = viado})
		return 0

elseif pokemon.spell == "Bone Slash" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 7)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 117)
		return 0
elseif pokemon.spell == "Hyper Fang" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 159)
		return 0
	elseif pokemon.spell == "Horn Attack" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
return 0
		elseif pokemon.spell == "Rock Throw" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)
		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 11)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	return 0

elseif pokemon.spell == "Psy Pulse" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),24)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
			end
end
			end
local sumonado = getCreatureSummons(cid)[1]
		addEvent(damage, 100, {cid = sumonado })
		addEvent(damage, 600, {cid = sumonado })
		addEvent(throw, 0, {cid = sumonado })
		addEvent(throw, 550, {cid = sumonado })
		return 0

elseif pokemon.spell == "Bone Club" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),7)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			end
end
			end
local sumonado = getCreatureSummons(cid)[1]
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
		return 0

elseif pokemon.spell == "Thunder Bolt" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then

	local pos = getThingPos(getCreatureTarget(params.cid))
		
		local frompos = getThingPos(params.cid)
		frompos.x = pos.x+2
		frompos.y = pos.y+2
             

doSendDistanceShoot(pos, frompos, 40)
			end
			end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 11)
			end
end
			end
local sumonado = getCreatureSummons(cid)[1]
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
		return 0

elseif pokemon.spell == "Dark Pulse" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),18)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)
			end
end
			end
local sumonado = getCreatureSummons(cid)[1]
addEvent(throw, 0, {cid = sumonado})
		addEvent(damage, 100, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		
		return 0



elseif pokemon.spell == "Restore" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 132)
local summon = getCreatureSummons(cid)[1]
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(getCreatureSummons(cid)[1], curar)
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..curar.."", 35)
		return 0

elseif pokemon.spell == "Self Heal" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 132)
local summon = getCreatureSummons(cid)[1]
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(getCreatureSummons(cid)[1], curar)
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..curar.."", 35)
		return 0

elseif pokemon.spell == "Rest" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 32)
local summon = getCreatureSummons(cid)[1]
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(getCreatureSummons(cid)[1], curar)
if getCreatureName(getCreatureSummons(cid)[1]) == "Snorlax" then
local gordao = {lookType = 258}
doSetCreatureOutfit(summon, gordao, 5000)
end
		rest(summon)
		return 0

elseif pokemon.spell == "Healera" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)

 local summon = getCreatureSummons(cid)[1]
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(getCreatureSummons(cid)[1], curar)
		doSendAnimatedText(getThingPos(getCreatureSummons(cid)[1]), "+"..curar.."", 35)
 local d = getCreaturesInRange(getThingPos(getCreatureSummons(cid)[1]), 2, 2, 1, 0)
                        for _,pid in pairs(d) do
if isSummon(pid) then

if getPlayerStorageValue(getCreatureMaster(pid), 3333) == 0 then

local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(pid, curar)
		doSendAnimatedText(getThingPos(pid), "+"..curar.."", 35)
end
elseif isPlayer(pid) then
		doSendAnimatedText(getThingPos(pid), "+"..curar.."", 35)
  local summon = pid
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(pid, curar)
		doSendAnimatedText(getThingPos(pid), "+"..curar.."", 35)
end
                        end
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), sleeparea, 0, 0, 12)
		return 0

elseif pokemon.spell == "Earth Quake" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
xxe = getCreatureName(getCreatureSummons(cid)[1]) 
		





local function go14(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)



else
return true
end
end

local function go13(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go14, 500,  cid)

else
return true
end
end
local function go12(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go13, 500,  cid)

else
return true
end
end

local function go11(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go12, 500,  cid)

else
return true
end
end

local function go10(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)


addEvent(go11, 500,  cid)
else
return true
end
end

local function go9(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go10, 500,  cid)

else
return true
end
end
local function go8(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go9, 500,  cid)

else
return true
end
end

local function go7(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go8, 500,  cid)

else
return true
end
end


local function go6(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go7, 500,  cid)

else
return true
end
end

local function go5(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go6, 500,  cid)

else
return true
end
end
local function go4(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go5, 500,  cid)

else
return true
end
end
local function go3(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go4, 500, cid)


else
return true
end
end

local function go2(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go3, 500, cid)


else
return true
end
end

local function go(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go2, 500, cid)


else
return true
end
end


doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go, 500, cid)


		
		return 0

elseif pokemon.spell == "Stunning Confusion" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
xxe = getCreatureName(getCreatureSummons(cid)[1]) 
		





local function go14(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)



else
return true
end
end

local function go13(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go14, 500,  cid)

else
return true
end
end
local function go12(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go13, 500,  cid)

else
return true
end
end

local function go11(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go12, 500,  cid)

else
return true
end
end

local function go10(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)


addEvent(go11, 500,  cid)
else
return true
end
end

local function go9(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go10, 500,  cid)

else
return true
end
end
local function go8(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go9, 500,  cid)

else
return true
end
end

local function go7(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go8, 500,  cid)

else
return true
end
end


local function go6(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go7, 500,  cid)

else
return true
end
end

local function go5(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go6, 500,  cid)

else
return true
end
end
local function go4(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go5, 500,  cid)

else
return true
end
end
local function go3(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go4, 500, cid)


else
return true
end
end

local function go2(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go3, 500, cid)


else
return true
end
end

local function go(params)
		if #getCreatureSummons(cid) == 1 then

doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go2, 500, cid)


else
return true
end
end


doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go, 500, cid)


		
		return 0

elseif pokemon.spell == "Calm Mind" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 37)
		setPlayerStorageValue(getCreatureSummons(cid)[1], 254, 1)
		local function quiet(params)
		if isCreature(params.cid) then
		
		if getPlayerStorageValue(params.cid, 254) >= 1 then
		doSendMagicEffect(getThingPos(params.cid), 220)
		end
		end
		
		end
		local function desc(params)
		if isCreature(params.cid) then
	
		if getPlayerStorageValue(params.cid, 254) >= 1 then
		setPlayerStorageValue(params.cid, 254, 0)
		end
		
		end
		end
local sumonado = getCreatureSummons(cid)[1]
		for calm = 1, 12 do
		addEvent(quiet, calm*500, {cid = sumonado})

		end

		addEvent(desc, 12*500, {cid = sumonado})
	return 0
elseif pokemon.spell == "Focus" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 132)
		setPlayerStorageValue(getCreatureSummons(cid)[1], 254, 1)
	
		local function desc(params)
		if isCreature(params.cid) then
		
		if getPlayerStorageValue(params.cid, 254) >= 1 then
		setPlayerStorageValue(params.cid, 254, 0)
		end
		end
		
		end
		
local sumonado = getCreatureSummons(cid)[1]
		addEvent(desc, 12*500, {cid = sumonado})
	return 0

elseif pokemon.spell == "Acient Fury" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
local xsx = getCreatureName(getCreatureSummons(cid)[1])
if xsx == "Elder Charizard" then
		doSetCreatureOutfit(getCreatureSummons(cid)[1], elder, 8300)
elseif xsx == "Shiny Blastoise" then
	doSetCreatureOutfit(getCreatureSummons(cid)[1], blastoise, 8300)
end
	setPlayerStorageValue(getCreatureSummons(cid)[1], 254, 1)
		
		local function desc(params)
		if isCreature(params.cid) then
		
		if getPlayerStorageValue(params.cid, 254) >= 1 then
		setPlayerStorageValue(params.cid, 254, 0)
		end
		
		end
		end

			local function roll(params)
			if isCreature(params.cid) then
			
doSendMagicEffect(getThingPos(params.cid), 208)
doSendMagicEffect(getThingPos(params.cid), 29)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			
end
end

			
			end
			end
local sumonado = getCreatureSummons(cid)[1]
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})
		end
		

		addEvent(desc, 10*800, {cid = sumonado})
	return 0

elseif pokemon.spell == "Furious Legs" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
	
		
	

			local function roll(params)
					if isCreature(params.cid) then

doSendMagicEffect(getThingPos(params.cid), 208)
doSendMagicEffect(getThingPos(params.cid), 29)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			end
end


			
			end
			end
local sumonado = getCreatureSummons(cid)[1]
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})
		end
		

		
	return 0

elseif pokemon.spell == "Ultimate Champion" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
	
		
	

			local function roll(params)
					if isCreature(params.cid) then
			
doSendMagicEffect(getThingPos(params.cid), 208)
doSendMagicEffect(getThingPos(params.cid), 28)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			end
end
end

			
			end
			
local sumonado = getCreatureSummons(cid)[1]
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})
		end
		

		
	return 0
	
elseif pokemon.spell == "Electric Charge" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)

	setPlayerStorageValue(getCreatureSummons(cid)[1], 254, 1)
		
		local function desc(params)
		if isCreature(params.cid) then
		if getPlayerStorageValue(params.cid, 254) >= 1 then
		setPlayerStorageValue(params.cid, 254, 0)
		
		end
		end
		end

			local function roll(params)
					if isCreature(params.cid) then
			
doSendMagicEffect(getThingPos(params.cid), 207)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			
end
end

			
			end
			end
local sumonado = getCreatureSummons(cid)[1]
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})
		end
		

		addEvent(desc, 10*800, {cid = sumonado})
	return 0

elseif pokemon.spell == "Fury" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 28)

		setPlayerStorageValue(getCreatureSummons(cid)[1], 4, 1)
	
	
			local function roll(params)
					if isCreature(params.cid) then
			
doSendMagicEffect(getThingPos(params.cid), 208)
doSendMagicEffect(getThingPos(params.cid), 28)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			
end
end

			
			end
			end

		local function chard(params)
		if isCreature(params.cid) then
		if getPlayerStorageValue(params.cid, 4) >= 1 then
		setPlayerStorageValue(params.cid, 4, -1)
		end
		end
		end
local sumonado = getCreatureSummons(cid)[1]
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})

		end

addEvent(chard, 6000, {cid = sumonado})


		return 0
elseif pokemon.spell == "Rage" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 14)

		
	
	
			local function roll(params)
		if isCreature(params.cid) then
		
doSendMagicEffect(getThingPos(params.cid), 14)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			end

end

			
			end
			end

	local sumonado = getCreatureSummons(cid)[1]	
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})

		end



		return 0
elseif pokemon.spell == "Strafe" then
local summons = getCreatureSummons(cid)[1]
local mon = getCreatureName(summons)
local spd = getCreatureSpeed(summons)
local bspd = getCreatureBaseSpeed(summons)
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)

doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd+100)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 14)

		
	
	
			local function roll(params)
		if isCreature(params.cid) then
		
doSendMagicEffect(getThingPos(params.cid), 14)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			
end
end

			
			end
			end


			local function stopspeed(params)
			if isCreature(params.cid) then
			
doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd)

end
end
local sumonado = getCreatureSummons(cid)[1]
		addEvent(stopspeed, 6000, {cid = sumonado})
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})

		end



		return 0
elseif pokemon.spell == "Agility" then
local summons = getCreatureSummons(cid)[1]
local mon = getCreatureName(summons)
local spd = getCreatureSpeed(summons)
local bspd = getCreatureBaseSpeed(summons)
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)

doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd+200)
		doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 14)

		
	
	
			local function roll(params)
			if isCreature(params.cid) then
			
doSendMagicEffect(getThingPos(params.cid), 14)
if  isCreature(getCreatureTarget(params.cid)) then
	if getDistanceBetween(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			
end
end

			
			end
			end


			local function stopspeed(params)
			if isCreature(params.cid) then

doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd)
end

end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(stopspeed, 6000, {cid = sumonado})
		for r = 1, 15 do
		addEvent(roll, 500*r, {cid = sumonado})

		end



		return 0
	elseif pokemon.spell == "Headbutt" then

doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	return 0
	elseif pokemon.spell == "Razor Leaf" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 8)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 79)
			end
end
			end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
	return 0

elseif pokemon.spell == "Shockwave" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function sandattack(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.ef)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, params.wave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-1, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-2, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-3, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-4, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-5, z=posicao.z}, ef = 126, wave = swaven})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+2, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+3, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+4, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+5, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+6, z=posicao.z}, ef = 125, wave = swaves})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+2, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+3, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+4, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+5, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+6, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x-2, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x-3, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x-4, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x-5, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		end
	return 0

elseif pokemon.spell == "Horn Drill" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 25)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			end
end
			end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
	return 0

elseif pokemon.spell == "Fury Attack" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
                        if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 15)
		        end
                        end
			end
			local function damage(params)
			if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
                        end
			end
			end
local sumonado = getCreatureSummons(cid)[1]
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
	return 0

elseif pokemon.spell == "Rock Tomb" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		rock1 = {x=getThingPos(getCreatureSummons(cid)[1]).x+1, y=getThingPos(getCreatureSummons(cid)[1]).y-1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock2 = {x=getThingPos(getCreatureSummons(cid)[1]).x+0, y=getThingPos(getCreatureSummons(cid)[1]).y-1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock3 = {x=getThingPos(getCreatureSummons(cid)[1]).x-1, y=getThingPos(getCreatureSummons(cid)[1]).y-1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tombn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		rock1 = {x=getThingPos(getCreatureSummons(cid)[1]).x+1, y=getThingPos(getCreatureSummons(cid)[1]).y+1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock2 = {x=getThingPos(getCreatureSummons(cid)[1]).x+0, y=getThingPos(getCreatureSummons(cid)[1]).y+1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock3 = {x=getThingPos(getCreatureSummons(cid)[1]).x-1, y=getThingPos(getCreatureSummons(cid)[1]).y+1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tombs, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		rock1 = {x=getThingPos(getCreatureSummons(cid)[1]).x-1, y=getThingPos(getCreatureSummons(cid)[1]).y+1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock2 = {x=getThingPos(getCreatureSummons(cid)[1]).x-1, y=getThingPos(getCreatureSummons(cid)[1]).y+0, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock3 = {x=getThingPos(getCreatureSummons(cid)[1]).x-1, y=getThingPos(getCreatureSummons(cid)[1]).y-1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tombw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		rock1 = {x=getThingPos(getCreatureSummons(cid)[1]).x+1, y=getThingPos(getCreatureSummons(cid)[1]).y+1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock2 = {x=getThingPos(getCreatureSummons(cid)[1]).x+1, y=getThingPos(getCreatureSummons(cid)[1]).y+0, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock3 = {x=getThingPos(getCreatureSummons(cid)[1]).x+1, y=getThingPos(getCreatureSummons(cid)[1]).y-1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tombe, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		end
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), rock1, 11)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), rock2, 11)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), rock3, 11)
		return 0
elseif pokemon.spell == "Cross Chop" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		rock1 = {x=getThingPos(getCreatureSummons(cid)[1]).x+1, y=getThingPos(getCreatureSummons(cid)[1]).y-1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock2 = {x=getThingPos(getCreatureSummons(cid)[1]).x+0, y=getThingPos(getCreatureSummons(cid)[1]).y-1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock3 = {x=getThingPos(getCreatureSummons(cid)[1]).x-1, y=getThingPos(getCreatureSummons(cid)[1]).y-1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tombn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		rock1 = {x=getThingPos(getCreatureSummons(cid)[1]).x+1, y=getThingPos(getCreatureSummons(cid)[1]).y+1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock2 = {x=getThingPos(getCreatureSummons(cid)[1]).x+0, y=getThingPos(getCreatureSummons(cid)[1]).y+1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock3 = {x=getThingPos(getCreatureSummons(cid)[1]).x-1, y=getThingPos(getCreatureSummons(cid)[1]).y+1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tombs, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		rock1 = {x=getThingPos(getCreatureSummons(cid)[1]).x-1, y=getThingPos(getCreatureSummons(cid)[1]).y+1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock2 = {x=getThingPos(getCreatureSummons(cid)[1]).x-1, y=getThingPos(getCreatureSummons(cid)[1]).y+0, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock3 = {x=getThingPos(getCreatureSummons(cid)[1]).x-1, y=getThingPos(getCreatureSummons(cid)[1]).y-1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tombw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		rock1 = {x=getThingPos(getCreatureSummons(cid)[1]).x+1, y=getThingPos(getCreatureSummons(cid)[1]).y+1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock2 = {x=getThingPos(getCreatureSummons(cid)[1]).x+1, y=getThingPos(getCreatureSummons(cid)[1]).y+0, z=getThingPos(getCreatureSummons(cid)[1]).z}
		rock3 = {x=getThingPos(getCreatureSummons(cid)[1]).x+1, y=getThingPos(getCreatureSummons(cid)[1]).y-1, z=getThingPos(getCreatureSummons(cid)[1]).z}
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tombe, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		end
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), rock1, 26)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), rock2, 26)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), rock3, 26)
		return 0
elseif pokemon.spell == "Psycho Shift" then
		local pos = getThingPos(getCreatureTarget(cid))
		local pos2 = getThingPos(getCreatureTarget(cid))
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		if hasSqm(pos) and isSightClear(getThingPos(getCreatureSummons(cid)[1]), pos, false) then
		if getTileThingByPos(pos) and getTileThingByPos(pos).itemid >= 1 and not isInArray({919, 460, 4820, 4821, 4822, 4823, 4824, 4825}, getTileThingByPos(pos).itemid) and isWalkable(pos) then
		pos = getClosestFreeTile(getCreatureTarget(cid), pos)
		doSendDistanceShoot(pos2, pos, 39)
		doTeleportThing(getCreatureTarget(cid), pos, false)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 134)
		doSendMagicEffect(pos2, 12)
		else
		local newpos = getClosestFreeTile(getCreatureTarget(cid), pos)
		doSendDistanceShoot(pos2, newpos, 39)
		doTeleportThing(getCreatureTarget(cid), newpos, false)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 134)
		doSendMagicEffect(pos2, 12)
		end
		else
		doSendDistanceShoot(pos2, getThingPos(getCreatureTarget(cid)), 39)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 134)
		doSendMagicEffect(pos2, 12)
		end	
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		return 0

	elseif pokemon.spell == "Sand Attack" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function sandattack(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, sand1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.ef)
		
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, ef = 120})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, ef = 120})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, ef = 120})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, ef = 122})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, ef = 122})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, ef = 122})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, ef = 121})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, ef = 121})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, ef = 121})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, ef = 119})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, ef = 119})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, ef = 119})
		end
return 0

elseif pokemon.spell == "Flamethrower" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		local flamepos2 = getThingPos(getCreatureSummons(cid)[1])
		flamepos2.x = flamepos2.x+1
		flamepos2.y = flamepos2.y-1
		doSendMagicEffect(flamepos2, 225)--55
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), flamen, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		local flamepos1 = getThingPos(getCreatureSummons(cid)[1])
		flamepos1.x = flamepos1.x+3
		flamepos1.y = flamepos1.y+1
		doSendMagicEffect(flamepos1, 58)--58
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), flamee, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		local flamepos = getThingPos(getCreatureSummons(cid)[1])
		flamepos.x = flamepos.x+1
		flamepos.y = flamepos.y+3
		doSendMagicEffect(flamepos, 226)--56
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), flames, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		local flamepos = getThingPos(getCreatureSummons(cid)[1])
		flamepos.x = flamepos.x-1
		flamepos.y = flamepos.y+1
		doSendMagicEffect(flamepos, 57)--57
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), flamew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		end
		return 0

elseif pokemon.spell == "Mind Blast" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		
		
local function go2(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), psy2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 134)
end
end
	
		
		
local function go(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), psy4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 137)
	end
end
		
		
		
local function go1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), AREA_GREATLOVE, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 133)
end
end
local sumonado = getCreatureSummons(cid)[1]
addEvent(go, 1000, {cid = sumonado})
addEvent(go1, 300, {cid = sumonado})
addEvent(go2, 600, {cid = sumonado})	

		
		return 0
elseif pokemon.spell == "Great Love" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
	
local function go2(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), AREA_GREATLOVE2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 147)
end
end
	
		
local function go(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), AREA_GREATLOVE3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 147)
	end
end
		addEvent(go, 1000, {cid = cid})
	
local function go1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), AREA_GREATLOVE4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 147)
end
end
local d = getCreaturesInRange(getThingPos(getCreatureSummons(cid)[1]), 3, 3, 1, 0)

                       
for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(getCreatureMaster(pid), 3333) >= 1 or getGlobalStorageValue(3333) >= 1 then
love(pid)
end
elseif isMonster(pid) then
                             love(pid)

end
                        end
local sumonado = getCreatureSummons(cid)[1]
addEvent(go, 1000, {cid = sumonado})
addEvent(go1, 300, {cid = sumonado})
addEvent(go2, 600, {cid = sumonado})	

		
		return 0
	elseif pokemon.spell == "Super Sonic" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local t = getCreatureTarget(cid)
		setPlayerStorageValue(t, 5, 1)
		local function confd(params)
		if isCreature(params.t) then
		local spdc = getCreatureSpeed(params.t)
		if getCreatureLookDir(params.t) == 0 then
		confs = math.random(1,3)
		elseif getCreatureLookDir(params.t) == 1 then
			confurandom = math.random(1,99)
			if confurandom <= 33 then
			confs = 0
			elseif confurandom >= 67 then
			confs = 2
			else
			confs = 3
			end
		elseif getCreatureLookDir(params.t) == 2 then
			confurandom = math.random(1,99)
			if confurandom <= 33 then
			confs = 3
			elseif confurandom >= 67 then
			confs = 0
			else
			confs = 1
			end
		elseif getCreatureLookDir(params.t) == 3 then
		confs = math.random(0,2)
		end
		doPushCreature(params.t, confs, 1, 0)
		doSendMagicEffect(getThingPos(params.t), 31)
		end
		end
		local function nonc(params)
		if isCreature(params.t) then
		doChangeSpeed(params.t, -getCreatureSpeed(params.t))
		doChangeSpeed(params.t, getCreatureBaseSpeed(params.t))
		setPlayerStorageValue(params.t, 5, -1)
		end
		end
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 32)

 
		doChangeSpeed(t, -( getCreatureSpeed(t)/3))
		doSendMagicEffect(getThingPos(t), 31)
		for i = 1, math.random(6,7) do
		addEvent(confd, 1000*i, {cid = cid, t = t})
		end
		addEvent(nonc, 7100, {cid - cid, t = t})
	return 0

elseif pokemon.spell == "Roar" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
 local d = getCreaturesInRange(getThingPos(getCreatureSummons(cid)[1]), 2, 2, 1, 0)
                      
                        for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(getCreatureMaster(pid), 3333) >= 1 or getGlobalStorageValue(3333) >= 1 then
Roar(pid)
end
elseif isMonster(pid) then
                                Roar(pid)

end
                        end

	return 0
elseif pokemon.spell == "Scary Face" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
 local d = getCreaturesInRange(getThingPos(getCreatureSummons(cid)[1]), 2, 2, 1, 0)
                        for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(getCreatureMaster(pid), 3333) >= 1 or getGlobalStorageValue(3333) >= 1 then
fear(pid)
end
elseif isMonster(pid) then
                                fear(pid)

end
                        end

	return 0


elseif pokemon.spell == "Sonic Boom" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local t = getCreatureTarget(cid)
		setPlayerStorageValue(t, 5, 1)
		local function confd(params)
		if isCreature(params.t) then
		local spdc = getCreatureSpeed(params.t)
		if getCreatureLookDir(params.t) == 0 then
		confs = math.random(1,3)
		elseif getCreatureLookDir(params.t) == 1 then
			confurandom = math.random(1,99)
			if confurandom <= 33 then
			confs = 0
			elseif confurandom >= 67 then
			confs = 2
			else
			confs = 3
			end
		elseif getCreatureLookDir(params.t) == 2 then
			confurandom = math.random(1,99)
			if confurandom <= 33 then
			confs = 3
			elseif confurandom >= 67 then
			confs = 0
			else
			confs = 1
			end
		elseif getCreatureLookDir(params.t) == 3 then
		confs = math.random(0,2)
		end
		doPushCreature(params.t, confs, 1, 0)
		doSendMagicEffect(getThingPos(params.t), 31)
		end
		end
		local function nonc(params)
		if isCreature(params.t) then
		doChangeSpeed(params.t, -getCreatureSpeed(params.t))
		doChangeSpeed(params.t, getCreatureBaseSpeed(params.t))
		setPlayerStorageValue(params.t, 5, -1)
		end
		end
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 32)
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		doChangeSpeed(t, -( getCreatureSpeed(t)/3))
		doSendMagicEffect(getThingPos(t), 31)
		for i = 1, math.random(6,7) do
		addEvent(confd, 1000*i, {cid = cid, t = t})
		end
		addEvent(nonc, 7100, {cid - cid, t = t})
	return 0

elseif pokemon.spell == "Dizzy Punch" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local t = getCreatureTarget(cid)
		setPlayerStorageValue(t, 5, 1)
		local function confd(params)
		if isCreature(params.t) then
		local spdc = getCreatureSpeed(params.t)
		if getCreatureLookDir(params.t) == 0 then
		confs = math.random(1,3)
		elseif getCreatureLookDir(params.t) == 1 then
			confurandom = math.random(1,99)
			if confurandom <= 33 then
			confs = 0
			elseif confurandom >= 67 then
			confs = 2
			else
			confs = 3
			end
		elseif getCreatureLookDir(params.t) == 2 then
			confurandom = math.random(1,99)
			if confurandom <= 33 then
			confs = 3
			elseif confurandom >= 67 then
			confs = 0
			else
			confs = 1
			end
		elseif getCreatureLookDir(params.t) == 3 then
		confs = math.random(0,2)
		end
		doPushCreature(params.t, confs, 1, 0)
		doSendMagicEffect(getThingPos(params.t), 31)
		end
		end
		local function nonc(params)
		if isCreature(params.t) then
		doChangeSpeed(params.t, -getCreatureSpeed(params.t))
		doChangeSpeed(params.t, getCreatureBaseSpeed(params.t))
		setPlayerStorageValue(params.t, 5, -1)
		end
		end
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 32)

		doChangeSpeed(t, -( getCreatureSpeed(t)/3))
		doSendMagicEffect(getThingPos(t), 31)
		for i = 1, math.random(6,7) do
		addEvent(confd, 1000*i, {cid = cid, t = t})
		end
		addEvent(nonc, 7100, {cid - cid, t = t})
	return 0
elseif pokemon.spell == "Windstorm" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function storm(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, params.el, posit, params.ar,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.ef)
		
		end
		end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(storm, 0, {cid = sumonado, el = element, ar = ws1, ef = 42})
		addEvent(storm, 500, {cid = sumonado, el = element, ar = ws2, ef = 42})
		addEvent(storm, 1000, {cid = sumonado, el = element, ar = ws3, ef = 42})
		addEvent(storm, 1500, {cid = sumonado, el = element, ar = ws4, ef = 42})
		addEvent(storm, 700, {cid = sumonado, el = null, ar = ws4, ef = CONST_ME_POFF})
		addEvent(storm, 1200, {cid = sumonado, el = null, ar = ws1, ef = CONST_ME_POFF})
		addEvent(storm, 1800, {cid = sumonado, el = null, ar = ws3, ef = CONST_ME_POFF})
	return 0
elseif pokemon.spell == "Poison Sting" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		return 0
elseif pokemon.spell == "Vine Whip" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		area = vinen
		dano = whipn
		effect = 80
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		area = vinee
		dano = whipe
		effect = 83
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		area = vines
		dano = whips
		effect = 81
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		area = vinew
		dano = whipw
		effect = 82
		end
		doAreaCombatHealth(getCreatureSummons(cid)[1], null, getThingPos(getCreatureSummons(cid)[1]), area, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), effect)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), dano, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 255)
	return 0

elseif pokemon.spell == "Raging Blast" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), rageblast1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
	local function damage(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.x, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 36)
		end
end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(damage, 200, {cid = sumonado, x = rageblast2})
		addEvent(damage, 400, {cid = sumonado, x = rageblast3})
		addEvent(damage, 600, {cid = sumonado, x = rageblast4})
                

         
	return 0
elseif pokemon.spell == "Leech Seed" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 5)
		local alvo = getCreatureTarget(cid)
		local leecher = getCreatureSummons(cid)[1]
		local function suck(params)
		if isCreature(getCreatureSummons(params.cid)[1]) then
		if isCreature(params.alvo) then
		if getCreatureSummons(cid)[1] == leecher then
		doSendMagicEffect(getThingPos(getCreatureSummons(params.cid)[1]), 14)
		local life = getCreatureHealth(alvo)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, getThingPos(params.alvo), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 45)
		local newlife = life - getCreatureHealth(alvo)
		if newlife >= 1 then
		doCreatureAddHealth(getCreatureSummons(params.cid)[1], newlife)
		doSendAnimatedText(getThingPos(getCreatureSummons(params.cid)[1]), "+"..newlife.."", 35)
		end
		end
		end
		end
		end
		addEvent(suck, 2000, {cid = cid, alvo = alvo})
		addEvent(suck, 4000, {cid = cid, alvo = alvo})
		addEvent(suck, 6000, {cid = cid, alvo = alvo})
		addEvent(suck, 8000, {cid = cid, alvo = alvo})
		addEvent(suck, 10000, {cid = cid, alvo = alvo})
		return 0
elseif pokemon.spell == "Leaf Blade" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), rageblast1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 79)
		local function damage(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.x, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 79)
		end
end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(damage, 200, {cid = sumonado, x = rageblast2})
		addEvent(damage, 400, {cid = sumonado, x = rageblast3})
		addEvent(damage, 600, {cid = sumonado, x = rageblast4})
	return 0

elseif pokemon.spell == "Earthshock" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


	exhaustion.set(cid, pokemon.ex, pokemon.cd)
	doAreaCombatHealth(getCreatureSummons(cid)[1], GROUNDDAMAGE, getThingPos(getCreatureSummons(cid)[1]), eshock, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
	local sps = getThingPos(getCreatureSummons(cid)[1])
	sps.x = sps.x+1
	sps.y = sps.y+1
	doSendMagicEffect(sps, 127)
	return 0
elseif pokemon.spell == "Multi-Slap" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


	exhaustion.set(cid, pokemon.ex, pokemon.cd)
	doAreaCombatHealth(getCreatureSummons(cid)[1], NORMALDAMAGE, getThingPos(getCreatureSummons(cid)[1]), eshock, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	
	return 0
	
elseif pokemon.spell == "Thundershock" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 40)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		return 0
elseif pokemon.spell == "Solar Beam" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

	
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 94)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 95)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 91)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 92)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 86)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 87)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 89)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 90)
		end
		exhaustion.set(cid, pokemon.ex, pokemon.cd)
	return 0
elseif pokemon.spell == "Charge Beam" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

	
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 94)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 95)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 91)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 92)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 86)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 87)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 89)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 90)
		end
		exhaustion.set(cid, pokemon.ex, pokemon.cd)
	return 0
elseif pokemon.spell == "Zap Cannon" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

	
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 94)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 95)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 91)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 92)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 86)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 87)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 89)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 90)
		end
		exhaustion.set(cid, pokemon.ex, pokemon.cd)
	return 0
elseif pokemon.spell == "Stun Spore" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

exhaustion.set(cid, pokemon.ex, pokemon.cd)

local d = getCreaturesInRange(getThingPos(getCreatureSummons(cid)[1]), 2, 2, 1, 0)
                           for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(getCreatureMaster(pid), 3333) >= 1 or getGlobalStorageValue(3333) >= 1 then
Paralize(pid)
end
elseif isMonster(pid) then
                               Paralize(pid)

end
                        end		
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), sleeparea, 0, 0, 85)
    	return 0

elseif pokemon.spell == "Whirlwind" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, params.br, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 42)
		
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, br = whirl3})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, br = whirl5})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, br = whirl5})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, br = whirl3})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, br = whirl5})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, br = whirl5})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, br = whirl32})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, br = whirl52})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, br = whirl52})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, br = whirl32})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, br = whirl52})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, br = whirl52})
		end
	return 0

elseif pokemon.spell == "Sing" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

exhaustion.set(cid, pokemon.ex, pokemon.cd)

local d = getCreaturesInRange(getThingPos(getCreatureSummons(cid)[1]), 3, 3, 1, 0)
                      	
for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(getCreatureMaster(pid), 3333) >= 1 or getGlobalStorageValue(3333) >= 1 then
Sing(pid)
end
elseif isMonster(pid) then
                             Sing(pid)

end
                        end	
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), AREA_CIRCLE3X3, 0, 0, 22)
    	return 0


elseif pokemon.spell == "Melody" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

exhaustion.set(cid, pokemon.ex, pokemon.cd)

local d = getCreaturesInRange(getThingPos(getCreatureSummons(cid)[1]), 3, 3, 1, 0)
                       for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(getCreatureMaster(pid), 3333) >= 1 or getGlobalStorageValue(3333) >= 1 then
Sing(pid)
end
elseif isMonster(pid) then
                             Sing(pid)

end
                        end		
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), AREA_CIRCLE3X3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 32)
    	return 0

elseif pokemon.spell == "Stomp" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

exhaustion.set(cid, pokemon.ex, pokemon.cd)

local d = getCreaturesInRange(getThingPos(getCreatureSummons(cid)[1]), 2, 2, 1, 0)
                       	
        for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(getCreatureMaster(pid), 3333) >= 1 or getGlobalStorageValue(3333) >= 1 then
Paralize(pid)
end
elseif isMonster(pid) then
                               Paralize(pid)

end
                        end	
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), sleeparea, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)
    	return 0
elseif pokemon.spell == "Sleep Powder" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

exhaustion.set(cid, pokemon.ex, pokemon.cd)
                        local d = getCreaturesInRange(getThingPos(getCreatureSummons(cid)[1]), 2, 2, 1, 0)
                      
                    for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(getCreatureMaster(pid), 3333) >= 1 or getGlobalStorageValue(3333) >= 1 then
Sleep(pid)
end
elseif isMonster(pid) then
                               Sleep(pid)

end
                        end
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), sleeparea,0,0, 27)
	return 0

elseif pokemon.spell == "Hypnosis" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

exhaustion.set(cid, pokemon.ex, pokemon.cd)
                        local summons = getCreatureTarget(cid)
                       
                                Hypnosis(summons)
                       
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, 0, 0, 136)

                      
	return 0
elseif pokemon.spell == "Lick" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

exhaustion.set(cid, pokemon.ex, pokemon.cd)
                        local summons = getCreatureTarget(cid)
                       
                                Paralize(summons)
                       
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, 0, 0, 145)

                      
	return 0
elseif pokemon.spell == "Invisible" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

exhaustion.set(cid, pokemon.ex, pokemon.cd)
                        local summons = getCreatureSummons(cid)[1]
doSendMagicEffect(getCreaturePosition(summons), 219)
local outfitx = {lookType = 0, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
--doSetCreatureOutfit(summons, outfitx, 3000)
 doSetMonsterOutfit(summons, 'Tall Grass', 3000)                      
    --doSetItemOutfit(summons, outfitx, summons)

                            doAddCondition(summons , conditioninvi)
                       
                      
	return 0

elseif pokemon.spell == "Element Hand" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

exhaustion.set(cid, pokemon.ex, pokemon.cd)
                        local summons = getCreatureSummons(cid)[1]
doSendMagicEffect(getCreaturePosition(summons), 219)
if getCreatureName(getCreatureSummons(cid)[1]) == "Hitmonchan" then
		if isInArray({"631"}, getCreatureOutfit(getCreatureSummons(cid)[1]).lookType) then
outfitx = {lookType = 630, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                      
 elseif isInArray({"630"}, getCreatureOutfit(getCreatureSummons(cid)[1]).lookType) then
outfitx = {lookType = 629, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx) 
 elseif isInArray({"629"}, getCreatureOutfit(getCreatureSummons(cid)[1]).lookType) then
outfitx = {lookType = 628, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                       


        
        
 elseif isInArray({"628"}, getCreatureOutfit(getCreatureSummons(cid)[1]).lookType) then
outfitx = {lookType = 631, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                       
 
        
       end 
elseif getCreatureName(getCreatureSummons(cid)[1]) == "Elite Hitmonchan" then
		if isInArray({"625"}, getCreatureOutfit(getCreatureSummons(cid)[1]).lookType) then
outfitx = {lookType = 624, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                      
 elseif isInArray({"624"}, getCreatureOutfit(getCreatureSummons(cid)[1]).lookType) then
outfitx = {lookType = 626, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx) 
 elseif isInArray({"626"}, getCreatureOutfit(getCreatureSummons(cid)[1]).lookType) then
outfitx = {lookType = 627, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                       


        
        
 elseif isInArray({"627"}, getCreatureOutfit(getCreatureSummons(cid)[1]).lookType) then
outfitx = {lookType = 625, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                       
 
        
       end 
end            
	return 0









elseif pokemon.spell == "Bug Bite" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0

elseif pokemon.spell == "Crabhammer" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
		return 0

elseif pokemon.spell == "Guillotine" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
		local function guilo(params)
			
if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 156)
			end
			end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(guilo, 300, {cid = sumonado})
		

		return 0
elseif pokemon.spell == "Horn Drill" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		
			local function damage(params)
		if isCreature(params.cid) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			end
			end
		local function damage2(params)
			if isCreature(params.cid) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
		end
			end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage2, 600, {cid = sumonado})

	return 0

elseif pokemon.spell == "Leaf Storm" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		

	exhaustion.set(cid, pokemon.ex, pokemon.cd)
	
		
local function leaf1x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth(params.cid, element, getThingPos(params.cid), leaf1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end
		
local function leaf2x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth(params.cid, element, getThingPos(params.cid), leaf2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end
local function leaf3x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth(params.cid, element, getThingPos(params.cid), leaf3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end

local function leaf4x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth(params.cid, element, getThingPos(params.cid), leaf4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end
local function leaf5x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth(params.cid, element, getThingPos(params.cid), leaf5, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end

local sumonado = getCreatureSummons(cid)[1] 
	
	       addEvent(leaf1x, 100, {cid = sumonado})
               addEvent(leaf2x, 300, {cid = sumonado})
               addEvent(leaf3x, 600, {cid = sumonado})
               addEvent(leaf4x, 800, {cid = sumonado})
               addEvent(leaf5x, 900, {cid = sumonado})

	       addEvent(leaf1x, 1100, {cid = sumonado})
               addEvent(leaf2x, 1300, {cid = sumonado})
               addEvent(leaf3x, 1500, {cid = sumonado})
               addEvent(leaf4x, 1700, {cid = sumonado})
               addEvent(leaf5x, 1800, {cid = sumonado})
	return 0

elseif pokemon.spell == "Selfdestruct" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local function death(params)
		if isCreature(params.cid) then
		doCreatureAddHealth(getCreatureSummons(params.cid)[1], -getCreatureHealth(getCreatureSummons(cid)[1]))
		end
		end
		addEvent(death, 250, {cid = cid})
local destruct = getCreatureHealth(getCreatureSummons(cid)[1])
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), destruct1, -destruct, -destruct, 5)
		addEvent(doAreaCombatHealth, 150, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), destruct2,  -destruct, -destruct, 5)
		addEvent(doAreaCombatHealth, 250, getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), destruct3,  -destruct, -destruct, 5)
		setPlayerStorageValue(getCreatureSummons(cid)[1], 33, 1)
if getPlayerStorageValue(cid, 8888) >= 1 then



local player = cid
local monstrohe = getPlayerStorageValue(cid, 6569)
local spd = getCreatureBaseSpeed(monstrohe)
setPlayerStorageValue(monstrohe, 8, 1)
doAddCondition(monstrohe , caralhadax)

doSendAnimatedText(getCreaturePosition(player), "Poke Down", 210)
local cont = getPlayerStorageValue(player, 4578)
local numeromonstro = getPlayerStorageValue(player, 7787)
if getPlayerStorageValue(player, 8333) >= numeromonstro then
local npc = getPlayerStorageValue(player, 9999)
setPlayerStorageValue(player, 9999, 0)
setPlayerStorageValue(player, 8888, 0)
setPlayerStorageValue(npc, 5000, 0)
setPlayerStorageValue(player, 4578, 0)
setPlayerStorageValue(player, 8333, 0)
setPlayerStorageValue(player, 6445, 0)

local nome = getCreatureName(player) 
local criatura = getPlayerStorageValue(player, 6569)
doSendMagicEffect(getCreaturePosition(criatura), 10)
doRemoveCreature(criatura)
doCreatureSetNoMove(player, 0)
doCreatureSay(npc,  "Hey "..nome.." you are a loser Trainer", 1)
return True
end
local function gymback(params)
if getPlayerStorageValue(player, 6445) >= 1 then
local npc = getPlayerStorageValue(player, 9999)
setPlayerStorageValue(player, 9999, 0)
setPlayerStorageValue(player, 8888, 0)
setPlayerStorageValue(npc, 5000, 0)
setPlayerStorageValue(player, 4578, 0)
setPlayerStorageValue(player, 8333, 0)
local nome = getCreatureName(player) 
local criatura = getPlayerStorageValue(player, 6569)
doSendMagicEffect(getCreaturePosition(criatura), 10)
doRemoveCreature(criatura)
doCreatureSetNoMove(player, 0)
doCreatureSay(npc,  "Hey "..nome.." you are a loser Trainer", 1)
end
end

setPlayerStorageValue(player, 6445, 1)
doSendAnimatedText(getCreaturePosition(player), "Poke Down", 210)
doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 20 seconds to go you pokemon or lose duel")

local function ginasio19(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 1 seconds to go you pokemon or lose battle")
addEvent(gymback,1000, cid)
end

end

local function ginasio18(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 2 seconds to go you pokemon or lose battle")
addEvent(ginasio19,1000, cid)
end

end

local function ginasio17(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 3 seconds to go you pokemon or lose battle")
addEvent(ginasio18,1000, cid)
end

end

local function ginasio16(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 4 seconds to go you pokemon or lose battle")
addEvent(ginasio17,1000, cid)
end

end
local function ginasio15(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 5 seconds to go you pokemon or lose battle")
addEvent(ginasio16,1000, cid)
end

end


local function ginasio14(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 6 seconds to go you pokemon or lose battle")
addEvent(ginasio15,1000, cid)
end

end

local function ginasio13(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 7 seconds to go you pokemon or lose battle")
addEvent(ginasio14,1000, cid)
end

end


local function ginasio12(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 8 seconds to go you pokemon or lose battle")
addEvent(ginasio13,1000, cid)
end

end


local function ginasio11(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 9 seconds to go you pokemon or lose battle")
addEvent(ginasio12,1000, cid)
end

end

local function ginasio10(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 10 seconds to go you pokemon or lose battle")
addEvent(ginasio11,1000, cid)
end

end


local function ginasio9(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 11 seconds to go you pokemon or lose battle")
addEvent(ginasio10,1000, cid)
end

end

local function ginasio8(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 12 seconds to go you pokemon or lose battle")
addEvent(ginasio9,1000, cid)
end

end

local function ginasio7(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 13 seconds to go you pokemon or lose battle")
addEvent(ginasio8,1000, cid)
end

end

local function ginasio6(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 14 seconds to go you pokemon or lose battle")
addEvent(ginasio7,1000, cid)
end

end

local function ginasio5(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 15 seconds to go you pokemon or lose battle")
addEvent(ginasio6,1000, cid)
end

end

local function ginasio4(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 16 seconds to go you pokemon or lose battle")
addEvent(ginasio5,1000, cid)
end

end

local function ginasio3(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 17 seconds to go you pokemon or lose battle")
addEvent(ginasio4,1000, cid)
end

end

local function ginasio2(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 18 seconds to go you pokemon or lose battle")
addEvent(ginasio3,1000, cid)
end

end
local function ginasio(params)
if getPlayerStorageValue(player, 6445) >= 1 then

doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, "You have 19 seconds to go you pokemon or lose battle")
addEvent(ginasio2,1000, cid)
end

end
addEvent(ginasio,1000, cid)


end



	return 0

elseif pokemon.spell == "Harden" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		
		setPlayerStorageValue(getCreatureSummons(cid)[1], 4, 1)
		
			local function efect(params)
			if isCreature(params.cid) then
		
			doSendMagicEffect(getThingPos(params.cid), 144)
			
			end
			end
		local function chard(params)
		if isCreature(params.cid) then
		if getPlayerStorageValue(params.cid, 4) >= 1 then
		setPlayerStorageValue(params.cid, 4, -1)
		end
		end
		end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(efect, 100, {cid = sumonado})
		addEvent(efect, 1600, {cid = sumonado})
		addEvent(efect, 3100, {cid = sumonado})
		addEvent(efect, 4600, {cid = sumonado})
		addEvent(efect, 6100, {cid = sumonado})
		addEvent(efect, 7600, {cid = sumonado})
		addEvent(efect, 9100, {cid = sumonado})
		addEvent(efect, 10600, {cid = sumonado})
		addEvent(chard, 11000, {cid = sumonado})		
	return 0

elseif pokemon.spell == "Rock Slide" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		local posalvo = getThingPos(getCreatureTarget(cid))
		local boltalvo = getCreatureTarget(cid)
		posalvo.x = posalvo.x-2
		posalvo.y = posalvo.y-6
		doSendDistanceShoot(posalvo, getThingPos(getCreatureTarget(cid)), 11)
		local function bolt(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.boltalvo then
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 44)
		end
		end
		end
		end
	local function bolt2(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.boltalvo then
		doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 11)
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		end
		end
		end
		end

local sumonado = getCreatureSummons(cid)[1] 
		addEvent(bolt2, 500, {cid = sumonado, boltalvo = boltalvo})
addEvent(bolt, 800, {cid = sumonado, boltalvo = boltalvo})
	return 0

elseif pokemon.spell == "Dragon Rush" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		

	exhaustion.set(cid, pokemon.ex, pokemon.cd)
		
		

		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), psy1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 40)



		

local function go1(params)
if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), psy1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
	end
end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(go1, 500, {cid = sumonado})

		return 0

elseif pokemon.spell == "Flame Blast" then



doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
	
local function go2(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), combat_arr1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 6)
end
end
	
		
local function go(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), combat_arr2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
	end
end
		
		
local function go1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid),combat_arr3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 15)
end
end
local function go3(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid),combat_arr4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
end
end
local sumonado = getCreatureSummons(cid)[1] 
addEvent(go2, 600, {cid = sumonado})	
addEvent(go, 1000, {cid = sumonado})
	addEvent(go, 300, {cid = sumonado})
	addEvent(go1, 600, {cid = sumonado})
	addEvent(go2, 900, {cid = sumonado})
	addEvent(go3, 1200, {cid = sumonado})
		

return 0

elseif pokemon.spell == "Giga Impact" then



doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
	
local function go2(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), combat_arr1g, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 127)
end
end
	
	
local function go(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), combat_arr2g, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 127)
	end
end
		
local function go1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid),combat_arr3g, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 127)
end
end
local function go3(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid),combat_arr4g, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 127)
end
end
local sumonado = getCreatureSummons(cid)[1] 
	addEvent(go, 000, {cid = sumonado})
	addEvent(go1, 700, {cid = sumonado})
	addEvent(go2, 1300, {cid = sumonado})
	addEvent(go3, 2000, {cid = sumonado})
		

return 0

elseif pokemon.spell == "Fire Sprint" then



doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
	


local function go(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), combat_arr2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
	end
end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(go, 1000, {cid = sumonado})

local function go1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid),combat_arr3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 15)
end
end
local sumonado = getCreatureSummons(cid)[1] 

	addEvent(go, 300, {cid = sumonado})
	addEvent(go1, 600, {cid = sumonado})
	
		

return 0

elseif pokemon.spell == "Hyper Beam" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

	
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 152)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 158)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 156)

		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 151)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 158)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 155)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 149)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 157)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 153)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 150)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 157)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 154)
		end
		exhaustion.set(cid, pokemon.ex, pokemon.cd)
	return 0

elseif pokemon.spell == "Ice Beam" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

	
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 99)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 105)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 103)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 98)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 105)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 102)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 96)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 104)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 100)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 97)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 104)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 101)
		end
		exhaustion.set(cid, pokemon.ex, pokemon.cd)
	return 0

elseif pokemon.spell == "Tri Flames" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

	
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tri1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)

		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tri2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tri3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), tri4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		end
		exhaustion.set(cid, pokemon.ex, pokemon.cd)
	return 0

elseif pokemon.spell == "Dragon Breath" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		posit = getThingPos(getCreatureSummons(cid)[1])
		local function gust(params)
		if #getCreatureSummons(params.cid) >= 1 then
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], null, params.ar, sand1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.eee)
		doAreaCombatHealth(getCreatureSummons(params.cid)[1], element, params.ar, arr1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 40)

		else
		end
		end
		local posicao = getThingPos(getCreatureSummons(cid)[1])
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 5, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 5, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 5, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 5, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 5, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 5, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 5, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 5, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 5, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 5, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 5, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 5, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0

	elseif pokemon.spell == "Dragon Pulse" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)


		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),24)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
			end
end
			end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
		return 0

elseif pokemon.spell == "Egg Bomb" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),3)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(params.cid) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), egg, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
			end
end
			end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		return 0


	elseif pokemon.spell == "Acid" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

	
	exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 14)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
			return 0
elseif pokemon.spell == "Poison Bomb" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)
		
		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doSendDistanceShoot(getThingPos(getCreatureSummons(cid)[1]), getThingPos(getCreatureTarget(cid)), 14)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
	return 0


elseif pokemon.spell == "Poison Gas" then

doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)
		
		exhaustion.set(cid, pokemon.ex, pokemon.cd)
local function gas(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), confusionx, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
	end
	end
local sumonado = getCreatureSummons(cid)[1] 
addEvent(gas, 000, {cid = sumonado, cb = cb})
addEvent(gas, 500, {cid = sumonado, cb = cb})
addEvent(gas, 1000, {cid = sumonado, cb = cb})
addEvent(gas, 1500, {cid = sumonado, cb = cb})
addEvent(gas, 2200, {cid = sumonado, cb = cb})
addEvent(gas, 2700, {cid = sumonado, cb = cb})
addEvent(gas, 3200, {cid = sumonado, cb = cb})
addEvent(gas, 3900, {cid = sumonado, cb = cb})
addEvent(gas, 4400, {cid = sumonado, cb = cb})
addEvent(gas, 4900, {cid = sumonado, cb = cb})

	return 0
elseif pokemon.spell == "Psy Condition" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
local function psycon(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 134)
	end
	end
local function psycon2(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
	end
	end
local function psycon3(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 137)
	end
	end
local sumonado = getCreatureSummons(cid)[1] 
addEvent(psycon, 000, {cid = sumonado, cb = cb})
addEvent(psycon2, 500, {cid = sumonado, cb = cb})
addEvent(psycon, 800, {cid = sumonado, cb = cb})
addEvent(psycon3, 1200, {cid = sumonado, cb = cb})
addEvent(psycon, 1600, {cid = sumonado, cb = cb})
addEvent(psycon2, 2000, {cid = sumonado, cb = cb})
addEvent(psycon, 2400, {cid = sumonado, cb = cb})
addEvent(psycon3, 2800, {cid = sumonado, cb = cb})
addEvent(psycon, 3200, {cid = sumonado, cb = cb})
addEvent(psycon2, 3500, {cid = sumonado, cb = cb})
addEvent(psycon, 4000, {cid = sumonado, cb = cb})
addEvent(psycon3,4400, {cid = sumonado, cb = cb})
addEvent(psycon, 4800, {cid = sumonado, cb = cb})
addEvent(psycon2,5200, {cid = sumonado, cb = cb})
addEvent(psycon, 5600, {cid = sumonado, cb = cb})
addEvent(psycon3,6000, {cid = sumonado, cb = cb})
addEvent(psycon, 6400, {cid = sumonado, cb = cb})
addEvent(psycon2, 6800, {cid = sumonado, cb = cb})
addEvent(psycon, 7200, {cid = sumonado, cb = cb})
addEvent(psycon3, 7500, {cid = sumonado, cb = cb})
addEvent(psycon, 8000, {cid = sumonado, cb = cb})

	return 0
elseif pokemon.spell == "Dark Condition" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
local function darkcon(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)
	end
	end
local function darkcon2(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 139)
	end
	end
local function darkcon3(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 38)
	end
	end
local sumonado = getCreatureSummons(cid)[1] 
addEvent(darkcon, 000, {cid = sumonado, cb = cb})
addEvent(darkcon2, 500, {cid = sumonado, cb = cb})
addEvent(darkcon, 800, {cid = sumonado, cb = cb})
addEvent(darkcon3, 1200, {cid = sumonado, cb = cb})
addEvent(darkcon, 1600, {cid = sumonado, cb = cb})
addEvent(darkcon2, 2000, {cid = sumonado, cb = cb})
addEvent(darkcon, 2400, {cid = sumonado, cb = cb})
addEvent(darkcon3, 2800, {cid = sumonado, cb = cb})
addEvent(darkcon, 3200, {cid = sumonado, cb = cb})
addEvent(darkcon2, 3500, {cid = sumonado, cb = cb})
addEvent(darkcon, 4000, {cid = sumonado, cb = cb})
addEvent(darkcon3,4400, {cid = sumonado, cb = cb})
addEvent(darkcon, 4800, {cid = sumonado, cb = cb})
addEvent(darkcon2,5200, {cid = sumonado, cb = cb})
addEvent(darkcon, 5600, {cid = sumonado, cb = cb})
addEvent(darkcon3,6000, {cid = sumonado, cb = cb})
addEvent(darkcon, 6400, {cid = sumonado, cb = cb})
addEvent(darkcon2, 6800, {cid = sumonado, cb = cb})
addEvent(darkcon, 7200, {cid = sumonado, cb = cb})
addEvent(darkcon3, 7500, {cid = sumonado, cb = cb})
addEvent(darkcon, 8000, {cid = sumonado, cb = cb})

	return 0



                elseif pokemon.spell == "Poison Powder" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)
	
exhaustion.set(cid, pokemon.ex, pokemon.cd)
doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), sleeparea, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 85)
                        local d = getCreaturesInRange(getThingPos(getCreatureSummons(cid)[1]), 2, 2, 1, 0)
                       
                    for _,pid in pairs(d) do
if isSummon(pid) then
if getPlayerStorageValue(getCreatureMaster(pid), 3333) >= 1 or getGlobalStorageValue(3333) >= 1 then
Poison(pid, 8, 10)
end
elseif isMonster(pid) then
                                Poison(pid, 8, 10)

end
                        end
                 
                        
return 0

elseif pokemon.spell == "Wing Attack" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), wingn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingdn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), winge, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingde, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), wings, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingds, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), wingw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingdw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		end
		return 0

elseif pokemon.spell == "Fury Cutter" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		if getCreatureLookDir(getCreatureSummons(cid)[1]) == 0 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), wingn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingdn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 1 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), winge, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingde, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 2 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), wings, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingds, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(getCreatureSummons(cid)[1]) == 3 then
		doAreaCombatHealth(getCreatureSummons(cid)[1], COMBAT_PDAMAGE, getThingPos(getCreatureSummons(cid)[1]), wingw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), wingdw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		end

local function fury(params)
		if isCreature(params.cid) then
		if getCreatureLookDir(params.cid) == 0 then
		doAreaCombatHealth(params.cid, COMBAT_PDAMAGE, getThingPos(params.cid), wingn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), wingdn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(params.cid) == 1 then
		doAreaCombatHealth(params.cid, COMBAT_PDAMAGE, getThingPos(params.cid), winge, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), wingde, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(params.cid) == 2 then
		doAreaCombatHealth(params.cid, COMBAT_PDAMAGE, getThingPos(params.cid), wings, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), wingds, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(params.cid) == 3 then
		doAreaCombatHealth(params.cid, COMBAT_PDAMAGE, getThingPos(params.cid), wingw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), wingdw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		end
		end
		end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(fury, 500, {cid = sumonado})
		return 0

elseif pokemon.spell == "Twister" then
doPlayerSay(cid, getCreatureName(getCreatureSummons(cid)[1]).." , "..pokemon.spell..".", 1)

		exhaustion.set(cid, pokemon.ex, pokemon.cd)
		doAreaCombatHealth(getCreatureSummons(cid)[1], element, getThingPos(getCreatureSummons(cid)[1]), rageblast1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 142)
		local function damage(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.x, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 42)
		end
		end
local sumonado = getCreatureSummons(cid)[1] 
		addEvent(damage, 200, {cid = sumonado, x = rageblast2})
		addEvent(damage, 400, {cid = sumonado, x = rageblast3})
		addEvent(damage, 600, {cid = sumonado, x = rageblast4})
	return 0

	
	
	
end
end