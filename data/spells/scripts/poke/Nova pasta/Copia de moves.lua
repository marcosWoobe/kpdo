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
function isWalkables(pos, creature, pz,cid)-- Modificações by Hudsin,Arkires e Pinpao Xtibia
if getTileThingByPos({x = pos.x, y = pos.y, z = pos.z, stackpos = 0}).itemid == 0 then return false end
--if getTopCreature(pos).uid > 0 and creature then return false end
--if getTileInfo(pos).protection and pz then return false, true end
local n = not proj and 3 or 2
for i = 0, 255 do
pos.stackpos = i
local tile = getTileThingByPos(pos)
if tile.itemid ~= 0 and not isCreature(tile.uid) then
if hasProperty(tile.uid, n) or hasProperty(tile.uid, 7) then
return false
end
end
end
return true
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

local paralize = createConditionObject(CONDITION_PARALYZE)
setConditionParam(paralize, CONDITION_PARAM_TICKS, 10*1000)
setConditionFormula(paralize, -0.7, 0, -0.8, 0)


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
doAreaCombatHealth(cid, PSYCHICDAMAGE, newPos, 0, -dmg, -dmg2, 182)
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
setCombatParam(combatx, COMBAT_PARAM_TYPE, GHOSTDAMAGE)
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
doSendMagicEffect(newPos, 187)
                doAreaCombatHealth(cid,  GHOSTDAMAGE, newPos, 0, -dmg, -dmg2, 186)


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



local
moveswild = {
["Venusaur"] = {
["m1"] = {  spell = "Headbutt", minLv = 85,ex = 1830001, base1 = 200, base2 = 201, dista = 1, bonus = 8,type = "normal",cd = 5},
["m2"] = {  spell = "Razor Leaf",minLv = 85, ex = 600002, base1 = 230, base2 = 245, dista = 8, bonus = 4.5, type = "grass", cd = 10},
["m3"] = {  spell = "Vine Whip", minLv = 85, ex = 7200004, base1 = 230, base2 = 280, dista = 2, target = "no", bonus = 8.5, type = "grass",cd = 19},
["m4"] = {  spell = "Quick Attack", minLv = 85, ex = 1833001, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "normal",cd = 10},
["m5"] = {  spell = "Leech Seed", minLv = 85, ex = 4300003, base1 = 18, base2 = 18, dista = 5, bonus = 3.5,type = "grass", cd = 35},
["m6"] = {  spell = "Leaf Blade", minLv = 90, ex = 813986, base1 = 360, base2 = 380, target = "no",bonus = 10.6,type = "grass",cd = 40},
["m7"] = {  spell = "Solar Beam", minLv = 85, ex = 6200004, base1 = 750, base2 = 650, dista = 100, bonus = 15, target = "no", type = "grass",cd = 60},
["m8"] = {  spell = "Sleep Powder", minLv = 85, ex = 619508, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 30},
["m9"] = {  spell = "Stun Spore", minLv = 85, ex = 610008, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["m10"] = {  spell = "Leaf Storm", minLv = 95, ex = 655006, base1 = 360, base2 = 380, target = "no", bonus = 5.0, type = "grass", cd = 95},
["!cd"] = { pokenome= "Venusaur" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=1830001,spellm2="Razor Leaf",exm2 = 600002,spellm3= "Vine Whip",exm3=7200004,spellm4 = "Quick Attack",exm4=1833001,spellm5 ="Leech Seed",exm5=4300003,spellm6="Leaf Blade",exm6=813986,spellm7= "Solar Beam",exm7=6200004,spellm8="Sleep Powder",exm8=619508,spellm9 = "Stun Spore",exm9=610008,spellm10 = "Leaf Storm",exm10=655006},
["XD"] = { descricao = "The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Psychic",habilidade = "Habilites: Cut\nride\nHeadbutt",evoluction = "Bulbasaur: Level 20 \nIvysaur: Level 45\nVenusaur: Level 85",type = "is a dual-type Grass/Poison "},
},
["Shiny Venusaur"] = {
["m1"] = {  spell = "Headbutt", minLv = 100,ex = 4830001, base1 = 200, base2 = 201, dista = 1, bonus = 10,type = "normal",cd = 5},
["m2"] = {  spell = "Razor Leaf",minLv = 100, ex = 400002, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "grass", cd = 10},
["m3"] = {  spell = "Vine Whip", minLv = 100, ex = 4222004, base1 = 230, base2 = 280, dista = 2, target = "no", bonus = 9.5, type = "grass",cd = 19},
["m4"] = {  spell = "Quick Attack", minLv = 100, ex = 4833001, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "normal",cd = 10},
["m5"] = {  spell = "Leech Seed", minLv = 100, ex = 4300003, base1 = 18, base2 = 18, dista = 5, bonus = 4.5,type = "grass", cd = 35},
["m6"] = {  spell = "Leaf Blade", minLv = 104, ex = 413986, base1 = 360, base2 = 380, target = "no",bonus = 13.6,type = "grass",cd = 40},
["m7"] = {  spell = "Solar Beam", minLv = 100, ex = 4200004, base1 = 750, base2 = 650, dista = 100, bonus = 16, target = "no", type = "grass",cd = 60},
["m8"] = {  spell = "Sleep Powder", minLv = 100, ex = 419508, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 30},
["m9"] = {  spell = "Stun Spore", minLv = 100, ex = 410008, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["m10"] = {  spell = "Leaf Storm", minLv = 110, ex = 455006, base1 = 360, base2 = 380, target = "no", bonus = 7.0, type = "grass", cd = 95},
["!cd"] = { pokenome= "Shiny Venusaur" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=4830001,spellm2="Razor Leaf",exm2 = 400002,spellm3= "Vine Whip",exm3=4222004,spellm4 = "Quick Attack",exm4=4833001,spellm5 ="Leech Seed",exm5=4300003,spellm6="Leaf Blade",exm6=413986,spellm7= "Solar Beam",exm7=4200004,spellm8="Sleep Powder",exm8=419508,spellm9 = "Stun Spore",exm9=410008,spellm10 = "Leaf Storm",exm10=455006},
["XD"] = { descricao = "The is powerful shiny,plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Psychic",habilidade = "Habilites: Cut\nride\nHeadbutt",evoluction = "Venusaur: Level 100",type = "is a dual-type Grass/Poison "},
},
["Bulbasaur"] = {
["m1"] = {  spell = "Headbutt", minLv = 20,ex = 1810001, base1 = 200, base2 = 201, dista = 1, bonus = 6,type = "normal",cd = 9},
["m2"] = {  spell = "Razor Leaf",minLv = 20, ex = 400002, base1 = 230, base2 = 245, dista = 8, bonus = 2.5, type = "grass", cd = 10},
["m3"] = {  spell = "Vine Whip", minLv = 20, ex = 7000004, base1 = 230, base2 = 280, dista = 2, target = "no", bonus = 4.5, type = "grass",cd = 20},
["m4"] = {  spell = "Quick Attack", minLv = 20, ex = 1811001, base1 = 200, base2 = 201, dista = 1,bonus = 7, type = "normal",cd = 10},
["m5"] = {  spell = "Leech Seed", minLv = 35, ex = 4308903, base1 = 18, base2 = 18, dista = 5, bonus = 1.5,type = "grass", cd = 35},
["m6"] = {  spell = "Solar Beam", minLv = 40, ex = 6209804, base1 = 750, base2 = 650, dista = 100, bonus = 7, target = "no", type = "grass",cd = 60},
["m7"] = {  spell = "Sleep Powder", minLv = 20, ex = 616808, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 30},
["m8"] = {  spell = "Stun Spore", minLv = 25, ex = 610468, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["!cd"] = { pokenome= "Bulbasaur" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=1810001,spellm2="Razor Leaf",exm2 = 400002,spellm3= "Vine Whip",exm3=7000004,spellm4 = "Quick Attack",exm4=1811001,spellm5 ="Leech Seed",exm5=4308903,spellm6="Solar Beam",exm6=6209804,spellm7= "Sleep Powder",exm7=616808,spellm8="Stun Spore",exm8=610468},
["XD"] = { descricao = "A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon. ",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Psychic",habilidade = "Habilites:Cut\nHeadbutt",evoluction = "Bulbasaur: Level 20 \nIvysaur: Level 45\nVenusaur: Level 85",type = "is a dual-type Grass/Poison "},
},
["Ivysaur"] = {
["m1"] = {  spell = "Headbutt", minLv = 45,ex = 1810301, base1 = 200, base2 = 201, dista = 1, bonus = 7,type = "normal",cd = 9},
["m2"] = {  spell = "Razor Leaf",minLv = 45, ex = 405002, base1 = 230, base2 = 245, dista = 8, bonus = 3.1, type = "grass", cd = 10},
["m3"] = {  spell = "Vine Whip", minLv = 45, ex = 7060004, base1 = 230, base2 = 280, dista = 2, target = "no", bonus = 5.1, type = "grass",cd = 20},
["m4"] = {  spell = "Quick Attack", minLv = 45, ex = 1891001, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "normal",cd = 10},
["m5"] = {  spell = "Leech Seed", minLv = 46, ex = 4305623, base1 = 18, base2 = 18, dista = 5, bonus = 2.1,type = "grass", cd = 35},
["m6"] = {  spell = "Leaf Blade", minLv = 50, ex = 510856, base1 = 360, base2 = 380, target = "no",bonus = 5.1,type = "grass",cd = 40},
["m7"] = {  spell = "Solar Beam", minLv = 55, ex = 6207604, base1 = 750, base2 = 650, dista = 2, bonus = 10, target = "no", type = "grass",cd = 60},
["m8"] = {  spell = "Sleep Powder", minLv = 45, ex = 618808, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 30},
["m9"] = {  spell = "Stun Spore", minLv = 45, ex = 610498, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["!cd"] = { pokenome= "Ivysaur" , nmoves= 9 , spellm1 = "Headbutt" ,exm1=1810301,spellm2="Razor Leaf",exm2 = 405002,spellm3= "Vine Whip",exm3=7060004,spellm4 = "Quick Attack",exm4=1891001,spellm5 ="Leech Seed",exm5=4305623,spellm6="Leaf Blade",exm6=510856,spellm7= "Solar Beam",exm7=6207604,spellm8="Sleep Powder",exm8=618808,spellm9="Stun Spore",exm9=610498},
["XD"] = { descricao = "When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs. ",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Psychic",habilidade = "Habilites: Cut\nHeadbutt",evoluction = "Bulbasaur: Level 20 \nIvysaur: Level 45\nVenusaur: Level 85",type = "is a dual-type Grass/Poison "},
},

["Bellsprout"] = {
["m1"] = {  spell = "Razor Leaf", minLv = 5,ex = 1250301, base1 = 50, base2 = 71, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m2"] = {  spell = "Vine Whip",minLv = 8, ex = 236402, base1 = 30, base2 = 65, dista = 2,target = "no", bonus = 0.7, type = "grass", cd = 20},
["m3"] = {  spell = "Acid", minLv = 5, ex = 3065084, base1 = 30, base2 = 80, dista = 1, bonus = 0.5, type = "poison",cd = 20},
["m4"] = {  spell = "Slash", minLv = 5, ex = 2599001, base1 = 50, base2 = 91, dista = 1,bonus = 0.5, type = "normal",cd = 10},
["!cd"] = { pokenome= "Bellsprout" , nmoves= 4 , spellm1 = "Razor Leaf" ,exm1=1250301,spellm2="Vine Whip",exm2 = 236402,spellm3= "Acid",exm3=3065084,spellm4 = "Slash",exm4=2599001},
["XD"] = { descricao = "A carnivorous Pokémon that traps and eats bugs. It uses its root feet to soak up needed moisture.",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Psychic",habilidade = "Habilites: cut",evoluction = "Bellsprout: Level 5 \nWeepinbell: Level 18\nVictreebel: Level 50",type = "is a dual-type Grass/Poison "},
},
["Weepinbell"] = {
["m1"] = {  spell = "Razor Leaf", minLv = 18,ex = 1259381, base1 = 200, base2 = 201, dista = 8, bonus = 1.5,type = "grass",cd = 9},
["m2"] = {  spell = "Vine Whip",minLv = 18, ex = 236892, base1 = 230, base2 = 245, dista = 2,target = "no", bonus = 1.5, type = "grass", cd = 15},
["m3"] = {  spell = "Acid", minLv = 18, ex = 3065099, base1 = 230, base2 = 280, dista = 1, bonus = 2.5, type = "poison",cd = 20},
["m4"] = {  spell = "Slash", minLv = 18, ex = 2599981, base1 = 200, base2 = 201, dista = 1,bonus = 1.5, type = "normal",cd = 10},
["m5"] = {  spell = "Poison Bomb", minLv = 23, ex = 7004895, base1 = 200,base2 = 201, dista = 4, bonus = 8, type = "poison",cd = 24},
["m6"] = {  spell = "Stun Spore", minLv = 23, ex = 313118, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["!cd"] = { pokenome= "Weepinbell" , nmoves= 6 , spellm1 = "Razor Leaf" ,exm1=1259381,spellm2="Vine Whip",exm2 = 236892,spellm3= "Acid",exm3=3065099,spellm4 = "Slash",exm4=2599981,spellm5 = "Poison Bomb",exm5=7004895,spellm6 = "Stun Spore",exm6=313118},
["XD"] = { descricao = "It spits out PoisonPowder to immobilize the enemy and then finishes it with a spray of Acid.",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Psychic",habilidade = "Habilites: cut",evoluction = "Bellsprout: Level 5 \nWeepinbell: Level 18\nVictreebel: Level 50",type = "is a dual-type Grass/Poison "},
},
["Victreebel"] = {
["m1"] = {  spell = "Razor Leaf", minLv = 50,ex = 2998381, base1 = 200, base2 = 201, dista = 8, bonus = 5.5,type = "grass",cd = 9},
["m2"] = {  spell = "Vine Whip",minLv = 50, ex = 335832, base1 = 230, base2 = 245, dista = 2,target = "no", bonus = 9.5, type = "grass", cd = 15},
["m3"] = {  spell = "Acid", minLv = 50, ex = 4568099, base1 = 230, base2 = 280, dista = 1, bonus = 4.5, type = "poison",cd = 20},
["m4"] = {  spell = "Slash", minLv = 50, ex = 3629881, base1 = 200, base2 = 201, dista = 1,bonus = 10.5, type = "normal",cd = 10},
["m5"] = {  spell = "Poison Bomb", minLv = 65, ex = 2356895, base1 = 200,base2 = 201, dista = 4, bonus = 15, type = "poison",cd = 24},
["m6"] = {  spell = "Stun Spore", minLv = 50, ex = 356118, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["m7"] = {  spell = "Poison Powder", minLv = 50, ex = 436898, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "poison",cd = 50},
["m8"] = {  spell = "Sleep Powder", minLv = 50, ex = 616408, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 30},
["m9"] = {  spell = "Leaf Storm", minLv = 70, ex = 255341, base1 = 360, base2 = 380, target = "no", bonus = 5.0, type = "grass", cd = 95},
["!cd"] = { pokenome= "Victreebel" , nmoves= 9 , spellm1 = "Razor Leaf" ,exm1=2998381,spellm2="Vine Whip",exm2 = 335832,spellm3= "Acid",exm3=4568099,spellm4 = "Slash",exm4=3629881,spellm5 = "Poison Bomb",exm5=2356895,spellm6 = "Stun Spore",exm6=356118,spellm7 = "Poison Powder",exm7=436898,spellm8 = "Sleep Powder",exm8=616408,spellm9 = "Leaf Storm",exm9=255341},
["XD"] = { descricao = "Said to live in huge colonies deep in jungles, although no one has ever returned from there.",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Psychic",habilidade = "Habilites: cut",evoluction = "Bellsprout: Level 5 \nWeepinbell: Level 18\nVictreebel: Level 50",type = "is a dual-type Grass/Poison "},
},
["Shiny Oddish"] = {
["m1"] = {  spell = "Absorb", minLv = 15,ex = 9260905, base1 = 200, base2 = 201, dista = 1, bonus = 1.5,type = "grass",cd = 9},
["m2"] = {  spell = "Acid",minLv = 15, ex = 389459, base1 = 230, base2 = 245, dista = 2, bonus = 1.7, type = "poison", cd = 20},
["m3"] = {  spell = "Leech Seed", minLv = 17, ex = 4865984, base1 = 18, base2 = 18, dista = 6, bonus = 1.5, type = "grass",cd = 20},
["m4"] = {  spell = "Sleep Powder", minLv = 20, ex = 9893211, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 0, type = "grass",cd = 30},
["m5"] = {  spell = "Stun Spore", minLv = 19, ex = 618198, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["!cd"] = { pokenome= "Shiny Oddish" , nmoves= 5 , spellm1 = "Absorb" ,exm1=9260905,spellm2="Acid",exm2 = 389459,spellm3= "Leech Seed",exm3=4865984,spellm4 = "Sleep Powder",exm4=9893211,spellm5 = "Stun Spore",exm5=618198},
["XD"] = { descricao = "During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds. ",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Psychic",habilidade = "Habilites: none",evoluction = "Oddish: Level 15 ",type = "is a dual-type Grass/Poison "},
},
["Oddish"] = {
["m1"] = {  spell = "Absorb", minLv = 5,ex = 9260905, base1 = 60, base2 = 81, dista = 1, bonus = 0.5,type = "grass",cd = 9},
["m2"] = {  spell = "Acid",minLv = 5, ex = 389459, base1 = 70, base2 = 95, dista = 2, bonus = 0.7, type = "poison", cd = 20},
["m3"] = {  spell = "Leech Seed", minLv = 7, ex = 4865984, base1 = 18, base2 = 18, dista = 6, bonus = 0.5, type = "grass",cd = 20},
["m4"] = {  spell = "Sleep Powder", minLv = 10, ex = 9893211, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 0, type = "grass",cd = 30},
["m5"] = {  spell = "Stun Spore", minLv = 9, ex = 618198, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["!cd"] = { pokenome= "Oddish" , nmoves= 5 , spellm1 = "Absorb" ,exm1=9260905,spellm2="Acid",exm2 = 389459,spellm3= "Leech Seed",exm3=4865984,spellm4 = "Sleep Powder",exm4=9893211,spellm5 = "Stun Spore",exm5=618198},
["XD"] = { descricao = "During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds. ",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Psychic",habilidade = "Habilites: none",evoluction = "Oddish: Level 5 \nGloom: Level 18\nVileplume: Level 65",type = "is a dual-type Grass/Poison "},
},
["Gloom"] = {
["m1"] = {  spell = "Absorb", minLv = 18,ex = 9266985, base1 = 200, base2 = 201, dista = 1, bonus = 1.5,type = "grass",cd = 9},
["m2"] = {  spell = "Leech Seed",minLv = 18, ex = 444429, base1 = 18, base2 = 18, dista = 2, bonus = 1.7, type = "grass", cd = 20},
["m3"] = {  spell = "Poison Bomb", minLv = 25, ex = 8434445, base1 = 200,base2 = 201, dista = 4, bonus = 10, type = "poison",cd = 24},
["m4"] = {  spell = "Acid",minLv = 18, ex = 389666, base1 = 230, base2 = 245, dista = 2, bonus = 1.7, type = "poison", cd = 20},
["m5"] = {  spell = "Poison Gas", minLv = 30, ex = 617778, base1 = 120, target = "no", base2 = 120, dista = 100, bonus = 1.5, type = "poison",cd = 50},
["m6"] = {  spell = "Sleep Powder", minLv = 18, ex = 9793217, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 0, type = "grass",cd = 30},
["m7"] = {  spell = "Stun Spore", minLv = 18, ex = 678197, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["!cd"] = { pokenome= "Gloom" , nmoves= 7 , spellm1 = "Absorb" ,exm1=9266985,spellm2="Leech Seed",exm2 = 444429,spellm3= "Poison Bomb",exm3=8434445,spellm4 = "Acid",exm4=389666,spellm5 = "Poison Gas",exm5=617778,spellm6 = "Sleep Powder",exm6=9793217,spellm7 = "Stun Spore",exm7=678197},
["XD"] = { descricao = "The fluid that oozes from its mouth isn’t drool. It is a nectar that is used to attract prey. ",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Psychic",habilidade = "Habilites: none",evoluction = "Oddish: Level 5 \nGloom: Level 18\nVileplume: Level 65",type = "is a dual-type Grass/Poison "},
},

["Vileplume"] = {
["m1"] = {  spell = "Absorb", minLv = 50,ex = 9263331, base1 = 200, base2 = 201, dista = 1, bonus = 2.5,type = "grass",cd = 9},
["m2"] = {  spell = "Leech Seed",minLv = 50, ex = 443331, base1 = 18, base2 = 18, dista = 2, bonus = 2.7, type = "grass", cd = 20},
["m3"] = {  spell = "Poison Bomb", minLv = 70, ex = 813335, base1 = 200,base2 = 201, dista = 4, bonus = 15, type = "poison",cd = 24},
["m4"] = {  spell = "Acid",minLv = 50, ex = 383663, base1 = 230, base2 = 245, dista = 2, bonus = 2.7, type = "poison", cd = 20},
["m5"] = {  spell = "Poison Gas", minLv = 50, ex = 755578, base1 = 120, target = "no", base2 = 120, dista = 100, bonus = 3.5, type = "poison",cd = 50},
["m6"] = {  spell = "Solar Beam", minLv = 70, ex = 3343404, base1 = 750, base2 = 650, dista = 2, bonus = 10, target = "no", type = "grass",cd = 60},
["m7"] = {  spell = "Sleep Powder", minLv = 50, ex = 999237, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 0, type = "grass",cd = 30},
["m8"] = {  spell = "Stun Spore", minLv = 50, ex = 635157, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["!cd"] = { pokenome= "Vileplume" , nmoves= 8 , spellm1 = "Absorb" ,exm1=9263331,spellm2="Leech Seed",exm2 = 443331,spellm3= "Poison Bomb",exm3=813335,spellm4 = "Acid",exm4=383663,spellm5 = "Poison Gas",exm5=755578,spellm6 = "Solar Beam",exm6=3343404,spellm7 = "Sleep Powder",exm7=999237,spellm8 = "Stun Spore",exm8=635157},
["XD"] = { descricao = "The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Psychic",habilidade = "Habilites: none",evoluction = "Oddish: Level 5 \nGloom: Level 18\nVileplume: Level 65",type = "is a dual-type Grass/Poison "},
},

["Tangela"] = {
["m1"] = {  spell = "Absorb", minLv = 80,ex = 733331, base1 = 200, base2 = 201, dista = 1, bonus = 6.5,type = "grass",cd = 10},
["m2"] = {  spell = "Leech Seed",minLv = 80, ex = 733331, base1 = 18, base2 = 18, dista = 4, bonus = 2.7, type = "grass", cd = 20},
["m3"] = {  spell = "Super Vines", minLv = 80, ex = 733335, base1 = 200,base2 = 201, dista = 1, bonus = 12, type = "grass",cd = 20},
["m4"] = {  spell = "Vine Whip",minLv = 80, ex = 335832, base1 = 330, base2 = 345, dista = 2,target = "no", bonus = 10.5, type = "grass", cd = 5},
["m5"] = {  spell = "Poison Powder", minLv = 80, ex = 734898, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "poison",cd = 35},
["m6"] = {  spell = "Sleep Powder", minLv = 80, ex = 569237, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 0, type = "grass",cd = 30},
["m7"] = {  spell = "Stun Spore", minLv = 80, ex = 895157, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 15},
["!cd"] = { pokenome= "Tangela" , nmoves= 7 , spellm1 = "Absorb" ,exm1=733331,spellm2="Leech Seed",exm2 = 733331,spellm3= "Super Vines",exm3=733335,spellm4 = "Vine Whip",exm4=335832,spellm6 = "Poison Powder",exm5=734898,spellm6 = "Sleep Powder",exm6=569237,spellm7 = "Stun Spore",exm7=895157},
["XD"] = { descricao = "The whole body is swathed with wide vines that are similar to seaweed. Its vines shake as it walks.",desvantagem = "Weaknesses: \n Fire/Flying/Ice",habilidade = "Habilites: none",evoluction = "Tangela: Level 80",type = "is a Grass-type"},
},
["Shiny Tangela"] = {
["m1"] = {  spell = "Absorb", minLv = 100,ex = 733331, base1 = 200, base2 = 201, dista = 1, bonus = 8.5,type = "grass",cd = 10},
["m2"] = {  spell = "Leech Seed",minLv = 100, ex = 733331, base1 = 18, base2 = 18, dista = 4, bonus = 4.7, type = "grass", cd = 20},
["m3"] = {  spell = "Super Vines", minLv = 100, ex = 733335, base1 = 200,base2 = 201, dista = 1, bonus = 15, type = "grass",cd = 10},
["m4"] = {  spell = "Vine Whip",minLv = 100, ex = 335832, base1 = 330, base2 = 345, dista = 2,target = "no", bonus = 13.5, type = "grass", cd = 5},
["m5"] = {  spell = "Poison Powder", minLv = 100, ex = 734898, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 8, type = "poison",cd = 35},
["m6"] = {  spell = "Sleep Powder", minLv = 100, ex = 569237, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 0, type = "grass",cd = 30},
["m7"] = {  spell = "Stun Spore", minLv = 100, ex = 895157, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 15},
["!cd"] = { pokenome= "Shiny Tangela" , nmoves= 7 , spellm1 = "Absorb" ,exm1=733331,spellm2="Leech Seed",exm2 = 733331,spellm3= "Super Vines",exm3=733335,spellm4 = "Vine Whip",exm4=335832,spellm6 = "Poison Powder",exm5=734898,spellm6 = "Sleep Powder",exm6=569237,spellm7 = "Stun Spore",exm7=895157},
["XD"] = { descricao = "The whole body is swathed with wide vines that are similar to seaweed. Its vines shake as it walks.",desvantagem = "Weaknesses: \n Fire/Flying/Ice",habilidade = "Habilites: none",evoluction = "Tangela: Level 100",type = "is a Grass-type"},
},
["Exeggcute"] = {
["m1"] = {  spell = "Hypnosis", minLv = 18,ex = 9467781, base1 = 200, base2 = 201, dista = 6, bonus = 0,type = "psychic",cd = 20},
["m2"] = {  spell = "Leech Seed", minLv = 15, ex = 4868684, base1 = 18, base2 = 18, dista = 6, bonus = 0.5, type = "grass",cd = 20},
["m3"] = {  spell = "Egg Bomb", minLv = 15,ex = 1259381, base1 = 100, base2 = 151, dista = 8, bonus = 10.5,type = "normal",cd = 9},
["m4"] = {  spell =  "Confusion", minLv = 16, ex = 6398703, base1 = 65,base2 = 75, bonus = 10,type = "psychic",target = "no",cd = 15},
["!cd"] = { pokenome= "Exeggcute" , nmoves= 4 , spellm1 = "Hypnosis" ,exm1=9467781,spellm2="Leech Seed",exm2 = 4868684,spellm3= "Egg Bomb",exm3=1259381,spellm4 = "Confusion",exm4=6398703},
["XD"] = { descricao = "Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms. ",desvantagem = "Weaknesses: \n Bug/Fire/Flying/Ghost/Ice/Poison",habilidade = "Habilites: none",evoluction = "Exeggcute: Level 15\nExeggutor: Level 65",type = "is a dual-type Grass/Psychic"},
},

["Exeggutor"] = {
["m1"] = {  spell = "Hypnosis", minLv = 65,ex = 9453211, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 20},
["m2"] = {  spell = "Leech Seed", minLv = 65, ex = 2963354, base1 = 18, base2 = 18, dista = 6, bonus = 3.5, type = "grass",cd = 20},
["m3"] = {  spell = "Egg Bomb", minLv = 66,ex = 5357891, base1 = 400, base2 = 401, dista = 8, bonus = 20.5,type = "normal",cd = 9},
["m4"] = {  spell =  "Confusion", minLv = 67, ex = 4368973, base1 = 165,base2 = 175, bonus = 15,type = "psychic",target = "no",cd = 25},
["m5"] = {  spell =  "Psychic", minLv = 65, ex = 4368667, base1 = 225,base2 = 225, bonus = 15,type = "psychic",target = "no",cd = 35},
["m6"] = {  spell = "Solar Beam", minLv = 65, ex = 6763695, base1 = 750, base2 = 650, dista = 2, bonus = 10, target = "no", type = "grass",cd = 60},
["m7"] = {  spell = "Stun Spore", minLv = 65, ex = 623466, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["m8"] = {  spell = "Poison Powder", minLv = 65, ex = 356987, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "poison",cd = 50},
["m9"] = {  spell = "Leaf Storm", minLv = 70, ex = 538972, base1 = 360, base2 = 380, target = "no", bonus = 5.0, type = "grass", cd = 95},
["!cd"] = { pokenome= "Exeggutor" , nmoves= 9 , spellm1 = "Hypnosis" ,exm1=9453211,spellm2="Leech Seed",exm2 = 2963354,spellm3= "Egg Bomb",exm3=5357891,spellm4 = "Confusion",exm4=4368973,spellm5 = "Psychic",exm5=4368667,spellm6 = "Solar Beam",exm6=6763695,spellm7 = "Stun Spore",exm7=623466,spellm8 = "Poison Powder",exm8=356987,spellm9 = "Leaf Storm",exm9=538972},
["XD"] = { descricao = "Legend has it that on rare occasions, one of its heads will drop off and continue on as an Exeggcute. ",desvantagem = "Weaknesses: \n Bug/Fire/Flying/Ghost/Ice/Poison",habilidade = "Habilites: cut",evoluction = "Exeggcute: Level 15\nExeggutor: Level 65",type = "is a dual-type Grass/Psychic"},
},

["Dratini"] = {
["m1"] = {spell = "Headbutt", minLv = 20, ex = 1450001, base1 = 80,base2 = 85, dista = 1, bonus = 5.0, type = "normal", cd = 9},
["m2"] = {spell = "Thundershock", minLv = 20, ex = 8220002, base1 = 100,base2 = 118, dista = 5, bonus = 3.8, type = "electric", cd = 9 },
["m3"] = {spell = "Dragon Pulse", minLv = 27 , ex = 6500003 , base1 = 80, base2 = 90 ,dista = 5, bonus = 3.8, type = "dragon", cd = 10},
["m4"] = {spell = "Hyper Beam", minLv = 25, ex = 6500865, base1 = 205, target = "no", base2 = 210, dista = 2, bonus = 15, type = "normal",cd = 50},
["m5"] = {spell = "Dragon Breath", minLv = 20, ex = 6610009, base1 = 80, base2 = 90, dista = 8, bonus = 4.8,target = "no",type = "dragon",cd = 25},
["m6"] = {spell = "Twister",minLv = 28,ex = 6611009,base1 = 80,base2 = 90,dista = 8,bonus = 2.8,target = "no",type = "dragon",cd = 30  },
["m7"] = {spell = "Dragon Rush",minLv = 30,ex = 6205012,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 10,type = "dragon",cd = 95},
["m8"] = {spell = "Fury",minLv = 30,ex = 500576,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "dragon",target = "no",cd = 35},
["!cd"] = { pokenome= "Dratini" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=1450001,spellm2="Thundershock",exm2 = 8220002,spellm3= "Dragon Pulse",exm3=6500003,spellm4 = "Hyper Beam",exm4=6500865,spellm5 = "Dragon Breath",exm5=6610009,spellm6 = "Twister",exm6=6611009,spellm7 = "Dragon Rush",exm7=6205012,spellm8 = "Dragon Rush",exm8=500576},
["XD"] = { descricao = "Long considered a mythical Pokémon until recently when a small colony was found living underwater. ",desvantagem = "Weaknesses: \n Dragon/ice",habilidade = "Habilites: Headbutt",evoluction = "Dratini: Level 20\nDragonair: Level 70\nDragonite: Level 100",type = "is a Dragon-type"},
		 },

["Dragonair"] = {
["m1"] = {spell = "Headbutt", minLv = 70, ex = 1458591, base1 = 180,base2 = 185, dista = 1, bonus = 6.0, type = "normal", cd = 9},
["m2"] = {spell = "Thundershock", minLv = 70, ex = 9224602, base1 = 200,base2 = 218, dista = 5, bonus = 4.8, type = "electric", cd = 9 },
["m3"] = {spell = "Dragon Pulse", minLv = 70 , ex = 4566303 , base1 = 180, base2 = 190 ,dista = 5, bonus = 4.8, type = "dragon", cd = 10},
["m4"] = {spell = "Hyper Beam", minLv = 70, ex = 826953, base1 = 225,target = "no",base2 = 250,dista = 8, bonus = 30, type = "normal",cd = 50},
["m5"] = {spell = "Dragon Breath", minLv = 72, ex = 5620369, base1 = 180, base2 = 190, dista = 8, bonus = 9.8,target = "no",type = "dragon",cd = 25},
["m6"] = {spell = "Twister",minLv = 73,ex = 1698403,base1 = 180,base2 = 190,dista = 8,bonus = 5.8,target = "no",type = "dragon",cd = 30  },
["m7"] = {spell = "Dragon Rush",minLv = 80,ex = 6205013,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 15,type = "dragon",cd = 95},
["m8"] = {spell = "Fury",minLv = 78,ex = 500578,base1 = 100,base2 = 120,dista = 1,bonus = 3.2,type = "dragon",target = "no",cd = 35},
["!cd"] = { pokenome= "Dragonair" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=1458591,spellm2="Thundershock",exm2 = 9224602,spellm3= "Dragon Pulse",exm3=4566303,spellm4 = "Hyper Beam",exm4=826953,spellm5 = "Dragon Breath",exm5=5620369,spellm6 = "Twister",exm6=1698403,spellm7 = "Dragon Rush",exm7=6205013,spellm8 = "Fury",exm8=500578},
["XD"] = { descricao = "A mystical Pokémon that exudes a gentle aura. Has the ability to change climate conditions.",desvantagem = "Weaknesses: \n Dragon/ice",habilidade = "Habilites: Headbutt",evoluction = "Dratini: Level 20\nDragonair: Level 70\nDragonite: Level 100",type = "is a Dragon-type"},
		 },

["Dragonite"] = {
["m1"] = {spell = "Headbutt",minLv = 100,ex = 1450003,base1 = 80,base2 = 85,dista = 1,bonus = 9.0,type = "normal",cd = 9},
["m2"] = {spell = "Thundershock",minLv = 100,ex = 8240002,base1 = 100,base2 = 118,dista = 5,bonus = 6.8,type = "electric",cd = 9 },
["m3"] = {spell = "Dragon Pulse",minLv = 100,ex = 6700003,base1 = 275,base2 = 385,dista = 5,bonus = 8,type = "dragon",cd = 8},
["m4"] = {spell = "Hyper Beam",minLv = 110,ex = 6251005,base1 = 485,target = "no",base2 = 500,bonus = 40,type = "normal",cd = 50},
["m5"] = {spell = "Dragon Breath",minLv = 102,ex = 6810005,base1 = 275,base2 = 385,dista = 5,bonus = 12,target = "no",type = "dragon",cd = 25},
["m6"] = {spell = "Twister",minLv = 104,ex = 6831005,base1 = 275,base2 = 385,dista = 5,bonus = 8,target = "no",type = "dragon",cd = 30},
["m7"] = {spell = "Wing Attack",minLv = 102,ex = 655107,base1 = 250,base2 = 300,dista = 10,bonus = 10,type = "flying",target = "no",cd = 29},
["m8"] = {spell = "Dragon Rush",minLv = 110,ex = 6205018,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 15,type = "dragon",cd = 95},
["m9"] = {spell = "Magma Meteor",minLv = 115,ex = 6205015,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 20,type = "dragon",cd = 165},
["m10"] = {spell = "Fury",minLv = 108,ex = 500559,base1 = 100,base2 = 120,dista = 1,bonus = 5.5,type = "dragon",target = "no",cd = 35},
["!cd"] = { pokenome= "Dragonite" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=1450003,spellm2="Thundershock",exm2 = 8240002,spellm3= "Dragon Pulse",exm3=6700003,spellm4 = "Hyper Beam",exm4=6251005,spellm5 = "Dragon Breath",exm5=6810005,spellm6 = "Twister",exm6=6831005,spellm7 = "Wing Attack",exm7=655107,spellm8 = "Dragon Rush",exm8=6205018,spellm9 = "Magma Meteor",exm9=6205015,spellm10 = "Fury",exm10=500559},
["XD"] = { descricao = "An extremely rarely seen marine Pokémon. Its intelligence is said to match that of humans.",desvantagem = "Weaknesses: \n Dragon/ice/rock",habilidade = "Habilites: Fly\nHeadbutt",evoluction = "Dratini: Level 20\nDragonair: Level 70\nDragonite: Level 100",type = "is a dual-type Dragon/Flying"},
},

["Shiny Dratini"] = {
["m1"] = {spell = "Headbutt", minLv = 20, ex = 1450001, base1 = 80,base2 = 85, dista = 1, bonus = 5.0, type = "normal", cd = 9},
["m2"] = {spell = "Thundershock", minLv = 20, ex = 8220002, base1 = 100,base2 = 118, dista = 5, bonus = 3.8, type = "electric", cd = 9 },
["m3"] = {spell = "Dragon Pulse", minLv = 27 , ex = 6500003 , base1 = 80, base2 = 90 ,dista = 5, bonus = 3.8, type = "dragon", cd = 10},
["m4"] = {spell = "Hyper Beam", minLv = 25, ex = 6500865, base1 = 205, target = "no", base2 = 210, dista = 2, bonus = 15, type = "normal",cd = 50},
["m5"] = {spell = "Dragon Breath", minLv = 20, ex = 6610009, base1 = 80, base2 = 90, dista = 8, bonus = 4.8,target = "no",type = "dragon",cd = 25},
["m6"] = {spell = "Twister",minLv = 28,ex = 6611009,base1 = 80,base2 = 90,dista = 8,bonus = 2.8,target = "no",type = "dragon",cd = 30  },
["m7"] = {spell = "Dragon Rush",minLv = 30,ex = 6205012,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 10,type = "dragon",cd = 95},
["m8"] = {spell = "Fury",minLv = 30,ex = 500576,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "dragon",target = "no",cd = 35},
["!cd"] = { pokenome= "Shiny Dratini" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=1450001,spellm2="Thundershock",exm2 = 8220002,spellm3= "Dragon Pulse",exm3=6500003,spellm4 = "Hyper Beam",exm4=6500865,spellm5 = "Dragon Breath",exm5=6610009,spellm6 = "Twister",exm6=6611009,spellm7 = "Dragon Rush",exm7=6205012,spellm8 = "Dragon Rush",exm8=500576},
["XD"] = { descricao = "Long considered a mythical Pokémon until recently when a small colony was found living underwater. ",desvantagem = "Weaknesses: \n Dragon/ice",habilidade = "Habilites: Headbutt",evoluction = "Dratini: Level 20\nDragonair: Level 70\nDragonite: Level 150",type = "is a Dragon-type"},
		 },

["Shiny Dragonair"] = {
["m1"] = {spell = "Headbutt", minLv = 70, ex = 1458591, base1 = 180,base2 = 185, dista = 1, bonus = 6.0, type = "normal", cd = 9},
["m2"] = {spell = "Thundershock", minLv = 70, ex = 9224602, base1 = 200,base2 = 218, dista = 5, bonus = 4.8, type = "electric", cd = 9 },
["m3"] = {spell = "Dragon Pulse", minLv = 70 , ex = 4566303 , base1 = 180, base2 = 190 ,dista = 5, bonus = 4.8, type = "dragon", cd = 10},
["m4"] = {spell = "Hyper Beam", minLv = 70, ex = 826953, base1 = 225,target = "no",base2 = 250,dista = 8, bonus = 30, type = "normal",cd = 50},
["m5"] = {spell = "Dragon Breath", minLv = 72, ex = 5620369, base1 = 180, base2 = 190, dista = 8, bonus = 9.8,target = "no",type = "dragon",cd = 25},
["m6"] = {spell = "Twister",minLv = 73,ex = 1698403,base1 = 180,base2 = 190,dista = 8,bonus = 5.8,target = "no",type = "dragon",cd = 30  },
["m7"] = {spell = "Dragon Rush",minLv = 80,ex = 6205013,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 15,type = "dragon",cd = 95},
["m8"] = {spell = "Fury",minLv = 78,ex = 500578,base1 = 100,base2 = 120,dista = 1,bonus = 3.2,type = "dragon",target = "no",cd = 35},
["!cd"] = { pokenome= "Shiny Dragonair" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=1458591,spellm2="Thundershock",exm2 = 9224602,spellm3= "Dragon Pulse",exm3=4566303,spellm4 = "Hyper Beam",exm4=826953,spellm5 = "Dragon Breath",exm5=5620369,spellm6 = "Twister",exm6=1698403,spellm7 = "Dragon Rush",exm7=6205013,spellm8 = "Fury",exm8=500578},
["XD"] = { descricao = "A mystical Pokémon that exudes a gentle aura. Has the ability to change climate conditions.",desvantagem = "Weaknesses: \n Dragon/ice",habilidade = "Habilites: Headbutt",evoluction = "Dratini: Level 20\nDragonair: Level 70\nDragonite: Level 150",type = "is a Dragon-type"},
		 },

["Shiny Dragonite"] = {
["m1"] = {spell = "Headbutt",minLv = 150,ex = 1450003,base1 = 80,base2 = 85,dista = 1,bonus = 15.0,type = "normal",cd = 9},
["m2"] = {spell = "Thundershock",minLv = 150,ex = 8240002,base1 = 100,base2 = 118,dista = 5,bonus = 14.8,type = "electric",cd = 9 },
["m3"] = {spell = "Dragon Pulse",minLv = 150,ex = 6700003,base1 = 275,base2 = 385,dista = 5,bonus = 13,type = "dragon",cd = 8},
["m4"] = {spell = "Hyper Beam",minLv = 160,ex = 6251005,base1 = 485,target = "no",base2 = 500,bonus = 60,type = "normal",cd = 50},
["m5"] = {spell = "Dragon Breath",minLv = 152,ex = 6810005,base1 = 275,base2 = 385,dista = 5,bonus = 18,target = "no",type = "dragon",cd = 25},
["m6"] = {spell = "Twister",minLv = 154,ex = 6831005,base1 = 275,base2 = 385,dista = 5,bonus = 12,target = "no",type = "dragon",cd = 30},
["m7"] = {spell = "Wing Attack",minLv = 152,ex = 655107,base1 = 250,base2 = 300,dista = 10,bonus = 15,type = "flying",target = "no",cd = 29},
["m8"] = {spell = "Dragon Rush",minLv = 160,ex = 6205018,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 25,type = "dragon",cd = 95},
["m9"] = {spell = "Magma Meteor",minLv = 165,ex = 6205015,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 50,type = "dragon",cd = 165},
["m10"] = {spell = "Fury",minLv = 158,ex = 500559,base1 = 100,base2 = 120,dista = 1,bonus = 8.5,type = "dragon",target = "no",cd = 35},
["!cd"] = { pokenome= "Shiny Dragonite" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=1450003,spellm2="Thundershock",exm2 = 8240002,spellm3= "Dragon Pulse",exm3=6700003,spellm4 = "Hyper Beam",exm4=6251005,spellm5 = "Dragon Breath",exm5=6810005,spellm6 = "Twister",exm6=6831005,spellm7 = "Wing Attack",exm7=655107,spellm8 = "Dragon Rush",exm8=6205018,spellm9 = "Magma Meteor",exm9=6205015,spellm10 = "Fury",exm10=500559},
["XD"] = { descricao = "An extremely rarely seen marine Pokémon. Its intelligence is said to match that of humans.",desvantagem = "Weaknesses: \n Dragon/ice/rock",habilidade = "Habilites: Fly\nHeadbutt",evoluction = "Dratini: Level 20\nDragonair: Level 70\nDragonite: Level 150",type = "is a dual-type Dragon/Flying"},
},
["Snorlax"] = {
["m1"] = {spell = "Headbutt",minLv = 90,ex = 4456803,base1 = 80,base2 = 85,dista = 1,bonus = 9.0,type = "normal",cd = 9},
["m2"] = {spell = "Scratch",minLv = 90,ex = 634091,base1 = 190,base2 = 200,dista = 1,bonus = 9.5,type = "normal",cd = 15},
["m3"] = {spell = "Dizzy Punch",minLv = 90,ex = 829251,base1 = 335,base2 = 340,dista = 1,bonus = 3.9,type = "normal",cd = 15},
["m4"] = {spell = "Bite",minLv = 90,ex = 812922,base1 = 200,base2 = 210,dista = 1,bonus = 8.7,type = "normal",cd = 9},
["m5"] = {spell = "Mega Punch",minLv = 90,ex = 886771,base1 = 335,base2 = 440,dista = 1,bonus = 10.9,type = "fighting",cd = 25},
["m6"] = {spell = "Body Slam",minLv = 94,ex = 876671,base1 = 335,base2 = 440,dista = 1,bonus = 14.9,type = "normal",cd = 35},
["m7"] = {spell = "Hyper Beam",minLv = 100,ex = 4561005,base1 = 485,target = "no",base2 = 500,bonus = 40,type = "normal",cd = 50},
["m8"] = {spell = "Giga Impact",minLv = 105,ex = 7288335,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 6.5,type = "ground",cd = 60},
["m9"] = {spell = "Rest",minLv = 91,ex = 6843433,base1 = 305,base2 = 316,dista = 10,target = "no",bonus = 0,type = "normal",cd = 50},
["!cd"] = { pokenome= "Snorlax" , nmoves= 9 , spellm1 = "Headbutt" ,exm1=4456803,spellm2="Scratch",exm2 = 634091,spellm3= "Dizzy Punch",exm3=829251,spellm4 = "Bite",exm4=812922,spellm5 = "Mega Punch",exm5=886771,spellm6 = "Body Slam",exm6=876671,spellm7 = "Hyper Beam",exm7=4561005,spellm8 = "Giga Impact",exm8=7288335,spellm9 = "Rest",exm9=6843433},
["XD"] = { descricao = "Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: Surf\nRock Smash\nDig\nHeadbutt",evoluction = "Snorlax: Level 90",type = "is a Normal-type"},
},
["Giant Snorlax"] = {
["m1"] = {spell = "Headbutt",minLv = 150,ex = 4456803,base1 = 80,base2 = 85,dista = 1,bonus = 15.0,type = "normal",cd = 9},
["m2"] = {spell = "Scratch",minLv = 150,ex = 634091,base1 = 190,base2 = 200,dista = 1,bonus = 15.5,type = "normal",cd = 15},
["m3"] = {spell = "Dizzy Punch",minLv = 150,ex = 829251,base1 = 335,base2 = 340,dista = 1,bonus = 15.9,type = "normal",cd = 15},
["m4"] = {spell = "Bite",minLv = 150,ex = 812922,base1 = 200,base2 = 210,dista = 1,bonus = 16.7,type = "normal",cd = 9},
["m5"] = {spell = "Mega Punch",minLv = 150,ex = 886771,base1 = 335,base2 = 440,dista = 1,bonus = 18.9,type = "fighting",cd = 25},
["m6"] = {spell = "Body Slam",minLv = 154,ex = 876671,base1 = 335,base2 = 440,dista = 1,bonus = 20.9,type = "normal",cd = 35},
["m7"] = {spell = "Hyper Beam",minLv = 160,ex = 4561005,base1 = 485,target = "no",base2 = 500,bonus = 60,type = "normal",cd = 50},
["m8"] = {spell = "Giga Impact",minLv = 155,ex = 7288335,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 10.5,type = "ground",cd = 60},
["m9"] = {spell = "Rest",minLv = 151,ex = 6843433,base1 = 305,base2 = 316,dista = 10,target = "no",bonus = 0,type = "normal",cd = 50},
["!cd"] = { pokenome= "Snorlax" , nmoves= 9 , spellm1 = "Headbutt" ,exm1=4456803,spellm2="Scratch",exm2 = 634091,spellm3= "Dizzy Punch",exm3=829251,spellm4 = "Bite",exm4=812922,spellm5 = "Mega Punch",exm5=886771,spellm6 = "Body Slam",exm6=876671,spellm7 = "Hyper Beam",exm7=4561005,spellm8 = "Giga Impact",exm8=7288335,spellm9 = "Rest",exm9=6843433},
["XD"] = { descricao = "Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: Surf\nRock Smash\nDig",evoluction = "Snorlax: Level 90",type = "is a Normal-type"},
},
["Abra"] = {
["m1"] = {spell = "Psy Pulse",minLv = 17,ex = 6300003,base1 = 100,base2 = 150,dista = 5,bonus = 2.8,type = "psychic",cd = 10},
["m2"] = {spell = "Calm Mind",minLv = 20,ex = 7491808,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 35},
["m3"] = {spell = "Restore",minLv = 15,ex = 6300002,base1 = 70,base2 = 140,dista = 100,bonus = 0,target = "no",type = "psychic",cd = 100},
["m4"] = {spell = "Confusion",minLv = 15,ex = 6300001,base1 = 65,base2 = 75,dista = 5,bonus = 10,type = "psychic",target = "no",cd = 15},
["m5"] = {spell = "Psy Target",minLv = 20,ex = 6300009,base1 = 65,base2 = 75,dista = 5,bonus = 2,type = "psychic",target = "no",cd = 30},
["!cd"] = { pokenome= "Abra" , nmoves= 5 , spellm1 = "Psy Pulse" ,exm1=6300003,spellm2="Calm Mind",exm2 = 7491808,spellm3= "Restore",exm3=6300002,spellm4 = "Confusion",exm4=6300001,spellm5 = "Psy Target",exm5=6300009},
["XD"] = { descricao = "Using its ability to read minds, it will identify impending danger and Teleport to safety.",desvantagem = "Weaknesses: \n Bug/Ghost",habilidade = "Habilites: Teleport\nLight\nBlinky",evoluction = "Abra: Level 15\nKadabra: Level 45\nAlakazam: Level 85",type = "is a Psychic-type"},
},

["Kadabra"] = {	
["m1"] = {spell = "Psy beam",minLv = 45,ex = 6409526,base1 = 335,base2 = 345,dista = 8,bonus = 5,type = "psychic",target = "no",cd = 20},
["m2"] = {spell = "Psy Wave",minLv = 45,ex = 6304556,base1 = 335,base2 = 345,dista = 8,bonus = 5,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psychic",minLv = 45,ex = 6400001,base1 = 135,base2 = 145,dista = 8,bonus = 12,type = "psychic",target = "no",cd = 35},
["m4"] = {spell = "Confusion",minLv = 45,ex = 6465001,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psy Pulse",minLv = 45,ex = 6400003,base1 = 175,base2 = 185,dista = 5,bonus = 3,type = "psychic",cd = 10},
["m6"] = {spell = "Hypnosis", minLv = 45,ex = 6405689, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 60},
["m7"] = {spell = "Calm Mind",minLv = 60,ex = 6401358,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 35},
["m8"] = {spell = "Restore",minLv = 55,ex = 6400002,base1 = 135,base2 = 145,bonus = 0,type = "psychic",target = "no",cd = 100},
["m9"] = {spell = "Reflect",minLv = 50,ex = 6404598,base1 = 335,base2 = 345,bonus = 0,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Psycho Shift",minLv = 55,ex = 6110004,base1 = 235,base2 = 245,dista = 10,bonus = 10,type = "psychic",cd = 24},
["m11"] = {spell = "Psy Target",minLv = 60,ex = 6300019,base1 = 65,base2 = 75,dista = 5,bonus = 3,type = "psychic",target = "no",cd = 30},
["!cd"] = { pokenome= "Kadabra" , nmoves= 11 , spellm1 = "Psy beam" ,exm1=6409526,spellm2="Psy Wave",exm2 = 6304556,spellm3= "Psychic",exm3=6400001,spellm4 = "Confusion",exm4=6465001,spellm5 = "Psy Pulse",exm5=6400003,spellm6 = "Hypnosis",exm6=6405689,spellm7 = "Calm Mind",exm7=6401358,spellm8 = "Restore",exm8=6400002,spellm9 = "Reflect",exm9=6404598,spellm10 = "Psycho Shift",exm10=6110004,spellm11 = "Psy Target",exm11=6300019},
["XD"] = { descricao = "It emits special alpha waves from its body that induce headaches just by being close by.",desvantagem = "Weaknesses: \n Bug/Ghost",habilidade = "Habilites: Teleport\nLight\nBlinky",evoluction = "Abra: Level 15\nKadabra: Level 45\nAlakazam: Level 85",type = "is a Psychic-type"},
},

["Alakazam"] = {
["m1"] = {spell = "Psy beam",minLv = 80,ex = 6509526,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m2"] = {spell = "Psy Wave",minLv = 80,ex = 6504556,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 80,ex = 6560003,base1 = 275,base2 = 285,dista = 6,bonus = 5,type = "psychic",cd = 15},
["m4"] = {spell = "Confusion",minLv = 80,ex = 6565001,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 80,ex = 6560008,base1 = 235,base2 = 245,dista = 8,bonus = 15,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Mind Blast",minLv = 95,ex = 6222008,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 15,type = "psychic",cd = 95},
["m7"] = {spell = "Calm Mind",minLv = 90,ex = 6801359,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 70},
["m8"] = {spell = "Hypnosis", minLv = 85,ex = 8903669, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 60},
["m9"] = {spell = "Reflect",minLv = 85,ex = 7555597,base1 = 335,base2 = 345,bonus = 0,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Restore",minLv = 85,ex = 6400056,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 100},
["m11"] = {spell = "Psycho Shift",minLv = 90,ex = 61100888,base1 = 235,base2 = 245,dista = 10,bonus = 12,type = "psychic",cd = 24},
["m12"] = {spell = "Psy Target",minLv = 90,ex = 6300899,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "psychic",target = "no",cd = 50},
["!cd"] = { pokenome= "Alakazam" , nmoves= 12 , spellm1 = "Psy beam" ,exm1=6509526,spellm2="Psy Wave",exm2 = 6504556,spellm3= "Psy Pulse",exm3=6560003,spellm4 = "Confusion",exm4=6565001,spellm5 = "Psychic",exm5=6560008,spellm6 = "Mind Blast",exm6=6222008,spellm7 = "Calm Mind",exm7=6801359,spellm8 = "Hypnosis",exm8=8903669,spellm9 = "Reflect",exm9=7555597,spellm10 = "Restore",exm10=6400056,spellm11 = "Psycho Shift",exm11=61100888,spellm12 = "Psy Target",exm12=6300899},
["XD"] = { descricao = "Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5,000. ",desvantagem = "Weaknesses: \n Bug/Ghost",habilidade = "Habilites: Teleport\nLight\nBlinky\nControl Mind",evoluction = "Abra: Level 15\nKadabra: Level 45\nAlakazam: Level 85",type = "is a Psychic-type"},
},

["Shiny Abra"] = {
["m1"] = {spell = "Psy beam",minLv = 75,ex = 6509526,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m2"] = {spell = "Psy Wave",minLv = 75,ex = 6504556,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 75,ex = 6560003,base1 = 275,base2 = 285,dista = 6,bonus = 5,type = "psychic",cd = 15},
["m4"] = {spell = "Night Shade",minLv = 78,ex = 746021,base1 = 335,base2 = 345,dista = 16,bonus = 15,type = "ghost",target = "no",cd = 35},
["m5"] = {spell = "Psychic",minLv = 75,ex = 6560008,base1 = 235,base2 = 245,dista = 8,bonus = 15,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Invisible", minLv = 75,ex = 288537, base1 = 200, base2 = 201, dista = 100,target = "no", bonus = 0,type = "ghost",cd = 8},
["m7"] = {spell = "Calm Mind",minLv = 80,ex = 6801359,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 70},
["m8"] = {spell = "Hypnosis", minLv = 85,ex = 8903669, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 60},
["m9"] = {spell = "Reflect",minLv = 85,ex = 7555597,base1 = 335,base2 = 345,bonus = 0,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Restore",minLv = 85,ex = 6400056,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 100},
["m11"] = {spell = "Dark Target",minLv = 90,ex = 6300899,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "psychic",target = "no",cd = 50},
["!cd"] = { pokenome= "Shiny Abra" , nmoves= 11 , spellm1 = "Psy beam" ,exm1=6509526,spellm2="Psy Wave",exm2 = 6504556,spellm3= "Psy Pulse",exm3=6560003,spellm4 = "Night Shade",exm4=746021,spellm5 = "Psychic",exm5=6560008,spellm6 = "Mind Blast",exm6=6222008,spellm7 = "Calm Mind",exm7=6801359,spellm8 = "Hypnosis",exm8=8903669,spellm9 = "Reflect",exm9=7555597,spellm10 = "Restore",exm10=6400056,spellm11 = "Dark Target",exm11=6300899},
["XD"] = { descricao = "Its brain can outperform a darkmind. Its intelligence quotient is said to be 5,000. ",desvantagem = "Weaknesses: \n Ghost",habilidade = "Habilites: Teleport\nLight\nBlinky",evoluction = "Abra Level 75:",type = "is a Ghost-type"},
},

["Shiny Alakazam"] = {
["m1"] = {spell = "Psy Condition",minLv = 105,ex = 6659526,base1 = 335,base2 = 345,dista = 8,bonus = 3.0,type = "psychic",target = "no",cd = 70},
["m2"] = {spell = "Psy Wave",minLv = 100,ex = 6594556,base1 = 335,base2 = 345,dista = 8,bonus = 9,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 100,ex = 6960003,base1 = 275,base2 = 285,dista = 6,bonus = 9,type = "psychic",cd = 15},
["m4"] = {spell = "Confusion",minLv = 100,ex = 6965001,base1 = 165,base2 = 175,dista = 8,bonus = 9,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 100,ex = 6960008,base1 = 235,base2 = 245,dista = 8,bonus = 20,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Mind Blast",minLv = 115,ex = 6922008,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 20,type = "psychic",cd = 95},
["m7"] = {spell = "Calm Mind",minLv = 110,ex = 6901359,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 70},
["m8"] = {spell = "Hypnosis", minLv = 105,ex = 9903689, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 60},
["m9"] = {spell = "Reflect",minLv = 105,ex = 7955597,base1 = 335,base2 = 345,bonus = 0,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Restore",minLv = 105,ex = 6900056,base1 = 135,base2 = 145,bonus = 0,type = "psychic",target = "no",cd = 100},
["m11"] = {spell = "Psycho Shift",minLv = 110,ex = 69100888,base1 = 235,base2 = 245,dista = 10,bonus = 12,type = "psychic",cd = 24},
["m12"] = {spell = "Psy Target",minLv = 110,ex = 6900899,base1 = 65,base2 = 75,dista = 5,bonus = 10,type = "psychic",target = "no",cd = 50},
["!cd"] = { pokenome= "Shiny Alakazam" , nmoves= 12 , spellm1 = "Psy Condition" ,exm1=6659526,spellm2="Psy Wave",exm2 = 6594556,spellm3= "Psy Pulse",exm3=6960003,spellm4 = "Confusion",exm4=6965001,spellm5 = "Psychic",exm5=6960008,spellm6 = "Mind Blast",exm6=6922008,spellm7 = "Calm Mind",exm7=6901359,spellm8 = "Hypnosis",exm8=9903689,spellm9 = "Reflect",exm9=7955597,spellm10 = "Restore",exm10=6900056,spellm11 = "Psycho Shift",exm11=69100888,spellm12 = "Psy Target",exm12=6900899},
["XD"] = { descricao = "Its powerful shiny,brain can outperform a supercomputer. Its intelligence quotient is said to be 5,000. ",desvantagem = "Weaknesses: \n Bug/Ghost",habilidade = "Habilites: Teleport\nLight\nBlinky\nControl Mind",evoluction = "Alakazam: Level 100",type = "is a Psychic-type"},
},

["Drowzee"] = {
["m1"] = {spell = "Psy Wave",minLv = 22,ex = 9884556,base1 = 335,base2 = 345,dista = 8,bonus = 2,type = "psychic",target = "no",cd = 20},
["m2"] = {spell = "Psy Pulse",minLv = 22,ex = 9880003,base1 = 275,base2 = 285,dista = 6,bonus = 2,type = "psychic",cd = 15},
["m3"] = {spell = "Confusion",minLv = 22,ex = 9885001,base1 = 165,base2 = 175,dista = 8,bonus = 3,type = "psychic",target = "no",cd = 45},
["m4"] = {spell = "Psychic",minLv = 22,ex = 9588008,base1 = 235,base2 = 245,dista = 8,bonus = 6,type = "psychic",target = "no",cd = 35},
["m5"] = {spell = "Calm Mind",minLv = 30,ex = 9858859,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 55},
["m6"] = {spell = "Hypnosis", minLv = 25,ex = 9958689, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 50},
["m7"] = {spell = "Dream Eather",minLv = 30,ex = 9898597,base1 = 335,base2 = 345,bonus = 3,dista = 6,type = "psychic",cd = 45},
["!cd"] = { pokenome= "Drowzee" , nmoves= 7 , spellm1 = "Psy Wave" ,exm1=9884556,spellm2="Psy Pulse",exm2 = 9880003,spellm3= "Confusion",exm3=9885001,spellm4 = "Psychic",exm4=9588008,spellm5 = "Calm Mind",exm5=9858859,spellm6 = "Hypnosis",exm6=9958689,spellm7 = "Dream Eather",exm7=9898597},
["XD"] = { descricao = "Puts enemies to sleep then eats their dreams. Occasionally gets sick from eating bad dreams.",desvantagem = "Weaknesses: \n Bug/Ghost",habilidade = "Habilites: Teleport\nLight",evoluction = "Drowzee: Level 22\nHypno: Level 70",type = "is a Psychic-type"},
},

["Hypno"] = {
["m1"] = {spell = "Psy Condition",minLv = 70,ex = 988952,base1 = 335,base2 = 345,dista = 8,bonus = 2.5,type = "psychic",target = "no",cd = 100},
["m2"] = {spell = "Psy Wave",minLv = 70,ex = 988455,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 70,ex = 988000,base1 = 275,base2 = 285,dista = 6,bonus = 5,type = "psychic",cd = 15},
["m4"] = {spell = "Confusion",minLv = 70,ex = 988500,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 70,ex = 958800,base1 = 235,base2 = 245,dista = 8,bonus = 15,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Calm Mind",minLv = 75,ex = 985885,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 55},
["m7"] = {spell = "Hypnosis", minLv = 70,ex = 995868, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 50},
["m8"] = {spell = "Dream Eather",minLv = 75,ex = 989859,base1 = 335,base2 = 345,bonus = 11,dista = 6,type = "psychic",cd = 45},
["m9"] = {spell = "Psy Target",minLv = 75,ex = 935888,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "psychic",target = "no",cd = 80},
["!cd"] = { pokenome= "Hypno" , nmoves= 9 , spellm1 = "Psy Condition" ,exm1=988952,spellm2="Psy Wave",exm2 = 988455,spellm3= "Psy Pulse",exm3=988000,spellm4 = "Confusion",exm4=988500,spellm5 = "Psychic",exm5=958800,spellm6 = "Calm Mind",exm6=985885,spellm7 = "Hypnosis",exm7=995868,spellm8 = "Dream Eather",exm8=989859,spellm9 = "Psy Target",exm10=935888},
["XD"] = { descricao = "When it locks eyes with an enemy, it will use a mix of Psi moves such as Hypnosis and Confusion.",desvantagem = "Weaknesses: \n Bug/Ghost",habilidade = "Habilites: Teleport\nLight",evoluction = "Drowzee: Level 22\nHypno: Level 70",type = "is a Psychic-type"},
},
["Shiny Hypno"] = {
["m1"] = {spell = "Psy Condition",minLv = 100,ex = 488952,base1 = 335,base2 = 345,dista = 8,bonus = 3.0,type = "psychic",target = "no",cd = 100},
["m2"] = {spell = "Psy Wave",minLv = 100,ex = 488455,base1 = 335,base2 = 345,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 100,ex = 488000,base1 = 275,base2 = 285,dista = 6,bonus = 7,type = "psychic",cd = 15},
["m4"] = {spell = "Confusion",minLv = 100,ex = 488500,base1 = 165,base2 = 175,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 100,ex = 458800,base1 = 235,base2 = 245,dista = 8,bonus = 0,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Calm Mind",minLv = 110,ex = 485885,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 55},
["m7"] = {spell = "Hypnosis", minLv = 100,ex = 495868, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 50},
["m8"] = {spell = "Dream Eather",minLv = 105,ex = 489859,base1 = 335,base2 = 345,bonus = 15,dista = 6,type = "psychic",cd = 45},
["m9"] = {spell = "Psy Target",minLv = 105,ex = 435888,base1 = 65,base2 = 75,dista = 5,bonus = 7,type = "psychic",target = "no",cd = 80},
["!cd"] = { pokenome= "Shiny Hypno" , nmoves= 9 , spellm1 = "Psy Condition" ,exm1=488952,spellm2="Psy Wave",exm2 = 488455,spellm3= "Psy Pulse",exm3=488000,spellm4 = "Confusion",exm4=488500,spellm5 = "Psychic",exm5=458800,spellm6 = "Calm Mind",exm6=485885,spellm7 = "Hypnosis",exm7=495868,spellm8 = "Dream Eather",exm8=489859,spellm9 = "Psy Target",exm10=435888},
["XD"] = { descricao = "When  it locks eyes with an enemy, it will use a mix of Psi moves such as Hypnosis and Confusion.",desvantagem = "Weaknesses: \n Bug/Ghost",habilidade = "Habilites: Teleport\nLight",evoluction = "Hypno: Level 100",type = "is a Psychic-type"},
},

["Mr Mime"] = {
["m1"] = {spell = "Psy Condition",minLv = 90,ex = 9559526,base1 = 335,base2 = 345,dista = 8,bonus = 2.5,type = "psychic",target = "no",cd = 70},
["m2"] = {spell = "Psy Wave",minLv = 85,ex = 9554556,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 85,ex = 9550003,base1 = 275,base2 = 285,dista = 6,bonus = 5,type = "psychic",cd = 10},
["m4"] = {spell = "Confusion",minLv = 85,ex = 9555001,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 85,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 15,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Mind Blast",minLv = 95,ex = 9252008,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 15,type = "psychic",cd = 95},
["m7"] = {spell = "Calm Mind",minLv = 85,ex = 9851359,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 65},
["m8"] = {spell = "Hypnosis", minLv = 85,ex = 9953669, base1 = 200, base2 = 301, dista = 0, bonus = 1.0,type = "psychic",cd = 60},
["m9"] = {spell = "Reflect",minLv = 90,ex = 9595597,base1 = 335,base2 = 345,bonus = 0,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Psy Target",minLv = 90,ex = 9350899,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "psychic",target = "no",cd = 50},
["!cd"] = { pokenome= "Mr Mime" , nmoves= 10 , spellm1 = "Psy Condition" ,exm1=9559526,spellm2="Psy Wave",exm2 = 9554556,spellm3= "Psy Pulse",exm3=9550003,spellm4 = "Confusion",exm4=9555001,spellm5 = "Psychic",exm5=9550008,spellm6 = "Mind Blast",exm6=9252008,spellm7 = "Calm Mind",exm7=9851359,spellm8 = "Hypnosis",exm8=9953669,spellm9 = "Reflect",exm9=9595597,spellm10 = "Psy Target",exm10=9350899},
["XD"] = { descricao = "If interrupted while it is miming, it will slap around the offender with its broad hands. ",desvantagem = "Weaknesses: \n Bug/Ghost",habilidade = "Habilites: Teleport\nLight\nBlinky",evoluction = "Mr Mime: Level 85",type = "is a Psychic-type"},
},

["Mew"] = {
["m1"] = {spell = "Psy Condition",minLv = 155,ex = 9509526,base1 = 335,base2 = 345,dista = 8,bonus = 5.5,type = "psychic",target = "no",cd = 50},
["m2"] = {spell = "Psy Wave",minLv = 155,ex = 9504556,base1 = 335,base2 = 345,dista = 8,bonus = 16,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 155,ex = 9560003,base1 = 275,base2 = 285,dista = 6,bonus = 10,type = "psychic",cd = 10},
["m4"] = {spell = "Confusion",minLv = 155,ex = 9565001,base1 = 165,base2 = 175,dista = 8,bonus = 16,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 155,ex = 9560008,base1 = 235,base2 = 245,dista = 8,bonus = 30,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Mind Blast",minLv = 165,ex = 9222008,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 30,type = "psychic",cd = 95},
["m7"] = {spell = "Calm Mind",minLv = 155,ex = 9801359,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 35},
["m8"] = {spell = "Hypnosis", minLv = 155,ex = 9903669, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 60},
["m9"] = {spell = "Reflect",minLv = 155,ex = 9555597,base1 = 335,base2 = 345,bonus = 0,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Restore",minLv = 155,ex = 9400056,base1 = 535,base2 = 545,bonus = 0,type = "psychic",target = "no",cd = 100},
["m11"] = {spell = "Psycho Shift",minLv = 160,ex = 91100888,base1 = 235,base2 = 245,dista = 10,bonus = 20,type = "psychic",cd = 24},
["m12"] = {spell = "Psy Target",minLv = 160,ex = 9300899,base1 = 65,base2 = 75,dista = 5,bonus = 15,type = "psychic",target = "no",cd = 30},
["!cd"] = { pokenome= "Mew" , nmoves= 12 , spellm1 = "Psy Condition" ,exm1=9509526,spellm2="Psy Wave",exm2 = 9504556,spellm3= "Psy Pulse",exm3=9560003,spellm4 = "Confusion",exm4=9565001,spellm5 = "Psychic",exm5=9560008,spellm6 = "Mind Blast",exm6=9222008,spellm7 = "Calm Mind",exm7=9801359,spellm8 = "Hypnosis",exm8=9903669,spellm9 = "Reflect",exm9=9555597,spellm10 = "Restore",exm10=9400056,spellm11 = "Psycho Shift",exm11=91100888,spellm12 = "Psy Target",exm12=9300899},
["XD"] = { descricao = "So rare that it is still said to be a mirage by many experts. Only a few people have seen it worldwide",desvantagem = "Weaknesses: \n Bug/Ghost",habilidade = "Habilites: Teleport\nLight\nBlinky",evoluction = "Mew: Level 155",type = "is a Psychic-type"},
},
["Mewtwo"] = {
["m1"] = {spell = "Dark Condition",minLv = 155,ex = 9609526,base1 = 335,base2 = 345,dista = 8,bonus = 5.5,type = "ghost",target = "no",cd = 50},
["m2"] = {spell = "Psy Wave",minLv = 155,ex = 9604556,base1 = 335,base2 = 345,dista = 8,bonus = 16,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 155,ex = 9660003,base1 = 275,base2 = 285,dista = 6,bonus = 10,type = "psychic",cd = 10},
["m4"] = {spell = "Confusion",minLv = 155,ex = 9665001,base1 = 165,base2 = 175,dista = 8,bonus = 16,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 155,ex = 9660008,base1 = 235,base2 = 245,dista = 8,bonus = 30,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Mind Blast",minLv = 165,ex = 9622008,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 30,type = "psychic",cd = 95},
["m7"] = {spell = "Calm Mind",minLv = 160,ex = 9601359,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 35},
["m8"] = {spell = "Hypnosis", minLv = 155,ex = 9603669, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 60},
["m9"] = {spell = "Reflect",minLv = 155,ex = 9655597,base1 = 335,base2 = 345,bonus = 0,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Restore",minLv = 155,ex = 9600056,base1 = 535,base2 = 545,bonus = 0,type = "psychic",target = "no",cd = 100},
["m11"] = {spell = "Psycho Shift",minLv = 160,ex = 96100888,base1 = 235,base2 = 245,dista = 10,bonus = 20,type = "psychic",cd = 24},
["m12"] = {spell = "Dark Target",minLv = 160,ex = 9600899,base1 = 65,base2 = 75,dista = 5,bonus = 6,type = "psychic",target = "no",cd = 30},
["!cd"] = { pokenome= "Mewtwo" , nmoves= 12 , spellm1 = "Dark Condition" ,exm1=9609526,spellm2="Psy Wave",exm2 = 9604556,spellm3= "Psy Pulse",exm3=9660003,spellm4 = "Confusion",exm4=9665001,spellm5 = "Psychic",exm5=9660008,spellm6 = "Mind Blast",exm6=9622008,spellm7 = "Calm Mind",exm7=9601359,spellm8 = "Hypnosis",exm8=9603669,spellm9 = "Reflect",exm9=9655597,spellm10 = "Restore",exm10=9600056,spellm11 = "Psycho Shift",exm11=96100888,spellm12 = "Dark Target",exm12=9600899},
["XD"] = { descricao = "It was created by a scientist after years of horrific gene splicing and DNA engineering experiments",desvantagem = "Weaknesses: \n Bug/Ghost",habilidade = "Habilites: Teleport\nLight\nBlinky",evoluction = "Mewtwo: Level 155",type = "is a Psychic-type"},
},
["Crystal Onix"] = {
["m1"] = {spell = "Rock Throw",minLv = 100,ex = 1835402,base1 = 200,base2 = 201,dista = 6,bonus = 15,type = "rock",cd = 10},
["m2"] = {spell = "Sand Attack",minLv = 100,ex = 7604626,base1 = 215,base2 = 222,dista = 1,bonus = 12,target = "no",type = "ground",cd = 9 },
["m3"] = {spell = "Rock Slide",minLv = 100,ex = 7665403,base1 = 385,base2 = 400,dista = 5,bonus = 15.8,type = "rock",cd = 15},
["m4"] = {spell = "Harden",minLv = 100,ex = 7664504,base1 = 0,target = "no",base2 = 0,dista = 100,bonus = 0,type = "normal",cd = 17},
["m5"] = {spell = "Rock Tomb",minLv = 102,ex = 7601705,base1 = 100,base2 = 120,dista = 5,target = "no",bonus = 15,type = "rock",cd = 25},
["m6"] = {spell = "Falling Rocks",minLv = 105,ex = 7600436,base1 = 200,base2 = 201,dista = 5,target = "no",bonus = 25,type = "rock",cd = 49},
["m7"] = {spell = "Earthshock",minLv = 105,ex = 7603327,base1 = 300,base2 = 301,dista = 10,bonus = 18.8,type = "ground",target = "no",cd = 60},
["m8"] = {spell = "Earth Quake",minLv = 108,ex = 721301,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 1.5,type = "ground",cd = 70},
["!cd"] = { pokenome= "Crystal Onix" , nmoves= 8 , spellm1 = "Rock Throw" ,exm1=1835402,spellm2="Sand Attack",exm2 = 7604626,spellm3= "Rock Slide",exm3=7665403,spellm4 = "Harden",exm4=7664504,spellm5 = "Rock Tomb",exm5=7601705,spellm6 = "Falling Rocks",exm6=7600436,spellm7 = "Earthshock",exm7=7603327,spellm8 = "Earth Quake",exm8=721301},
["XD"] = { descricao = "As it grows, the stone portions of its body harden to become similar to a diamond, but crystal.",desvantagem = "Weaknesses: \n fire",habilidade = "Habilites: Ride\nRock Smash\nDig",evoluction = "Crystal Onix: Level 100",type = "is a Crystal-type"},
},
["Onix"] = {
["m1"] = {spell = "Rock Throw",minLv = 60,ex = 1835403,base1 = 200,base2 = 201,dista = 6,bonus = 7,type = "rock",cd = 10},
["m2"] = {spell = "Sand Attack",minLv = 60,ex = 7604623,base1 = 215,base2 = 222,dista = 1,bonus = 6,target = "no",type = "ground",cd = 9 },
["m3"] = {spell = "Rock Slide",minLv = 60,ex = 7665404,base1 = 385,base2 = 400,dista = 5,bonus = 7,type = "rock",cd = 15},
["m4"] = {spell = "Harden",minLv = 60,ex = 7664505,base1 = 0,target = "no",base2 = 0,dista = 100,bonus = 0,type = "normal",cd = 17},
["m5"] = {spell = "Rock Tomb",minLv = 62,ex = 7601706,base1 = 100,base2 = 120,dista = 5,target = "no",bonus = 7,type = "rock",cd = 25},
["m6"] = {spell = "Falling Rocks",minLv = 65,ex = 7600437,base1 = 200,base2 = 201,dista = 5,target = "no",bonus = 13,type = "rock",cd = 49},
["m7"] = {spell = "Earthshock",minLv = 60,ex = 7603328,base1 = 300,base2 = 301,dista = 10,bonus = 18.8,type = "ground",target = "no",cd = 60},
["m8"] = {spell = "Earth Quake",minLv = 68,ex = 721309,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 1.0,type = "ground",cd = 70},
["!cd"] = { pokenome= "Onix" , nmoves= 8 , spellm1 = "Rock Throw" ,exm1=1835403,spellm2="Sand Attack",exm2 = 7604623,spellm3= "Rock Slide",exm3=7665404,spellm4 = "Harden",exm4=7664505,spellm5 = "Rock Tomb",exm5=7601706,spellm6 = "Falling Rocks",exm6=7600437,spellm7 = "Earthshock",exm7=7603328,spellm8 = "Earth Quake",exm8=721309},
["XD"] = { descricao = "As it grows, the stone portions of its body harden to become similar to a diamond, but colored black. ",desvantagem = "Weaknesses: \n Grass/Water/Fighting/Ground/Ice",habilidade = "Habilites: Ride\nRock Smash\nDig",evoluction = "Onix: Level 60",type = "iis a dual-type Rock/Ground"},
},
["Golem"] = {
["m1"] = {spell = "Rock Throw",minLv = 70,ex = 7600031,base1 = 205,base2 = 210,dista = 5,bonus = 7,type = "rock",cd = 4},
["m2"] = {spell = "Sand Attack",minLv = 70,ex = 7600002,base1 = 215,base2 = 222,dista = 1,bonus = 9,target = "no",type = "ground",cd = 9},
["m3"] = {spell = "Rock Slide",minLv = 70,ex = 7600003,base1 = 385,base2 = 400,dista = 4,bonus = 11.8,type = "rock",cd = 15},
["m4"] = {spell = "Harden",minLv = 70,ex = 7600004,base1 = 0,target = "no",base2 = 0,dista = 100,bonus = 0,type = "normal",cd = 17},
["m5"] = {spell = "Rock Tomb",minLv = 72,ex = 7600005,base1 = 260,base2 = 270,dista = 5,target = "no",bonus = 10,type = "rock",cd = 25},
["m6"] = {spell = "Falling Rocks",minLv = 75,ex = 7600006,base1 = 300,base2 = 301,dista = 5,target = "no",bonus = 15,type = "rock",cd = 49},
["m7"] = {spell = "Earthshock",minLv = 70,ex = 7600007,base1 = 300,base2 = 301,dista = 10,bonus = 10.8,type = "ground",target = "no",cd = 40},
["m8"] = {spell = "Rollout",minLv = 70,ex = 7600008,base1 = 125,target = "no",base2 = 175,dista = 100,bonus = 1.5,type = "rock",cd = 40},
["m9"] = {spell = "Selfdestruct",minLv = 75,ex = 7600009,base1 = 3800,base2 = 4500,dista = 10,bonus = 20,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Golem" , nmoves= 9 , spellm1 = "Rock Throw" ,exm1=7600031,spellm2="Sand Attack",exm2 = 7600002,spellm3= "Rock Slide",exm3=7600003,spellm4 = "Harden",exm4=7600004,spellm5 = "Rock Tomb",exm5=7600005,spellm6 = "Falling Rocks",exm6=7600006,spellm7 = "Earthshock",exm7=7600007,spellm8 = "Rollout",exm8=7600008,spellm9 = "Selfdestruct",exm9=7600009},
["XD"] = { descricao = "As it grows, the stone portions of its body harden to become similar to a diamond, but colored black. ",desvantagem = "Weaknesses: \n Grass/Water/Fighting/Ground/Ice",habilidade = "Habilites: Rock Smash\nDig",evoluction = "Geodude: Level 20\nGraveler: Level 40\nGolem: Level 70",type = "iis a dual-type Rock/Ground"},
},

["Graveler"] = {
["m1"] = {spell = "Rock Throw",minLv = 35,ex = 7500021,base1 = 105,base2 = 106,dista = 5,bonus = 5,type = "rock",cd = 4},
["m2"] = {spell = "Sand Attack",minLv = 35,ex = 7500002,base1 = 115,base2 = 122,dista = 1,bonus = 8,type = "ground",cd = 9},
["m3"] = {spell = "Rock Slide",minLv = 46,ex = 7500003,base1 = 205,base2 = 206,dista = 4,bonus = 7.8,type = "rock",cd = 15},
["m4"] = {spell = "Harden",minLv = 17,ex = 7500004,base1 = 0,target = "no",base2 = 0,dista = 100,bonus = 0,type = "normal",cd = 17},
["m5"] = {spell = "Rock Tomb",minLv = 42,ex = 7500005,base1 = 100,base2 = 110,dista = 5,target = "no",bonus = 7,type = "rock",cd = 25},
["m6"] = {spell = "Falling Rocks",minLv = 45,ex = 7500006,base1 = 200,base2 = 201,dista = 5,target = "no",bonus = 10.5,type = "rock",cd = 49},
["m7"] = {spell = "Selfdestruct",minLv = 42,ex = 7500007,base1 = 1500,base2 = 2000,dista = 10,bonus = 21,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Graveler" , nmoves= 7 , spellm1 = "Rock Throw" ,exm1=7500021,spellm2="Sand Attack",exm2 = 7500002,spellm3= "Rock Slide",exm3=7500003,spellm4 = "Harden",exm4=7500004,spellm5 = "Rock Tomb",exm5=7500005,spellm6 = "Falling Rocks",exm6=7500006,spellm7 = "Selfdestruct",exm7=7500007},
["XD"] = { descricao = "Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction. ",desvantagem = "Weaknesses: \n Grass/Water/Fighting/Ground/Ice",habilidade = "Habilites: Rock Smash\nDig",evoluction = "Geodude: Level 20\nGraveler: Level 40\nGolem: Level 70",type = "iis a dual-type Rock/Ground"},
},
["Geodude"] = {
["m1"] = {spell = "Rock Throw",minLv = 20,ex = 7500029,base1 = 105,base2 = 106,dista = 5,bonus = 2,type = "rock",cd = 4},
["m2"] = {spell = "Sand Attack",minLv = 20,ex = 7500009,base1 = 115,base2 = 122,dista = 1,bonus = 2,type = "ground",cd = 9},
["m3"] = {spell = "Rock Slide",minLv = 20,ex = 7500069,base1 = 205,base2 = 206,dista = 4,bonus = 2.8,type = "rock",cd = 15},
["m4"] = {spell = "Harden",minLv = 20,ex = 7500039,base1 = 0,target = "no",base2 = 0,dista = 100,bonus = 0,type = "normal",cd = 17},
["m5"] = {spell = "Rock Tomb",minLv = 22,ex = 7980009,base1 = 100,base2 = 110,dista = 5,target = "no",bonus = 2,type = "rock",cd = 25},
["m6"] = {spell = "Earthshock",minLv = 25,ex = 7603329,base1 = 300,base2 = 301,dista = 10,bonus = 6.8,type = "ground",target = "no",cd = 60},
["!cd"] = { pokenome= "Geodude" , nmoves= 6 , spellm1 = "Rock Throw" ,exm1=7500029,spellm2="Sand Attack",exm2 = 7500009,spellm3= "Rock Slide",exm3=7500069,spellm4 = "Harden",exm4=7500039,spellm5 = "Rock Tomb",exm5=7980009,spellm6 = "Earthshock",exm6=7603329},
["XD"] = { descricao = "Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.",desvantagem = "Weaknesses: \n Grass/Water/Fighting/Ground/Ice",habilidade = "Habilites: Rock Smash\nDig",evoluction = "Geodude: Level 20\nGraveler: Level 40\nGolem: Level 70",type = "iis a dual-type Rock/Ground"},
},

["Rhyhorn"] = {
["m1"] = {spell = "Iron Tail",minLv = 30,ex = 7588029,base1 = 155,base2 = 156,dista = 1,bonus = 3,type = "normal",cd = 4},
["m2"] = {spell = "Horn Attack",minLv = 30,ex = 5360001,base1 = 130,base2 = 135,dista = 1,bonus = 10.4,type = "normal",cd = 5},
["m3"] = {spell = "Stomp",minLv = 32,ex = 7508869,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 5.8,type = "ground",cd = 30},
["m4"] = {spell = "Horn Drill",minLv = 35,ex = 7588239,base1 = 255,base2 = 260,dista = 1,bonus = 6,type = "normal",cd = 25},
["m5"] = {spell = "Shockwave",minLv = 37,ex = 7588539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 5,type = "ground",cd = 40},
["!cd"] = { pokenome= "Rhyhorn" , nmoves= 5 , spellm1 = "Iron Tail" ,exm1=7588029,spellm2="Horn Attack",exm2 = 5360001,spellm3= "Stomp",exm3=7508869,spellm4 = "Horn Drill",exm4=7588239,spellm5 = "Shockwave",exm5=7588539},
["XD"] = { descricao = "Its massive bones are 1000 times harder than human bones. It can easily knock a trailer flying.",desvantagem = "Weaknesses: \n Grass/Water/Fighting/Ground/Ice",habilidade = "Habilites: Rock Smash\nDig",evoluction = "Rhyhorn: Level 30\nRhydon: Level 70",type = "iis a dual-type Rock/Ground"},
},

["Rhydon"] = {
["m1"] = {spell = "Iron Tail",minLv = 70,ex = 7585529,base1 = 155,base2 = 156,dista = 1,bonus = 6,type = "normal",cd = 4},
["m2"] = {spell = "Horn Attack",minLv = 70,ex = 5360251,base1 = 130,base2 = 135,dista = 1,bonus = 15.4,type = "normal",cd = 5},
["m3"] = {spell = "Rock Throw",minLv = 70,ex = 7655931,base1 = 205,base2 = 210,dista = 5,bonus = 7,type = "rock",cd = 4},
["m4"] = {spell = "Stomp",minLv = 72,ex = 7555869,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 6.8,type = "ground",cd = 30},
["m5"] = {spell = "Horn Drill",minLv = 75,ex = 7588939,base1 = 255,base2 = 260,dista = 1,bonus = 10,type = "normal",cd = 25},
["m6"] = {spell = "Shockwave",minLv = 77,ex = 7589959,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 8,type = "ground",cd = 40},
["m7"] = {spell = "Falling Rocks",minLv = 75,ex = 7890399,base1 = 300,base2 = 301,dista = 5,target = "no",bonus = 15,type = "rock",cd = 49},
["m8"] = {spell = "Mega Horn",minLv = 75,ex = 7890398,base1 = 300,base2 = 301,dista = 5,target = "no",bonus = 15,type = "rock",cd = 49},
["!cd"] = { pokenome= "Rhydon" , nmoves= 8 , spellm1 = "Iron Tail" ,exm1=7585529,spellm2="Horn Attack",exm2 = 5360251,spellm3= "Rock Throw",exm3=7655931,spellm4 = "Stomp",exm4=7555869,spellm5 = "Horn Drill",exm5=7588939,spellm6 = "Shockwave",exm6=7589959,spellm7 = "Falling Rocks",exm7=7890399,spellm8 = "Mega Horn",exm8=7890398},
["XD"] = { descricao = "Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees.",desvantagem = "Weaknesses: \n Grass/Water/Fighting/Ground/Ice",habilidade = "Habilites: Rock Smash\nDig",evoluction = "Rhyhorn: Level 30\nRhydon: Level 70",type = "iis a dual-type Rock/Ground"},

},
["Charizard"] = {
["m1"] = {spell = "Scratch",minLv = 85,ex = 600001,base1 = 190,base2 = 200,dista = 1,bonus = 7.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 85,ex = 600002,base1 = 220,base2 = 235,dista = 4,bonus = 6.9,type = "fire",cd = 7},
["m3"] = {spell = "Fire Fang",minLv = 85,ex = 600003,base1 = 245,base2 = 258,dista = 1,bonus = 7.1,type = "fire",cd = 18},
["m4"] = {spell = "Fireball",minLv = 88,ex = 600004,base1 = 250,base2 = 251,dista = 4,bonus = 7.4,type = "fire",cd = 22},
["m5"] = {spell = "Flamethrower",minLv = 85,ex = 600005,base1 = 370,base2 = 381,target = "no",bonus = 9.2,type = "fire",cd = 35},
["m6"] = {spell = "Raging Blast",minLv = 90,ex = 600006,base1 = 360,base2 = 380,target = "no",bonus = 10.4,type = "fire",cd = 40},
["m7"] = {spell = "Wing Attack",minLv = 86,ex = 600007,base1 = 250,base2 = 300,dista = 10,bonus = 7,type = "flying",target = "no",cd = 29},
["m8"] = {spell = "Fire Blast",minLv = 89,ex = 600008,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 12.5,type = "fire",cd = 50},
["m9"] = {spell = "Flame Blast",minLv = 95,ex = 655486,base1 = 360,base2 = 380,target = "no",bonus = 3.0,type = "fire",cd = 95},
["m10"]=  {spell = "Rage",minLv = 90,ex = 659952,base1 = 100,base2 = 120,dista = 1,bonus = 3.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Charizard" , nmoves= 10 , spellm1 = "Scratch" ,exm1=600001,spellm2="Ember",exm2 = 600002,spellm3= "Fire Fang",exm3=600003,spellm4 = "Fireball",exm4=600004,spellm5 = "Flamethrower",exm5=600005,spellm6 = "Raging Blast",exm6=600006,spellm7 = "Wing Attack",exm7=600007,spellm8 = "Fire Blast",exm8=600008,spellm9 = "Flame Blast",exm9=655486,spellm10 = "Rage",exm10=659952},
["XD"] = { descricao = "Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.",desvantagem = "Weaknesses: \n Rock/Electric/Water",habilidade = "Habilites: Cut\nFlying",evoluction = "Charmander: Level 20\nCharmeleon: Level 45\nCharizard: Level 85",type = "iis a dual-type Fire/Flying"},
},

["Elder Charizard"] = {
["m1"] = {spell = "Scratch",minLv = 100,ex = 600031,base1 = 190,base2 = 200,dista = 1,bonus = 10.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 100,ex = 600032,base1 = 220,base2 = 235,dista = 4,bonus = 10.9,type = "fire",cd = 7},
["m3"] = {spell = "Fire Fang",minLv = 100,ex = 600033,base1 = 245,base2 = 258,dista = 1,bonus = 10.1,type = "fire",cd = 18},
["m4"] = {spell = "Fireball",minLv = 102,ex = 600044,base1 = 250,base2 = 251,dista = 4,bonus = 12.4,type = "fire",cd = 22},
["m5"] = {spell = "Flamethrower",minLv = 100,ex = 600055,base1 = 370,base2 = 381,target = "no",bonus = 12.2,type = "fire",cd = 35},
["m6"] = {spell = "Raging Blast",minLv = 103,ex = 600066,base1 = 360,base2 = 380,target = "no",bonus = 11.4,type = "fire",cd = 40},
["m7"] = {spell = "Wing Attack",minLv = 106,ex = 600077,base1 = 250,base2 = 300,dista = 10,bonus = 14,type = "flying",target = "no",cd = 29},
["m8"] = {spell = "Fire Blast",minLv = 109,ex = 600088,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 15.5,type = "fire",cd = 50},
["m9"] = {spell = "Flame Blast",minLv = 115,ex = 655496,base1 = 360,base2 = 380,target = "no",bonus = 5.0,type = "fire",cd = 95},
["m10"]= {spell = "Acient Fury",minLv = 110,ex = 9605399,base1 = 235,base2 = 245,dista = 10,bonus = 5,target = "no",type = "dragon",cd = 35},
["!cd"] = { pokenome= "Elder Charizard" , nmoves= 10 , spellm1 = "Scratch" ,exm1=600031,spellm2="Ember",exm2 = 600032,spellm3= "Fire Fang",exm3=600033,spellm4 = "Fireball",exm4=600044,spellm5 = "Flamethrower",exm5=600055,spellm6 = "Raging Blast",exm6=600066,spellm7 = "Wing Attack",exm7=600077,spellm8 = "Fire Blast",exm8=600088,spellm9 = "Flame Blast",exm9=655496,spellm10 = "Acient Fury",exm10=9605399},
["XD"] = { descricao = "This charizard Valley Leader ,Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.",desvantagem = "Weaknesses: \n Rock/Electric/Water",habilidade = "Habilites: Cut\nFlying",evoluction = "Elder Charizard: Level 100",type = "is a dual-type Fire/Flying"},
},

["Charmander"] = {
["m1"] = {spell = "Scratch",minLv = 20,ex = 400001,base1 = 30,base2 = 40,dista = 1,bonus = 5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 20,ex = 400002,base1 = 60,base2 = 75,dista = 4,bonus = 3.8,type = "fire",cd = 9},
["m3"] = {spell = "Fire Fang",minLv = 20,ex = 400003,base1 = 75,base2 = 78,dista = 1,bonus = 4.7,type = "fire",cd = 18},
["m4"] = {spell = "Fireball",minLv = 22,ex = 400004,base1 = 100,base2 = 101,dista = 4,bonus = 4.6,type = "fire",cd = 22},
["m5"] = {spell = "Flamethrower",minLv = 27,ex = 400005,base1 = 170,base2 = 181,target = "no",bonus = 5,type = "fire",cd = 35},
["m6"]=  {spell = "Rage",minLv = 30,ex = 659952,base1 = 100,base2 = 120,dista = 1,bonus = 1.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Charmander" , nmoves= 6 , spellm1 = "Scratch" ,exm1=400001,spellm2="Ember",exm2 = 400002,spellm3= "Fire Fang",exm3=400003,spellm4 = "Fireball",exm4=400004,spellm5 = "Flamethrower",exm5=400005,spellm6 = "Rage",exm6=659952},
["XD"] = { descricao = "The flame at the tip of its tail makes a sound as it burns. You can only hear it in quiet places. ",desvantagem = "Weaknesses: \n Rock/Ground/Water",habilidade = "Habilites: Cut",evoluction = "Charmander: Level 20\nCharmeleon: Level 45\nCharizard: Level 85",type = "is a Fire-type"},
},

["Charmeleon"] = {
["m1"] = {spell = "Scratch",minLv = 45,ex = 400011,base1 = 130,base2 = 140,dista = 1,bonus = 5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 45,ex = 400022,base1 = 160,base2 = 175,dista = 4,bonus = 3.8,type = "fire",cd = 9},
["m3"] = {spell = "Fire Fang",minLv = 45,ex = 400033,base1 = 175,base2 = 178,dista = 1,bonus = 4.7,type = "fire",cd = 18},
["m4"] = {spell = "Fireball",minLv = 42,ex = 400044,base1 = 200,base2 = 201,dista = 4,bonus = 4.6,type = "fire",cd = 22},
["m5"] = {spell = "Flamethrower",minLv = 45,ex = 400055,base1 = 270,base2 = 281,target = "no",bonus = 5,type = "fire",cd = 35},
["m6"] = {spell = "Raging Blast",minLv = 45,ex = 400066,base1 = 360,base2 = 380,target = "no",bonus = 6.4,type = "fire",cd = 40},
["m7"] = {spell = "Fire Blast",minLv = 49,ex = 400077,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 6.5,type = "fire",cd = 50},
["m8"]=  {spell = "Rage",minLv = 50,ex = 659952,base1 = 100,base2 = 120,dista = 1,bonus = 2.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Charmeleon" , nmoves= 8 , spellm1 = "Scratch" ,exm1=400011,spellm2="Ember",exm2 = 400022,spellm3= "Fire Fang",exm3=400033,spellm4 = "Fireball",exm4=400044,spellm5 = "Flamethrower",exm5=400055,spellm6 = "Raging Blast",exm5=400066,spellm7 = "Fire Blast",exm7=400077,spellm8 = "Rage",exm8=659952},
["XD"] = { descricao = "When it swings its burning tail, it elevates the temperature to unbearably high levels.",desvantagem = "Weaknesses: \n Rock/Ground/Water",habilidade = "Habilites: Cut",evoluction = "Charmander: Level 20\nCharmeleon: Level 45\nCharizard: Level 85",type = "is a Fire-type"},
},

["Magmar"] = {
["m1"] = {spell = "Scratch",minLv = 90,ex = 600541,base1 = 190,base2 = 200,dista = 1,bonus = 7.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 90,ex = 600542,base1 = 220,base2 = 235,dista = 4,bonus = 7.9,type = "fire",cd = 7},
["m3"] = {spell = "Fire Fang",minLv = 90,ex = 600543,base1 = 245,base2 = 258,dista = 1,bonus = 8.1,type = "fire",cd = 18},
["m4"] = {spell = "Fireball",minLv = 91,ex = 600544,base1 = 250,base2 = 251,dista = 4,bonus = 8.4,type = "fire",cd = 22},
["m5"] = {spell = "Flamethrower",minLv = 92,ex = 600545,base1 = 370,base2 = 381,target = "no",bonus = 9.9,type = "fire",cd = 35},
["m6"] = {spell = "Fire Punch",minLv = 90,ex = 600546,base1 = 360,base2 = 380,dista = 1,bonus = 12.4,type = "fire",cd = 40},
["m7"] = {spell = "Fire Sprint",minLv = 90,ex = 600547,base1 = 250,base2 = 300,dista = 10,bonus = 5,type = "fire",target = "no",cd = 29},
["m8"] = {spell = "Fire Blast",minLv = 93,ex = 600548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 14.5,type = "fire",cd = 50},
["m9"] = {spell = "Flame Blast",minLv = 96,ex = 655546,base1 = 360,base2 = 380,target = "no",bonus = 4.0,type = "fire",cd = 95},
["!cd"] = { pokenome= "Magmar" , nmoves= 9 , spellm1 = "Scratch" ,exm1=600541,spellm2="Ember",exm2 = 600542,spellm3= "Fire Fang",exm3=600543,spellm4 = "Fireball",exm4=600544,spellm5 = "Flamethrower",exm5=600545,spellm6 = "Raging Blast",exm6=600546,spellm7 = "Fire Sprint",exm7=600547,spellm8 = "Fire Blast",exm8=600548,spellm9 = "Flame Blast",exm9=655546},
["XD"] = { descricao = "Its body always burns with an orange glow that enables it to hide perfectly among flames.",desvantagem = "Weaknesses: \n Rock/Ground/Water",habilidade = "Habilites: none",evoluction = "Magmar: Level 90",type = "is a Fire-type"},
},

["Ponyta"] = {
["m1"] = {spell = "Quick Attack", minLv = 20, ex = 745185, base1 = 200, base2 = 201, dista = 1,bonus = 3, type = "normal",cd = 10},
["m2"] = {spell = "Iron Tail",minLv = 20,ex = 532823,base1 = 155,base2 = 156,dista = 1,bonus = 3,type = "normal",cd = 4},
["m3"] = {spell = "Ember",minLv = 20,ex = 456802,base1 = 60,base2 = 75,dista = 4,bonus = 3.8,type = "fire",cd = 9},
["m4"] = {spell = "Flamethrower",minLv = 25,ex = 598855,base1 = 170,base2 = 181,target = "no",bonus = 5,type = "fire",cd = 35},
["m5"] = {spell = "Fireball",minLv = 20,ex = 564787,base1 = 150,base2 = 201,dista = 4,bonus = 3,type = "fire",cd = 22},
["m6"] = {spell = "Stomp",minLv = 26,ex = 7503455,base1 = 105,base2 = 116,dista = 6,target = "no",bonus = 5.8,type = "ground",cd = 30},
["!cd"] = { pokenome= "Ponyta" , nmoves= 6 , spellm1 = "Quick Attack" ,exm1=745185,spellm2="Iron Tail",exm2 = 532823,spellm3= "Ember",exm3=456802,spellm4 = "Flamethrower",exm4=598855,spellm5 = "Fireball",exm5=564787,spellm6 = "Stomp",exm6=7503455},
["XD"] = { descricao = "Its hooves are 10 times harder than diamonds. It can trample anything completely flat in little time.",desvantagem = "Weaknesses: \n Rock/Ground/Water",habilidade = "Habilites: ride",evoluction = "Ponyta: Level 20\nRapidash: Level 60",type = "is a Fire-type"},
},

["Rapidash"] = {
["m1"] = {spell = "Quick Attack", minLv = 60, ex = 742385, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {spell = "Iron Tail",minLv = 60,ex = 536423,base1 = 155,base2 = 156,dista = 1,bonus = 6,type = "normal",cd = 4},
["m3"] = {spell = "Horn Attack",minLv = 60,ex = 1335851,base1 = 230,base2 = 235,dista = 1,bonus = 7,type = "normal",cd = 5},
["m4"] = {spell = "Ember",minLv = 60,ex = 568902,base1 = 60,base2 = 75,dista = 4,bonus = 3.8,type = "fire",cd = 9},
["m5"] = {spell = "Flamethrower",minLv = 63,ex = 438535,base1 = 270,base2 = 281,target = "no",bonus = 10,type = "fire",cd = 35},
["m6"] = {spell = "Fireball",minLv = 60,ex = 564984,base1 = 250,base2 = 251,dista = 4,bonus = 6,type = "fire",cd = 22},
["m8"] = {spell = "Stomp",minLv = 62,ex = 7502365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 7.8,type = "ground",cd = 30},
["m7"] = {spell = "Giga Impact",minLv = 62,ex = 7883455,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 3.5,type = "ground",cd = 30},
["!cd"] = { pokenome= "Rapidash" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=742385,spellm2="Iron Tail",exm2 = 536423,spellm3= "Horn Attack",exm3=1335851,spellm4 = "Ember",exm4=568902,spellm5 = "Flamethrower",exm5=438535,spellm6 = "Fireball",exm6=564984,spellm7 = "Stomp",exm7=7502365,spellm8 = "Giga Impact",exm8=7883455},
["XD"] = { descricao = "At the time of birth, it has just one tail. The tail splits from its tip as it grows older.",desvantagem = "Weaknesses: \n Rock/Ground/Water",habilidade = "Habilites: ride",evoluction = "Ponyta: Level 20\nRapidash: Level 60",type = "is a Fire-type"},
},

["Vulpix"] = {
["m1"] = {spell = "Quick Attack", minLv = 30, ex = 789185, base1 = 200, base2 = 201, dista = 1,bonus = 3, type = "normal",cd = 10},
["m2"] = {spell = "Iron Tail",minLv = 30,ex = 558823,base1 = 155,base2 = 156,dista = 1,bonus = 3,type = "normal",cd = 4},
["m3"] = {spell = "Ember",minLv = 30,ex = 458002,base1 = 60,base2 = 75,dista = 4,bonus = 3.8,type = "fire",cd = 9},
["m4"] = {spell = "Flamethrower",minLv = 35,ex = 560855,base1 = 130,base2 = 241,target = "no",bonus = 5,type = "fire",cd = 35},
["m5"] = {spell = "Fireball",minLv = 30,ex = 564347,base1 = 150,base2 = 251,dista = 4,bonus = 3,type = "fire",cd = 22},
["m6"] = {spell = "Fire Sprint",minLv = 40,ex = 600437,base1 = 150,base2 = 200,dista = 10,bonus = 2,type = "fire",target = "no",cd = 29},
["!cd"] = { pokenome= "Vulpix" , nmoves= 6 , spellm1 = "Quick Attack" ,exm1=789185,spellm2="Iron Tail",exm2 = 558823,spellm3= "Ember",exm3=458002,spellm4 = "Flamethrower",exm4=560855,spellm5 = "Fireball",exm5=564347,spellm6 = "Fire Sprint",exm6=600437},
["XD"] = { descricao = "At the time of birth, it has just one tail. The tail splits from its tip as it grows older.",desvantagem = "Weaknesses: \n Rock/Ground/Water",habilidade = "Habilites: none",evoluction = "Vulpix: Level 20\nNinetales: Level 65",type = "is a Fire-type"},
},

["Ninetales"] = {
["m1"] = {spell = "Quick Attack", minLv = 65, ex = 549185, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {spell = "Iron Tail",minLv = 65,ex = 328823,base1 = 155,base2 = 156,dista = 1,bonus = 6,type = "normal",cd = 4},
["m3"] = {spell = "Ember",minLv = 65,ex = 148002,base1 = 60,base2 = 75,dista = 4,bonus = 8.1,type = "fire",cd = 9},
["m4"] = {spell = "Flamethrower",minLv = 67,ex = 560855,base1 = 270,base2 = 281,target = "no",bonus = 10,type = "fire",cd = 35},
["m5"] = {spell = "Fireball",minLv = 65,ex = 984347,base1 = 250,base2 = 251,dista = 4,bonus = 8,type = "fire",cd = 22},
["m6"] = {spell = "Fire Sprint",minLv = 68,ex = 560437,base1 = 250,base2 = 300,dista = 10,bonus = 5,type = "fire",target = "no",cd = 29},
["m7"] = {spell = "Fire Blast",minLv = 70,ex = 430548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 13.5,type = "fire",cd = 50},
["!cd"] = { pokenome= "Ninetales" , nmoves= 7 , spellm1 = "Quick Attack" ,exm1=549185,spellm2="Iron Tail",exm2 = 328823,spellm3= "Ember",exm3=148002,spellm4 = "Flamethrower",exm4=560855,spellm5 = "Fireball",exm5=984347,spellm6 = "Fire Sprint",exm6=560437,spellm7 = "Fire Blast",exm7=430548},
["XD"] = { descricao = "At the time of birth, it has just one tail. The tail splits from its tip as it grows older.",desvantagem = "Weaknesses: \n Rock/Ground/Water",habilidade = "Habilites: ride",evoluction = "Vulpix: Level 20\nNinetales: Level 65",type = "is a Fire-type"},
},

["Growlithe"] = {
["m1"] = {spell = "Scratch",minLv = 30,ex = 509599,base1 = 190,base2 = 200,dista = 1,bonus = 3.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 30,ex = 600992,base1 = 220,base2 = 235,dista = 4,bonus = 3.5,type = "fire",cd = 10},
["m3"] = {spell = "Bite",minLv = 30,ex = 410996,base1 = 200,base2 = 210,dista = 1,bonus = 2.7,type = "normal",cd = 5},
["m4"] = {spell = "Quick Attack", minLv = 30, ex = 289105, base1 = 200, base2 = 201, dista = 1,bonus = 3, type = "normal",cd = 10},
["m5"] = {spell = "Fireball",minLv = 30,ex = 600547,base1 = 250,base2 = 251,dista = 4,bonus = 3,type = "fire",cd = 22},
["m6"] = {spell = "Flamethrower",minLv = 30,ex = 600895,base1 = 370,base2 = 381,target = "no",bonus = 3,type = "fire",cd = 35},
["m7"] = {spell = "Fire Fang",minLv = 30,ex = 600589,base1 = 220,base2 = 235,dista = 1,bonus = 3.5,type = "fire",cd = 10},
["m8"] = {spell = "Fury",minLv = 32,ex = 600587,base1 = 100,base2 = 120,dista = 8,bonus = 1,type = "dragon",target = "no",cd = 35},
["!cd"] = { pokenome= "Growlithe" , nmoves= 8 , spellm1 = "Scratch" ,exm1=509599,spellm2="Ember",exm2 = 600992,spellm3= "Bite",exm3=410996,spellm4 = "Quick Attack",exm4=289105,spellm5 = "Fireball",exm5=600547,spellm6 = "Flamethrower",exm6=600895,spellm7 = "Fire Fang",exm7=600589,spellm8 = "Fury",exm8=600587},
["XD"] = { descricao = "Very protective of its territory. It will bark and bite to repel intruders from its space.",desvantagem = "Weaknesses: \n Rock/Ground/Water",habilidade = "Habilites: Headbutt",evoluction = "Growlithe: Level 30\nArcanine: Level 80",type = "is a Fire-type"},
},

["Shiny Growlithe"] = {
["m1"] = {spell = "Scratch",minLv = 40,ex = 509599,base1 = 190,base2 = 200,dista = 1,bonus = 4.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 40,ex = 600992,base1 = 220,base2 = 235,dista = 4,bonus = 4.5,type = "fire",cd = 10},
["m3"] = {spell = "Bite",minLv = 40,ex = 410996,base1 = 200,base2 = 210,dista = 1,bonus = 3.7,type = "normal",cd = 5},
["m4"] = {spell = "Quick Attack", minLv = 40, ex = 289105, base1 = 200, base2 = 201, dista = 1,bonus = 4, type = "normal",cd = 10},
["m5"] = {spell = "Fireball",minLv = 40,ex = 600547,base1 = 250,base2 = 251,dista = 4,bonus = 3,type = "fire",cd = 22},
["m6"] = {spell = "Flamethrower",minLv = 40,ex = 600895,base1 = 370,base2 = 381,target = "no",bonus = 4,type = "fire",cd = 35},
["m7"] = {spell = "Fire Fang",minLv = 40,ex = 600589,base1 = 220,base2 = 235,dista = 1,bonus = 5.5,type = "fire",cd = 10},
["m8"] = {spell = "Fury",minLv = 42,ex = 600587,base1 = 100,base2 = 120,dista = 8,bonus = 3,type = "dragon",target = "no",cd = 35},
["!cd"] = { pokenome= "Growlithe" , nmoves= 8 , spellm1 = "Scratch" ,exm1=509599,spellm2="Ember",exm2 = 600992,spellm3= "Bite",exm3=410996,spellm4 = "Quick Attack",exm4=289105,spellm5 = "Fireball",exm5=600547,spellm6 = "Flamethrower",exm6=600895,spellm7 = "Fire Fang",exm7=600589,spellm8 = "Fury",exm8=600587},
["XD"] = { descricao = "Very protective of its territory. It will bark and bite to repel intruders from its space.",desvantagem = "Weaknesses: \n Rock/Ground/Water",habilidade = "Habilites: Headbutt",evoluction = "Growlithe: Level 40\nArcanine: Level 100",type = "is a Fire-type"},
},

["Arcanine"] = {
["m1"] = {spell = "Scratch",minLv = 80,ex = 579598,base1 = 190,base2 = 200,dista = 1,bonus = 6.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 80,ex = 607998,base1 = 220,base2 = 235,dista = 4,bonus = 7.5,type = "fire",cd = 10},
["m3"] = {spell = "Bite",minLv = 80,ex = 410998,base1 = 200,base2 = 210,dista = 1,bonus = 6.7,type = "normal",cd = 5},
["m4"] = {spell = "Quick Attack", minLv = 80, ex = 289178, base1 = 200, base2 = 201, dista = 1,bonus = 12, type = "normal",cd = 10},
["m5"] = {spell = "Fireball",minLv = 80,ex = 607548,base1 = 250,base2 = 251,dista = 4,bonus = 7,type = "fire",cd = 22},
["m6"] = {spell = "Flamethrower",minLv = 80,ex = 670898,base1 = 370,base2 = 381,target = "no",bonus = 8,type = "fire",cd = 35},
["m7"] = {spell = "Fire Fang",minLv = 1,ex = 600578,base1 = 220,base2 = 235,dista = 1,bonus = 7.5,type = "fire",cd = 15},
["m8"] = {spell = "Fire Blast",minLv = 82,ex = 600548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 13.5,type = "fire",cd = 50},
["m9"] = {spell = "Tri Flames",minLv = 84,ex = 600578,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 13.5,type = "fire",cd = 50},
["m10"] = {spell = "Fury",minLv = 85,ex = 600588,base1 = 100,base2 = 120,dista = 1,bonus = 3.2,type = "dragon",target = "no",cd = 35},
["m11"] = {  spell = "Roar",minLv = 82,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Arcanine" , nmoves= 11 , spellm1 = "Scratch" ,exm1=579598,spellm2="Ember",exm2 = 607998,spellm3= "Bite",exm3=410998,spellm4 = "Quick Attack",exm4=289178,spellm5 = "Fireball",exm5=607548,spellm6 = "Flamethrower",exm6=670898,spellm7 = "Fire Fang",exm7=600578,spellm8 = "Fire Blast",exm8=600548,spellm9 = "Tri Flames",exm9=600578,spellm10 = "Fury",exm10=600588,spellm11 = "Roar",exm11=9550008},
["XD"] = { descricao = "A Pokémon that has been admired since the past for its beauty. It runs agilely as if on wings.",desvantagem = "Weaknesses: \n Rock/Ground/Water",habilidade = "Habilites: ride\nHeadbutt",evoluction = "Growlithe: Level 30\nArcanine: Level 80",type = "is a Fire-type"},
},

["Flareon"] = {
["m1"] = {spell = "Ember",minLv = 70,ex = 634998,base1 = 220,base2 = 235,dista = 4,bonus = 7.5,type = "fire",cd = 10},
["m2"] = {spell = "Bite",minLv = 70,ex = 415678,base1 = 200,base2 = 210,dista = 1,bonus = 6.7,type = "normal",cd = 5},
["m3"] = {spell = "Fire Sprint",minLv = 75,ex = 625644,base1 = 250,base2 = 300,dista = 10,bonus = 5,type = "fire",target = "no",cd = 29},
["m4"] = {spell = "Fireball",minLv = 70,ex = 608953,base1 = 250,base2 = 251,dista = 4,bonus = 7,type = "fire",cd = 22},
["m5"] = {spell = "Flamethrower",minLv = 70,ex = 778898,base1 = 370,base2 = 381,target = "no",bonus = 8,type = "fire",cd = 35},
["m6"] = {spell = "Fire Fang",minLv = 70,ex = 600458,base1 = 220,base2 = 235,dista = 4,bonus = 7.5,type = "fire",cd = 15},
["m7"] = {spell = "Fire Punch",minLv = 70,ex = 302006,base1 = 360,base2 = 380,dista = 1,bonus = 10.4,type = "fire",cd = 40},
["m8"] = {spell = "Fire Blast",minLv = 7,ex = 606558,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 13.5,type = "fire",cd = 50},
["m9"] = {spell = "Tri Flames",minLv = 70,ex = 666578,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 13.5,type = "fire",cd = 50},
["m10"] = {spell = "Flame Blast",minLv = 75,ex = 785546,base1 = 360,base2 = 380,target = "no",bonus = 4.0,type = "fire",cd = 95},
["!cd"] = { pokenome= "Flareon" , nmoves= 10 , spellm1 = "Ember" ,exm1=634998,spellm2="Bite",exm2 = 415678,spellm3= "Fire Sprint",exm3=625644,spellm4 = "Fire Ball",exm4=608953,spellm5 = "Flamethrower",exm5=778898,spellm6 = "Fire Fang",exm6=600458,spellm7 = "Raging Blast",exm7=302006,spellm8 = "Fire Blast",exm8=606558,spellm9 = "Tri Flames",exm9=666578,spellm10 = "Flame Blast",exm10=785546},
["XD"] = { descricao = "When storing thermal energy in its body, its temperature could soar to over 1600 degrees.",desvantagem = "Weaknesses: \n Rock/Ground/Water",habilidade = "Habilites: none",evoluction = "Flareon: Level 70",type = "is a Fire-type"},
},

["Vaporeon"] = {
["m1"] = {spell = "Quick Attack",minLv = 70,ex = 636983,base1 = 220,base2 = 235,dista = 1,bonus = 7.5,type = "normal",cd = 10},
["m2"] = {spell = "Bite",minLv = 70,ex = 413336,base1 = 200,base2 = 210,dista = 1,bonus = 6.7,type = "normal",cd = 5},
["m3"] = {spell = "Water Gun", minLv = 70, ex = 334554, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 8.5, type = "water",cd = 40},
["m4"] = {spell = "Water ball", minLv = 70, ex = 551545, base1 = 460, base2 = 471, dista = 1,bonus = 6, type = "water",cd = 25},
["m5"] = {spell = "Water Spout", minLv = 75, ex = 544505, base1 = 530, base2 = 580, dista = 2, target = "no", bonus = 15.5, type = "water",cd = 40},
["m6"] = {spell = "Aurora Beam", minLv = 70, ex = 432455, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 15.5,type = "ice", cd = 45},
["m7"] = {spell = "Hydro Cannon", minLv = 70, ex = 362424, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "water",cd = 60},
["m8"] = {spell = "Hydro Pump", minLv = 75, ex = 991882, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 15, type = "water",cd = 95},
["m9"] = {spell = "Hydro Rain", minLv = 70, ex = 644034, base1 = 750, base2 = 650, dista = 10, bonus = 8, target = "no", type = "water",cd = 50},
["!cd"] = { pokenome= "Vaporeon" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=636983,spellm2="Bite",exm2 = 413336,spellm3= "Water Gun",exm3=334554,spellm4 = "Water Ball",exm4=551545,spellm5 = "Water Spout",exm5=544505,spellm6 = "Aurora Beam",exm6=432455,spellm7 = "Hydro Cannon",exm7=362424,spellm8 = "Hydro Pump",exm8=991882,spellm9 = "Hydro Rain",exm9=644034},
["XD"] = { descricao = "Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid’s.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: surf",evoluction = "Vaporeon: Level 70",type = "is a Water-type"},
},


["Shiny Arcanine"] = {
["m1"] = {spell = "Scratch",minLv = 100,ex = 279598,base1 = 190,base2 = 200,dista = 1,bonus = 9.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 100,ex = 207998,base1 = 220,base2 = 235,dista = 4,bonus = 8.5,type = "fire",cd = 10},
["m3"] = {spell = "Bite",minLv = 100,ex = 210998,base1 = 200,base2 = 210,dista = 1,bonus = 7.7,type = "normal",cd = 5},
["m4"] = {spell = "Quick Attack", minLv = 100, ex = 389178, base1 = 200, base2 = 201, dista = 1,bonus = 14, type = "normal",cd = 10},
["m5"] = {spell = "Fireball",minLv = 100,ex = 207548,base1 = 250,base2 = 251,dista = 4,bonus = 8,type = "fire",cd = 22},
["m6"] = {spell = "Flamethrower",minLv = 100,ex = 270898,base1 = 370,base2 = 381,target = "no",bonus = 9,type = "fire",cd = 35},
["m7"] = {spell = "Fire Fang",minLv = 100,ex = 200578,base1 = 220,base2 = 235,dista = 1,bonus = 7.5,type = "fire",cd = 15},
["m8"] = {spell = "Fire Blast",minLv = 102,ex = 200548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 15.5,type = "fire",cd = 50},
["m9"] = {spell = "Tri Flames",minLv = 104,ex = 200578,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 15.5,type = "fire",cd = 50},
["m10"] = {spell = "Fury",minLv = 105,ex = 200588,base1 = 100,base2 = 120,dista = 1,bonus = 5.2,type = "dragon",target = "no",cd = 35},
["m11"] = {  spell = "Roar",minLv = 102,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Shiny Arcanine" , nmoves= 11 , spellm1 = "Scratch" ,exm1=279598,spellm2="Ember",exm2 = 207998,spellm3= "Bite",exm3=210998,spellm4 = "Quick Attack",exm4=389178,spellm5 = "Fireball",exm5=207548,spellm6 = "Flamethrower",exm6=270898,spellm7 = "Fire Fang",exm7=200578,spellm8 = "Fire Blast",exm8=200548,spellm9 = "Tri Flames",exm9=200578,spellm10 = "Fury",exm10=200588,spellm11 = "Roar",exm11=9550008},
["XD"] = { descricao = "Its Powerful shiny ,short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.",desvantagem = "Weaknesses: \n Fire/Rock/Flying",habilidade = "Habilites: ride\nHeadbutt",evoluction = "Growlithe: Level 40\nArcanine: Level 100",type = "is a Fire-type"},
},

["Caterpie"] = {
["m1"] = {spell = "Headbutt", minLv = 5,ex = 1835681, base1 = 80, base2 = 91, dista = 1, bonus = 0.5,type = "normal",cd = 5},
["m2"] = {spell = "String Shot",minLv = 5,ex = 1300002,base1 = 45,base2 = 50,dista = 3,bonus = 1,type = "bug",cd = 9},
["m3"] = {spell = "Bug Bite",minLv = 5,ex = 1400003,base1 = 65,base2 = 70,dista = 1,bonus = 0.9,type = "bug",cd = 16},
["!cd"] = { pokenome= "Caterpie" , nmoves= 3 , spellm1 = "Headbutt" ,exm1=1835681,spellm2="String Shot",exm2 = 1300002,spellm3= "Bug Bite",exm3=1400003},
["XD"] = { descricao = "Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.",desvantagem = "Weaknesses: \n Fire/Rock/Flying",habilidade = "Habilites: Headbutt",evoluction = "Caterpie: Level 5\nMetapod: Level 20\nButterfree: Level 60",type = "is a Bug-type"},

},

["Metapod"] = {
["m1"] = {spell = "Headbutt", minLv = 15,ex = 243564, base1 = 200, base2 = 201, dista = 1, bonus = 4,type = "normal",cd = 5},
["m2"] = {spell = "String Shot",minLv = 15,ex = 233620,base1 = 145,base2 = 150,dista = 3,bonus = 3,type = "bug",cd = 5},
["m3"] = {spell = "Bug Bite",minLv = 15,ex = 142545,base1 = 195,base2 = 200,dista = 1,bonus = 5,type = "bug",cd = 5},
["m4"] = {  spell = "Harden", minLv = 15, ex = 292238, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 0, type = "normal",cd = 6},
["!cd"] = { pokenome= "Metapod" , nmoves= 4 , spellm1 = "Headbutt" ,exm1=243564,spellm2="String Shot",exm2 = 233620,spellm3= "Bug Bite",exm3=142545,spellm4= "Harden",exm4=292238},
["XD"] = { descricao = "This Pokémon is vulnerable to attack while its shell is soft, exposing its weak and tender body.",desvantagem = "Weaknesses: \n Fire/Rock/Flying",habilidade = "Habilites: Headbutt",evoluction = "Caterpie: Level 5\nMetapod: Level 20\nButterfree: Level 60",type = "is a Bug-type"},

},
["Butterfree"] = {
["m1"] = {spell = "Psy beam",minLv = 60,ex = 4325678,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m2"] = {spell = "Whirlwind", minLv = 63, ex = 4563324, base1 = 750, base2 = 650, dista = 100, bonus = 10, target = "no", type = "flying",cd = 30},
["m3"] = {spell = "String Shot",minLv = 60,ex = 234654,base1 = 145,base2 = 150,dista = 3,bonus = 5,type = "bug",cd = 5},
["m4"] = {spell = "Bug Bite",minLv = 60,ex = 144325,base1 = 195,base2 = 200,dista = 1,bonus = 5,type = "bug",cd = 5},
["m5"] = {spell = "Confusion",minLv = 60,ex = 965641,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 45},
["m6"] = {spell = "Psychic",minLv = 65,ex = 92508,base1 = 235,base2 = 245,dista = 8,bonus = 15,type = "psychic",target = "no",cd = 35},
["m7"] = {spell = "Sleep Powder", minLv = 60, ex = 364267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 0, type = "grass",cd = 30},
["m8"] = {spell = "Stun Spore", minLv = 60, ex = 653462, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["m9"] = {spell = "Poison Powder", minLv = 60, ex = 352947, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "poison",cd = 50},
["!cd"] = { pokenome= "Butterfree" , nmoves= 9 , spellm1 = "Psy beam" ,exm1=4325678,spellm2="Whirlwind",exm2 = 4563324,spellm3= "String Shot",exm3=234654,spellm4= "Bug Bite",exm4=144325,spellm5= "Confusion",exm5=965641,spellm6= "Psychic",exm6=92508,spellm7= "Sleep Powder",exm7=364267,spellm8= "Stun Spore",exm8=653462,spellm9= "Poison Powder",exm9=352947},
["XD"] = { descricao = "In battle, it flaps its wings at high speed to release highly toxic dust into the air.",desvantagem = "Weaknesses: \n Fire/Rock/Flying/Electric/Ice",habilidade = "Habilites: none",evoluction = "Caterpie: Level 5\nMetapod: Level 20\nButterfree: Level 60",type = "is a dual-type Bug/Flying"},

},
["Shiny Butterfree"] = {
["m1"] = {spell = "Psy beam",minLv = 80,ex = 4325678,base1 = 335,base2 = 345,dista = 8,bonus = 9,type = "psychic",target = "no",cd = 20},
["m2"] = {spell = "Whirlwind", minLv = 83, ex = 4563324, base1 = 750, base2 = 650, dista = 100, bonus = 12, target = "no", type = "flying",cd = 30},
["m3"] = {spell = "String Shot",minLv = 80,ex = 234654,base1 = 145,base2 = 150,dista = 3,bonus = 8,type = "bug",cd = 5},
["m4"] = {spell = "Bug Bite",minLv = 80,ex = 144325,base1 = 195,base2 = 200,dista = 1,bonus = 7,type = "bug",cd = 5},
["m5"] = {spell = "Confusion",minLv = 80,ex = 965641,base1 = 165,base2 = 175,dista = 8,bonus = 9,type = "psychic",target = "no",cd = 45},
["m6"] = {spell = "Psychic",minLv = 85,ex = 92508,base1 = 235,base2 = 245,dista = 8,bonus = 19,type = "psychic",target = "no",cd = 35},
["m7"] = {spell = "Sleep Powder", minLv = 80, ex = 364267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 0, type = "grass",cd = 30},
["m8"] = {spell = "Stun Spore", minLv = 80, ex = 653462, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["m9"] = {spell = "Poison Powder", minLv = 80, ex = 352947, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 6, type = "poison",cd = 50},
["!cd"] = { pokenome= "Shiny Butterfree" , nmoves= 9 , spellm1 = "Psy beam" ,exm1=4325678,spellm2="Whirlwind",exm2 = 4563324,spellm3= "String Shot",exm3=234654,spellm4= "Bug Bite",exm4=144325,spellm5= "Confusion",exm5=965641,spellm6= "Psychic",exm6=92508,spellm7= "Sleep Powder",exm7=364267,spellm8= "Stun Spore",exm8=653462,spellm9= "Poison Powder",exm9=352947},
["XD"] = { descricao = "In battle, it flaps its wings at high speed to release highly toxic dust into the air.",desvantagem = "Weaknesses: \n Fire/Rock/Flying/Electric/Ice",habilidade = "Habilites: none",evoluction = "Butterfree: Level 80",type = "is a dual-type Bug/Flying"},

},

["Weedle"] = {
["m1"] = {spell = "Headbutt", minLv = 5,ex = 1835683, base1 = 50, base2 = 71, dista = 1, bonus = 1,type = "normal",cd = 5},
["m2"] = {spell = "String Shot",minLv = 5,ex = 1300004,base1 = 45,base2 = 60,dista = 3,bonus = 1,type = "bug",cd = 9},
["m3"] = {spell = "Poison Sting",minLv = 5,ex = 1300005,base1 = 45,base2 = 76,dista = 3,bonus = 1.3,type = "poison",cd = 13},
["!cd"] = { pokenome= "Weedle" , nmoves= 3 , spellm1 = "Headbutt" ,exm1=1835683,spellm2="String Shot",exm2 = 1300004,spellm3= "Poison Sting",exm3=1300005},
["XD"] = { descricao = "Often found in forests, eating leaves. It has a sharp venomous stinger on its head.",desvantagem = "Weaknesses: \n Fire/Rock/Flying/Psychic",habilidade = "Habilites: Headbutt",evoluction = "Weedle: Level 5\nKakuna: Level 20\nBeedrill: Level 60",type = "is a dual-type Bug/Poison"},
},
["Kakuna"] = {
["m1"] = {spell = "Headbutt", minLv = 15,ex = 233564, base1 = 200, base2 = 201, dista = 1, bonus = 4,type = "normal",cd = 5},
["m2"] = {spell = "String Shot",minLv = 15,ex = 253620,base1 = 65,base2 = 80,dista = 3,bonus = 2,type = "bug",cd = 5},
["m3"] = {spell = "Bug Bite",minLv = 15,ex = 442565,base1 = 195,base2 = 200,dista = 1,bonus = 5,type = "bug",cd = 5},
["m4"] = {  spell = "Harden", minLv = 15, ex = 395238, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 0, type = "grass",cd = 6},
["!cd"] = { pokenome= "Kakuna" , nmoves= 4 , spellm1 = "Headbutt" ,exm1=233564,spellm2="String Shot",exm2 = 253620,spellm3= "Bug Bite",exm3=442565,spellm4= "Harden",exm4=395238},
["XD"] = { descricao = "Almost incapable of moving, this Pokémon can only harden its shell to protect itself from predators.",desvantagem = "Weaknesses: \n Fire/Rock/Flying/Psychic",habilidade = "Habilites: Headbutt",evoluction = "Weedle: Level 5\nKakuna: Level 20\nBeedrill: Level 60",type = "is a dual-type Bug/Poison"},
},

["Beedrill"] = {
["m1"] = {spell = "Poison Sting",minLv = 60,ex = 3325678,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "poison",cd = 20},
["m2"] = {spell = "Fury Attack",minLv = 65,ex = 2548939,base1 = 255,base2 = 260,dista = 1,bonus = 10,type = "bug",cd = 25},
["m3"] = {spell = "String Shot",minLv = 60,ex = 254354,base1 = 145,base2 = 150,dista = 3,bonus = 5,type = "bug",cd = 5},
["m4"] = {spell = "Bug Bite",minLv = 60,ex = 144285,base1 = 195,base2 = 200,dista = 1,bonus = 5,type = "bug",cd = 5},
["m5"] = {spell = "Pin Missile",minLv = 60,ex = 969741,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "bug",cd = 45},
["m6"] = {spell = "Fury Cutter",minLv = 68,ex = 238939,base1 = 255,base2 = 260,dista = 8,bonus = 10,type = "bug",target = "no",cd = 25},
["m7"] = {spell = "Rage",minLv = 60,ex = 524576,base1 = 200,base2 = 220,dista = 1,bonus = 2.2,type = "normal",target = "no",cd = 35},
["m8"] = {spell = "Sleep Powder", minLv = 60, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 0, type = "grass",cd = 30},
["m9"] = {spell = "Stun Spore", minLv = 60, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["m10"] = {spell = "Poison Powder", minLv = 60, ex = 222947, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "poison",cd = 50},
["!cd"] = { pokenome= "Beedrill" , nmoves= 10 , spellm1 = "Poison Sting" ,exm1=3325678,spellm2="Fury Attack",exm2 = 2548939,spellm3= "String Shot",exm3=254354,spellm4= "Bug Bite",exm4=144285,spellm5= "Pin Missile",exm5=969741,spellm6= "Fury Cutter",exm6=238939,spellm7= "Rage",exm7=524576,spellm8= "Sleep Powder",exm8=333267,spellm9= "Stun Spore",exm9=653222,spellm10= "Poison Powder",exm10=222947},
["XD"] = { descricao = "Flies at high speed and attacks using its large venomous stingers on its forelegs and tail.",desvantagem = "Weaknesses: \n Fire/Rock/Flying/Psychic",habilidade = "Habilites: none",evoluction = "Weedle: Level 15\nKakuna: Level 20\nBeedrill: Level 60",type = "is a dual-type Bug/Poison"},
},

["Shiny Beedrill"] = {
["m1"] = {spell = "Poison Sting",minLv = 80,ex = 3325678,base1 = 335,base2 = 345,dista = 8,bonus = 10,type = "poison",cd = 20},
["m2"] = {spell = "Fury Attack",minLv = 85,ex = 2548939,base1 = 255,base2 = 260,dista = 1,bonus = 12,type = "bug",cd = 25},
["m3"] = {spell = "String Shot",minLv = 80,ex = 254354,base1 = 145,base2 = 150,dista = 3,bonus = 8,type = "bug",cd = 5},
["m4"] = {spell = "Bug Bite",minLv = 80,ex = 144285,base1 = 195,base2 = 200,dista = 1,bonus = 9,type = "bug",cd = 5},
["m5"] = {spell = "Pin Missile",minLv = 80,ex = 969741,base1 = 165,base2 = 175,dista = 8,bonus = 10,type = "bug",cd = 45},
["m6"] = {spell = "Fury Cutter",minLv = 88,ex = 238939,base1 = 255,base2 = 260,dista = 8,bonus = 11,type = "bug",target = "no",cd = 25},
["m7"] = {spell = "Rage",minLv = 80,ex = 524576,base1 = 200,base2 = 220,dista = 1,bonus = 3.2,type = "normal",target = "no",cd = 35},
["m8"] = {spell = "Sleep Powder", minLv = 80, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 0, type = "grass",cd = 30},
["m9"] = {spell = "Stun Spore", minLv = 80, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "grass",cd = 50},
["m10"] = {spell = "Poison Powder", minLv = 80, ex = 222947, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 6, type = "poison",cd = 50},
["!cd"] = { pokenome= "Beedrill" , nmoves= 10 , spellm1 = "Poison Sting" ,exm1=3325678,spellm2="Fury Attack",exm2 = 2548939,spellm3= "String Shot",exm3=254354,spellm4= "Bug Bite",exm4=144285,spellm5= "Pin Missile",exm5=969741,spellm6= "Fury Cutter",exm6=238939,spellm7= "Rage",exm7=524576,spellm8= "Sleep Powder",exm8=333267,spellm9= "Stun Spore",exm9=653222,spellm10= "Poison Powder",exm10=222947},
["XD"] = { descricao = "Flies at high speed and attacks using its large venomous stingers on its forelegs and tail.",desvantagem = "Weaknesses: \n Fire/Rock/Flying/Psychic",habilidade = "Habilites: none",evoluction = "Beedrill: Level 80",type = "is a dual-type Bug/Poison"},
},

["Rattata"] = {
["m1"] = {spell = "Headbutt", minLv = 5,ex = 1835787, base1 = 30, base2 = 71, dista = 1, bonus = 0.5,type = "normal",cd = 5},
["m2"] = {spell = "Quick Attack",minLv = 5,ex = 1308008,base1 = 45,base2 = 60,dista = 1,bonus = 0.6,type = "normal",cd = 9},
["m3"] = {spell = "Scratch",minLv = 5,ex = 1900882,base1 = 50,base2 = 60,dista = 1,bonus = 0.9,type = "normal",cd = 9},
["m4"] = {spell = "Hyper Fang",minLv = 11,ex = 1900004,base1 = 30,base2 = 80,dista = 1,bonus = 1,type = "normal",cd = 19},
["!cd"] = { pokenome= "Rattata" , nmoves= 4 , spellm1 = "Headbutt" ,exm1=1835787,spellm2="Quick Attack",exm2 = 1308008,spellm3= "Scratch",exm3=1900882,spellm4= "Hyper Fang",exm4=1900004},
["XD"] = { descricao = "Bites anything when it attacks. Small and very quick, it is a common sight in many places.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: Headbutt",evoluction = "Rattata: Level 5\nRaticate: Level 30",type = "is a Normal-type"},
},

["Shiny Rattata"] = {
["m1"] = {spell = "Headbutt", minLv = 15,ex = 1835787, base1 = 200, base2 = 201, dista = 1, bonus = 3,type = "normal",cd = 5},
["m2"] = {spell = "Quick Attack",minLv = 15,ex = 1308008,base1 = 65,base2 = 70,dista = 1,bonus = 4,type = "normal",cd = 9},
["m3"] = {spell = "Scratch",minLv = 15,ex = 1900882,base1 = 90,base2 = 110,dista = 1,bonus = 3,type = "normal",cd = 9},
["m4"] = {spell = "Hyper Fang",minLv = 21,ex = 1900004,base1 = 240,base2 = 250,dista = 1,bonus = 5,type = "normal",cd = 19},
["!cd"] = { pokenome= "Rattata" , nmoves= 4 , spellm1 = "Headbutt" ,exm1=1835787,spellm2="Quick Attack",exm2 = 1308008,spellm3= "Scratch",exm3=1900882,spellm4= "Hyper Fang",exm4=1900004},
["XD"] = { descricao = "Bites anything when it attacks. Small and very quick, it is a common sight in many places.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: Headbutt",evoluction = "Rattata: Level 15\nRaticate: Level 40",type = "is a Normal-type"},
},

["Raticate"] = {
["m1"] = {spell = "Headbutt", minLv = 30,ex = 1875897, base1 = 200, base2 = 201, dista = 1, bonus = 4,type = "normal",cd = 5},
["m2"] = {spell = "Quick Attack",minLv = 30,ex = 732558,base1 = 65,base2 = 70,dista = 1,bonus = 6,type = "normal",cd = 9},
["m3"] = {spell = "Scratch",minLv = 30,ex = 179856,base1 = 90,base2 = 110,dista = 1,bonus = 7,type = "normal",cd = 9},
["m4"] = {spell = "Hyper Fang",minLv = 31,ex = 234504,base1 = 240,base2 = 250,dista = 1,bonus = 4,type = "normal",cd = 19},
["m5"] = {spell = "Rage",minLv = 32,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 1,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Raticate" , nmoves= 4 , spellm1 = "Headbutt" ,exm1=1875897,spellm2="Quick Attack",exm2 = 732558,spellm3= "Scratch",exm3=179856,spellm4= "Hyper Fang",exm4=234504,spellm5= "Rage",exm5=651482},
["XD"] = { descricao = "It uses its whiskers to maintain its balance. It apparently slows down if they are cut off.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: Headbutt",evoluction = "Rattata: Level 5\nRaticate: Level 30",type = "is a Normal-type"},
},
["Shiny Raticate"] = {
["m1"] = {spell = "Headbutt", minLv = 40,ex = 1875897, base1 = 200, base2 = 201, dista = 1, bonus = 7,type = "normal",cd = 5},
["m2"] = {spell = "Quick Attack",minLv = 40,ex = 732558,base1 = 65,base2 = 70,dista = 1,bonus = 10,type = "normal",cd = 9},
["m3"] = {spell = "Scratch",minLv = 40,ex = 179856,base1 = 90,base2 = 110,dista = 1,bonus = 11,type = "normal",cd = 9},
["m4"] = {spell = "Hyper Fang",minLv = 41,ex = 234504,base1 = 240,base2 = 250,dista = 1,bonus = 10,type = "normal",cd = 19},
["m5"] = {spell = "Rage",minLv = 42,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 3,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Shiny Raticate" , nmoves= 4 , spellm1 = "Headbutt" ,exm1=1875897,spellm2="Quick Attack",exm2 = 732558,spellm3= "Scratch",exm3=179856,spellm4= "Hyper Fang",exm4=234504,spellm5= "Rage",exm5=651482},
["XD"] = { descricao = "It uses its whiskers to maintain its balance. It apparently slows down if they are cut off.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: Headbutt",evoluction = "Rattata: Level 15\nRaticate: Level 40",type = "is a Normal-type"},
},

["Gastly"] = {

["m1"] = {spell = "Lick", minLv = 20,ex = 283189, base1 = 200, base2 = 201, dista = 1, bonus = 0,type = "normal",cd = 15},
["m2"] = {spell = "Dark Pulse",minLv = 22,ex = 754793,base1 = 275,base2 = 285,dista = 6,bonus = 1,type = "ghost",cd = 15},
["m3"] = {spell = "Invisible", minLv = 20,ex = 288537, base1 = 200, base2 = 201, dista = 100,target = "no", bonus = 0,type = "ghost",cd = 8},
["m4"] = {spell = "Night Shade",minLv = 25,ex = 736021,base1 = 335,base2 = 345,dista = 100,bonus = 10,type = "ghost",target = "no",cd = 35},
["m5"] = {  spell = "Scary Face",minLv = 28,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 0,type = "ghost",target = "no",cd = 35},
["!cd"] = { pokenome= "Gastly" , nmoves= 5 , spellm1 = "Lick" ,exm1=283189,spellm2="Dark Pulse",exm2 = 754793,spellm3= "Invisible",exm3=288537,spellm4= "Night Shade",exm4=736021,spellm5= "Scary Face",exm5=9550008},
["XD"] = { descricao = "Almost invisible, this gaseous Pokémon cloaks the target and puts it to sleep without notice.",desvantagem = "Weaknesses: \n Ghost/Psychic",habilidade = "Habilites: none",evoluction = "Gastly: Level 20\nHaunter: Level 40\nGengar: Level 80",type = "is a dual-type Ghost/Poison"},
},

["Haunter"] = {

["m1"] = {spell = "Lick", minLv = 40,ex = 283199, base1 = 200, base2 = 201, dista = 100, bonus = 0,type = "normal",cd = 15},
["m2"] = {spell = "Dark Pulse",minLv = 40,ex = 754993,base1 = 275,base2 = 285,dista = 6,bonus = 1.5,type = "ghost",cd = 15},
["m3"] = {spell = "Invisible", minLv = 40,ex = 288537, base1 = 200, base2 = 201, dista = 100,target = "no", bonus = 0,type = "ghost",cd = 8},
["m4"] = {spell = "Night Shade",minLv = 40,ex = 746021,base1 = 335,base2 = 345,dista = 16,bonus = 15,type = "ghost",target = "no",cd = 35},
["m5"] = {spell = "Shadow Storm",minLv = 55,ex = 756415,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 20,type = "ghost",cd = 75},
["m6"] = {spell = "Nightmare",minLv = 46,ex = 919778,base1 = 335,base2 = 345,bonus = 13,dista = 6,type = "ghost",cd = 45},
["m7"] = {spell = "Hypnosis", minLv = 46,ex = 914685, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 50},
["m8"] = {  spell = "Scary Face",minLv = 47,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 0,type = "ghost",target = "no",cd = 35},
["!cd"] = { pokenome= "Haunter" , nmoves= 8 , spellm1 = "Lick" ,exm1=283199,spellm2="Dark Pulse",exm2 = 754993,spellm3= "Invisible",exm3=288537,spellm4= "Night Shade",exm4=746021,spellm5= "Shadow Storm",exm5=756415,spellm6= "Nightmare",exm6=919778,spellm7= "Hypnosis",exm7=914685,spellm8= "Scary Face",exm8=9550008},
["XD"] = { descricao = "Because of its ability to slip through block walls, it is said to be from another dimension.",desvantagem = "Weaknesses: \n Ghost/Psychic",habilidade = "Habilites: none",evoluction = "Gastly: Level 20\nHaunter: Level 40\nGengar: Level 80",type = "is a dual-type Ghost/Poison"},
},
["Gengar"] = {

["m1"] = {spell = "Lick", minLv = 80,ex = 183199, base1 = 200, base2 = 201, dista = 1, bonus = 0,type = "normal",cd = 15},
["m2"] = {spell = "Shadow Punch", minLv = 82,ex = 183549, base1 = 270, base2 = 291, dista = 1, bonus = 10,type = "ghost",cd = 40},
["m3"] = {spell = "Dark Pulse",minLv = 80,ex = 654993,base1 = 275,base2 = 285,dista = 6,bonus = 2,type = "ghost",cd = 15},
["m4"] = {spell = "Invisible", minLv = 80,ex = 188537, base1 = 200, base2 = 201, dista = 100,target = "no", bonus = 0,type = "ghost",cd = 8},
["m5"] = {spell = "Night Shade",minLv = 80,ex = 646021,base1 = 335,base2 = 345,dista = 100,bonus = 20,type = "ghost",target = "no",cd = 35},
["m6"] = {spell = "Shadow Storm",minLv = 86,ex = 656415,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 25,type = "ghost",cd = 75},
["m7"] = {spell = "Nightmare",minLv = 80,ex = 989778,base1 = 335,base2 = 345,bonus = 15,dista = 6,type = "ghost",cd = 45},
["m8"] = {spell = "Hypnosis", minLv = 80,ex = 994685, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 50},
["m9"] = {spell = "Dark Target",minLv = 85,ex = 638689,base1 = 65,base2 = 75,dista = 5,bonus = 2,type = "ghost",target = "no",cd = 50},
["m10"] = {  spell = "Scary Face",minLv = 82,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 0,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Gengar" , nmoves= 10 , spellm1 = "Lick" ,exm1=183199,spellm2="Shadow Punch",exm2 = 183549,spellm3= "Dark Pulse",exm3=654993,spellm4= "Invisible",exm4=188537,spellm5= "Night Shade",exm5=646021,spellm6= "Shadow Storm",exm6=656415,spellm7= "Nightmare",exm7=989778,spellm8= "Hypnosis",exm8=994685,spellm9= "Dark Target",exm9=638689,spellm10= "Scary Face",exm10=9550008},
["XD"] = { descricao = "Under a full moon, this Pokémon likes to mimic the shadows of people and laugh at their fright.",desvantagem = "Weaknesses: \n Ghost/Psychic",habilidade = "Habilites: none",evoluction = "Gastly: Level 20\nHaunter: Level 40\nGengar: Level 80",type = "is a dual-type Ghost/Poison"},
},
["Shiny Gengar"] = {
["m1"] = {spell = "Dark Condition",minLv = 102,ex = 968926,base1 = 335,base2 = 345,dista = 8,bonus = 3.0,type = "ghost",target = "no",cd = 50},
["m2"] = {spell = "Lick", minLv = 100,ex = 383199, base1 = 200, base2 = 201, dista = 1, bonus = 0,type = "ghost",cd = 15},
["m3"] = {spell = "Shadow Punch", minLv = 102,ex = 483549, base1 = 270, base2 = 291, dista = 1, bonus = 15,type = "ghost",cd = 40},
["m4"] = {spell = "Dark Pulse",minLv = 100,ex = 554993,base1 = 275,base2 = 285,dista = 6,bonus = 3,type = "ghost",cd = 15},
["m5"] = {spell = "Invisible", minLv = 100,ex = 688537, base1 = 200, base2 = 201, dista = 10,target = "no", bonus = 0,type = "ghost",cd = 8},
["m6"] = {spell = "Night Shade",minLv = 100,ex = 746021,base1 = 335,base2 = 345,dista = 10,bonus = 25,type = "ghost",target = "no",cd = 35},
["m7"] = {spell = "Shadow Storm",minLv = 106,ex = 856415,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 35,type = "ghost",cd = 75},
["m8"] = {spell = "Nightmare",minLv = 100,ex = 929778,base1 = 335,base2 = 345,bonus = 20,dista = 6,type = "ghost",cd = 45},
["m9"] = {spell = "Hypnosis", minLv = 100,ex = 934685, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 50},
["m10"] = {spell = "Dark Target",minLv = 105,ex = 648689,base1 = 65,base2 = 75,dista = 5,bonus = 3,type = "ghost",target = "no",cd = 50},
["m11"] = {  spell = "Scary Face",minLv = 102,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 0,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Shiny Gengar" , nmoves= 11 , spellm1 = "Dark Condition" ,exm1=968926,spellm2="Lick",exm2 = 383199,spellm3= "Shadow Punch",exm3=483549,spellm4= "Dark Pulse",exm4=554993,spellm5= "Invisible",exm5=688537,spellm6= "Night Shade",exm6=746021,spellm7= "Shadow Storm",exm7=856415,spellm8= "Nightmare",exm8=929778,spellm9= "Hypnosis",exm9=934685,spellm10= "Dark Target",exm10=648689,spellm11= "Scary Face",exm11=9550008},
["XD"] = { descricao = "Under Powerful shiny, a full moon, this Pokémon likes to mimic the shadows of people and laugh at their fright.",desvantagem = "Weaknesses: \n Ghost/Psychic",habilidade = "Habilites: none",evoluction = "Gengar: Level 100",type = "is a dual-type Ghost/Poison"},
},
["Ditto"] = {
["m1"] = {spell = "n/n", minLv = 40,ex = 3404556, base1 = 200, base2 = 201, dista = 1, bonus = "n/n",type = "n/n",cd = "n/n"},
["!cd"] = { pokenome= "Ditto" , nmoves= 1 , spellm1 = "Lick" ,exm1=1831998,spellm2="Shadow Punch",exm2 = 1835499,spellm3= "Dark Pulse",exm3=654993,spellm4= "Invisible",exm4=188537,spellm5= "Night Shade",exm5=646021,spellm6= "Shadow Storm",exm6=656415,spellm7= "Nightmare",exm7=989775,spellm8= "Hypnosis",exm8=9946855,spellm9= "Dark Target",exm9=6386899},
["XD"] = { descricao = "Capable of copying an enemy’s genetic code to instantly transform itself into a duplicate of the enemy.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: Transform",evoluction = "Ditto: Level 40",type = "is a Normal-type"},


},

["Chansey"] = {
["m1"] = {  spell = "Doubleslap",minLv = 50,ex = 8964941,base1 = 135,base2 = 140,dista = 1,bonus = 9.9,type = "normal",cd = 5},
["m2"] = {  spell = "Lovey Kiss",minLv = 50,ex = 8445601,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "normal",cd = 9},
["m3"] = {  spell = "Egg Bomb", minLv = 50,ex = 5953831, base1 = 400, base2 = 401, dista = 8, bonus = 25.5,type = "normal",cd = 9},
["m4"] = {  spell = "Great Love",minLv = 60,ex = 352031,base1 = 335,base2 = 345,dista = 10,bonus = 15,type = "normal",target = "no",cd = 35},
["m5"] = {  spell = "Self Heal",minLv = 58,ex = 364556,base1 = 535,base2 = 545,bonus = 0,type = "normal",target = "no",cd = 45},
["m6"] = {  spell = "Healera",minLv = 52,ex = 6203356,base1 = 135,base2 = 145,bonus = 0,type = "normal",target = "no",cd = 65},
["!cd"] = { pokenome= "Chansey" , nmoves= 6, spellm1 = "Doubleslap" ,exm1=8964941,spellm2="Lovey Kiss",exm2 = 8445601,spellm3= "Egg Bomb",exm3=5953831,spellm4 = "Great Love",exm4=352031,spellm5 = "Self Heal",exm5=364556,spellm6 = "Healera",exm6=6203356},
["XD"] = { descricao = "A rare and elusive Pokémon that is said to bring happiness to those who manage to get it.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: None",evoluction = "Chansey: Level 50",type = "is a Normal-type"},
},

["Horsea"] = {
["m1"] = {  spell = "Mud Shot",minLv = 5,ex = 8900001,base1 = 75,base2 = 90,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 5, ex = 490422, base1 = 70, base2 = 85, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 5, ex = 674004, base1 = 60, base2 = 80, dista = 2, target = "no", bonus = 6.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 5, ex = 711521, base1 = 60, base2 = 71, dista = 1,bonus = 2, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 11, ex = 346123, base1 = 68, base2 = 88, dista = 5, bonus = 2.5,type = "water", cd = 35},
["!cd"] = { pokenome= "Horsea" , nmoves= 5 , spellm1 = "Mud Shot" ,exm1=8900001,spellm2="Bubbles",exm2 = 490422,spellm3= "Water Gun",exm3=674004,spellm4 = "Waterball",exm4=711521,spellm5 ="Aqua tail",exm5=346123},
["XD"] = { descricao = "Known to shoot down flying bugs with precision blasts of ink from the surface of the water.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: None",evoluction = "Horsea: Level 5\nSeadra Level 50",type = "is a Water-type"},
},

["Shiny Horsea"] = {
["m1"] = {  spell = "Mud Shot",minLv = 15,ex = 8900001,base1 = 135,base2 = 140,dista = 5,bonus = 4.9,type = "ground",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 15, ex = 490422, base1 = 140, base2 = 145, dista = 8, bonus = 5.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 15, ex = 674004, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 8.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 15, ex = 711521, base1 = 160, base2 = 171, dista = 1,bonus = 5, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 21, ex = 346123, base1 = 168, base2 = 168, dista = 5, bonus = 5.5,type = "water", cd = 35},
["!cd"] = { pokenome= "Shiny Horsea" , nmoves= 5 , spellm1 = "Mud Shot" ,exm1=8900001,spellm2="Bubbles",exm2 = 490422,spellm3= "Water Gun",exm3=674004,spellm4 = "Waterball",exm4=711521,spellm5 ="Aqua tail",exm5=346123},
["XD"] = { descricao = "Known to shoot down flying bugs with precision blasts of ink from the surface of the water.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: None",evoluction = "Horsea: Level 15\nSeadra Level 70",type = "is a Water-type"},
},

["Seadra"] = {
["m1"] = {  spell = "Mud Shot",minLv = 50,ex = 795641,base1 = 235,base2 = 240,dista = 5,bonus = 4.9,type = "ground",cd = 9},
["m2"] = {  spell = "Mud Bomb",minLv = 52, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 8.5, type = "ground", cd = 20},
["m3"] = {  spell = "Bubbles",minLv = 50, ex = 260654, base1 = 300, base2 = 350, dista = 8, bonus = 8.5, type = "water", cd = 10},
["m4"] = {  spell = "Quick Attack", minLv = 50, ex = 239248, base1 = 200, base2 = 201, dista = 1,bonus = 7, type = "normal",cd = 10},
["m5"] = {  spell = "Water Gun", minLv = 53, ex = 654505, base1 = 450, base2 = 480, dista = 8, target = "no", bonus = 9.5, type = "water",cd = 40},
["m6"] = {  spell = "Water ball", minLv = 50, ex = 151341, base1 = 460, base2 = 471, dista = 1,bonus = 6, type = "water",cd = 25},
["m7"] = {  spell = "Aqua tail", minLv = 50, ex = 329853, base1 = 250, base2 = 268, dista = 1, bonus = 7.5,type = "water", cd = 35},
["m8"] = {  spell = "Hydro Cannon", minLv = 60, ex = 562944, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "water",cd = 60},
["m9"] = {  spell = "Water Spout", minLv = 55, ex = 944504, base1 = 530, base2 = 580, dista = 2, target = "no", bonus = 15.5, type = "water",cd = 40},
["!cd"] = { pokenome= "Seadra" , nmoves= 9 , spellm1 = "Mud Shot" ,exm1=795641,spellm2="Mud Bomb",exm2 = 432498,spellm3= "Bubbles",exm3=260654,spellm4 = "Quick Attack",exm4=239248,spellm5 ="Water Gun",exm5=654505,spellm6 ="Water Ball",exm6=151341,spellm7 ="Aqua tail",exm7=329853,spellm7 ="Aqua tail",exm7=329853,spellm8 ="Hydro Cannon",exm8=562944,spellm9 ="Water Spout",exm9=944504},
["XD"] = { descricao = "Capable of swimming backwards by rapidly flapping its wing-like pectoral fins and stout tail.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: Surf",evoluction = "Horsea: Level 5\nSeadra Level 50",type = "is a Water-type"},
},


["Shiny Seadra"] = {
["m1"] = {  spell = "Mud Shot",minLv = 70,ex = 795641,base1 = 235,base2 = 240,dista = 5,bonus = 5.9,type = "ground",cd = 9},
["m2"] = {  spell = "Mud Bomb",minLv = 72, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 9.5, type = "ground", cd = 20},
["m3"] = {  spell = "Bubbles",minLv = 70, ex = 260654, base1 = 300, base2 = 350, dista = 8, bonus = 10.5, type = "water", cd = 10},
["m4"] = {  spell = "Quick Attack", minLv = 70, ex = 239248, base1 = 200, base2 = 201, dista = 1,bonus = 9, type = "normal",cd = 10},
["m5"] = {  spell = "Water Gun", minLv = 73, ex = 654505, base1 = 450, base2 = 480, dista = 8, target = "no", bonus = 11.5, type = "water",cd = 40},
["m6"] = {  spell = "Water ball", minLv = 70, ex = 151341, base1 = 460, base2 = 471, dista = 1,bonus = 10, type = "water",cd = 25},
["m7"] = {  spell = "Aqua tail", minLv = 70, ex = 329853, base1 = 250, base2 = 268, dista = 1, bonus = 9.5,type = "water", cd = 35},
["m8"] = {  spell = "Hydro Cannon", minLv = 80, ex = 562944, base1 = 750, base2 = 650, dista = 100, bonus = 22, target = "no", type = "water",cd = 60},
["m9"] = {  spell = "Water Spout", minLv = 75, ex = 944504, base1 = 530, base2 = 580, dista = 2, target = "no", bonus = 17.5, type = "water",cd = 40},
["!cd"] = { pokenome= "Shiny Seadra" , nmoves= 9 , spellm1 = "Mud Shot" ,exm1=795641,spellm2="Mud Bomb",exm2 = 432498,spellm3= "Bubbles",exm3=260654,spellm4 = "Quick Attack",exm4=239248,spellm5 ="Water Gun",exm5=654505,spellm6 ="Water Ball",exm6=151341,spellm7 ="Aqua tail",exm7=329853,spellm7 ="Aqua tail",exm7=329853,spellm8 ="Hydro Cannon",exm8=562944,spellm9 ="Water Spout",exm9=944504},
["XD"] = { descricao = "Capable of swimming backwards by rapidly flapping its wing-like pectoral fins and stout tail.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: Surf",evoluction = "Horsea: Level 15\nSeadra Level 70",type = "is a Water-type"},
},

["Poliwag"] = {
["m1"] = {  spell = "Doubleslap",minLv = 5,ex = 8954301,base1 = 65,base2 = 70,dista = 1,bonus = 1.9,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 5, ex = 490865, base1 = 40, base2 = 85, dista = 8, bonus = 1.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 5, ex = 923004, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 6.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 5, ex = 724521, base1 = 30, base2 = 71, dista = 1,bonus = 1.2, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 11, ex = 346423, base1 = 68, base2 = 88, dista = 5, bonus = 1.5,type = "water", cd = 35},
["m6"] = {  spell = "Hypnosis", minLv = 12,ex = 877689, base1 = 100, base2 = 121, dista = 6, bonus = 0,type = "psychic",cd = 30},
["!cd"] = { pokenome= "Poliwag" , nmoves= 6 , spellm1 = "Doubleslap" ,exm1=8954301,spellm2="Bubbles",exm2 = 490865,spellm3= "Water Gun",exm3=923004,spellm4 = "Waterball",exm4=724521,spellm5 ="Aqua tail",exm5=346423,spellm6 ="Hypnosis",exm6=877689},
["XD"] = { descricao = "Its newly grown legs prevent it from running. It appears to prefer swimming than trying to stand.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: Surf",evoluction = "Poliwag: Level 5\nPoliwhirl Level 20\nPoliwrath Level 70",type = "is a Water-type"},
},

["Poliwhirl"] = {
["m1"] = {  spell = "Doubleslap",minLv = 20,ex = 895451,base1 = 235,base2 = 240,dista = 1,bonus = 3.9,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 20, ex = 492345, base1 = 240, base2 = 245, dista = 8, bonus = 3.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 20, ex = 224504, base1 = 250, base2 = 280, dista = 2, target = "no", bonus = 6.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 20, ex = 726661, base1 = 260, base2 = 271, dista = 1,bonus = 3, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 20, ex = 346323, base1 = 268, base2 = 269, dista = 5, bonus = 3.5,type = "water", cd = 35},
["m6"] = {  spell = "Mega Punch",minLv = 30,ex = 896421,base1 = 235,base2 = 240,dista = 1,bonus = 8.9,type = "fighting",cd = 9},
["m7"] = {  spell = "Hypnosis", minLv = 32,ex = 977683, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 30},
["!cd"] = { pokenome= "Poliwhirl" , nmoves= 7 , spellm1 = "Doubleslap" ,exm1=895451,spellm2="Bubbles",exm2 = 492345,spellm3= "Water Gun",exm3=224504,spellm4 = "Waterball",exm4=726661,spellm5 ="Aqua tail",exm5=346323,spellm6 ="Mega Punch",exm6=896421,spellm7 ="Hypnosis",exm7=977683},
["XD"] = { descricao = "Capable of living in or out of water. When out of water, it sweats to keep its body slimy.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: Surf",evoluction = "Poliwag: Level 5\nPoliwhirl Level 20\nPoliwrath Level 70",type = "is a Water-type"},
},

["Poliwrath"] = {
["m1"] = {  spell = "Doubleslap",minLv = 70,ex = 895981,base1 = 335,base2 = 340,dista = 1,bonus = 4.9,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 70, ex = 495334, base1 = 340, base2 = 345, dista = 8, bonus = 4.5, type = "water", cd = 10},
["m3"] = {  spell = "Dizzy Punch",minLv = 70,ex = 425451,base1 = 335,base2 = 340,dista = 1,bonus = 3.9,type = "normal",cd = 9},
["m4"] = {  spell = "Water Gun", minLv = 70, ex = 434504, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 8.5, type = "water",cd = 40},
["m5"] = {  spell = "Ice Beam", minLv = 70, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 8.5, type = "ice",cd = 40},
["m6"] = {  spell = "Water ball", minLv = 70, ex = 766891, base1 = 360, base2 = 371, dista = 1,bonus = 4, type = "water",cd = 15},
["m7"] = {  spell = "Aqua tail", minLv = 70, ex = 346773, base1 = 368, base2 = 369, dista = 5, bonus = 4.5,type = "water", cd = 35},
["m8"] = {  spell = "Mega Punch",minLv = 75,ex = 876771,base1 = 335,base2 = 440,dista = 1,bonus = 10.9,type = "fighting",cd = 9},
["m9"] = {  spell = "Dynamic Punch", minLv = 77, ex = 777404, base1 = 430, base2 = 480, dista = 1, bonus = 5.5, type = "fighting",cd = 40},
["m10"] = {  spell = "Hypnosis", minLv = 72,ex = 974463, base1 = 200, base2 = 301, dista = 6, bonus = 0,type = "psychic",cd = 30},
["!cd"] = { pokenome= "Poliwrath" , nmoves= 10 , spellm1 = "Doubleslap" ,exm1=895981,spellm2="Bubbles",exm2 = 495334,spellm3= "Dizzy Punch",exm3=425451,spellm4 = "Water Gun",exm4=434504,spellm5 ="Ice Beam",exm5=264604,spellm6 ="Water Ball",exm6=766891,spellm7 ="Aqua Tail",exm7=346773,spellm8 ="Mega Punch",exm8=876771,spellm9 ="Dynamic Punch",exm9=777404,spellm10 ="Hypnosis",exm10=974463},
["XD"] = { descricao = "An adept swimmer at both the front crawl and breast stroke. Easily overtakes the best human swimmers.",desvantagem = "Weaknesses: \n Electric/Grass/Flying/Psychic",habilidade = "Habilites: Surf",evoluction = "Poliwag: Level 5\nPoliwhirl Level 20\nPoliwrath Level 70",type = "is a dual-type Water/Fighting"},
},

["Tentacool"] = {
["m1"] = {  spell = "Mud Shot",minLv = 17,ex = 3254001,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m2"] = {  spell = "Poison Sting",minLv = 15,ex = 564678,base1 = 135,base2 = 145,dista = 8,bonus = 4,type = "poison",cd = 20},
["m3"] = {  spell = "Bubbles",minLv = 15, ex = 250928, base1 = 140, base2 = 145, dista = 8, bonus = 4.5, type = "water", cd = 10},
["m4"] = {  spell = "Acid",minLv = 15, ex = 979759, base1 = 130, base2 = 145, dista = 2, bonus = 0.7, type = "poison", cd = 20},
["m5"] = {  spell = "Water ball", minLv = 15, ex = 817721, base1 = 160, base2 = 171, dista = 5,bonus = 3, type = "water",cd = 15},
["m6"] = {  spell = "Psy Pulse",minLv = 17,ex = 788773,base1 = 95,base2 = 105,dista = 6,bonus = 2,type = "psychic",cd = 15},
["m7"] = {  spell = "Super Sonic",minLv = 20,ex = 710541,base1 = 0,base2 = 0,dista = 5,bonus = 0,type = "psychic",cd = 20},
["!cd"] = { pokenome= "Tentacool" , nmoves= 7 , spellm1 = "Mud Shot" ,exm1=3254001,spellm2="Poison Sting",exm2 = 564678,spellm3= "Bubbles",exm3=250928,spellm4 = "Acid",exm4=979759,spellm5 ="Water Ball",exm5=817721,spellm6 ="Psy Pulse",exm6=788773,spellm7 ="Super Sonic",exm7=710541},
["XD"] = { descricao = "Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.",desvantagem = "Weaknesses: \n Electric/Ground/Psychic",habilidade = "Habilites: Surf",evoluction = "Tentacool: Level 15\nTentacruel Level 80",type = "is a dual-type Water/Poison"},
},

["Shiny Tentacool"] = {
["m1"] = {  spell = "Mud Shot",minLv = 27,ex = 3254001,base1 = 235,base2 = 240,dista = 5,bonus = 3.9,type = "ground",cd = 9},
["m2"] = {  spell = "Poison Sting",minLv = 25,ex = 564678,base1 = 235,base2 = 245,dista = 8,bonus = 5,type = "poison",cd = 20},
["m3"] = {  spell = "Bubbles",minLv = 25, ex = 250928, base1 = 240, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m4"] = {  spell = "Acid",minLv = 25, ex = 979759, base1 = 230, base2 = 245, dista = 2, bonus = 1.7, type = "poison", cd = 20},
["m5"] = {  spell = "Water ball", minLv = 25, ex = 817721, base1 = 260, base2 = 271, dista = 5,bonus = 5, type = "water",cd = 15},
["m6"] = {  spell = "Psy Pulse",minLv = 27,ex = 788773,base1 = 275,base2 = 285,dista = 6,bonus = 6,type = "psychic",cd = 15},
["m7"] = {  spell = "Super Sonic",minLv = 30,ex = 710541,base1 = 0,base2 = 0,dista = 5,bonus = 0,type = "psychic",cd = 20},
["!cd"] = { pokenome= "Shiny Tentacool" , nmoves= 7 , spellm1 = "Mud Shot" ,exm1=3254001,spellm2="Poison Sting",exm2 = 564678,spellm3= "Bubbles",exm3=250928,spellm4 = "Acid",exm4=979759,spellm5 ="Water Ball",exm5=817721,spellm6 ="Psy Pulse",exm6=788773,spellm7 ="Super Sonic",exm7=710541},
["XD"] = { descricao = "Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.",desvantagem = "Weaknesses: \n Electric/Ground/Psychic",habilidade = "Habilites: Surf",evoluction = "Tentacool: Level 25\nTentacruel Level 90",type = "is a dual-type Water/Poison"},
},

["Tentacruel"] = {
["m1"] = {  spell = "Mud Shot",minLv = 80,ex = 455941,base1 = 335,base2 = 340,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m2"] = {  spell = "Poison Sting",minLv = 80,ex = 365648,base1 = 335,base2 = 345,dista = 8,bonus = 4,type = "poison",cd = 20},
["m3"] = {  spell = "Bubbles",minLv = 80, ex = 254988, base1 = 340, base2 = 345, dista = 8, bonus = 4.5, type = "water", cd = 10},
["m4"] = {  spell = "Acid",minLv = 80, ex = 978956, base1 = 330, base2 = 345, dista = 2, bonus = 0.7, type = "poison", cd = 20},
["m5"] = {  spell = "Poison Bomb", minLv = 84, ex = 418935, base1 = 200,base2 = 201, dista = 4, bonus = 15, type = "poison",cd = 24},
["m6"] = {  spell = "Water ball", minLv = 80, ex = 413221, base1 = 360, base2 = 371, dista = 5,bonus = 3, type = "water",cd = 15},
["m7"] = {  spell = "Psy Pulse",minLv = 80,ex = 748753,base1 = 375,base2 = 385,dista = 6,bonus = 2,type = "psychic",cd = 15},
["m8"] = {  spell = "Super Sonic",minLv = 80,ex = 965489,base1 = 0,base2 = 0,dista = 5,bonus = 0,type = "psychic",cd = 20},
["m9"] = {  spell = "Hydro Pump", minLv = 85, ex = 491659, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 15, type = "water",cd = 95},
["m10"] = {  spell = "Hydro Rain", minLv = 86, ex = 345924, base1 = 750, base2 = 650, dista = 10, bonus = 8, target = "no", type = "water",cd = 50},
["!cd"] = { pokenome= "Tentacruel" , nmoves= 10 , spellm1 = "Mud Shot" ,exm1=455941,spellm2="Poison Sting",exm2 = 365648,spellm3= "Bubbles",exm3=254988,spellm4 = "Acid",exm4=978956,spellm5 ="Poison Bomb",exm5=418935,spellm6 ="Water Ball",exm6=413221,spellm7 ="Psy Pulse",exm7=748753,spellm8 ="Super Sonic",exm8=965489,spellm9 ="Hydro Pump",exm9=491659,spellm10 ="Hydro Rain",exm10=345924},
["XD"] = { descricao = "The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.",desvantagem = "Weaknesses: \n Electric/Ground/Psychic",habilidade = "Habilites: Surf",evoluction = "Tentacool: Level 15\nTentacruel Level 80",type = "is a dual-type Water/Poison"},
},

["Shiny Tentacruel"] = {
["m1"] = {  spell = "Mud Shot",minLv = 90,ex = 455941,base1 = 335,base2 = 340,dista = 5,bonus = 3.9,type = "ground",cd = 9},
["m2"] = {  spell = "Poison Sting",minLv = 90,ex = 365648,base1 = 335,base2 = 345,dista = 8,bonus = 5,type = "poison",cd = 20},
["m3"] = {  spell = "Bubbles",minLv = 90, ex = 254988, base1 = 340, base2 = 345, dista = 8, bonus = 5.5, type = "water", cd = 10},
["m4"] = {  spell = "Acid",minLv = 90, ex = 978956, base1 = 330, base2 = 345, dista = 2, bonus = 1.7, type = "poison", cd = 20},
["m5"] = {  spell = "Poison Bomb", minLv = 94, ex = 418935, base1 = 200,base2 = 201, dista = 4, bonus = 17, type = "poison",cd = 24},
["m6"] = {  spell = "Water ball", minLv = 90, ex = 413221, base1 = 360, base2 = 371, dista = 5,bonus = 5, type = "water",cd = 15},
["m7"] = {  spell = "Psy Pulse",minLv = 90,ex = 748753,base1 = 375,base2 = 385,dista = 6,bonus = 3,type = "psychic",cd = 15},
["m8"] = {  spell = "Super Sonic",minLv = 90,ex = 965489,base1 = 0,base2 = 0,dista = 5,bonus = 0,type = "psychic",cd = 20},
["m9"] = {  spell = "Hydro Pump", minLv = 95, ex = 491659, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 18, type = "water",cd = 95},
["m10"] = {  spell = "Hydro Rain", minLv = 96, ex = 345924, base1 = 750, base2 = 650, dista = 10, bonus = 10, target = "no", type = "water",cd = 50},
["!cd"] = { pokenome= "Shiny Tentacruel" , nmoves= 10 , spellm1 = "Mud Shot" ,exm1=455941,spellm2="Poison Sting",exm2 = 365648,spellm3= "Bubbles",exm3=254988,spellm4 = "Acid",exm4=978956,spellm5 ="Poison Bomb",exm5=418935,spellm6 ="Water Ball",exm6=413221,spellm7 ="Psy Pulse",exm7=748753,spellm8 ="Super Sonic",exm8=965489,spellm9 ="Hydro Pump",exm9=491659,spellm10 ="Hydro Rain",exm10=345924},
["XD"] = { descricao = "The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.",desvantagem = "Weaknesses: \n Electric/Ground/Psychic",habilidade = "Habilites: Surf",evoluction = "Tentacool: Level 25\nTentacruel Level 90",type = "is a dual-type Water/Poison"},
},


["Krabby"] = {
["m1"] = {  spell = "Mud Shot",minLv = 5,ex = 995361,base1 = 35,base2 = 70,dista = 5,bonus = 1.9,type = "ground",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 5, ex = 290455, base1 = 40, base2 = 85, dista = 8, bonus = 1.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 5, ex = 574554, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 2.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 5, ex = 521221, base1 = 60, base2 = 91, dista = 1,bonus = 2, type = "water",cd = 15},
["m5"] = {  spell = "Crabhammer", minLv = 11, ex = 942123, base1 = 68, base2 = 98, dista = 1, bonus = 2.8,type = "normal", cd = 10},
["m6"] = {  spell = "Harden", minLv = 12, ex = 798238, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 0, type = "normal",cd = 6},
["!cd"] = { pokenome= "Krabby" , nmoves= 6 , spellm1 = "Mud Shot" ,exm1=995361,spellm2="Bubbles",exm2 = 290455,spellm3= "Water Gun",exm3=574554,spellm4 = "Waterball",exm4=521221,spellm5 ="Crabhammer",exm5=942123,spellm6 ="Harden",exm6=798238},
["XD"] = { descricao = "Its pincers are not only powerful weapons, they are used for balance when walking sideways.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: cut",evoluction = "Krabby: Level 5\nKingler Level 50",type = "is a Water-type"},
},
["Shiny Krabby"] = {
["m1"] = {  spell = "Mud Shot",minLv = 15,ex = 995361,base1 = 135,base2 = 140,dista = 5,bonus = 3.9,type = "ground",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 15, ex = 290455, base1 = 140, base2 = 145, dista = 8, bonus = 4.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 15, ex = 574554, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 7.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 15, ex = 521221, base1 = 160, base2 = 171, dista = 1,bonus = 4, type = "water",cd = 15},
["m5"] = {  spell = "Crabhammer", minLv = 21, ex = 942123, base1 = 168, base2 = 168, dista = 1, bonus = 4.8,type = "normal", cd = 10},
["m6"] = {  spell = "Harden", minLv = 22, ex = 798238, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 0, type = "normal",cd = 6},
["!cd"] = { pokenome= "Shiny Krabby" , nmoves= 6 , spellm1 = "Mud Shot" ,exm1=995361,spellm2="Bubbles",exm2 = 290455,spellm3= "Water Gun",exm3=574554,spellm4 = "Waterball",exm4=521221,spellm5 ="Crabhammer",exm5=942123,spellm6 ="Harden",exm6=798238},
["XD"] = { descricao = "Its pincers are not only powerful weapons, they are used for balance when walking sideways.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: cut",evoluction = "Krabby: Level 15\nKingler Level 70",type = "is a Water-type"},
},

["Kingler"] = {
["m1"] = {  spell = "Mud Shot",minLv = 50,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 3.9,type = "ground",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 50, ex = 298555, base1 = 240, base2 = 245, dista = 8, bonus = 3.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 52, ex = 872554, base1 = 250, base2 = 280, dista = 2, target = "no", bonus = 7.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 50, ex = 526221, base1 = 260, base2 = 271, dista = 1,bonus = 4, type = "water",cd = 15},
["m5"] = {  spell = "Crabhammer", minLv = 52, ex = 963133, base1 = 268, base2 = 268, dista = 1, bonus = 4.8,type = "normal", cd = 10},
["m6"] = {  spell = "Harden", minLv = 53, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 0, type = "normal",cd = 6},
["m7"] = {  spell = "Guillotine", minLv = 54, ex = 252223, base1 = 268, base2 = 268, dista = 1, bonus = 12,type = "normal", cd = 20},
["m8"] = {  spell = "Fury Cutter",minLv = 55,ex = 259329,base1 = 255,base2 = 260,dista = 8,bonus = 10,type = "bug",target = "no",cd = 35},
["!cd"] = { pokenome= "Kingler" , nmoves= 8 , spellm1 = "Mud Shot" ,exm1=455551,spellm2="Bubbles",exm2 = 298555,spellm3= "Water Gun",exm3=872554,spellm4 = "Waterball",exm4=526221,spellm5 ="Crabhammer",exm5=963133,spellm6 ="Harden",exm6=738333,spellm7 ="Guillotine",exm7=252223,spellm8 ="Fury Cutter",exm8=259329},
["XD"] = { descricao = "The large pincer has 10000 hp of crushing power. However, its huge size makes it unwieldy to use.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: cut",evoluction = "Krabby: Level 5\nKingler Level 50",type = "is a Water-type"},
},

["Shiny Kingler"] = {
["m1"] = {  spell = "Mud Shot",minLv = 70,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 4.9,type = "ground",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 70, ex = 298555, base1 = 240, base2 = 245, dista = 8, bonus = 5.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 72, ex = 872554, base1 = 250, base2 = 280, dista = 2, target = "no", bonus = 9.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 70, ex = 526221, base1 = 260, base2 = 271, dista = 1,bonus = 6, type = "water",cd = 15},
["m5"] = {  spell = "Crabhammer", minLv = 72, ex = 963133, base1 = 268, base2 = 268, dista = 1, bonus = 6.8,type = "normal", cd = 10},
["m6"] = {  spell = "Harden", minLv = 73, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 0, type = "normal",cd = 6},
["m7"] = {  spell = "Guillotine", minLv = 74, ex = 252223, base1 = 268, base2 = 268, dista = 1, bonus = 14,type = "normal", cd = 20},
["m8"] = {  spell = "Fury Cutter",minLv = 75,ex = 259329,base1 = 255,base2 = 260,dista = 8,bonus = 12,type = "bug",target = "no",cd = 35},
["!cd"] = { pokenome= "Shiny Kingler" , nmoves= 8 , spellm1 = "Mud Shot" ,exm1=455551,spellm2="Bubbles",exm2 = 298555,spellm3= "Water Gun",exm3=872554,spellm4 = "Waterball",exm4=526221,spellm5 ="Crabhammer",exm5=963133,spellm6 ="Harden",exm6=738333,spellm7 ="Guillotine",exm7=252223,spellm8 ="Fury Cutter",exm8=259329},
["XD"] = { descricao = "The large pincer has 10000 hp of crushing power. However, its huge size makes it unwieldy to use.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: cut",evoluction = "Krabby: Level 15\nKingler Level 70",type = "is a Water-type"},
},

["Goldeen"] = {
["m1"] = {  spell = "Horn Attack",minLv = 16,ex = 423520,base1 = 30,base2 = 65,dista = 1,bonus = 3.4,type = "normal",cd = 15},
["m2"] = {  spell = "Horn Drill",minLv = 15,ex = 333226,base1 = 55,base2 = 80,dista = 1,bonus = 2,type = "normal",cd = 25},
["m3"] = {  spell = "Poison Sting",minLv = 5,ex = 431605,base1 = 55,base2 = 96,dista = 3,bonus = 2,type = "poison",cd = 13},
["m4"] = {  spell = "Water Gun", minLv = 5, ex = 374244, base1 = 50, base2 = 80, dista = 20, target = "no", bonus = 3.5, type = "water",cd = 40},
["m5"] = {  spell = "Water ball", minLv = 5, ex = 315541, base1 = 60, base2 = 81, dista = 6,bonus = 2, type = "water",cd = 15},
["m6"] = {  spell = "Water Spout", minLv = 15, ex = 332404, base1 = 30, base2 = 80, dista = 8, target = "no", bonus = 3.5, type = "water",cd = 40},
["m7"] = {  spell = "Super Sonic",minLv = 5,ex = 810301,base1 = 0,base2 = 0,dista = 5,bonus = 0,type = "psychic",cd = 20},
["!cd"] = { pokenome= "Goldeen" , nmoves= 7 , spellm1 = "Horn Attack" ,exm1=423520,spellm2="Horn Drill",exm2 = 333226,spellm3= "Poison Sting",exm3=431605,spellm4 = "Water Gun",exm4=374244,spellm5 ="Water ball",exm5=315541,spellm6 ="Water Spout",exm6=332404,spellm7 ="Super Sonic",exm7=810301},
["XD"] = { descricao = "Its tail fin billows like an elegant ballroom dress, giving it the nickname of the Water Queen.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: surf",evoluction = "Goldeen: Level 5\nSeaking Level 30",type = "is a Water-type"},
},

["Seaking"] = {
["m1"] = {  spell = "Horn Attack",minLv = 30,ex = 325524,base1 = 230,base2 = 235,dista = 1,bonus = 5.4,type = "normal",cd = 15},
["m2"] = {  spell = "Bubbles",minLv = 30, ex = 645543, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m3"] = {  spell = "Aqua tail", minLv = 30, ex = 265233, base1 = 218, base2 = 218, dista = 1, bonus = 3.5,type = "water", cd = 35},
["m4"] = {  spell = "Horn Drill",minLv = 32,ex = 343656,base1 = 255,base2 = 260,dista = 1,bonus = 6,type = "normal",cd = 25},
["m5"] = {  spell = "Poison Sting",minLv = 30,ex = 435345,base1 = 255,base2 = 256,dista = 3,bonus = 4,type = "poison",cd = 13},
["m6"] = {  spell = "Water Gun", minLv = 30, ex = 274334, base1 = 250, base2 = 280, dista = 8, target = "no", bonus = 6.5, type = "water",cd = 40},
["m7"] = {  spell = "Water ball", minLv = 30, ex = 455542, base1 = 260, base2 = 271, dista = 8,bonus = 2, type = "water",cd = 15},
["m8"] = {  spell = "Water Spout", minLv = 32, ex = 342304, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 4.5, type = "water",cd = 40},
["m9"] = {  spell = "Super Sonic",minLv = 30,ex = 215551,base1 = 0,base2 = 0,dista = 5,bonus = 0,type = "psychic",cd = 20},
["!cd"] = { pokenome= "Seaking" , nmoves= 9 , spellm1 = "Horn Attack" ,exm1=325524,spellm2="Bubbles",exm2 = 645543,spellm3= "Aqua tail",exm3=265233,spellm4 = "Horn Drill",exm4=343656,spellm5 ="Poison Sting",exm5=435345,spellm6 ="Water Gun",exm6=274334,spellm7 ="Water Ball",exm7=455542,spellm8 ="Water Spout",exm8=342304,spellm8 ="Super Sonic",exm8=215551},
["XD"] = { descricao = "Its tail fin billows like an elegant ballroom dress, giving it the nickname of the Water Queen.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: surf",evoluction = "Goldeen: Level 5\nSeaking Level 30",type = "is a Water-type"},
},

["Squirtle"] = {
["m1"] = {  spell = "Headbutt", minLv = 20,ex = 1513001, base1 = 200, base2 = 201, dista = 1, bonus = 6,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 20, ex = 400422, base1 = 230, base2 = 245, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 20, ex = 654004, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 6.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 20, ex = 1113201, base1 = 200, base2 = 201, dista = 8,bonus = 7, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 35, ex = 4604123, base1 = 180, base2 = 180, dista = 1, bonus = 3.5,type = "water", cd = 35},
["m6"] = {  spell = "Hydro Cannon", minLv = 40, ex = 7789804, base1 = 750, base2 = 650, dista = 10, bonus = 7, target = "no", type = "water",cd = 60},
["m7"] = {  spell = "Harden", minLv = 20, ex = 896808, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 0, type = "normal",cd = 30},
["!cd"] = { pokenome= "Squirtle" , nmoves= 7 , spellm1 = "Headbutt" ,exm1=1513001,spellm2="Bubbles",exm2 = 400002,spellm3= "Water Gun",exm3=654004,spellm4 = "Waterball",exm4=1113201,spellm5 ="Aqua tail",exm5=4604123,spellm6="Hydro Cannon",exm6=7789804,spellm7= "Harden",exm7=896808},
["XD"] = { descricao = "After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: surf\nHeadbutt",evoluction = "Squirtle: Level 20\nWartortle Level 45\nBlastoise Level 85",type = "is a Water-type"},
},
["Wartortle"] = {
["m1"] = {  spell = "Headbutt", minLv = 45,ex = 564201, base1 = 200, base2 = 201, dista = 1, bonus = 8,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 45, ex = 400542, base1 = 230, base2 = 245, dista = 8, bonus = 4.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 45, ex = 644004, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 7.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 45, ex = 1233201, base1 = 200, base2 = 201, dista = 8,bonus = 8, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 45, ex = 4655123, base1 = 18, base2 = 18, dista = 1, bonus = 3.5,type = "water", cd = 35},
["m6"] = {  spell = "Hydro Cannon", minLv = 50, ex = 6489804, base1 = 750, base2 = 650, dista = 100, bonus = 13, target = "no", type = "water",cd = 60},
["m7"] = {  spell = "Water Spout", minLv = 46, ex = 342004, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 8.5, type = "water",cd = 40},
["m8"] = {  spell = "Harden", minLv = 45, ex = 896822, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "normal",cd = 30},
["!cd"] = { pokenome= "Wartortle" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=564201,spellm2="Bubbles",exm2 = 400542,spellm3= "Water Gun",exm3=644004,spellm4 = "Water ball",exm4=1233201,spellm5 ="Aqua tail",exm5=4655123,spellm6="Hydro Cannon",exm6=6489804,spellm7= "Water Spout",exm7=342004,spellm8= "Harden",exm8=896822},
["XD"] = { descricao = "Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: surf\nHeadbutt",evoluction = "Squirtle: Level 20\nWartortle Level 45\nBlastoise Level 85",type = "is a Water-type"},
},
["Blastoise"] = {
["m1"] = {  spell = "Headbutt", minLv = 85,ex = 664201, base1 = 200, base2 = 201, dista = 1, bonus = 10,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 85, ex = 670542, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 85, ex = 848004, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 8.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 85, ex = 188321, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 85, ex = 465554, base1 = 18, base2 = 18, dista = 1, bonus = 6.5,type = "water", cd = 35},
["m6"] = {  spell = "Hydro Cannon", minLv = 85, ex = 6623804, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "water",cd = 60},
["m7"] = {  spell = "Water Spout", minLv = 85, ex = 344554, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 10.5, type = "water",cd = 40},
["m8"] = {  spell = "Harden", minLv = 85, ex = 893726, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 0, type = "normal",cd = 30},
["m9"] = {  spell = "Hydro Pump", minLv = 95, ex = 291852, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 15, type = "water",cd = 95},
["m10"] = {  spell = "Hydro Rain", minLv = 90, ex = 646924, base1 = 750, base2 = 650, dista = 10, bonus = 8, target = "no", type = "water",cd = 50},
["!cd"] = { pokenome= "Blastoise" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=664201,spellm2="Bubbles",exm2 = 670542,spellm3= "Water Gun",exm3=848004,spellm4 = "Water ball",exm4=188321,spellm5 ="Aqua tail",exm5=465554,spellm6="Hydro Cannon",exm6=6623804,spellm7= "Water Spout",exm7=344554,spellm8= "Harden",exm8=893726,spellm9= "Hydro Pump",exm9=291852,spellm10= "Hydro Rain",exm10=646924},
["XD"] = { descricao = "A brutal Pokémon with pressurized water jets on its shell. They are used for high speed tackles.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: surf\nHeadbutt",evoluction = "Squirtle: Level 20\nWartortle Level 45\nBlastoise Level 85",type = "is a Water-type"},
},


["Psyduck"] = {
["m1"] = {  spell = "Bubbles",minLv = 15, ex = 478572, base1 = 230, base2 = 245, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m2"] = {  spell = "Water Gun", minLv = 15, ex = 256304, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 5.5, type = "water",cd = 40},
["m3"] = {  spell = "Confusion", minLv = 18, ex = 389573, base1 = 165,base2 = 175, bonus = 10,type = "psychic",target = "no",cd = 25},
["m4"] = {  spell = "Water ball", minLv = 15, ex = 48241, base1 = 200, base2 = 201, dista = 8,bonus = 5, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 15, ex = 565698, base1 = 18, base2 = 18, dista = 1, bonus = 3.5,type = "water", cd = 35},
["m6"] = {  spell = "Stunning Confusion",minLv = 15,ex = 426809,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 0.5,type = "psychic",cd = 40},
["!cd"] = { pokenome= "Psyduck" , nmoves= 6 , spellm1 = "Bubbles" ,exm1=478572,spellm2="Water Gun",exm2 = 256304,spellm3= "Confusion",exm3=389573,spellm4 = "Water ball",exm4=48241,spellm5 ="Aqua tail",exm5=565698,spellm6="Stunning Confusion",exm6=426809},
["XD"] = { descricao = "While lulling its enemies with its vacant look, this wily Pokémon will use psychokinetic powers.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: none",evoluction = "Psyduck: Level 15\nGolduck Level 75",type = "is a Water-type"},
},
["Golduck"] = {
["m1"] = {  spell = "Bubbles",minLv = 75, ex = 678572, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m2"] = {  spell = "Water Gun", minLv = 75, ex = 856004, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 8.5, type = "water",cd = 40},
["m3"] = {  spell =  "Confusion", minLv = 75, ex = 489973, base1 = 165,base2 = 175, bonus = 15,type = "psychic",target = "no",cd = 25},
["m4"] = {  spell = "Water ball", minLv = 75, ex = 183241, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 75, ex = 465665, base1 = 18, base2 = 18, dista = 1, bonus = 6.5,type = "water", cd = 35},
["m6"] = {  spell =  "Psychic", minLv = 75, ex = 775604, base1 = 225,base2 = 225, bonus = 15,type = "psychic",target = "no",cd = 35},
["m7"] = {  spell = "Water Spout", minLv = 76, ex = 344968, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 10.5, type = "water",cd = 40},
["m8"] = {  spell = "Hydro Rain", minLv = 80, ex = 626434, base1 = 750, base2 = 650, dista = 10, bonus = 8, target = "no", type = "water",cd = 50},
["m9"] = {spell = "Stunning Confusion",minLv = 77,ex = 726809,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 0.5,type = "psychic",cd = 40},
["!cd"] = { pokenome= "Golduck" , nmoves= 9 , spellm1 = "Bubbles" ,exm1=678572,spellm2="Water Gun",exm2 = 856004,spellm3= "Confusion",exm3=489973,spellm4 = "Water ball",exm4=183241,spellm5 ="Aqua tail",exm5=465665,spellm6="Psychic",exm6=775604,spellm7= "Water Spout",exm7=344968,spellm8= "Hydro Rain",exm8=626434,spellm9= "Stunning Confusion",exm9=726809},
["XD"] = { descricao = "Often seen swimming elegantly by lake shores. It is often mistaken for the Japanese monster, Kappa.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: none",evoluction = "Psyduck: Level 15\nGolduck Level 75",type = "is a Water-type"},
},

["Slowpoke"] = {
["m1"] = {  spell = "Headbutt", minLv = 10,ex = 943501, base1 = 100, base2 = 121, dista = 1, bonus = 2,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 10, ex = 948562, base1 = 110, base2 = 145, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m3"] = {  spell = "Confusion", minLv = 12, ex = 463993, base1 = 165,base2 = 175, bonus = 15,type = "psychic",target = "no",cd = 25},
["m4"] = {  spell = "Water ball", minLv = 10, ex = 945821, base1 = 80, base2 = 91, dista = 8,bonus = 5, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 10, ex = 445925, base1 = 18, base2 = 18, dista = 1, bonus = 3.5,type = "water", cd = 35},
["m6"] = {  spell = "Water Spout", minLv = 15, ex = 545258, base1 = 30, base2 = 80, dista = 8, target = "no", bonus = 5.5, type = "water",cd = 40},
["!cd"] = { pokenome= "Slowpoke" , nmoves= 6 , spellm1 = "Headbutt" ,exm1=943501,spellm2="Bubbles",exm2 = 948562,spellm3= "Confusion",exm3=463993,spellm4 = "Water ball",exm4=945821,spellm5 ="Aqua tail",exm5=445925,spellm6="Water Spout",exm6=545258},
["XD"] = { descricao = "Incredibly slow and dopey. It takes 5 seconds for it to feel pain when under attack.",desvantagem = "Weaknesses: \n Electric/Grass/Ghost/Bug",habilidade = "Habilites: Headbutt",evoluction = "Slowpoke: Level 15\nSlowbrow Level 45",type = "is a dual-type Water/Psychic"},
},

["Slowbro"] = {
["m1"] = {  spell = "Headbutt", minLv = 45,ex = 643201, base1 = 200, base2 = 201, dista = 1, bonus = 5,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 45, ex = 943572, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m3"] = {  spell = "Confusion", minLv = 45, ex = 564973, base1 = 165,base2 = 175, bonus = 15,type = "psychic",target = "no",cd = 25},
["m4"] = {  spell = "Water ball", minLv = 45, ex = 985241, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 45, ex = 465325, base1 = 18, base2 = 18, dista = 1, bonus = 6.5,type = "water", cd = 35},
["m6"] = {  spell =  "Psychic", minLv = 47, ex = 776644, base1 = 225,base2 = 225, bonus = 15,type = "psychic",target = "no",cd = 35},
["m7"] = {  spell = "Water Spout", minLv = 47, ex = 944268, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 10.5, type = "water",cd = 40},
["m8"] = {spell = "Stunning Confusion",minLv = 48,ex = 324609,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 0.5,type = "psychic",cd = 40},
["!cd"] = { pokenome= "Slowbro" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=643201,spellm2="Bubbles",exm2 = 943572,spellm3= "Confusion",exm3=564973,spellm4 = "Water ball",exm4=985241,spellm5 ="Aqua tail",exm5=465325,spellm6="Psychic",exm6=776644,spellm7= "Water Spout",exm7=944268,spellm8= "Stunning Confusion",exm8=324609},
["XD"] = { descricao = "The Shellder that is latched onto Slowpoke’s tail is said to feed on the host’s left over scraps.",desvantagem = "Weaknesses: \n Electric/Grass/Ghost/Bug",habilidade = "Habilites: Headbutt",evoluction = "Slowpoke: Level 15\nSlowbrow Level 45",type = "is a dual-type Water/Psychic"},
},


["Staryu"] = {
["m1"] = {  spell = "Slash", minLv = 15, ex = 355468, base1 = 18, base2 = 18, dista = 1, bonus = 3.5,type = "normal", cd = 20},
["m2"] = {  spell = "Bubbles",minLv = 15, ex = 688582, base1 = 130, base2 = 145, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 15, ex = 957074, base1 = 130, base2 = 180, dista = 8, target = "no", bonus = 4.5, type = "water",cd = 40},
["m4"] = {  spell = "Confusion", minLv = 15, ex = 587773, base1 = 125,base2 = 135, bonus = 7,type = "psychic",target = "no",cd = 25},
["m5"] = {  spell = "Water ball", minLv = 15, ex = 663241, base1 = 70, base2 = 101, dista = 8,bonus = 5, type = "water",cd = 15},
["m6"] = {  spell = "Water Spout", minLv = 22, ex = 642966, base1 = 90, base2 = 180, dista = 8, target = "no", bonus = 6.5, type = "water",cd = 40},
["m7"] = {  spell = "Restore",minLv = 30,ex = 685222,base1 = 135,base2 = 145,bonus = 0,type = "psychic",target = "no",cd = 60},
["!cd"] = { pokenome= "Staryu" , nmoves= 7 , spellm1 = "Slash" ,exm1=355468,spellm2="Bubbles",exm2 = 688582,spellm3= "Water Gun",exm3=957074,spellm4 = "Confusion",exm4=587773,spellm5 ="Water ball",exm5=663241,spellm6="Water Spout",exm6=642966,spellm7= "Restore",exm7=685222},
["XD"] = { descricao = "An enigmatic Pokémon that can effortlessly regenerate any appendage it loses in battle.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: surf",evoluction = "Staryu: Level 15\nStarmie Level 35",type = "is a Water-type"},
},

["Starmie"] = {
["m1"] = {  spell = "Slash", minLv = 35, ex = 365665, base1 = 18, base2 = 18, dista = 1, bonus = 6.5,type = "normal", cd = 20},
["m2"] = {  spell = "Psy beam",minLv = 35,ex = 5405526,base1 = 335,base2 = 345,dista = 8,bonus = 5,type = "psychic",target = "no",cd = 20},
["m3"] = {  spell = "Bubbles",minLv = 35, ex = 675572, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m4"] = {  spell = "Water Gun", minLv = 35, ex = 554004, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 8.5, type = "water",cd = 40},
["m5"] = {  spell = "Confusion", minLv = 35, ex = 483923, base1 = 165,base2 = 175, bonus = 15,type = "psychic",target = "no",cd = 25},
["m6"] = {  spell = "Water ball", minLv = 35, ex = 883541, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m7"] = {  spell = "Psychic", minLv = 35, ex = 775994, base1 = 225,base2 = 225, bonus = 15,type = "psychic",target = "no",cd = 35},
["m8"] = {  spell = "Water Spout", minLv = 42, ex = 444568, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 10.5, type = "water",cd = 40},
["m9"] = {  spell = "Restore",minLv = 45,ex = 64423,base1 = 135,base2 = 145,bonus = 0,type = "psychic",target = "no",cd = 70},
["!cd"] = { pokenome= "Starmie" , nmoves= 9 , spellm1 = "Slash" ,exm1=365665,spellm2="Psy Beam",exm2 = 5405526,spellm3= "Bubbles",exm3=675572,spellm4 = "Water Gun",exm4=554004,spellm5 ="Confusion",exm5=483923, spellm6= "Water Ball" ,exm6=883541,spellm7= "Psychic",exm7=775994,spellm8 = "Water Spout",exm8=444568,spellm9= "Restore",exm9=64423},
["XD"] = { descricao = "Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.",desvantagem = "Weaknesses: \n Electric/Grass/Ghost/Bug",habilidade = "Habilites: none",evoluction = "Staryu: Level 15\nStarmie Level 35",type = "is a dual-type Water/Psychic"},
},

["Shiny Blastoise"] = {
["m1"] = {  spell = "Headbutt", minLv = 100,ex = 664281, base1 = 200, base2 = 201, dista = 1, bonus = 13,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 100, ex = 670582, base1 = 230, base2 = 245, dista = 8, bonus = 8.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 100, ex = 848084, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 9.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 100, ex = 188381, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 100, ex = 465584, base1 = 18, base2 = 18, dista = 1, bonus = 9.5,type = "water", cd = 35},
["m6"] = {  spell = "Hydro Cannon", minLv = 100, ex = 662384, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "water",cd = 60},
["m7"] = {  spell = "Water Spout", minLv = 100, ex = 344584, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 12.5, type = "water",cd = 40},
["m8"] = {  spell = "Harden", minLv = 100, ex = 893786, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 0, type = "normal",cd = 30},
["m9"] = {  spell = "Hydro Pump", minLv = 110, ex = 291882, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 20, type = "water",cd = 95},
["m10"] = {  spell = "Hydro Rain", minLv = 105, ex = 646984, base1 = 750, base2 = 650, dista = 10, bonus = 15, target = "no", type = "water",cd = 50},
["m11"]= {spell = "Acient Fury",minLv = 110,ex = 9605399,base1 = 235,base2 = 245,dista = 10,bonus = 5,target = "no",type = "dragon",cd = 35},
["!cd"] = { pokenome= "Shiny Blastoise" , nmoves= 11 , spellm1 = "Headbutt" ,exm1=664281,spellm2="Bubbles",exm2 = 670582,spellm3= "Water Gun",exm3=848084,spellm4 = "Water ball",exm4=188381,spellm5 ="Aqua tail",exm5=465584,spellm6="Hydro Cannon",exm6=662384,spellm7= "Water Spout",exm7=344584,spellm8= "Harden",exm8=893786,spellm9= "Hydro Pump",exm9=291882,spellm10= "Hydro Rain",exm10=646984,spellm11= "Acient Fury",exm11=9605399},
["XD"] = { descricao = "A brutal Powerful shiny,Pokémon with pressurized water jets on its shell. They are used for high speed tackles.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: surf\nHeadbutt",evoluction = "Blastoise Level 100",type = "is a Water-type"},
},

["Magikarp"] = {
["m1"] = {  spell = "Splash",minLv = 1,ex = 6586883,base1 = 180,base2 = 185,dista = 5,bonus = 5.0,type = "water",cd = 5},
["!cd"] = { pokenome= "Magikarp" , nmoves= 1 , spellm1 = "Splash" ,exm1=6586883},
["XD"] = { descricao = "In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: none",evoluction = "Magikarp: Level 1\nGyarados Level 90",type = "is a Water-type"},
},
["Shiny Magikarp"] = {
["m1"] = {  spell = "Splash",minLv = 1,ex = 6586883,base1 = 180,base2 = 185,dista = 5,bonus = 15.0,type = "water",cd = 5},
["!cd"] = { pokenome= "Shiny Magikarp" , nmoves= 1 , spellm1 = "Splash" ,exm1=6586883},
["XD"] = { descricao = "In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: none",evoluction = "Magikarp: Level 5\nGyarados Level 150",type = "is a Water-type"},
},

["Gyarados"] = {
["m1"] = {  spell = "Headbutt",minLv = 90,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 11.0,type = "normal",cd = 15},
["m2"] = {  spell = "Water ball", minLv = 90, ex = 888321, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m3"] = {  spell = "Dragon Pulse",minLv = 90,ex = 8720203,base1 = 275,base2 = 385,dista = 5,bonus = 6,type = "dragon",cd = 15},
["m4"] = {  spell = "Hyper Beam",minLv = 108,ex = 2251202,base1 = 485,target = "no",base2 = 500,bonus = 40,type = "normal",cd = 80},
["m5"] = {  spell = "Dragon Breath",minLv = 92,ex = 6282205,base1 = 275,base2 = 385,dista = 5,bonus = 12,target = "no",type = "dragon",cd = 35},
["m6"] = {  spell = "Hydro Cannon", minLv = 90, ex = 2231002, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "water",cd = 60},
["m7"] = {  spell = "Water Spout", minLv = 90, ex = 444684, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 12.5, type = "water",cd = 20},
["m8"] = {  spell = "Hydro Pump", minLv = 105, ex = 491892, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 20, type = "water",cd = 95},
["m9"] = {  spell = "Hydro Rain", minLv = 100, ex = 646954, base1 = 750, base2 = 650, dista = 10, bonus = 15, target = "no", type = "water",cd = 60},
["m10"]= {  spell = "Fury",minLv = 98,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 4.2,type = "dragon",target = "no",cd = 45},
["m11"] = {  spell = "Roar",minLv = 92,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 0,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Gyarados" , nmoves= 11 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Water Ball",exm2 = 888321,spellm3= "Dragon Pulse",exm3=8720203,spellm4 = "Hyper Beam",exm4=2251202,spellm5 = "Dragon Breath",exm5=6282205,spellm6 = "Hydro Cannon",exm6=2231002,spellm7 = "Water Spout",exm7=444684,spellm8 = "Hydro Pump",exm8=491892,spellm9 = "Hydro Rain",exm9=646954,spellm10 = "Fury",exm10=399559,spellm11 = "Roar",exm11=9550008},
["XD"] = { descricao = "Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.",desvantagem = "Weaknesses: \n Electric/Rock",habilidade = "Habilites: surf\nHeadbutt",evoluction = "Magikarp: Level 1\nGyarados Level 90",type = "is a dual-type Water/Flying"},
},
["Shiny Gyarados"] = {
["m1"] = {  spell = "Headbutt",minLv = 150,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 13.0,type = "normal",cd = 15},
["m2"] = {  spell = "Water ball", minLv = 150, ex = 888321, base1 = 200, base2 = 201, dista = 8,bonus = 15, type = "water",cd = 15},
["m3"] = {  spell = "Dragon Pulse",minLv = 150,ex = 8720203,base1 = 275,base2 = 385,dista = 5,bonus = 9,type = "dragon",cd = 15},
["m4"] = {  spell = "Hyper Beam",minLv = 158,ex = 2251202,base1 = 485,target = "no",base2 = 500,bonus = 45,type = "normal",cd = 80},
["m5"] = {  spell = "Dragon Breath",minLv = 152,ex = 6282205,base1 = 275,base2 = 385,dista = 5,bonus = 15,target = "no",type = "dragon",cd = 35},
["m6"] = {  spell = "Hydro Cannon", minLv = 150, ex = 2231002, base1 = 750, base2 = 650, dista = 100, bonus = 25, target = "no", type = "water",cd = 60},
["m7"] = {  spell = "Water Spout", minLv = 150, ex = 444684, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 15.5, type = "water",cd = 20},
["m8"] = {  spell = "Hydro Pump", minLv = 155, ex = 491892, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 25, type = "water",cd = 95},
["m9"] = {  spell = "Hydro Rain", minLv = 150, ex = 646954, base1 = 750, base2 = 650, dista = 10, bonus = 25, target = "no", type = "water",cd = 60},
["m10"]= {  spell = "Fury",minLv = 158,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 7.2,type = "dragon",target = "no",cd = 45},
["m11"] = {  spell = "Roar",minLv = 152,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 0,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Shiny Gyarados" , nmoves= 11 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Water Ball",exm2 = 888321,spellm3= "Dragon Pulse",exm3=8720203,spellm4 = "Hyper Beam",exm4=2251202,spellm5 = "Dragon Breath",exm5=6282205,spellm6 = "Hydro Cannon",exm6=2231002,spellm7 = "Water Spout",exm7=444684,spellm8 = "Hydro Pump",exm8=491892,spellm9 = "Hydro Rain",exm9=646954,spellm10 = "Fury",exm10=399559,spellm11 = "Roar",exm11=9550008},
["XD"] = { descricao = "Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.",desvantagem = "Weaknesses: \n Electric/Rock",habilidade = "Habilites: surf\nHeadbutt",evoluction = "Magikarp: Level 5\nGyarados Level 150",type = "is a dual-type Water/Flying"},
},

["Lapras"] = {
["m1"] = {  spell = "Horn Attack", minLv = 85,ex = 664501, base1 = 200, base2 = 201, dista = 1, bonus = 10,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 85, ex = 870546, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m3"] = {  spell = "Ice Shards", minLv = 85, ex = 748004, base1 = 230, base2 = 280, dista = 8, bonus = 4.5, type = "ice",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 85, ex = 488321, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m5"] = {  spell = "Hydro Cannon", minLv = 85, ex = 2623804, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "water",cd = 60},
["m6"] = {  spell = "Aurora Beam", minLv = 85, ex = 415554, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 15.5,type = "ice", cd = 45},
["m7"] = {  spell = "Sing", minLv = 87, ex = 344564, base1 = 230, base2 = 280, dista = 100, target = "no", bonus = 0, type = "normal",cd = 40},
["m8"] = {  spell = "Harden", minLv = 90, ex = 893526, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0, type = "normal",cd = 30},
["m9"] = {  spell = "Hydro Pump", minLv = 88, ex = 294852, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 15, type = "water",cd = 95},
["m10"] = {  spell = "Blizzard", minLv = 90, ex = 643924, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "ice",cd = 100},
["!cd"] = { pokenome= "Lapras" , nmoves= 10 , spellm1 = "Horn Attack" ,exm1=664501,spellm2="Bubbles",exm2 = 870546,spellm3= "Ice Shards",exm3=748004,spellm4 = "Water ball",exm4=488321,spellm5 ="Hydro Cannon",exm5=2623804,spellm6="Aurora Beam",exm6=415554,spellm7= "Sing",exm7=344564,spellm8= "Harden",exm8=893526,spellm9= "Hydro Pump",exm9=294852,spellm10= "Blizzard",exm10=643924},
["XD"] = { descricao = "A Pokémon that has been overhunted almost to extinction. It can ferry people across the water.",desvantagem = "Weaknesses: \n Electric/Rock/Fighting/Grass",habilidade = "Habilites: surf",evoluction = "Lapras Level 85",type = "is a dual-type Water/Ice"},
},

["Spearow"] = {
["m1"] = {  spell = "Quick Attack", minLv = 5, ex = 469248, base1 = 80, base2 = 91, dista = 1,bonus = 1.2, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 5,ex = 45332,base1 = 45,base2 = 52,dista = 1,bonus = 0.6,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 5, ex = 424561, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 0.8, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 12, ex = 425095, base1 = 50, base2 = 51, dista = 1,bonus = 0.2, type = "flying",cd = 15},
["m5"]=  {  spell = "Strafe",minLv = 15,ex = 459952,base1 = 40,base2 = 90,dista = 1,bonus = 0.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Spearow" , nmoves= 5 , spellm1 = "Quick Attack" ,exm1=469248,spellm2="Sand Attack",exm2 = 45332,spellm3= "Gust",exm3=424561,spellm4 = "Drill Peck",exm4=425095,spellm5 = "Strafe",exm5=459952},
["XD"] = { descricao = "Eats bugs in grassy areas. It has to flap its short wings at high speed to stay airborne.",desvantagem = "Weaknesses: \n Electric/Rock/Ice",habilidade = "Habilites: Headbutt",evoluction = "Spearow Level 5\nFearow Level 50",type = "is a dual-type Normal/Flying"},
},

["Fearow"] = {
["m1"] = {  spell = "Quick Attack", minLv = 50, ex = 662248, base1 = 200, base2 = 201, dista = 1,bonus = 15, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 50,ex = 65332,base1 = 155,base2 = 162,dista = 1,bonus = 8,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 50, ex = 624521, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 11.9, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 50, ex = 625025, base1 = 150, base2 = 151, dista = 1,bonus = 6, type = "flying",cd = 15},
["m5"] = {  spell = "Whirlwind", minLv = 53, ex = 6563224, base1 = 150, base2 = 160, dista = 100, bonus = 15, target = "no", type = "flying",cd = 30},
["m6"] = {  spell = "Wing Attack",minLv = 52,ex = 600427,base1 = 150,base2 = 200,dista = 10,bonus = 15,type = "flying",target = "no",cd = 29},
["m7"] = {  spell = "Windstorm", minLv = 60, ex = 6353324, base1 = 150, base2 = 160, dista = 100, bonus = 25, target = "no", type = "flying",cd = 60},
["m8"]=  {  spell = "Strafe",minLv = 55,ex = 659952,base1 = 100,base2 = 120,dista = 1,bonus = 3.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Fearow" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=662248,spellm2="Sand Attack",exm2 = 65332,spellm3= "Gust",exm3=624521,spellm4 = "Drill Peck",exm4=625025,spellm5 = "Whirlwind",exm5=6563224,spellm6 = "Wing Attack",exm6=600427,spellm7 = "WindStorm",exm7=6353324,spellm8 = "Strafe",exm8=659952},
["XD"] = { descricao = "With its huge and magnificent wings, it can keep aloft without ever having to land for rest.",desvantagem = "Weaknesses: \n Electric/Rock/Ice",habilidade = "Habilites: fly\nHeadbutt",evoluction = "Spearow Level 5\nFearow Level 50",type = "is a dual-type Normal/Flying"},
},

["Pidgey"] = {
["m1"] = {  spell = "Quick Attack", minLv = 10, ex = 569248, base1 = 70, base2 = 81, dista = 1,bonus = 1.6, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 10,ex = 55332,base1 = 115,base2 = 122,dista = 1,bonus = 1,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 10, ex = 924561, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 1.0, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 11, ex = 325095, base1 = 50, base2 = 51, dista = 1,bonus = 0.2, type = "flying",cd = 15},
["!cd"] = { pokenome= "Pidgey" , nmoves= 4 , spellm1 = "Quick Attack" ,exm1=569248,spellm2="Sand Attack",exm2 = 55332,spellm3= "Gust",exm3=924561,spellm4 = "Drill Peck",exm4=325095},
["XD"] = { descricao = "A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.",desvantagem = "Weaknesses: \n Electric/Rock/Ice",habilidade = "Habilites: Headbutt",evoluction = "Pidgey Level 10\nPidgeotto Level 20\nPidgeot Level 70",type = "is a dual-type Normal/Flying"},
},

["Pidgeotto"] = {
["m1"] = {  spell = "Quick Attack", minLv = 20, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 3, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 20,ex = 25332,base1 = 155,base2 = 162,dista = 1,bonus = 5,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 20, ex = 224521, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 7.0, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 21, ex = 225025, base1 = 150, base2 = 151, dista = 1,bonus = 2, type = "flying",cd = 15},
["m5"] = {  spell = "Whirlwind", minLv = 23, ex = 2563224, base1 = 150, base2 = 160, dista = 100, bonus = 6, target = "no", type = "flying",cd = 30},
["m6"] = {  spell = "Wing Attack",minLv = 22,ex = 200427,base1 = 150,base2 = 200,dista = 10,bonus = 8,type = "flying",target = "no",cd = 29},
["m7"] = {  spell = "Windstorm", minLv = 35, ex = 2353324, base1 = 150, base2 = 160, dista = 100, bonus = 8, target = "no", type = "flying",cd = 60},
["!cd"] = { pokenome= "Pidgeotto" , nmoves= 7 , spellm1 = "Quick Attack" ,exm1=262248,spellm2="Sand Attack",exm2 = 25332,spellm3= "Gust",exm3=224521,spellm4 = "Drill Peck",exm4=225025,spellm5 = "Whirlwind",exm5=2563224,spellm6 = "Wing Attack",exm6=200427,spellm7 = "WindStorm",exm7=2353324},
["XD"] = { descricao = "Very protective of its sprawling territorial area, this Pokémon will fiercely peck at any intruder.",desvantagem = "Weaknesses: \n Electric/Rock/Ice",habilidade = "Habilites: Headbutt",evoluction = "Pidgey Level 10\nPidgeotto Level 20\nPidgeot Level 70",type = "is a dual-type Normal/Flying"},
},

["Pidgeot"] = {
["m1"] = {  spell = "Quick Attack", minLv = 70, ex = 962248, base1 = 200, base2 = 201, dista = 1,bonus = 16, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 70,ex = 95332,base1 = 155,base2 = 162,dista = 1,bonus = 10,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 72, ex = 924521, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 13.9, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 70, ex = 925025, base1 = 150, base2 = 151, dista = 1,bonus = 8, type = "flying",cd = 15},
["m5"] = {  spell = "Whirlwind", minLv = 70, ex = 9563224, base1 = 150, base2 = 160, dista = 100, bonus = 17, target = "no", type = "flying",cd = 30},
["m6"] = {  spell = "Wing Attack",minLv = 71,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 18,type = "flying",target = "no",cd = 29},
["m7"] = {  spell = "Windstorm", minLv = 75, ex = 9353324, base1 = 150, base2 = 160, dista = 100, bonus = 15, target = "no", type = "flying",cd = 60},
["m8"]=  {  spell = "Strafe",minLv = 74,ex = 959952,base1 = 100,base2 = 120,dista = 1,bonus = 3.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Pidgeot" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=962248,spellm2="Sand Attack",exm2 = 95332,spellm3= "Gust",exm3=924521,spellm4 = "Drill Peck",exm4=925025,spellm5 = "Whirlwind",exm5=9563224,spellm6 = "Wing Attack",exm6=900427,spellm7 = "WindStorm",exm7=9353324,spellm8 = "Strafe",exm8=959952},
["XD"] = { descricao = "When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.",desvantagem = "Weaknesses: \n Electric/Rock/Ice",habilidade = "Habilites: fly\nHeadbutt",evoluction = "Pidgey Level 10\nPidgeotto Level 20\nPidgeot Level 70",type = "is a dual-type Normal/Flying"},
},

["Shiny Pidgeot"] = {
["m1"] = {  spell = "Quick Attack", minLv = 85, ex = 962248, base1 = 200, base2 = 201, dista = 1,bonus = 18, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 85,ex = 95332,base1 = 155,base2 = 162,dista = 1,bonus = 13,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 87, ex = 924521, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 14.9, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 85, ex = 925025, base1 = 150, base2 = 151, dista = 1,bonus = 10, type = "flying",cd = 15},
["m5"] = {  spell = "Whirlwind", minLv = 85, ex = 9563224, base1 = 150, base2 = 160, dista = 100, bonus = 19, target = "no", type = "flying",cd = 30},
["m6"] = {  spell = "Wing Attack",minLv = 86,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 20,type = "flying",target = "no",cd = 29},
["m7"] = {  spell = "Windstorm", minLv = 90, ex = 9353324, base1 = 150, base2 = 160, dista = 100, bonus = 15, target = "no", type = "flying",cd = 60},
["m8"]=  {  spell = "Strafe",minLv = 87,ex = 959952,base1 = 100,base2 = 120,dista = 1,bonus = 5.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Shiny Pidgeot" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=962248,spellm2="Sand Attack",exm2 = 95332,spellm3= "Gust",exm3=924521,spellm4 = "Drill Peck",exm4=925025,spellm5 = "Whirlwind",exm5=9563224,spellm6 = "Wing Attack",exm6=900427,spellm7 = "WindStorm",exm7=9353324,spellm8 = "Strafe",exm8=959952},
["XD"] = { descricao = "When hunting, it skims the surface of water at high speed to pick off unwary prey such as Magikarp.",desvantagem = "Weaknesses: \n Electric/Rock/Ice",habilidade = "Habilites: fly\nHeadbutt",evoluction = "Pidgey Level 10\nPidgeotto Level 20\nPidgeot Level 70",type = "is a dual-type Normal/Flying"},
},

["Ekans"] = {
["m1"] = {  spell = "Bite",minLv = 15,ex = 564296,base1 = 100,base2 = 110,dista = 1,bonus = 1.5,type = "normal",cd = 10},
["m2"] = {  spell = "Poison Fang",minLv = 15,ex = 400573,base1 = 120,base2 = 135,dista = 1,bonus = 2.5,type = "poison",cd = 15},
["m3"] = {  spell = "Poison Gun", minLv = 20, ex = 424562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 5.0, type = "poison",cd = 40},
["m4"] = {  spell = "Acid",minLv = 15, ex = 879752, base1 = 40, base2 = 145, dista = 2, bonus = 0.7, type = "poison", cd = 20},
["!cd"] = { pokenome= "Ekans" , nmoves= 4 , spellm1 = "Bite" ,exm1=569248,spellm2="Poison Fang",exm2 = 400573,spellm3= "Poison Gun",exm3=424562,spellm4 = "Acid",exm4=879752},
["XD"] = { descricao = "Moves silently and stealthily. Eats the eggs of birds, such as Pidgey and Spearow, whole.",desvantagem = "Weaknesses: \n Ground/Psychic",habilidade = "Habilites: none",evoluction = "Ekans: Level 15\nArbok Level 40",type = "is a Poison-type"},
},
["Arbok"] = {
["m1"] = {  spell = "Bite",minLv = 40,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m2"] = {  spell = "Iron Tail",minLv = 40,ex = 528923,base1 = 155,base2 = 156,dista = 1,bonus = 6,type = "normal",cd = 4},
["m3"] = {  spell = "Poison Fang",minLv = 45,ex = 550573,base1 = 220,base2 = 235,dista = 1,bonus = 12.5,type = "poison",cd = 15},
["m4"] = {  spell = "Poison Gun", minLv = 65, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 20, type = "poison",cd = 40},
["m5"] = {  spell = "Acid",minLv = 40, ex = 579755, base1 = 230, base2 = 245, dista = 2, bonus = 10, type = "poison", cd = 20},
["m6"] = {  spell = "Pin Missile",minLv = 40,ex = 569745,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "bug",cd = 45},
["m7"] = {  spell = "Poison Bomb", minLv = 52, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 15, type = "poison",cd = 24},
["m8"] = {  spell = "Fury",minLv = 52,ex = 500585,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "dragon",target = "no",cd = 35},
["m9"] = {  spell = "Poison Powder", minLv = 40, ex = 922947, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "poison",cd = 50},
["m10"] = {  spell = "Scary Face",minLv = 42,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 0,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Arbok" , nmoves= 10 , spellm1 = "Bite" ,exm1=464296,spellm2="Iron Tail",exm2 = 528923,spellm3= "Poison Fang",exm3=550573,spellm4 = "Poison Gun",exm4=524562,spellm5 = "Acid",exm5=579755,spellm6 = "Pin Missile",exm6=569745,spellm7 = "Poison Bomb",exm7=518935,spellm8 = "Fury",exm8=500585,spellm9 = "Poison Powder",exm9=922947,spellm10 = "Scary Face",exm10=9550008},
["XD"] = { descricao = "It is rumored that the ferocious warning markings on its belly differ from area to area.",desvantagem = "Weaknesses: \n Ground/Psychic",habilidade = "Habilites: none",evoluction = "Ekans: Level 15\nArbok Level 40",type = "is a Poison-type"},
},

["Pikachu"] = {
["m1"] = {  spell = "Quick Attack", minLv = 20, ex = 462848, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 20,ex = 464298,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Iron Tail",minLv = 20,ex = 588923,base1 = 155,base2 = 156,dista = 1,bonus = 6,type = "normal",cd = 4},
["m4"] = {  spell = "Thundershock",minLv = 20,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 6.8,type = "electric",cd = 9 },
["m5"] = {  spell = "Thunder Bolt",minLv = 22, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 3, type = "electric", cd = 20},
["m6"] = {  spell = "Thunder Wave",minLv = 23,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 8,type = "electric",cd = 15},
["m7"] = {  spell = "Thunder", minLv = 30, ex = 818938, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 20, type = "electric",cd = 60},
["m8"] = {  spell = "Electric Charge",minLv = 32,ex = 588885,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "electric",target = "no",cd = 35},
["!cd"] = { pokenome= "Pikachu" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=462848,spellm2="Bite",exm2 = 464298,spellm3= "Iron Tail",exm3=588923,spellm4 = "Thundershock",exm4=884002,spellm5 = "Thunder Bolt",exm5=879855,spellm6 = "Thunder Wave",exm6=589785,spellm7 = "Thunder",exm7=818938,spellm8 = "Electric Charge",exm8=588885},
["XD"] = { descricao = "When several of these Pokémon gather, their electricity could build and cause lightning storms.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Headbutt",evoluction = "Pikachu: Level 20\nRaichu Level 75",type = "is a Electric-type"},
},

["Raichu"] = {
["m1"] = {  spell = "Quick Attack", minLv = 75, ex = 566848, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 75,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 7.5,type = "normal",cd = 10},
["m3"] = {  spell = "Iron Tail",minLv = 75,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 8,type = "normal",cd = 4},
["m4"] = {  spell = "Mega Kick", minLv = 76, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "fighting",cd = 10},
["m5"] = {  spell = "Thundershock",minLv = 75,ex = 585002,base1 = 100,base2 = 118,dista = 5,bonus = 8.8,type = "electric",cd = 9 },
["m6"] = {  spell = "Thunder Bolt",minLv = 75, ex = 575855, base1 = 230, base2 = 245, dista = 5, bonus = 6, type = "electric", cd = 20},
["m7"] = {  spell = "Thunder Wave",minLv = 77,ex = 585785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 15,type = "electric",cd = 15},
["m8"] = {  spell = "Thunder Punch", minLv = 76, ex = 565848, base1 = 200, base2 = 201, dista = 1,bonus = 15, type = "electric",cd = 35},
["m9"] = {  spell = "Thunder", minLv = 80, ex = 518935, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 25, type = "electric",cd = 60},
["m10"] = {  spell = "Electric Storm", minLv = 85, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 25, type = "electric",cd = 80},
["m11"] = {  spell = "Electric Charge",minLv = 82,ex = 568865,base1 = 100,base2 = 120,dista = 1,bonus = 3.1,type = "electric",target = "no",cd = 55},
["!cd"] = { pokenome= "Raichu" , nmoves= 11 , spellm1 = "Quick Attack" ,exm1=566848,spellm2="Bite",exm2 = 964293,spellm3= "Iron Tail",exm3=488523,spellm4 = "Mega Kick",exm4=552848,spellm5 = "Thundershock",exm5=585002,spellm6 = "Thunder Bolt",exm6=575855,spellm7 = "Thunder Wave",exm7=585785,spellm8 = "Thunder Punch",exm8=565848,spellm9 = "Thunder",exm9=518935,spellm10 = "Electric Storm",exm10=868968,spellm11 = "Electric Charge",exm11=568865},
["XD"] = { descricao = "Its long tail serves as a ground to protect itself from its own high voltage power.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Headbutt",evoluction = "Pikachu: Level 20\nRaichu Level 75",type = "is a Electric-type"},
},

["Zapdos"] = {
["m1"] = {  spell = "Quick Attack", minLv = 155, ex = 566848, base1 = 200, base2 = 201, dista = 1,bonus = 14, type = "normal",cd = 10},
["m2"] = {  spell = "Super Sonic", minLv = 155,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0,type = "psychic",cd = 9},
["m3"] = {  spell = "Iron Tail",minLv = 155,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 12,type = "normal",cd = 4},
["m4"] = {  spell = "Rest",minLv = 161,ex = 6843433,base1 = 305,base2 = 316,dista = 10,target = "no",bonus = 6.5,type = "ground",cd = 90},
["m5"] = {  spell = "Wing Attack",minLv = 155,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 23,type = "flying",target = "no",cd = 29},
["m6"] = {  spell = "Thundershock",minLv = 155,ex = 585002,base1 = 100,base2 = 118,dista = 5,bonus = 12.8,type = "electric",cd = 9 },
["m7"] = {  spell = "Thunder Bolt",minLv = 155, ex = 575855, base1 = 230, base2 = 245, dista = 5, bonus = 10, type = "electric", cd = 20},
["m8"] = {  spell = "Thunder Wave",minLv = 157,ex = 585785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 20,type = "electric",cd = 15},
["m9"] = {  spell = "Thunder", minLv = 160, ex = 518935, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 30, type = "electric",cd = 60},
["m10"] = {  spell = "Electric Storm", minLv = 165, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 35, type = "electric",cd = 80},
["m11"] = {  spell = "Electric Charge",minLv = 162,ex = 568865,base1 = 100,base2 = 120,dista = 1,bonus = 5.1,type = "electric",target = "no",cd = 55},
["m12"] = {  spell = "Windstorm", minLv = 160, ex = 9353324, base1 = 150, base2 = 160, dista = 100, bonus = 18, target = "no", type = "flying",cd = 60},
["!cd"] = { pokenome= "Zapdos" , nmoves= 12 , spellm1 = "Quick Attack" ,exm1=566848,spellm2="Super Sonic",exm2 = 9260905,spellm3= "Iron Tail",exm3=488523,spellm4 = "Rest",exm4=6843433,spellm5 = "Wing Attack",exm5=900427,spellm6 = "Thundershock",exm6=585002,spellm7 = "Thunder Bolt",exm7=575855,spellm8 = "Thunder Wave",exm8=585785,spellm9 = "Thunder",exm9=518935,spellm10 = "Electric Storm",exm10=868968,spellm11 = "Electric Charge",exm11=568865,spellm12 = "Windstorm",exm12=9353324},
["XD"] = { descricao = "A legendary bird Pokémon that is said to appear from clouds while dropping enormous lightning bolts.",desvantagem = "Weaknesses: \n Electric/Rock/ice",habilidade = "Habilites: Flying",evoluction = "Zapdos Level 155",type = "is a dual-type Electric/Flying"},
},
["Shiny Raichu"] = {
["m1"] = {  spell = "Quick Attack", minLv = 85, ex = 566848, base1 = 200, base2 = 201, dista = 1,bonus = 9, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 85,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 10},
["m3"] = {  spell = "Iron Tail",minLv = 85,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 9,type = "normal",cd = 4},
["m4"] = {  spell = "Mega Kick", minLv = 86, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "fighting",cd = 10},
["m5"] = {  spell = "Thundershock",minLv = 85,ex = 585002,base1 = 100,base2 = 118,dista = 5,bonus = 10.8,type = "electric",cd = 9 },
["m6"] = {  spell = "Thunder Bolt",minLv = 85, ex = 575855, base1 = 230, base2 = 245, dista = 5, bonus = 8, type = "electric", cd = 20},
["m7"] = {  spell = "Thunder Wave",minLv = 87,ex = 585785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 18,type = "electric",cd = 15},
["m8"] = {  spell = "Thunder Punch", minLv = 86, ex = 565848, base1 = 200, base2 = 201, dista = 1,bonus = 18, type = "electric",cd = 35},
["m9"] = {  spell = "Thunder", minLv = 90, ex = 518935, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 27, type = "electric",cd = 60},
["m10"] = {  spell = "Electric Storm", minLv = 95, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 28, type = "electric",cd = 80},
["m11"] = {  spell = "Electric Charge",minLv = 92,ex = 568865,base1 = 100,base2 = 120,dista = 1,bonus = 4,type = "electric",target = "no",cd = 55},
["!cd"] = { pokenome= "Shiny Raichu" , nmoves= 11 , spellm1 = "Quick Attack" ,exm1=566848,spellm2="Bite",exm2 = 964293,spellm3= "Iron Tail",exm3=488523,spellm4 = "Mega Kick",exm4=552848,spellm5 = "Thundershock",exm5=585002,spellm6 = "Thunder Bolt",exm6=575855,spellm7 = "Thunder Wave",exm7=585785,spellm8 = "Thunder Punch",exm8=565848,spellm9 = "Thunder",exm9=518935,spellm10 = "Electric Storm",exm10=868968,spellm11 = "Electric Charge",exm11=568865},
["XD"] = { descricao = "Its long tail serves as a ground to protect itself from its own high voltage power.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Headbutt",evoluction = "Pikachu: Level 20\nRaichu Level 75",type = "is a Electric-type"},
},

["Sandshrew"] = {
["m1"] = {  spell = "Sand Attack",minLv = 20,ex = 45332,base1 = 115,base2 = 122,dista = 1,bonus = 2,target = "no",type = "ground",cd = 9},
["m2"] = {  spell = "Mud Shot",minLv = 20,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m3"] = {  spell = "Scratch",minLv = 20,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 3,type = "normal",cd = 9},
["m4"] = {  spell = "Rollout",minLv = 22,ex = 4600008,base1 = 125,target = "no",base2 = 175,dista = 100,bonus = 1.5,type = "rock",cd = 40},
["m5"] = {  spell = "Shockwave",minLv = 25,ex = 4588539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 5,type = "ground",cd = 40},
["!cd"] = { pokenome= "Sandshrew" , nmoves= 5 , spellm1 = "Sand Attack" ,exm1=45332,spellm2="Mud Shot",exm2 = 495361,spellm3= "Scratch",exm3=4900882,spellm4 = "Rollout",exm4= 4600008,spellm5 ="Shockwave",exm5=4588539},
["XD"] = { descricao = "Burrows deep underground in arid locations far from water. It only emerges to hunt for food.",desvantagem = "Weaknesses: \n Grass/Ice/Water",habilidade = "Habilites: Dig,Rock Smash,Cut",evoluction = "Sandshrew: Level 20\nSandslash Level 75",type = "is a Ground-type"},
},

["Sandslash"] = {
["m1"] = {  spell = "Sand Attack",minLv = 75,ex = 55332,base1 = 115,base2 = 122,dista = 1,bonus = 4,target = "no",type = "ground",cd = 9},
["m2"] = {  spell = "Mud Shot",minLv = 75,ex = 595361,base1 = 135,base2 = 140,dista = 5,bonus = 6.9,type = "ground",cd = 9},
["m3"] = {  spell = "Scratch",minLv = 75,ex = 5950882,base1 = 90,base2 = 110,dista = 1,bonus = 7,type = "normal",cd = 9},
["m4"] = {  spell = "Rollout",minLv = 75,ex = 5605008,base1 = 125,target = "no",base2 = 175,dista = 100,bonus = 1.5,type = "rock",cd = 40},
["m5"] = {  spell = "Shockwave",minLv = 76,x = 5585539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 15,type = "ground",cd = 40},
["m6"] = {  spell = "Fury Cutter",minLv = 78,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 10,type = "bug",target = "no",cd = 35},
["m7"] = {  spell = "Earthshock",minLv = 75,ex = 5600007,base1 = 300,base2 = 301,dista = 10,bonus = 10.8,type = "ground",target = "no",cd = 40},
["m8"] = {  spell = "Earth Quake",minLv = 82,ex = 521309,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 1.5,type = "ground",cd = 70},
["!cd"] = { pokenome= "Sandslash" , nmoves= 8 , spellm1 = "Sand Attack" ,exm1=55332,spellm2="Mud Shot",exm2 = 595361,spellm3= "Scratch",exm3=5950882,spellm4 = "Rollout",exm4= 5605008,spellm5 ="Shockwave",exm5=5585539,spellm6 ="Fury Cutter",exm6=559329,spellm7 ="Earthshock",exm7=5600007,spellm8 ="Earth Quake",exm8=521309},
["XD"] = { descricao = "Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.",desvantagem = "Weaknesses: \n Grass/Ice/Water",habilidade = "Habilites: Dig,Rock Smash,Cut",evoluction = "Sandshrew: Level 20\nSandslash Level 75",type = "is a Ground-type"},
},


["Nidoranfe"] = {
["m1"] = {  spell = "Quick Attack", minLv = 15, ex = 662848, base1 = 50, base2 = 71, dista = 1,bonus = 2.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 15,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 2.5,type = "normal",cd = 10},
["m3"] = {  spell = "Horn Attack", minLv = 17,ex = 764501, base1 = 60, base2 = 71, dista = 1, bonus = 5,type = "normal",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 15,ex = 931605,base1 = 65,base2 = 86,dista = 3,bonus = 3,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 16,ex = 555573,base1 = 60,base2 = 75,dista = 1,bonus = 8,type = "poison",cd = 20},
["!cd"] = { pokenome= "Nidoranfe" , nmoves= 5 , spellm1 = "Quick Attack" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Horn Attack",exm3=764501,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573},
["XD"] = { descricao = "Although small, its venomous barbs render this Pokémon dangerous. The female has smaller horns.",desvantagem = "Weaknesses: \n Ground/Psychic",habilidade = "Habilites: none",evoluction = "Nidoranfe: Level 15\nNidorina Level 35\nNidoqueen Level 75",type = "is a Poison-type"},
},

["Nidorina"] = {
["m1"] = {  spell = "Quick Attack", minLv = 35, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 5.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 35,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Horn Attack", minLv = 35,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 7,type = "normal",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 35,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 6,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 36,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 10,type = "poison",cd = 20},
["m6"] = {  spell = "Poison Gun", minLv = 40, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 15, type = "poison",cd = 40},
["m7"] = {  spell = "Stomp",minLv = 40,ex = 7502365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 5.8,type = "ground",cd = 30},
["m8"]=  {  spell = "Fury",minLv = 38,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "dragon",target = "no",cd = 45},
["!cd"] = { pokenome= "Nidorina" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Horn Attack",exm3=764501,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Poison Gun",exm6=524562,spellm7 ="Stomp",exm7=7502365,spellm8 ="Fury",exm8=399559},
["XD"] = { descricao = "The female’s horn develops slowly. Prefers physical attacks such as clawing and biting.",desvantagem = "Weaknesses: \n Ground/Psychic",habilidade = "Habilites: none",evoluction = "Nidoranfe: Level 15\nNidorina Level 35\nNidoqueen Level 75",type = "is a Poison-type"},
},


["Nidoqueen"] = {
["m1"] = {  spell = "Quick Attack", minLv = 75, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 7.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 75,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 10},
["m3"] = {  spell = "Horn Attack", minLv = 75,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 12,type = "normal",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 75,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 12,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 76,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 15,type = "poison",cd = 20},
["m6"] = {  spell = "Mega Punch",minLv = 79,ex = 876771,base1 = 335,base2 = 440,dista = 1,bonus = 12.9,type = "fighting",cd = 30},
["m7"] = {  spell = "Toxic Spikes",minLv = 77,ex = 566771,base1 = 335,base2 = 440,dista = 1,bonus = 10.9,type = "poison",cd = 25},
["m8"] = {  spell = "Poison Gun", minLv = 78, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 25, type = "poison",cd = 40},
["m9"] = {  spell = "Stomp",minLv = 79,ex = 6602365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 8.8,type = "ground",cd = 30},
["m10"] = {  spell = "Earthshock",minLv = 75,ex = 5600007,base1 = 300,base2 = 301,dista = 10,bonus = 12.8,type = "ground",target = "no",cd = 40},
["m11"]=  {  spell = "Fury",minLv = 80,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.2,type = "dragon",target = "no",cd = 45},
["m12"] = {  spell = "Scary Face",minLv = 82,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 0,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Nidoqueen" , nmoves= 12 , spellm1 = "Quick Attack" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Horn Attack",exm3=764501,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Mega Punch",exm6=876771,spellm7 ="Toxic Spikes",exm7=566771,spellm8 ="Poison Gun",exm8=524562,spellm9 ="Stomp",exm9=6602365,spellm10 ="Earth Shock",exm10=5600007,spellm11 ="Fury",exm11=399559,spellm12 ="Scary Face",exm12=9550008},
["XD"] = { descricao = "Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.",desvantagem = "Weaknesses: \n Ground/Psychic/Ice/Water",habilidade = "Habilites: none",evoluction = "Nidoranfe: Level 15\nNidorina Level 35\nNidoqueen Level 75",type = "is a dual-type Poison/Ground"},
},


["Nidoran"] = {
["m1"] = {  spell = "Quick Attack", minLv = 15, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 2.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 15,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 2.5,type = "normal",cd = 10},
["m3"] = {  spell = "Horn Attack", minLv = 16,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 5,type = "normal",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 15,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 3,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 15,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 8,type = "poison",cd = 20},
["!cd"] = { pokenome= "Nidoran" , nmoves= 5 , spellm1 = "Quick Attack" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Horn Attack",exm3=764501,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573},
["XD"] = { descricao = "Stiffens its ears to sense danger. The larger its horns, the more powerful its secreted venom.",desvantagem = "Weaknesses: \n Ground/Psychic",habilidade = "Habilites: none",evoluction = "Nidoran: Level 15\nNidorino Level 35\nNidoking Level 75",type = "is a Poison-type"},
},

["Nidorino"] = {
["m1"] = {  spell = "Quick Attack", minLv = 35, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 5.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 35,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Horn Attack", minLv = 35,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 7,type = "normal",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 35,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 6,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 36,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 10,type = "poison",cd = 20},
["m6"] = {  spell = "Poison Gun", minLv = 40, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 15, type = "poison",cd = 40},
["m7"] = {  spell = "Stomp",minLv = 45,ex = 7502365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 5.8,type = "ground",cd = 30},
["m8"]=  {  spell = "Fury",minLv = 38,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "dragon",target = "no",cd = 45},
["!cd"] = { pokenome= "Nidorino" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Horn Attack",exm3=764501,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Poison Gun",exm6=524562,spellm7 ="Stomp",exm7=7502365,spellm8 ="Fury",exm8=399559},
["XD"] = { descricao = "An aggressive Pokémon that is quick to attack. The horn on its head secretes a powerful venom.",desvantagem = "Weaknesses: \n Ground/Psychic",habilidade = "Habilites: none",evoluction = "Nidoran: Level 15\nNidorino Level 35\nNidoking Level 75",type = "is a Poison-type"},
},

["Nidoking"] = {
["m1"] = {  spell = "Quick Attack", minLv = 75, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 7.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 75,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 10},
["m3"] = {  spell = "Horn Attack", minLv = 75,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 12,type = "normal",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 75,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 12,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 75,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 15,type = "poison",cd = 20},
["m6"] = {  spell = "Mega Punch",minLv = 79,ex = 876771,base1 = 335,base2 = 440,dista = 1,bonus = 12.9,type = "fighting",cd = 30},
["m7"] = {  spell = "Toxic Spikes",minLv = 77,ex = 566771,base1 = 335,base2 = 440,dista = 1,bonus = 10.9,type = "poison",cd = 35},
["m8"] = {  spell = "Horn Drill",minLv = 77,ex = 596779,base1 = 335,base2 = 440,dista = 1,bonus = 10.9,type = "normal",cd = 30},
["m9"] = {  spell = "Poison Gun", minLv = 78, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 25, type = "poison",cd = 40},
["m10"] = {  spell = "Stomp",minLv = 75,ex = 6602365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 8.8,type = "ground",cd = 30},
["m11"] = {  spell = "Shockwave",minLv = 77,ex = 5600007,base1 = 300,base2 = 301,dista = 10,bonus = 12.8,type = "ground",target = "no",cd = 40},
["m12"]=  {  spell = "Fury",minLv = 80,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.2,type = "dragon",target = "no",cd = 45},
["!cd"] = { pokenome= "Nidoking" , nmoves= 12 , spellm1 = "Quick Attack" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Horn Attack",exm3=764501,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Mega Punch",exm6=876771,spellm7 ="Toxic Spikes",exm7=566771,spellm8 ="Horn Drill",exm8=596779,spellm9 ="Poison Gun",exm9=524562,spellm10 ="Stomp",exm10=6602365,spellm11 ="Shockwave",exm11=5600007,spellm12 ="Fury",exm12=399559},
["XD"] = { descricao = "It uses its powerful tail in battle to smash, constrict, then break the prey’s bones.",desvantagem = "Weaknesses: \n Ground/Psychic/Ice/Water",habilidade = "Habilites: none",evoluction = "Nidoran: Level 15\nNidorino Level 35\nNidoking Level 75",type = "is a dual-type Poison/Ground"},
},

["Clefairy"] = {
["m1"] = {  spell = "Doubleslap",minLv = 30,ex = 895451,base1 = 235,base2 = 240,dista = 1,bonus = 3.9,type = "normal",cd = 9},
["m2"] = {  spell = "Lovey Kiss",minLv = 30,ex = 8445601,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "normal",cd = 9},
["m3"] = {  spell = "Sing", minLv = 35, ex = 344564, base1 = 230, base2 = 280, dista = 100, target = "no", bonus = 0, type = "normal",cd = 40},
["m4"] = {  spell = "Self Heal",minLv = 30,ex = 364556,base1 = 535,base2 = 545,bonus = 0,type = "normal",target = "no",cd = 45},
["m5"] = {  spell = "Healera",minLv = 36,ex = 6203356,base1 = 135,base2 = 145,bonus = 0,type = "normal",target = "no",cd = 65},
["m6"] = {  spell = "Multi-Slap", minLv = 40, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 10, type = "poison",cd = 40},
["m7"] = {  spell = "Metronome",minLv = 35,ex = 7502365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 15,type = "ground",cd = 30},
["!cd"] = { pokenome= "Clefairy" , nmoves= 7 , spellm1 = "Doubleslap" ,exm1=895451,spellm2="Lovey Kiss",exm2 = 8445601,spellm3= "Sing",exm3=344564,spellm4 = "Self Heal",exm4= 364556,spellm5 ="Healera",exm5=6203356,spellm6 ="Multi-Slap",exm6=524562,spellm7 ="Metronome",exm7=7502365},
["XD"] = { descricao = "Its magical and cute appeal has many admirers. It is rare and found only in certain areas.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: none",evoluction = "Clefairy: Level 30\nClefable Level 50",type = "is a Normal-type"},
},

["Clefable"] = {
["m1"] = {  spell = "Doubleslap",minLv = 50,ex = 895451,base1 = 235,base2 = 240,dista = 1,bonus = 4.9,type = "normal",cd = 9},
["m2"] = {  spell = "Lovey Kiss",minLv = 50,ex = 8345601,base1 = 135,base2 = 140,dista = 5,bonus = 5.9,type = "normal",cd = 9},
["m3"] = {  spell = "Sing", minLv = 55, ex = 344524, base1 = 230, base2 = 280, dista = 100, target = "no", bonus = 0, type = "normal",cd = 40},
["m4"] = {  spell = "Self Heal",minLv = 50,ex = 354556,base1 = 535,base2 = 545,bonus = 0,type = "normal",target = "no",cd = 45},
["m5"] = {  spell = "Great Love",minLv = 55,ex = 652031,base1 = 335,base2 = 345,dista = 10,bonus = 15,type = "normal",target = "no",cd = 35},
["m6"] = {  spell = "Healera",minLv = 52,ex = 6206356,base1 = 135,base2 = 145,bonus = 0,type = "normal",target = "no",cd = 65},
["m7"] = {  spell = "Multi-Slap", minLv = 54, ex = 624562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 15, type = "poison",cd = 40},
["m8"] = {  spell = "Metronome",minLv = 1,ex = 7502369,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 20,type = "ground",cd = 30},
["m9"] = {  spell = "Focus",minLv = 60,ex = 985888,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 55},
["!cd"] = { pokenome= "Clefable" , nmoves= 9 , spellm1 = "Doubleslap" ,exm1=895451,spellm2="Lovey Kiss",exm2 = 8345601,spellm3= "Sing",exm3=344524,spellm4 = "Self Heal",exm4= 354556,spellm5 ="Great Love",exm5=652031,spellm6 ="Healera",exm6=6206356,spellm7 ="Multi-Slap",exm7=624562,spellm8 ="Metronome",exm8=7502369,spellm9 ="Focus",exm9=985888},
["XD"] = { descricao = "A timid fairy Pokémon that is rarely seen. It will run and hide the moment it senses people.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: none",evoluction = "Clefairy: Level 30\nClefable Level 50",type = "is a Normal-type"},
},

["Jigglypuff"] = {
["m1"] = {  spell = "Doubleslap",minLv = 30,ex = 895451,base1 = 235,base2 = 240,dista = 1,bonus = 3.9,type = "normal",cd = 9},
["m2"] = {  spell = "Lovey Kiss",minLv = 30,ex = 8445601,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "normal",cd = 9},
["m3"] = {  spell = "Sing", minLv = 35, ex = 344564, base1 = 230, base2 = 280, dista = 0, target = "no", bonus = 0, type = "normal",cd = 40},
["m4"] = {  spell = "Self Heal",minLv = 30,ex = 364556,base1 = 535,base2 = 545,bonus = 0,type = "normal",target = "no",cd = 45},
["m5"] = {  spell = "Healera",minLv = 36,ex = 6203356,base1 = 135,base2 = 145,bonus = 0,type = "normal",target = "no",cd = 65},
["m6"] = {  spell = "Hyper Voice", minLv = 40, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 10, type = "normal",cd = 40},
["m7"] = {  spell = "Metronome",minLv = 35,ex = 7502365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 15,type = "ground",cd = 30},
["!cd"] = { pokenome= "Jigglypuff" , nmoves= 7 , spellm1 = "Doubleslap" ,exm1=895451,spellm2="Lovey Kiss",exm2 = 8445601,spellm3= "Sing",exm3=344564,spellm4 = "Self Heal",exm4= 364556,spellm5 ="Healera",exm5=6203356,spellm6 ="Hyper Voice",exm6=524562,spellm7 ="Metronome",exm7=7502365},
["XD"] = { descricao = "When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: none",evoluction = "Jigglypuff: Level 30\nWigglytuff Level 50",type = "is a Normal-type"},
},

["Wigglytuff"] = {
["m1"] = {  spell = "Doubleslap",minLv = 50,ex = 895451,base1 = 235,base2 = 240,dista = 1,bonus = 4.9,type = "normal",cd = 9},
["m2"] = {  spell = "Lovey Kiss",minLv = 50,ex = 8345601,base1 = 135,base2 = 140,dista = 5,bonus = 5.9,type = "normal",cd = 9},
["m3"] = {  spell = "Sing", minLv = 55, ex = 344524, base1 = 230, base2 = 280, dista = 100, target = "no", bonus = 0, type = "normal",cd = 40},
["m4"] = {  spell = "Self Heal",minLv = 50,ex = 354556,base1 = 535,base2 = 545,bonus = 0,type = "normal",target = "no",cd = 45},
["m5"] = {  spell = "Melody",minLv = 53,ex = 652031,base1 = 335,base2 = 345,dista = 10,bonus = 15,type = "normal",target = "no",cd = 35},
["m6"] = {  spell = "Healera",minLv = 52,ex = 6206356,base1 = 135,base2 = 145,bonus = 0,type = "normal",target = "no",cd = 65},
["m7"] = {  spell = "Hyper Voice", minLv = 54, ex = 624562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 15, type = "poison",cd = 40},
["m8"] = {  spell = "Metronome",minLv = 50,ex = 7502369,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 20,type = "ground",cd = 30},
["m9"] = {  spell = "Focus",minLv = 60,ex = 985888,base1 = 235,base2 = 245,dista = 10,bonus = 0,target = "no",type = "psychic",cd = 55},
["!cd"] = { pokenome= "Wigglytuff" , nmoves= 9 , spellm1 = "Doubleslap" ,exm1=895451,spellm2="Lovey Kiss",exm2 = 8345601,spellm3= "Sing",exm3=344524,spellm4 = "Self Heal",exm4= 354556,spellm5 ="Melody",exm5=652031,spellm6 ="Healera",exm6=6206356,spellm7 ="Hyper Voice",exm7=624562,spellm8 ="Metronome",exm8=7502369,spellm9 ="Focus",exm9=985888},
["XD"] = { descricao = "The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: none",evoluction = "Jigglypuff: Level 30\nWigglytuff Level 50",type = "is a Normal-type"},
},

["Zubat"] = {
["m1"] = {  spell = "Super Sonic", minLv = 5, ex = 662848, base1 = 50, base2 = 71, dista = 8,bonus = 2.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 5,ex = 464296,base1 = 50,base2 = 73,dista = 1,bonus = 1,type = "normal",cd = 10},
["m3"] = {  spell = "Absorb", minLv = 12,ex = 9260905, base1 = 50 ,base2 = 91, dista = 1, bonus = 0.5,type = "grass",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 5,ex = 931605,base1 = 30,base2 = 96,dista = 3,bonus = 1.2,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 15,ex = 555573,base1 = 20,base2 = 75,dista = 1,bonus = 2.3,type = "poison",cd = 20},
["m6"] = {  spell = "Toxic", minLv = 20, ex = 524562, base1 = 30, base2 = 80, dista = 8, target = "no", bonus = 5, type = "poison",cd = 40},
["!cd"] = { pokenome= "Zubat" , nmoves= 6 , spellm1 = "Super Sonic" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Absorb",exm3=9260905,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Toxic",exm6=524562},
["XD"] = { descricao = "Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.",desvantagem = "Weaknesses: \n Electric/Rock/Ice/Psychic",habilidade = "Habilites: none",evoluction = "Zubat Level 5\nGolbat Level 30",type = "is a dual-type Poison/Flying"},
},

["Shiny Zubat"] = {
["m1"] = {  spell = "Super Sonic", minLv = 20, ex = 662848, base1 = 200, base2 = 201, dista = 8,bonus = 0, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 20,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 3.5,type = "normal",cd = 10},
["m3"] = {  spell = "Absorb", minLv = 22,ex = 9260905, base1 = 200, base2 = 201, dista = 1, bonus = 0.5,type = "grass",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 20,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 4,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 25,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 9,type = "poison",cd = 20},
["m6"] = {  spell = "Toxic", minLv = 30, ex = 524562, base1 = 50, base2 = 80, dista = 8, target = "no", bonus = 12, type = "poison",cd = 40},
["!cd"] = { pokenome= "Shiny Zubat" , nmoves= 6 , spellm1 = "Super Sonic" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Absorb",exm3=9260905,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Toxic",exm6=524562},
["XD"] = { descricao = "Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.",desvantagem = "Weaknesses: \n Electric/Rock/Ice/Psychic",habilidade = "Habilites: none",evoluction = "Zubat Level 5\nGolbat Level 50",type = "is a dual-type Poison/Flying"},
},

["Golbat"] = {
["m1"] = {  spell = "Super Sonic", minLv = 30, ex = 662848, base1 = 200, base2 = 201, dista = 8,bonus = 2.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 30,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 7.5,type = "normal",cd = 10},
["m3"] = {  spell = "Absorb", minLv = 30,ex = 9260905, base1 = 200, base2 = 201, dista = 1, bonus = 10.5,type = "grass",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 30,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 10,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 30,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 15,type = "poison",cd = 20},
["m6"] = {  spell = "Toxic", minLv = 30, ex = 524562, base1 = 50, base2 = 80, dista = 8, target = "no", bonus = 20, type = "poison",cd = 40},
["m7"] = {  spell = "Poison Gun", minLv = 48, ex = 624568, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 25, type = "poison",cd = 50},
["m8"] = {  spell = "Whirlwind", minLv = 45, ex = 6563224, base1 = 150, base2 = 160, dista = 100, bonus = 15, target = "no", type = "flying",cd = 30},
["m9"] = {  spell = "Wing Attack",minLv = 42,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 18,type = "flying",target = "no",cd = 29},
["!cd"] = { pokenome= "Golbat" , nmoves= 9 , spellm1 = "Super Sonic" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Absorb",exm3=9260905,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Toxic",exm6=524562,spellm7 ="Poison Gun",exm7=624568,spellm8 ="Whirlwind",exm8=6563224,spellm9 ="Wing Attack",exm9=900427},
["XD"] = { descricao = "Once it strikes, it will not stop draining energy from the victim even if it gets too heavy to fly.",desvantagem = "Weaknesses: \n Electric/Rock/Ice/Psychic",habilidade = "Habilites: none",evoluction = "Zubat Level 10\nGolbat Level 30",type = "is a dual-type Poison/Flying"},
},

["Paras"] = {
["m1"] = {  spell = "Absorb", minLv = 5,ex = 9260908, base1 = 50, base2 = 71, dista = 1, bonus = 1.5,type = "grass",cd = 9},
["m2"] = {  spell = "Scratch", minLv = 5, ex = 662848, base1 = 30, base2 = 81, dista = 1,bonus = 1.5, type = "normal",cd = 10},
["m3"] = {  spell = "Poison Sting",minLv = 5,ex = 464296,base1 = 50,base2 = 90,dista = 1,bonus = 1.5,type = "normal",cd = 10},
["m4"] = {  spell = "Slash", minLv = 12,ex = 9260905, base1 = 30, base2 = 101, dista = 1, bonus = 0.5,type = "grass",cd = 9},
["m5"] = {  spell = "Sleep Powder", minLv = 12, ex = 333267, base1 = 50, base2 = 131, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m6"] = {  spell = "Stun Spore", minLv = 11, ex = 653222, base1 = 50, target = "no", base2 = 75, dista = 100, bonus = 1.9, type = "grass",cd = 50},
["m7"] = {  spell = "Poison Powder", minLv = 10, ex = 222947, base1 = 65, target = "no", base2 = 75, dista = 100, bonus = 1, type = "poison",cd = 20},
["!cd"] = { pokenome= "Paras" , nmoves= 7 , spellm1 = "Absorb" ,exm1=9260908,spellm2="Scratch",exm2 = 662848,spellm3= "Poison Sting",exm3=464296,spellm4 = "Slash",exm4= 9260905,spellm5 ="Sleep Powder",exm5=333267,spellm6 ="Stun Spore",exm6=653222,spellm7 ="Poison Powder",exm7=222947},
["XD"] = { descricao = "Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Bug/Poison/Rock",habilidade = "Habilites: cut",evoluction = "Paras Level 5\nParasect Level 50",type = "is a dual-type Bug/Grass"},
},

["Shiny Paras"] = {
["m1"] = {  spell = "Absorb", minLv = 20,ex = 9260908, base1 = 200, base2 = 201, dista = 1, bonus = 4.5,type = "grass",cd = 9},
["m2"] = {  spell = "Scratch", minLv = 20, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 3.5, type = "normal",cd = 10},
["m3"] = {  spell = "Poison Sting",minLv = 20,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 3.5,type = "normal",cd = 10},
["m4"] = {  spell = "Slash", minLv = 22,ex = 9260905, base1 = 200, base2 = 201, dista = 1, bonus = 1.5,type = "grass",cd = 9},
["m5"] = {  spell = "Sleep Powder", minLv = 22, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 2.5, type = "grass",cd = 30},
["m6"] = {  spell = "Stun Spore", minLv = 21, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 3.5, type = "grass",cd = 50},
["m7"] = {  spell = "Poison Powder", minLv = 20, ex = 222947, base1 = 65, target = "no", base2 = 75, dista = 100, bonus = 2, type = "poison",cd = 20},
["!cd"] = { pokenome= "Shiny Paras" , nmoves= 7 , spellm1 = "Absorb" ,exm1=9260908,spellm2="Scratch",exm2 = 662848,spellm3= "Poison Sting",exm3=464296,spellm4 = "Slash",exm4= 9260905,spellm5 ="Sleep Powder",exm5=333267,spellm6 ="Stun Spore",exm6=653222,spellm7 ="Poison Powder",exm7=222947},
["XD"] = { descricao = "Burrows to suck tree roots. The mushrooms on its back grow by drawing nutrients from the bug host.",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Bug/Poison/Rock",habilidade = "Habilites: cut",evoluction = "Paras Level 20\nParasect Level 70",type = "is a dual-type Bug/Grass"},
},

["Parasect"] = {
["m1"] = {  spell = "Absorb", minLv = 50,ex = 9260908, base1 = 200, base2 = 201, dista = 1, bonus = 10.5,type = "grass",cd = 9},
["m2"] = {  spell = "Scratch", minLv = 50, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 10.5, type = "normal",cd = 10},
["m3"] = {  spell = "Poison Sting",minLv = 50,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 10.5,type = "normal",cd = 10},
["m4"] = {  spell = "Slash", minLv = 50,ex = 9260905, base1 = 200, base2 = 201, dista = 1, bonus = 10.5,type = "grass",cd = 9},
["m5"] = {  spell = "Poison Bomb", minLv = 54, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 20, type = "poison",cd = 24},
["m6"] = {  spell = "Fury Cutter",minLv = 58,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 11,type = "bug",target = "no",cd = 35},
["m7"] = {  spell = "Toxic", minLv = 60, ex = 524562, base1 = 50, base2 = 80, dista = 8, target = "no", bonus = 20, type = "poison",cd = 40},
["m8"] = {  spell = "Sleep Powder", minLv = 61, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m9"] = {  spell = "Stun Spore", minLv = 50, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 50},
["m10"] = {  spell = "Poison Powder", minLv = 50, ex = 222947, base1 = 65, target = "no", base2 = 75, dista = 100, bonus = 5, type = "poison",cd = 20},
["!cd"] = { pokenome= "Parasect" , nmoves= 10 , spellm1 = "Absorb" ,exm1=9260908,spellm2="Scratch",exm2 = 662848,spellm3= "Poison Sting",exm3=464296,spellm4 = "Slash",exm4= 9260905,spellm5 ="Poison Bomb",exm5=518935,spellm6 ="Fury Cutter",exm6=559329,spellm7 ="Toxic",exm7=524562,spellm8 ="Sleep Powder",exm8=333267,spellm9 ="Stun Spore",exm9=653222,spellm10 ="Poison Powder",exm10=222947},
["XD"] = { descricao = "A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Bug/Poison/Rock",habilidade = "Habilites: cut",evoluction = "Paras Level 5\nParasect Level 50",type = "is a dual-type Bug/Grass"},
},

["Shiny Parasect"] = {
["m1"] = {  spell = "Absorb", minLv = 70,ex = 9260908, base1 = 200, base2 = 201, dista = 1, bonus = 12.5,type = "grass",cd = 9},
["m2"] = {  spell = "Scratch", minLv = 70, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 12.5, type = "normal",cd = 10},
["m3"] = {  spell = "Poison Sting",minLv = 70,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 12.5,type = "normal",cd = 10},
["m4"] = {  spell = "Slash", minLv = 70,ex = 9260905, base1 = 200, base2 = 201, dista = 1, bonus = 12.5,type = "grass",cd = 9},
["m5"] = {  spell = "Poison Bomb", minLv = 74, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 22, type = "poison",cd = 24},
["m6"] = {  spell = "Fury Cutter",minLv = 78,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 13,type = "bug",target = "no",cd = 35},
["m7"] = {  spell = "Toxic", minLv = 80, ex = 524562, base1 = 50, base2 = 80, dista = 8, target = "no", bonus = 23, type = "poison",cd = 40},
["m8"] = {  spell = "Sleep Powder", minLv = 71, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 2.5, type = "grass",cd = 30},
["m9"] = {  spell = "Stun Spore", minLv = 70, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 3.5, type = "grass",cd = 50},
["m10"] = {  spell = "Poison Powder", minLv = 70, ex = 222947, base1 = 65, target = "no", base2 = 75, dista = 100, bonus = 5, type = "poison",cd = 20},
["!cd"] = { pokenome= "Shiny Parasect" , nmoves= 10 , spellm1 = "Absorb" ,exm1=9260908,spellm2="Scratch",exm2 = 662848,spellm3= "Poison Sting",exm3=464296,spellm4 = "Slash",exm4= 9260905,spellm5 ="Poison Bomb",exm5=518935,spellm6 ="Fury Cutter",exm6=559329,spellm7 ="Toxic",exm7=524562,spellm8 ="Sleep Powder",exm8=333267,spellm9 ="Stun Spore",exm9=653222,spellm10 ="Poison Powder",exm10=222947},
["XD"] = { descricao = "A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.",desvantagem = "Weaknesses: \n Fire/Flying/Ice/Bug/Poison/Rock",habilidade = "Habilites: cut",evoluction = "Parasect Level 70",type = "is a dual-type Bug/Grass"},
},


["Venonat"] = {
["m1"] = {  spell = "Absorb", minLv = 20, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 3.5, type = "grass",cd = 10},
["m2"] = {  spell = "Bug Bite",minLv = 20,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 3.5,type = "bug",cd = 10},
["m3"] = {  spell = "Super Sonic", minLv = 22,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 20,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 3,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 25,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 8,type = "poison",cd = 20},
["m6"] = {  spell = "Psychic", minLv = 28, ex = 775994, base1 = 225,base2 = 225, bonus = 11,type = "psychic",target = "no",cd = 35},
["m7"] = {  spell = "Sleep Powder", minLv = 22, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m8"] = {  spell = "Stun Spore", minLv = 20, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 50},
["m9"] = {  spell = "Poison Powder", minLv = 20, ex = 222947, base1 = 65, target = "no", base2 = 75, dista = 100, bonus = 1, type = "poison",cd = 20},
["!cd"] = { pokenome= "Venonat" , nmoves= 9 , spellm1 = "Absorb" ,exm1=662848,spellm2="Bug Bite",exm2 = 464296,spellm3= "Super Sonic",exm3=9260905,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Psychic",exm6=775994,spellm7 ="Sleep Powder",exm7=333267,spellm8 ="Stun Spore",exm8=653222,spellm9 ="Poison Powder",exm9=222947},
["XD"] = { descricao = "Lives in the shadows of tall trees where it eats insects. It is attracted by light at night.",desvantagem = "Weaknesses: \n Fire/Rock/Flying/Psychic",habilidade = "Habilites: none",evoluction = "Venonat: Level 20\nVenomoth: Level 50",type = "is a dual-type Bug/Poison"},
},

["Venomoth"] = {
["m1"] = {  spell = "Absorb", minLv = 50, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 7.5, type = "grass",cd = 10},
["m2"] = {  spell = "Bug Bite",minLv = 50,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 7.5,type = "bug",cd = 10},
["m3"] = {  spell = "Super Sonic", minLv = 52,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m4"] = {  spell = "Confusion", minLv = 50, ex = 483923, base1 = 165,base2 = 175, bonus = 15,type = "psychic",target = "no",cd = 25},
["m5"] = {  spell = "Poison Sting",minLv = 50,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 10,type = "poison",cd = 13},
["m6"] = {  spell = "Poison Fang",minLv = 55,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 15,type = "poison",cd = 20},
["m7"] = {  spell = "Psychic", minLv = 58, ex = 775994, base1 = 225,base2 = 225, bonus = 25,type = "psychic",target = "no",cd = 35},
["m8"] = {  spell = "Sleep Powder", minLv = 52, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m9"] = {  spell = "Stun Spore", minLv = 50, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 50},
["m10"] = {  spell = "Poison Powder", minLv = 50, ex = 222947, base1 = 65, target = "no", base2 = 75, dista = 100, bonus = 5, type = "poison",cd = 20},
["!cd"] = { pokenome= "Venomoth" , nmoves= 10 , spellm1 = "Absorb" ,exm1=662848,spellm2="Bug Bite",exm2 = 464296,spellm3= "Super Sonic",exm3=9260905,spellm4 = "Confusion",exm4= 483923,spellm5 ="Poison Sting",exm5=931605,spellm6 ="Poison Fang",exm6=555573,spellm7 ="Psychic",exm7=775994,spellm8 ="Sleep Powder",exm8=333267,spellm9 ="Stun Spore",exm9=653222,spellm10 ="Poison Powder",exm10=222947},
["XD"] = { descricao = "The dust-like scales covering its wings are color coded to indicate the kinds of poison it has.",desvantagem = "Weaknesses: \n Fire/Rock/Flying/Psychic",habilidade = "Habilites: none",evoluction = "Venonat: Level 20\nVenomoth: Level 50",type = "is a dual-type Bug/Poison"},
},

["Shiny Venomoth"] = {
["m1"] = {  spell = "Absorb", minLv = 70, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 8.5, type = "grass",cd = 10},
["m2"] = {  spell = "Bug Bite",minLv = 70,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "bug",cd = 10},
["m3"] = {  spell = "Super Sonic", minLv = 72,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m4"] = {  spell = "Confusion", minLv = 70, ex = 483923, base1 = 165,base2 = 175, bonus = 16,type = "psychic",target = "no",cd = 25},
["m5"] = {  spell = "Poison Sting",minLv = 70,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 12,type = "poison",cd = 13},
["m6"] = {  spell = "Poison Fang",minLv = 75,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 17,type = "poison",cd = 20},
["m7"] = {  spell = "Psychic", minLv = 78, ex = 775994, base1 = 225,base2 = 225, bonus = 30,type = "psychic",target = "no",cd = 35},
["m8"] = {  spell = "Sleep Powder", minLv = 72, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m9"] = {  spell = "Stun Spore", minLv = 70, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 50},
["m10"] = {  spell = "Poison Powder", minLv = 70, ex = 222947, base1 = 65, target = "no", base2 = 75, dista = 100, bonus = 5, type = "poison",cd = 20},
["!cd"] = { pokenome= "Shiny Venomoth" , nmoves= 10 , spellm1 = "Absorb" ,exm1=662848,spellm2="Bug Bite",exm2 = 464296,spellm3= "Super Sonic",exm3=9260905,spellm4 = "Confusion",exm4= 483923,spellm5 ="Poison Sting",exm5=931605,spellm6 ="Poison Fang",exm6=555573,spellm7 ="Psychic",exm7=775994,spellm8 ="Sleep Powder",exm8=333267,spellm9 ="Stun Spore",exm9=653222,spellm10 ="Poison Powder",exm10=222947},
["XD"] = { descricao = "The dust-like scales covering its wings are color coded to indicate the kinds of poison it has.",desvantagem = "Weaknesses: \n Fire/Rock/Flying/Psychic",habilidade = "Habilites: none",evoluction = "Venonat: Level 20\nVenomoth: Level 50",type = "is a dual-type Bug/Poison"},
},
["Diglett"] = {
["m1"] = {  spell = "Sand Attack",minLv = 15,ex = 45332,base1 = 115,base2 = 122,dista = 1,bonus = 2,target = "no",type = "ground",cd = 9},
["m2"] = {  spell = "Mud Shot",minLv = 15,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m3"] = {  spell = "Scratch",minLv = 15,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 3,type = "normal",cd = 9},
["m4"] = {  spell = "Slash",minLv = 15,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 3,type = "normal",cd = 9},
["m5"] = {  spell = "Mud Slap",minLv = 16,ex = 895361,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m6"] = {  spell = "Earthshock",minLv = 25,ex = 4588539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 5,type = "ground",cd = 40},
["!cd"] = { pokenome= "Diglett" , nmoves= 6 , spellm1 = "Sand Attack" ,exm1=45332,spellm2="Mud Shot",exm2 = 495361,spellm3= "Scratch",exm3=4900889,spellm4 = "Slash",exm4= 4900882,spellm5 ="Mud Slap",exm5=895361,spellm6 ="Earthshock",exm6=4588539},
["XD"] = { descricao = "Lives about one yard underground where it feeds on plant roots. It sometimes appears above ground.",desvantagem = "Weaknesses: \n Grass/Ice/Water",habilidade = "Habilites: Dig,Rock Smash",evoluction = "Diglett: Level 15\nDugtrio Level 35",type = "is a Ground-type"},
},

["Dugtrio"] = {
["m1"] = {  spell = "Sand Attack",minLv = 35,ex = 45332,base1 = 115,base2 = 122,dista = 1,bonus = 6,target = "no",type = "ground",cd = 9},
["m2"] = {  spell = "Mud Shot",minLv = 35,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 5.9,type = "ground",cd = 9},
["m3"] = {  spell = "Scratch",minLv = 35,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 7,type = "normal",cd = 9},
["m4"] = {  spell = "Slash",minLv = 35,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 8,type = "normal",cd = 9},
["m5"] = {  spell = "Mud Slap",minLv = 36,ex = 895361,base1 = 135,base2 = 140,dista = 5,bonus = 4.9,type = "ground",cd = 9},
["m6"] = {  spell = "Shockwave",minLv = 37,x = 5585539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 15,type = "ground",cd = 40},
["m7"] = {  spell = "Earthshock",minLv = 38,ex = 5600007,base1 = 300,base2 = 301,dista = 10,bonus = 10.8,type = "ground",target = "no",cd = 40},
["m8"] = {  spell = "Earth Quake",minLv = 42,ex = 521309,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 1.5,type = "ground",cd = 70},
["!cd"] = { pokenome= "Dugtrio" , nmoves= 8 , spellm1 = "Sand Attack" ,exm1=45332,spellm2="Mud Shot",exm2 = 495361,spellm3= "Scratch",exm3=4900889,spellm4 = "Slash",exm4= 4900882,spellm5 ="Mud Slap",exm5=895361,spellm6 ="Shockwave",exm6=5585539,spellm7 ="Earthshock",exm7=5600007,spellm8 ="Earth Quake",exm8=521309},
["XD"] = { descricao = "A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.",desvantagem = "Weaknesses: \n Grass/Ice/Water",habilidade = "Habilites: Dig,Rock Smash",evoluction = "Diglett: Level 15\nDugtrio Level 35",type = "is a Ground-type"},
},

["Meowth"] = {
["m1"] = {  spell = "Headbutt",minLv = 20,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 5.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 20,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Scratch",minLv = 20,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 5,type = "normal",cd = 9},
["m4"] = {  spell = "Slash",minLv = 20,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 5,type = "normal",cd = 9},
["m5"] = {  spell = "Quick Attack", minLv = 20, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 5.5, type = "normal",cd = 10},
["m6"] = {  spell = "Fury Cutter",minLv = 28,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 6,type = "bug",target = "no",cd = 35},
["m7"]=  {  spell = "Fury",minLv = 30,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "dragon",target = "no",cd = 45},
["m8"] = {  spell = "Scary Face",minLv = 32,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Meowth" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Scratch",exm3=4900889,spellm4 = "Slash",exm4= 4900882,spellm5 ="Quick Attack",exm5=662848,spellm6 ="Fury Cutter",exm6=559329,spellm7 ="Fury",exm7=399559,spellm8 ="Scary Face",exm8=9550008},
["XD"] = { descricao = "Adores circular objects. Wanders the streets on a nightly basis to look for dropped loose change.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: cut\nHeadbutt",evoluction = "Meowth: Level 20\nPersian Level 45",type = "is a Normal-type"},
},

["Persian"] = {
["m1"] = {  spell = "Headbutt",minLv = 40,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 8.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 40,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 10},
["m3"] = {  spell = "Scratch",minLv = 40,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 9,type = "normal",cd = 9},
["m4"] = {  spell = "Slash",minLv = 40,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 9,type = "normal",cd = 9},
["m5"] = {  spell = "Quick Attack", minLv = 40, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 9.5, type = "normal",cd = 10},
["m6"] = {  spell = "Fury Cutter",minLv = 48,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 12,type = "bug",target = "no",cd = 35},
["m7"]=  {  spell = "Fury",minLv = 42,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.2,type = "dragon",target = "no",cd = 45},
["m8"] = {  spell = "Pay Day",minLv = 50,ex = 559929,base1 = 255,base2 = 260,dista = 8,bonus = 20,type = "normal",target = "no",cd = 55},
["m9"] = {  spell = "Scary Face",minLv = 52,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Persian" , nmoves= 9 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Scratch",exm3=4900889,spellm4 = "Slash",exm4= 4900882,spellm5 ="Quick Attack",exm5=662848,spellm6 ="Fury Cutter",exm6=559329,spellm7 ="Fury",exm7=399559,spellm8 ="Pay Day",exm8=559929,spellm9 ="Scary Face",exm9=9550008},
["XD"] = { descricao = "Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: cut\nHeadbutt",evoluction = "Meowth: Level 20\nPersian Level 45",type = "is a Normal-type"},
},

["Mankey"] = {
["m1"] = {  spell = "Headbutt",minLv = 20,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 5.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 20,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Scratch",minLv = 20,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 5,type = "normal",cd = 9},
["m4"] = {  spell = "Triple Kick",minLv = 20,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 3.5,type = "fighting",cd = 15},
["m5"] = {  spell = "Karate Chop", minLv = 20, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 6.5, type = "fighting",cd = 20},
["m6"] = {  spell = "Cross Chop",minLv = 28,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 8,type = "fighting",target = "no",cd = 35},
["m7"]=  {  spell = "Fury",minLv = 30,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1.2,type = "dragon",target = "no",cd = 45},
["!cd"] = { pokenome= "Mankey" , nmoves= 7 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Scratch",exm3=4900889,spellm4 = "Triple Kick",exm4= 4900882,spellm5 ="Karate Chop",exm5=662848,spellm6 ="Cross Chop",exm6=559329,spellm7 ="Fury",exm7=399559},
["XD"] = { descricao = "Extremely quick to anger. It could be docile one moment then thrashing away the next instant.",desvantagem = "Weaknesses: \n Flying/Psychic",habilidade = "Habilites: Dig,Rock Smash,Headbutt",evoluction = "Mankey: Level 20\nPrimeape Level 45",type = "is a Fighting-type"},
},
["Primeape"] = {
["m1"] = {  spell = "Headbutt",minLv = 45,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 8.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 45,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 10},
["m3"] = {  spell = "Scratch",minLv = 45,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 8,type = "normal",cd = 9},
["m4"] = {  spell = "Triple Kick",minLv = 45,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 7.5,type = "fighting",cd = 15},
["m5"] = {  spell = "Karate Chop", minLv = 45, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 9.5, type = "fighting",cd = 20},
["m6"] = {  spell = "Mega Kick", minLv = 45, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "fighting",cd = 10},
["m7"] = {  spell = "Mega Punch",minLv = 45,ex = 876771,base1 = 335,base2 = 440,dista = 1,bonus = 12.9,type = "fighting",cd = 30},
["m8"] = {  spell = "Cross Chop",minLv = 52,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 15,type = "fighting",target = "no",cd = 45},
["m9"]=  {  spell = "Fury",minLv = 58,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 2.8,type = "dragon",target = "no",cd = 45},
["m10"] = {spell = "Scary Face",minLv = 52,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Primeape" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Scratch",exm3=4900889,spellm4 = "Triple Kick",exm4= 4900882,spellm5 ="Karate Chop",exm5=662848,spellm6 ="Mega Kick",exm6=552848,spellm7 ="Mega Punch",exm7=876771,spellm8 ="Cross Chop",exm8=559329,spellm9 ="Fury",exm9=399559,spellm10 ="Scary Face",exm10=9550008},
["XD"] = { descricao = "Always furious and tenacious to boot. It will not abandon chasing its quarry until it is caught.",desvantagem = "Weaknesses: \n Flying/Psychic",habilidade = "Habilites: Dig,Rock Smash,Headbutt",evoluction = "Mankey: Level 20\nPrimeape Level 45",type = "is a Fighting-type"},
},

["Machop"] = {
["m1"] = {  spell = "Headbutt",minLv = 15,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 5.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 15,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Mega Punch",minLv = 16,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 8,type = "normal",cd = 15},
["m4"] = {  spell = "Triple Punch",minLv = 17,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 2.5,type = "fighting",cd = 15},
["m5"] = {  spell = "Karate Chop", minLv = 19, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 6.5, type = "fighting",cd = 20},
["m6"] = {  spell = "Ground Chop",minLv = 28,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 8,type = "fighting",target = "no",cd = 35},
["m7"]=  {  spell = "Fury",minLv = 30,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1,type = "dragon",target = "no",cd = 45},
["!cd"] = { pokenome= "Machop" , nmoves= 7 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Mega Punch",exm3=4900889,spellm4 = "Triple Kick",exm4= 4900882,spellm5 ="Karate Chop",exm5=662848,spellm6 ="Ground Chop",exm6=559329,spellm7 ="Fury",exm7=399559},
["XD"] = { descricao = "Loves to build its muscles. It trains in all styles of martial arts to become even stronger.",desvantagem = "Weaknesses: \n Flying/Psychic",habilidade = "Habilites: Dig,Rock Smash,Headbutt",evoluction = "Machop: Level 15\nMachoke Level 35\nMachamp Level 75",type = "is a Fighting-type"},
},

["Machoke"] = {
["m1"] = {  spell = "Headbutt",minLv = 35,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 8.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 35,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 7.5,type = "normal",cd = 10},
["m3"] = {  spell = "Mega Punch",minLv = 35,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 8,type = "normal",cd = 15},
["m4"] = {  spell = "Triple Punch",minLv = 36,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 3.5,type = "fighting",cd = 15},
["m5"] = {  spell = "Karate Chop", minLv = 35, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 7.5, type = "fighting",cd = 20},
["m6"] = {  spell = "Ground Chop",minLv = 42,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 20,type = "fighting",target = "no",cd = 55},
["m7"] = {  spell = "Fist Machine",minLv = 43,ex = 559321,base1 = 255,base2 = 260,dista = 8,bonus = 15,type = "fighting",target = "no",cd = 55},
["m8"]=  {  spell = "Fury",minLv = 40,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "dragon",target = "no",cd = 45},
["!cd"] = { pokenome= "Machoke" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Mega Punch",exm3=4900889,spellm4 = "Triple Kick",exm4= 4900882,spellm5 ="Karate Chop",exm5=662848,spellm6 ="Ground Chop",exm6=559329,spellm7 ="Fist Machine",exm7=559321,spellm8 ="Fury",exm8=399559},
["XD"] = { descricao = "Its muscular body is so powerful, it must wear a power save belt to be able to regulate its motions.",desvantagem = "Weaknesses: \n Flying/Psychic",habilidade = "Habilites: Dig,Rock Smash,Headbutt",evoluction = "Machop: Level 15\nMachoke Level 35\nMachamp Level 75",type = "is a Fighting-type"},
},

["Machamp"] = {
["m1"] = {  spell = "Headbutt",minLv = 75,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 9.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 75,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 9.5,type = "normal",cd = 10},
["m3"] = {  spell = "Mega Punch",minLv = 75,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 10,type = "fighting",cd = 15},
["m4"] = {  spell = "Triple Punch",minLv = 75,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 4.5,type = "fighting",cd = 15},
["m5"] = {  spell = "Karate Chop", minLv = 75, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 10.5, type = "fighting",cd = 20},
["m6"] = {  spell = "Ground Chop",minLv = 78,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 25,type = "fighting",target = "no",cd = 55},
["m7"] = {  spell = "Fist Machine",minLv = 77,ex = 559321,base1 = 255,base2 = 260,dista = 8,bonus = 15,type = "fighting",target = "no",cd = 55},
["m8"] = {  spell = "Destroyer Hand",minLv = 75,ex = 859321,base1 = 255,base2 = 260,dista = 8,bonus = 20,type = "fighting",target = "no",cd = 55},
["m9"] = {  spell = "Dynamic Punch",minLv = 80,ex = 558321,base1 = 255,base2 = 260,dista = 1,bonus = 4,type = "fighting",cd = 55},
["m10"]=  {  spell = "Fury",minLv = 80,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.9,type = "dragon",target = "no",cd = 45},
["!cd"] = { pokenome= "Machamp" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Mega Punch",exm3=4900889,spellm4 = "Triple Kick",exm4= 4900882,spellm5 ="Karate Chop",exm5=662848,spellm6 ="Ground Chop",exm6=559329,spellm7 ="Fist Machine",exm7=559321,spellm8 ="Destroyer Hand",exm8=859321,spellm9 ="Dynamic Punch",exm9=558321,spellm10 ="Fury",exm10=399559},
["XD"] = { descricao = "Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.",desvantagem = "Weaknesses: \n Flying/Psychic",habilidade = "Habilites: Dig,Rock Smash,Headbutt",evoluction = "Machop: Level 15\nMachoke Level 35\nMachamp Level 75",type = "is a Fighting-type"},
},

["Magnemite"] = {
["m1"] = {  spell = "Super Sonic", minLv = 15,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m2"] = {  spell = "Thundershock",minLv = 15,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 4.8,type = "electric",cd = 9 },
["m3"] = {  spell = "Thunder Bolt",minLv = 16, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 3, type = "electric", cd = 20},
["m4"] = {  spell = "Thunder Wave",minLv = 17,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 8,type = "electric",cd = 15},
["m5"] = {  spell = "Sonic Boom", minLv = 15,ex = 8860905, base1 = 200, base2 = 201, dista = 8, bonus = 2.5,type = "psychic",cd = 9},
["!cd"] = { pokenome= "Magnemite" , nmoves= 5 , spellm1 = "Super Sonic" ,exm1=9260905,spellm2="Thundershock",exm2 = 884002,spellm3= "Thunder Bolt",exm3=879855,spellm4 = "Thunder Wave",exm4= 589785,spellm5 ="Sonic Boom",exm5=8860905},
["XD"] = { descricao = "Uses anti-gravity to stay suspended. Appears without warning and uses Thunder Wave and similar moves.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Light",evoluction = "Magnemite: Level 15\nMagneton Level 40",type = "is a Electric-type"},
},

["Magneton"] = {
["m1"] = {  spell = "Super Sonic", minLv = 40,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m2"] = {  spell = "Thundershock",minLv = 40,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 8.8,type = "electric",cd = 9 },
["m3"] = {  spell = "Thunder Bolt",minLv = 40, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 4, type = "electric", cd = 20},
["m4"] = {  spell = "Thunder Wave",minLv = 40,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 15,type = "electric",cd = 15},
["m5"] = {  spell = "Thunder", minLv = 45, ex = 518935, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 20, type = "electric",cd = 60},
["m6"] =  {  spell = "Electric Storm", minLv = 48, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 20, type = "electric",cd = 80},
["m7"] = {  spell = "Sonic Boom", minLv = 40,ex = 8860905, base1 = 200, base2 = 201, dista = 8, bonus = 6.5,type = "psychic",cd = 9},
["!cd"] = { pokenome= "Magneton" , nmoves= 7 , spellm1 = "Super Sonic" ,exm1=9260905,spellm2="Thundershock",exm2 = 884002,spellm3= "Thunder Bolt",exm3=879855,spellm4 = "Thunder Wave",exm4= 589785,spellm5 ="Thunder",exm5=518935,spellm6 ="Electric Storm",exm6=868968,spellm7 ="Sonic Boom",exm7=8860905},
["XD"] = { descricao = "Formed by several MAGNEMITEs linked together. They frequently appear when sunspots flare up.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Light",evoluction = "Magnemite: Level 15\nMagneton Level 40",type = "is a Electric-type"},
},

["Farfetchd"] = {
["m1"] = {  spell = "Quick Attack", minLv = 40, ex = 962248, base1 = 200, base2 = 201, dista = 1,bonus = 16, type = "normal",cd = 10},
["m2"] = {  spell = "Slash",minLv = 40,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 9,type = "normal",cd = 9},
["m3"] = {  spell = "Sand Attack",minLv = 40,ex = 95332,base1 = 155,base2 = 162,dista = 1,bonus = 10,target = "no",type = "ground",cd = 9},
["m4"] = {  spell = "StickSlash", minLv = 40, ex = 924521, base1 = 150, base2 = 180, dista = 1, bonus = 13.9, type = "flying",cd = 40},
["m5"] = {  spell = "Drill Peck", minLv = 40, ex = 925025, base1 = 150, base2 = 151, dista = 1,bonus = 8, type = "flying",cd = 15},
["m6"] = {  spell = "Stickmerang", minLv = 42, ex = 965625, base1 = 150, base2 = 151, dista = 8,target = "no",bonus = 20, type = "flying",cd = 15},
["m7"] = {  spell = "Stick Wave", minLv = 44, ex = 9563224, base1 = 150, base2 = 160, dista = 10, bonus = 17, target = "no", type = "flying",cd = 30},
["m8"] = {  spell = "Wing Attack",minLv = 42,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 18,type = "flying",target = "no",cd = 29},
["m9"]=  {  spell = "Strafe",minLv = 45,ex = 959952,base1 = 100,base2 = 120,dista = 1,bonus = 3.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Farfetchd" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=962248,spellm2="Slash",exm2 = 4900882,spellm3= "Sand Attack",exm3=95332,spellm4 = "StickSlash",exm4=924521,spellm5 = "Drill Peck",exm5=925025,spellm6 = "Stickmerang",exm6=965625,spellm7 = "Stick Wave",exm7=9563224,spellm8 = "Wing Attack",exm8=900427,spellm9 = "Strafe",exm9=959952},
["XD"] = { descricao = "The sprig of green onions it holds is its weapon. It is used much like a metal sword.",desvantagem = "Weaknesses: \n Electric/Rock/Ice",habilidade = "Habilites: none",evoluction = "Farfetch'd Level 40",type = "is a dual-type Normal/Flying"},
},

["Shiny Farfetchd"] = {
["m1"] = {  spell = "Quick Attack", minLv = 70, ex = 962248, base1 = 200, base2 = 201, dista = 1,bonus = 17, type = "normal",cd = 10},
["m2"] = {  spell = "Slash",minLv = 70,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 10,type = "normal",cd = 9},
["m3"] = {  spell = "Sand Attack",minLv = 70,ex = 95332,base1 = 155,base2 = 162,dista = 1,bonus = 11,target = "no",type = "ground",cd = 9},
["m4"] = {  spell = "StickSlash", minLv = 70, ex = 924521, base1 = 150, base2 = 180, dista = 1, bonus = 14.9, type = "flying",cd = 40},
["m5"] = {  spell = "Drill Peck", minLv = 70, ex = 925025, base1 = 150, base2 = 151, dista = 1,bonus = 10, type = "flying",cd = 15},
["m6"] = {  spell = "Stickmerang", minLv = 72, ex = 965625, base1 = 150, base2 = 151, dista = 8,target = "no",bonus = 21, type = "flying",cd = 15},
["m7"] = {  spell = "Stick Wave", minLv = 74, ex = 9563224, base1 = 150, base2 = 160, dista = 10, bonus = 18, target = "no", type = "flying",cd = 30},
["m8"] = {  spell = "Wing Attack",minLv = 72,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 19,type = "flying",target = "no",cd = 29},
["m9"]=  {  spell = "Strafe",minLv = 75,ex = 959952,base1 = 100,base2 = 120,dista = 1,bonus = 4.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Shiny Farfetchd" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=962248,spellm2="Slash",exm2 = 4900882,spellm3= "Sand Attack",exm3=95332,spellm4 = "StickSlash",exm4=924521,spellm5 = "Drill Peck",exm5=925025,spellm6 = "Stickmerang",exm6=965625,spellm7 = "Stick Wave",exm7=9563224,spellm8 = "Wing Attack",exm8=900427,spellm9 = "Strafe",exm9=959952},
["XD"] = { descricao = "The sprig of green onions it holds is its weapon. It is used much like a metal sword.",desvantagem = "Weaknesses: \n Electric/Rock/Ice",habilidade = "Habilites: none",evoluction = "Farfetch'd Level 40",type = "is a dual-type Normal/Flying"},
},

["Doduo"] = {
["m1"] = {  spell = "Quick Attack", minLv = 15, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 15,ex = 25332,base1 = 155,base2 = 162,dista = 1,bonus = 5,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 18, ex = 224521, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 5.0, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 17, ex = 225025, base1 = 150, base2 = 151, dista = 1,bonus = 2, type = "flying",cd = 15},
["m5"]=  {  spell = "Strafe",minLv = 25,ex = 959952,base1 = 100,base2 = 120,dista = 1,bonus = 2.5,type = "normal",target = "no",cd = 45},
["m6"] = {  spell = "Rage",minLv = 20,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 2,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Doduo" , nmoves= 6 , spellm1 = "Quick Attack" ,exm1=262248,spellm2="Sand Attack",exm2 = 25332,spellm3= "Gust",exm3=224521,spellm4 = "Drill Peck",exm4=225025,spellm5 = "Strafe",exm5=959952,spellm6 = "Rage",exm6=651482},
["XD"] = { descricao = "A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.",desvantagem = "Weaknesses: \n Electric/Rock/Ice",habilidade = "Habilites: none",evoluction = "Doduo: Level 15\nDodrio Level 40",type = "is a dual-type Normal/Flying"},
},

["Dodrio"] = {
["m1"] = {  spell = "Quick Attack", minLv = 40, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 40,ex = 25332,base1 = 155,base2 = 162,dista = 1,bonus = 10,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 42, ex = 224521, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 11.0, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 43, ex = 225025, base1 = 150, base2 = 151, dista = 1,bonus = 8, type = "flying",cd = 15},
["m5"] = {  spell = "Pluck", minLv = 50, ex = 225929, base1 = 150, base2 = 151, dista = 1,bonus = 15, type = "normal",cd = 35},
["m6"]=  {  spell = "Strafe",minLv = 40,ex = 959952,base1 = 100,base2 = 120,dista = 1,bonus = 3.5,type = "normal",target = "no",cd = 45},
["m7"] = {  spell = "Rage",minLv = 40,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 2,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Dodrio" , nmoves= 7 , spellm1 = "Quick Attack" ,exm1=262248,spellm2="Sand Attack",exm2 = 25332,spellm3= "Gust",exm3=224521,spellm4 = "Drill Peck",exm4=225025,spellm5 = "Pluck",exm5=225929,spellm6 = "Strafe",exm6=959952,spellm7 = "Rage",exm7=651482},
["XD"] = { descricao = "Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.",desvantagem = "Weaknesses: \n Electric/Rock/Ice",habilidade = "Habilites: none",evoluction = "Doduo: Level 15\nDodrio Level 40",type = "is a dual-type Normal/Flying"},
},

["Seel"] = {
["m1"] = {  spell = "Headbutt", minLv = 20, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {  spell = "Aqua tail", minLv = 20, ex = 445925, base1 = 18, base2 = 18, dista = 1, bonus = 3.5,type = "water", cd = 35},
["m3"] = {  spell = "Ice Shards", minLv = 20, ex = 748004, base1 = 230, base2 = 280, dista = 8, bonus = 4.5, type = "ice",cd = 15},
["m4"] = {  spell = "Ice Beam", minLv = 20, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 8.5, type = "ice",cd = 40},
["m5"]=  {  spell = "Icy Wind",minLv = 25,ex = 959952,base1 = 100,base2 = 120,dista = 8,bonus = 8.5,type = "ice",target = "no",cd = 45},
["m6"] = {  spell = "Aurora Beam", minLv = 40, ex = 415554, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 13.5,type = "ice", cd = 45},
["!cd"] = { pokenome= "Seel" , nmoves= 6 , spellm1 = "Headbutt" ,exm1=262248,spellm2="Aqua Tail",exm2 = 445925,spellm3= "Ice Shards",exm3=748004,spellm4 = "Ice Beam",exm4=264604,spellm5 = "Ice Wind",exm5=959952,spellm6 = "Aurora Beam",exm6=415554},
["XD"] = { descricao = "The protruding horn on its head is very hard. It is used for bashing through thick ice.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: headbutt",evoluction = "Seel: Level 20\nDewgong Level 60",type = "is a Water-type"},
},

["Dewgong"] = {
["m1"] = {  spell = "Headbutt", minLv = 60, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "normal",cd = 10},
["m2"] = {  spell = "Aqua tail", minLv = 60, ex = 445925, base1 = 18, base2 = 18, dista = 1, bonus = 10.5,type = "water", cd = 35},
["m3"] = {  spell = "Ice Shards", minLv = 60, ex = 748004, base1 = 230, base2 = 280, dista = 8, bonus = 7.5, type = "ice",cd = 15},
["m4"] = {  spell = "Ice Beam", minLv = 60, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 13.5, type = "ice",cd = 40},
["m5"]=  {  spell = "Icy Wind",minLv = 60,ex = 959952,base1 = 100,base2 = 120,dista = 8,bonus = 9.5,type = "ice",target = "no",cd = 45},
["m6"] = {  spell = "Aurora Beam", minLv = 67, ex = 415554, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 21.5,type = "ice", cd = 45},
["m7"] = {  spell = "Blizzard", minLv = 70, ex = 643924, base1 = 750, base2 = 650, dista = 100, bonus = 25, target = "no", type = "ice",cd = 100},
["m8"] = {  spell = "Rest",minLv = 71,ex = 6843433,base1 = 305,base2 = 316,dista = 10,target = "no",bonus = 6.5,type = "ground",cd = 90},
["!cd"] = { pokenome= "Dewgong" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=262248,spellm2="Aqua Tail",exm2 = 445925,spellm3= "Ice Shards",exm3=748004,spellm4 = "Ice Beam",exm4=264604,spellm5 = "Ice Wind",exm5=959952,spellm6 = "Aurora Beam",exm6=415554,spellm7 = "Blizzard",exm7=643924,spellm8 = "Rest",exm8=6843433},
["XD"] = { descricao = "Stores thermal energy in its body. Swims at a steady 8 knots even in intensely cold waters.",desvantagem = "Weaknesses: \n Electric/Grass/Fighting/Rock",habilidade = "Habilites: Surf\nHeadbutt",evoluction = "Seel: Level 20\nDewgong Level 60",type = "is a dual-type Water/Ice"},
},
["Articuno"] = {
["m1"] = {  spell = "Headbutt", minLv = 155, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 12, type = "normal",cd = 10},
["m2"] = {  spell = "Quick Attack", minLv = 155, ex = 962248, base1 = 200, base2 = 201, dista = 1,bonus = 18, type = "normal",cd = 10},
["m3"] = {  spell = "Super Sonic", minLv = 155,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0,type = "psychic",cd = 9},
["m4"] = {  spell = "Ice Shards", minLv = 155, ex = 748004, base1 = 230, base2 = 280, dista = 8, bonus = 9.5, type = "ice",cd = 15},
["m5"] = {  spell = "Ice Beam", minLv = 155, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 16.5, type = "ice",cd = 40},
["m6"]=  {  spell = "Icy Wind",minLv = 155,ex = 959952,base1 = 100,base2 = 120,dista = 8,bonus = 12.5,type = "ice",target = "no",cd = 45},
["m7"] = {  spell = "Aurora Beam", minLv = 157, ex = 415554, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 30.5,type = "ice", cd = 45},
["m8"] = {  spell = "Blizzard", minLv = 160, ex = 643924, base1 = 750, base2 = 650, dista = 100, bonus = 35, target = "no", type = "ice",cd = 100},
["m9"] = {  spell = "Rest",minLv = 161,ex = 6843433,base1 = 305,base2 = 316,dista = 10,target = "no",bonus = 6.5,type = "ground",cd = 90},
["m10"] = {  spell = "Wing Attack",minLv = 155,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 23,type = "flying",target = "no",cd = 29},
["m11"] = {  spell = "Drill Peck", minLv = 160, ex = 925025, base1 = 150, base2 = 151, dista = 1,bonus = 10, type = "flying",cd = 15},
["m12"] = {  spell = "Whirlwind", minLv = 156, ex = 9563224, base1 = 150, base2 = 160, dista = 100, bonus = 18, target = "no", type = "flying",cd = 30},
["!cd"] = { pokenome= "Articuno" , nmoves= 12 , spellm1 = "Headbutt" ,exm1=262248,spellm2="Quick Attack",exm2 = 962248,spellm3= "Super Sonic",exm3=9260905,spellm4 = "Ice Shards",exm4=748004,spellm5 = "Ice Beam",exm5=264604,spellm6 = "Icy Wind",exm6=959952,spellm7 = "Aurora Beam",exm7=415554,spellm8 = "Blizzard",exm8=643924,spellm9 = "Rest",exm9=6843433,spellm10 = "Wing Attack",exm10=900427,spellm11 = "Drill Peck",exm11=925025,spellm12 = "Whirlwind",exm12=9563224},
["XD"] = { descricao = "A legendary bird Pokémon that is said to appear to doomed people who are lost in icy mountains.",desvantagem = "Weaknesses: \n Electric/Rock/Fire/Ice",habilidade = "Habilites: Flying",evoluction = "Articuno Level 155",type = "is a dual-type Ice/Flying"},
},

["Moltres"] = {
["m1"] = {  spell = "Roar",minLv = 155,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["m2"] = {  spell = "Quick Attack", minLv = 155, ex = 962248, base1 = 200, base2 = 201, dista = 1,bonus = 18, type = "normal",cd = 10},
["m3"] = {  spell = "Super Sonic", minLv = 155,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0,type = "psychic",cd = 9},
["m4"] = {  spell = "Ember",minLv = 155,ex = 600542,base1 = 220,base2 = 235,dista = 4,bonus = 9.9,type = "fire",cd = 7},
["m5"] = {  spell = "Fire Fang",minLv = 155,ex = 600543,base1 = 245,base2 = 258,dista = 1,bonus = 10.1,type = "fire",cd = 18},
["m6"] = {  spell = "Fireball",minLv = 156,ex = 600544,base1 = 250,base2 = 251,dista = 4,bonus = 10.4,type = "fire",cd = 22},
["m7"] = {  spell = "Flamethrower",minLv = 157,ex = 600545,base1 = 370,base2 = 381,target = "no",bonus = 12.9,type = "fire",cd = 35},
["m8"] = {  spell = "Raging Blast",minLv = 160,ex = 600546,base1 = 360,base2 = 380,target = "no",bonus = 15.4,type = "fire",cd = 40},
["m9"] = {  spell = "Fire Sprint",minLv = 160,ex = 600547,base1 = 250,base2 = 300,dista = 10,bonus = 7,type = "fire",target = "no",cd = 29},
["m10"] = {  spell = "Fire Blast",minLv = 158,ex = 600548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 21.5,type = "fire",cd = 50},
["m11"] = {  spell = "Flame Blast",minLv = 162,ex = 655546,base1 = 360,base2 = 380,target = "no",bonus = 5.0,type = "fire",cd = 95},
["m12"] = {  spell = "Wing Attack",minLv = 155,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 23,type = "flying",target = "no",cd = 29},
["!cd"] = { pokenome= "Moltres" , nmoves= 12 , spellm1 = "Roar" ,exm1=9550008,spellm2="Quick Attack",exm2 = 962248,spellm3= "Super Sonic",exm3=9260905,spellm4 = "Ember",exm4=600542,spellm5 = "Fire Fang",exm5=600543,spellm6 = "Fireball",exm6=600544,spellm7 = "Flamethrower",exm7=600545,spellm8 = "Raging Blast",exm8=600546,spellm9 = "Fire Sprint",exm9=600547,spellm10 = "Fire Blast",exm10=600548,spellm11 = "Flame Blast",exm11=655546,spellm12 = "Wing Attack",exm12=900427},
["XD"] = { descricao = "Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.",desvantagem = "Weaknesses: \n Electric/Rock/Water/Ice",habilidade = "Habilites: Flying",evoluction = "Moltres Level 155",type = "is a dual-type Fire/Flying"},
},

["Grimer"] = {
["m1"] = {  spell = "Mud Shot",minLv = 30,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m2"] = {  spell = "Acid",minLv = 30, ex = 879752, base1 = 230, base2 = 245, dista = 2, bonus = 4.7, type = "poison", cd = 20},
["m3"] = {  spell = "Mud Bomb",minLv = 30, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 6.5, type = "ground", cd = 20},
["m4"] = {  spell = "Poison Bomb", minLv = 35, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 12, type = "poison",cd = 24},
["m5"] = {  spell = "Poison Gun", minLv = 38, ex = 624568, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 15, type = "poison",cd = 50},
["m6"] = {  spell = "Sludge", minLv = 40, ex = 415554, base1 = 750, base2 = 650, dista = 6,bonus = 13.5,type = "poison", cd = 45},
["!cd"] = { pokenome= "Grimer" , nmoves= 6 , spellm1 = "Mud Shot" ,exm1=495361,spellm2="Acid",exm2 = 879752,spellm3= "Mud Bomb",exm3=432498,spellm4 = "Poison Bomb",exm4=518935,spellm5 = "Poison Gun",exm5=624568,spellm6 = "Sludge",exm6=415554},
["XD"] = { descricao = "Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.",desvantagem = "Weaknesses: \n Ground/Psychic",habilidade = "Habilites: none",evoluction = "Grimer Level 30\nMuk Level 75",type = "is a Poison-type"},
},
["Shiny Grimer"] = {
["m1"] = {  spell = "Mud Shot",minLv = 40,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 3.9,type = "ground",cd = 9},
["m2"] = {  spell = "Acid",minLv = 40, ex = 879752, base1 = 230, base2 = 245, dista = 2, bonus = 5.7, type = "poison", cd = 20},
["m3"] = {  spell = "Mud Bomb",minLv = 40, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 7.5, type = "ground", cd = 20},
["m4"] = {  spell = "Poison Bomb", minLv = 45, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 13, type = "poison",cd = 24},
["m5"] = {  spell = "Poison Gun", minLv = 48, ex = 624568, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 17, type = "poison",cd = 50},
["m6"] = {  spell = "Sludge", minLv = 50, ex = 415554, base1 = 750, base2 = 650, dista = 6,bonus = 19.5,type = "poison", cd = 45},
["!cd"] = { pokenome= "Shiny Grimer" , nmoves= 6 , spellm1 = "Mud Shot" ,exm1=495361,spellm2="Acid",exm2 = 879752,spellm3= "Mud Bomb",exm3=432498,spellm4 = "Poison Bomb",exm4=518935,spellm5 = "Poison Gun",exm5=624568,spellm6 = "Sludge",exm6=415554},
["XD"] = { descricao = "Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.",desvantagem = "Weaknesses: \n Ground/Psychic",habilidade = "Habilites: none",evoluction = "Grimer Level 30\nMuk Level 75",type = "is a Poison-type"},
},

["Muk"] = {
["m1"] = {  spell = "Mud Shot",minLv = 75,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 7.9,type = "ground",cd = 9},
["m2"] = {  spell = "Acid",minLv = 75, ex = 879752, base1 = 230, base2 = 245, dista = 2, bonus = 8.7, type = "poison", cd = 15},
["m3"] = {  spell = "Mud Bomb",minLv = 75, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 10.5, type = "ground", cd = 25},
["m4"] = {  spell = "Poison Bomb", minLv = 75, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 18, type = "poison",cd = 30},
["m5"] = {  spell = "Poison Gun", minLv = 82, ex = 624568, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 25, type = "poison",cd = 60},
["m6"] = {  spell = "Sludge", minLv = 77, ex = 415554, base1 = 750, base2 = 650, dista = 6,bonus = 15.5,type = "poison", cd = 30},
["m7"] = {  spell = "Sludge Rain", minLv = 85, ex = 915554, base1 = 750, base2 = 650, dista = 6,target = "no",bonus = 20,type = "poison", cd = 100},
["m8"] = {  spell = "Harden", minLv = 78, ex = 893526, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 30},
["!cd"] = { pokenome= "Muk" , nmoves= 8 , spellm1 = "Mud Shot" ,exm1=495361,spellm2="Acid",exm2 = 879752,spellm3= "Mud Bomb",exm3=432498,spellm4 = "Poison Bomb",exm4=518935,spellm5 = "Poison Gun",exm5=624568,spellm6 = "Sludge",exm6=415554,spellm7 = "Sludge Rain",exm7=915554,spellm8 = "Harden",exm8=893526},
["XD"] = { descricao = "Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.",desvantagem = "Weaknesses: \n Ground/Psychic",habilidade = "Habilites: none",evoluction = "Grimer: Level 30\nMuk: Level 75",type = "is a Poison-type"},
},

["Shiny Muk"] = {
["m1"] = {  spell = "Mud Shot",minLv = 95,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 10.9,type = "ground",cd = 9},
["m2"] = {  spell = "Acid",minLv = 95, ex = 879752, base1 = 230, base2 = 245, dista = 2, bonus = 10.7, type = "poison", cd = 15},
["m3"] = {  spell = "Mud Bomb",minLv = 95, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 12.5, type = "ground", cd = 25},
["m4"] = {  spell = "Poison Bomb", minLv = 95, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 20, type = "poison",cd = 30},
["m5"] = {  spell = "Poison Gun", minLv = 102, ex = 624568, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 28, type = "poison",cd = 60},
["m6"] = {  spell = "Sludge", minLv = 107, ex = 415554, base1 = 750, base2 = 650, dista = 6,bonus = 19.5,type = "poison", cd = 30},
["m7"] = {  spell = "Sludge Rain", minLv = 105, ex = 915554, base1 = 750, base2 = 650, dista = 6,target = "no",bonus = 25,type = "poison", cd = 100},
["m8"] = {  spell = "Harden", minLv = 95, ex = 893526, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 30},
["!cd"] = { pokenome= "Shiny Muk" , nmoves= 8 , spellm1 = "Mud Shot" ,exm1=495361,spellm2="Acid",exm2 = 879752,spellm3= "Mud Bomb",exm3=432498,spellm4 = "Poison Bomb",exm4=518935,spellm5 = "Poison Gun",exm5=624568,spellm6 = "Sludge",exm6=415554,spellm7 = "Sludge Rain",exm7=915554,spellm8 = "Harden",exm8=893526},
["XD"] = { descricao = "Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.",desvantagem = "Weaknesses: \n Ground/Psychic",habilidade = "Habilites: none",evoluction = "Shiny Grimer: Level 50\nShiny Muk: Level 95",type = "is a Poison-type"},
},

["Shellder"] = {
["m1"] = {  spell = "Lick", minLv = 15,ex = 3404556, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 15},
["m2"] = {  spell = "Super Sonic", minLv = 15,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m3"] = {  spell = "Clamp",minLv = 20, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 3.5, type = "water", cd = 20},
["m4"] = {  spell = "Bubbles",minLv = 15, ex = 688582, base1 = 230, base2 = 245, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m5"] = {  spell = "Ice Beam", minLv = 22, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 6.5, type = "ice",cd = 40},
["m6"] = {  spell = "Harden", minLv = 18, ex = 893526, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 15},
["!cd"] = { pokenome= "Shellder" , nmoves= 6 , spellm1 = "Lick" ,exm1=3404556,spellm2="Super Sonic",exm2 = 9260905,spellm3= "Clamp",exm3=432498,spellm4 = "Bubbles",exm4=688582,spellm5 = "Ice Beam",exm5=264604,spellm6 = "Harden",exm6=893526},
["XD"] = { descricao = "Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.",desvantagem = "Weaknesses: \n Electric/Grass",habilidade = "Habilites: none",evoluction = "Shellder: Level 15\nCloyster: Level 50",type = "is a Water-type"},
},

["Cloyster"] = {
["m1"] = {  spell = "Lick", minLv = 50,ex = 3404556, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 15},
["m2"] = {  spell = "Super Sonic", minLv = 50,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m3"] = {  spell = "Clamp",minLv = 50, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 6, type = "water", cd = 10},
["m4"] = {  spell = "Bubbles",minLv = 50, ex = 688582, base1 = 230, base2 = 245, dista = 8, bonus = 4.5, type = "water", cd = 10},
["m5"] = {  spell = "Ice Beam", minLv = 50, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 15.5, type = "ice",cd = 40},
["m6"] = {  spell = "Aurora Beam", minLv = 57, ex = 415554, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 21.5,type = "ice", cd = 45},
["m7"] = {  spell = "Blizzard", minLv = 60, ex = 643924, base1 = 750, base2 = 650, dista = 100, bonus = 25, target = "no", type = "ice",cd = 100},
["m8"] = {  spell = "Harden", minLv = 50, ex = 893526, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 15},
["!cd"] = { pokenome= "Cloyster" , nmoves= 8 , spellm1 = "Lick" ,exm1=3404556,spellm2="Super Sonic",exm2 = 9260905,spellm3= "Clamp",exm3=432498,spellm4 = "Bubbles",exm4=688582,spellm5 = "Ice Beam",exm5=264604,spellm6 = "Aurora Beam",exm6=415554,spellm7 = "Blizzard",exm7=643924,spellm8 = "Harden",exm8=893526},
["XD"] = { descricao = "When attacked, it launches its horns in quick volleys. Its innards have never been seen.",desvantagem = "Weaknesses: \n Electric/Grass/Fighting/Rock",habilidade = "Habilites: none",evoluction = "Shellder: Level 15\nCloyster Level 50",type = "is a dual-type Water/Ice"},
},

["Voltorb"] = {
["m1"] = {  spell = "Spark", minLv = 15, ex = 964609, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 6.5, type = "electric",cd = 30},
["m2"] = {  spell = "Thundershock",minLv = 15,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 4.8,type = "electric",cd = 9 },
["m3"] = {  spell = "Thunder Bolt",minLv = 16, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 2.8, type = "electric", cd = 20},
["m4"] = {  spell = "Thunder Wave",minLv = 17,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 8,type = "electric",cd = 15},
["m5"] = {  spell = "Rollout",minLv = 20,ex = 4600008,base1 = 125,target = "no",base2 = 175,dista = 100,bonus = 1.5,type = "rock",cd = 40},
["m6"] = {  spell = "Charge Beam", minLv = 22, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 7.5, type = "electric",cd = 40},
["m7"] = {  spell = "Selfdestruct",minLv = 30,ex = 7500007,base1 = 1500,base2 = 2000,dista = 10,bonus = 21,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Voltorb" , nmoves= 7 , spellm1 = "Spark" ,exm1=964609,spellm2="Thundershock",exm2 = 884002,spellm3= "Thunder Bolt",exm3=879855,spellm4 = "Thunder Wave",exm4=589785,spellm5 = "Rollout",exm5=4600008,spellm6 = "Charge Beam",exm6=264604,spellm7 = "Selfdestruct",exm7=7500007},
["XD"] = { descricao = "Usually found in power plants. Easily mistaken for a Poké Ball, they have zapped many people.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Light",evoluction = "Voltorb: Level 15\nElectrode Level 40",type = "is a Electric-type"},
},

["Shiny Voltorb"] = {
["m1"] = {  spell = "Spark", minLv = 25, ex = 964609, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 7.5, type = "electric",cd = 30},
["m2"] = {  spell = "Thundershock",minLv = 25,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 5.8,type = "electric",cd = 9 },
["m3"] = {  spell = "Thunder Bolt",minLv = 26, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 3.8, type = "electric", cd = 20},
["m4"] = {  spell = "Thunder Wave",minLv = 27,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 9,type = "electric",cd = 15},
["m5"] = {  spell = "Rollout",minLv = 30,ex = 4600008,base1 = 125,target = "no",base2 = 175,dista = 100,bonus = 2.5,type = "rock",cd = 40},
["m6"] = {  spell = "Charge Beam", minLv = 32, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 8.5, type = "electric",cd = 40},
["m7"] = {  spell = "Selfdestruct",minLv = 40,ex = 7500007,base1 = 1500,base2 = 2000,dista = 10,bonus = 22,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Voltorb" , nmoves= 7 , spellm1 = "Spark" ,exm1=964609,spellm2="Thundershock",exm2 = 884002,spellm3= "Thunder Bolt",exm3=879855,spellm4 = "Thunder Wave",exm4=589785,spellm5 = "Rollout",exm5=4600008,spellm6 = "Charge Beam",exm6=264604,spellm7 = "Selfdestruct",exm7=7500007},
["XD"] = { descricao = "Usually found in power plants. Easily mistaken for a Poké Ball, they have zapped many people.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Light",evoluction = "Voltorb: Level 25\nElectrode Level 60",type = "is a Electric-type"},
},


["Electrode"] = {
["m1"] = {  spell = "Spark", minLv = 40, ex = 964609, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 8.5, type = "electric",cd = 30},
["m2"] = {  spell = "Thundershock",minLv = 40,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 7.8,type = "electric",cd = 9 },
["m3"] = {  spell = "Thunder Bolt",minLv = 40, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 4.8, type = "electric", cd = 20},
["m4"] = {  spell = "Thunder Wave",minLv = 40,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 12,type = "electric",cd = 15},
["m5"] = {  spell = "Rollout",minLv = 40,ex = 4600008,base1 = 125,target = "no",base2 = 175,dista = 100,bonus = 2.5,type = "rock",cd = 40},
["m6"] = {  spell = "Charge Beam", minLv = 42, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 14.5, type = "electric",cd = 40},
["m7"] = { spell = "Electric Storm", minLv = 48, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 20, type = "electric",cd = 60},
["m8"] = {  spell = "Selfdestruct",minLv = 50,ex = 7500007,base1 = 1500,base2 = 2000,dista = 10,bonus = 21,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Electrode" , nmoves= 8 , spellm1 = "Spark" ,exm1=964609,spellm2="Thundershock",exm2 = 884002,spellm3= "Thunder Bolt",exm3=879855,spellm4 = "Thunder Wave",exm4=589785,spellm5 = "Rollout",exm5=4600008,spellm6 = "Charge Beam",exm6=264604,spellm7 = "Electric Storm",exm7=868968,spellm8 = "Selfdestruct",exm8=7500007},
["XD"] = { descricao = "It stores electric energy under very high pressure. It often explodes with little or no provocation.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Light",evoluction = "Voltorb: Level 15\nElectrode Level 40",type = "is a Electric-type"},
},

["Shiny Electrode"] = {
["m1"] = {  spell = "Spark", minLv = 60, ex = 964609, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 9.5, type = "electric",cd = 30},
["m2"] = {  spell = "Thundershock",minLv = 60,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 8.8,type = "electric",cd = 9 },
["m3"] = {  spell = "Thunder Bolt",minLv = 60, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 6.8, type = "electric", cd = 20},
["m4"] = {  spell = "Thunder Wave",minLv = 60,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 13,type = "electric",cd = 15},
["m5"] = {  spell = "Rollout",minLv = 60,ex = 4600008,base1 = 125,target = "no",base2 = 175,dista = 100,bonus = 3.5,type = "rock",cd = 40},
["m6"] = {  spell = "Charge Beam", minLv = 62, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 18.5, type = "electric",cd = 40},
["m7"] = { spell = "Electric Storm", minLv = 68, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 23, type = "electric",cd = 60},
["m8"] = {  spell = "Selfdestruct",minLv = 70,ex = 7500007,base1 = 1500,base2 = 2000,dista = 10,bonus = 26,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Shiny Electrode" , nmoves= 8 , spellm1 = "Spark" ,exm1=964609,spellm2="Thundershock",exm2 = 884002,spellm3= "Thunder Bolt",exm3=879855,spellm4 = "Thunder Wave",exm4=589785,spellm5 = "Rollout",exm5=4600008,spellm6 = "Charge Beam",exm6=264604,spellm7 = "Electric Storm",exm7=868968,spellm8 = "Selfdestruct",exm8=7500007},
["XD"] = { descricao = "It stores electric energy under very high pressure. It often explodes with little or no provocation.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Light",evoluction = "Voltorb: Level 25\nElectrode Level 60",type = "is a Electric-type"},
},

["Cubone"] = {
["m1"] = {  spell = "Headbutt", minLv = 15, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {  spell = "Bonemerang", minLv = 15, ex = 965625, base1 = 150, base2 = 151, dista = 8,target = "no",bonus = 13, type = "ground",cd = 15},
["m3"] = {  spell = "Bone Club",minLv = 25, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 3.8, type = "ground", cd = 20},
["m4"] = {  spell = "Bone Slash",minLv = 15,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 5.8,type = "ground",cd = 9 },
["m5"] = {  spell = "Rage",minLv = 30,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 2,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Cubone" , nmoves= 5 , spellm1 = "Headbutt" ,exm1=262248,spellm2="Bonemerang",exm2 = 965625,spellm3= "Bone Club",exm3=879855,spellm4 = "Bone Slash",exm4=884002,spellm5 = "Rage",exm5=651482},
["XD"] = { descricao = "Because it never removes its skull helmet, no one has ever seen this Pokémon’s real face.",desvantagem = "Weaknesses: \n Grass/Ice/Water",habilidade = "Habilites: Dig,Rock Smash,headbutt",evoluction = "Cubone: Level 15\nMarowak Level 70",type = "is a Ground-type"},
},

["Marowak"] = {
["m1"] = {  spell = "Headbutt", minLv = 70, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "normal",cd = 10},
["m2"] = {  spell = "Bonemerang", minLv = 70, ex = 965625, base1 = 150, base2 = 151, dista = 8,target = "no",bonus = 15, type = "ground",cd = 25},
["m3"] = {  spell = "Bone Club",minLv = 70, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 6.8, type = "ground", cd = 20},
["m4"] = {  spell = "Bone Slash",minLv = 70,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 7.8,type = "ground",cd = 9 },
["m5"] = {  spell = "Mud Shot",minLv = 70,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 7.9,type = "ground",cd = 9},
["m6"] = {  spell = "Earthshock",minLv = 70,ex = 5600007,base1 = 300,base2 = 301,dista = 10,bonus = 13.8,type = "ground",target = "no",cd = 60},
["m7"] = {  spell = "Shockwave",minLv = 75,x = 5585539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 15,type = "ground",cd = 65},
["m8"] = {  spell = "Bone Rain", minLv = 80, ex = 965625, base1 = 150, base2 = 151, dista = 8,target = "no",bonus = 20, type = "ground",cd = 90},
["m9"] = {  spell = "Rage",minLv = 70,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 4,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Marowak" , nmoves= 9 , spellm1 = "Headbutt" ,exm1=262248,spellm2="Bonemerang",exm2 = 965625,spellm3= "Bone Club",exm3=879855,spellm4 = "Bone Slash",exm4=884002,spellm5 = "Mud Shot",exm5=495361,spellm6 = "Earthshock",exm6=5600007,spellm7 = "Shockwave",exm7=5585539,spellm8 = "Bone Rain",exm8=965625,spellm9 = "Rage",exm9=651482},
["XD"] = { descricao = "The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to KO targets.",desvantagem = "Weaknesses: \n Grass/Ice/Water",habilidade = "Habilites: Dig,Rock Smash,Headbutt",evoluction = "Cubone: Level 15\nMarowak Level 70",type = "is a Ground-type"},
},

["Hitmonlee"] = {
["m1"] = {  spell = "Triple Kick Lee",minLv = 80,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 4.0,type = "fighting",cd = 20},
["m2"] = {  spell = "Mega Kick", minLv = 75, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 4, type = "fighting",cd = 10},
["m3"] = {  spell = "Multi-Kick",minLv = 75,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 2,type = "fighting",cd = 35},
["m4"]=  {  spell = "Furious Legs",minLv = 80,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "fighting",target = "no",cd = 45},
["!cd"] = { pokenome= "Hitmonlee" , nmoves= 4 , spellm1 = "Triple Kick Lee" ,exm1=4556803,spellm2="Mega Kick",exm2 = 552848,spellm3= "Multi-Kick",exm3=4900889,spellm4 = "Furious Legs",exm4= 399559},
["XD"] = { descricao = "When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.",desvantagem = "Weaknesses: \n Flying/Psychic",habilidade = "Habilites: Rock Smash",evoluction = "Hitmonlee Level 75",type = "is a Fighting-type"},
},

["Elite Hitmonlee"] = {
["m1"] = {  spell = "Triple Kick Lee",minLv = 102,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 4.0,type = "fighting",cd = 20},
["m2"] = {  spell = "Mega Kick", minLv = 100, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 4, type = "fighting",cd = 10},
["m3"] = {  spell = "Multi-Kick",minLv = 100,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 2,type = "fighting",cd = 35},
["m4"]=  {  spell = "Furious Legs",minLv = 104,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "fighting",target = "no",cd = 45},
["!cd"] = { pokenome= "Elite Hitmonlee" , nmoves= 4 , spellm1 = "Triple Kick Lee" ,exm1=4556803,spellm2="Mega Kick",exm2 = 552848,spellm3= "Multi-Kick",exm3=4900889,spellm4 = "Furious Legs",exm4= 399559},
["XD"] = { descricao = "When in a hurry, its legs lengthen progressively Elite hitmonlee. It runs smoothly with extra long, loping strides.",desvantagem = "Weaknesses: \n Flying/Psychic",habilidade = "Habilites: Rock Smash",evoluction = "Hitmonlee Level 100",type = "is a Fighting-type"},
},

["Hitmonchan"] = {
["m1"] = {  spell = "Triple Punch",minLv = 80,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 4.0,type = "fighting",cd = 20},
["m2"] = {  spell = "Mega Punch", minLv = 75, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "fighting",cd = 10},
["m3"] = {  spell = "Punch-Machine",minLv = 76,ex = 4900889,base1 = 90,base2 = 110,dista = 4,bonus = 4,type = "fighting",cd = 60},
["m4"]=  {  spell = "Ultimate Champion",minLv = 80,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "fighting",target = "no",cd = 45},
["m5"]=  {  spell = "Element Hand",minLv = 75,ex = 499559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "fighting",target = "no",cd = 3},
["!cd"] = { pokenome= "Hitmonchan" , nmoves= 5, spellm1 = "Triple Punch" ,exm1=4556803,spellm2="Mega Punch",exm2 = 552848,spellm3= "Punch-Machine",exm3=4900889,spellm4 = "Ultimate Champion",exm4= 399559,spellm5 = "Element Hand",exm5= 499559},
["XD"] = { descricao = "While apparently doing nothing, it fires punches in lightning fast volleys that are impossible to see.",desvantagem = "Weaknesses: \n Flying/Psychic",habilidade = "Habilites: Rock Smash",evoluction = "Hitmonchan Level 75",type = "is a Fighting-type"},
},

["Elite Hitmonchan"] = {
["m1"] = {  spell = "Triple Punch",minLv = 105,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 4.0,type = "fighting",cd = 20},
["m2"] = {  spell = "Mega Punch", minLv = 100, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "fighting",cd = 10},
["m3"] = {  spell = "Punch-Machine",minLv = 102,ex = 4900889,base1 = 90,base2 = 110,dista = 4,bonus = 4,type = "fighting",cd = 60},
["m4"]=  {  spell = "Ultimate Champion",minLv = 106,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "fighting",target = "no",cd = 45},
["m5"]=  {  spell = "Element Hand",minLv = 100,ex = 499559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "fighting",target = "no",cd = 3},
["!cd"] = { pokenome= "Elite Hitmonchan" , nmoves= 5, spellm1 = "Triple Punch" ,exm1=4556803,spellm2="Mega Punch",exm2 = 552848,spellm3= "Punch-Machine",exm3=4900889,spellm4 = "Ultimate Champion",exm4= 399559,spellm5 = "Element Hand",exm5= 499559},
["XD"] = { descricao = "When in a hurry, its legs lengthen progressively Elite hitmonchan. It runs smoothly with extra long, loping strides.",desvantagem = "Weaknesses: \n Flying/Psychic",habilidade = "Habilites: Rock Smash",evoluction = "Hitmonchan Level 100",type = "is a Fighting-type"},
},


["Lickitung"] = {
["m1"] = {  spell = "Lick", minLv = 45,ex = 3404556, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 10},
["m2"] = {  spell = "Super Sonic", minLv = 45,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 15},
["m3"] = {  spell = "Headbutt", minLv = 45, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "normal",cd = 10},
["m4"] = {  spell = "Doubleslap",minLv = 45,ex = 895451,base1 = 235,base2 = 240,dista = 1,bonus = 4.9,type = "normal",cd = 5},
["m5"] = {  spell = "Mega Punch", minLv = 45, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "fighting",cd = 15},
["m6"] = {  spell = "Iron Tail",minLv = 45,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 3,type = "normal",cd = 4},
["m7"] = {  spell = "Squishy Licking",minLv = 50,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 15,type = "normal",cd = 35},
["m8"] = {  spell = "Rage",minLv = 45,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 3,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Lickitung" , nmoves= 8 , spellm1 = "Lick" ,exm1=3404556,spellm2="Super Sonic",exm2 = 9260905,spellm3= "Headbutt",exm3=262248,spellm4 = "Doubleslap",exm4=895451,spellm5 = "Mega Punch",exm5=552848,spellm6 = "Iron Tail",exm6=488523,spellm7 = "Squishy Licking",exm7=589785,spellm8 = "Rage",exm8=651482},
["XD"] = { descricao = "Its tongue can be extended like a chameleon’s. It leaves a tingling sensation when it licks enemies.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: Headbutt",evoluction = "Lickitung Level 45",type = "is a Normal-type"},
},

["Koffing"] = {
["m1"] = {  spell = "Mud Shot",minLv = 30,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m2"] = {  spell = "Acid",minLv = 30, ex = 879752, base1 = 230, base2 = 245, dista = 2, bonus = 4.7, type = "poison", cd = 20},
["m3"] = {  spell = "Headbutt", minLv = 30, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 4, type = "normal",cd = 19},
["m4"] = {  spell = "Mud Bomb",minLv = 30, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 3.5, type = "ground", cd = 25},
["m5"] = {  spell = "Poison Bomb", minLv = 35, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 8, type = "poison",cd = 30},
["m6"] = {  spell = "Poison Gun", minLv = 38, ex = 624568, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 11, type = "poison",cd = 50},
["m7"] = {  spell = "Poison Gas", minLv = 40, ex = 415554, base1 = 750, base2 = 650, dista = 6,bonus = 1.5,target = "no",type = "poison", cd = 45},
["m8"] = {  spell = "Selfdestruct",minLv = 50,ex = 7500007,base1 = 1500,base2 = 2000,dista = 10,bonus = 21,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Koffing" , nmoves= 8 , spellm1 = "Mud Shot" ,exm1=495361,spellm2="Acid",exm2 = 879752,spellm3= "Headbutt",exm3=262248,spellm4 = "Mud Bomb",exm4=432498,spellm5 = "Poison Bomb",exm5=518935,spellm6 = "Poison Gun",exm6=624568,spellm7 = "Poison Gas",exm7=415554,spellm8 = "Selfdestruct",exm8=7500007},
["XD"] = { descricao = "Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.",desvantagem = "Weaknesses: \n Ground/Psychic",habilidade = "Habilites: headbutt",evoluction = "Koffing: Level 30\nWeezing: Level 85",type = "is a Poison-type"},
},

["Weezing"] = {
["m1"] = {  spell = "Mud Shot",minLv = 85,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 6.9,type = "ground",cd = 9},
["m2"] = {  spell = "Acid",minLv = 85, ex = 879752, base1 = 230, base2 = 245, dista = 2, bonus = 9.7, type = "poison", cd = 20},
["m3"] = {  spell = "Headbutt", minLv = 85, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 7, type = "normal",cd = 19},
["m4"] = {  spell = "Mud Bomb",minLv = 85, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 9.5, type = "ground", cd = 25},
["m5"] = {  spell = "Poison Bomb", minLv = 87, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 15, type = "poison",cd = 30},
["m6"] = {  spell = "Poison Gun", minLv = 85, ex = 624568, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 17, type = "poison",cd = 50},
["m7"] = {  spell = "Poison Gas", minLv = 86, ex = 415554, base1 = 750, base2 = 650, dista = 6,bonus = 3.5,target = "no",type = "poison", cd = 45},
["m8"] = {  spell = "Mortal Gas", minLv = 90, ex = 915554, base1 = 750, base2 = 650, dista = 6,target = "no",bonus = 20,type = "poison", cd = 100},
["m9"] = {  spell = "Selfdestruct",minLv = 90,ex = 7500007,base1 = 1500,base2 = 2000,dista = 10,bonus = 21,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Weezing" , nmoves= 9 , spellm1 = "Mud Shot" ,exm1=495361,spellm2="Acid",exm2 = 879752,spellm3= "Headbutt",exm3=262248,spellm4 = "Mud Bomb",exm4=432498,spellm5 = "Poison Bomb",exm5=518935,spellm6 = "Poison Gun",exm6=624568,spellm7 = "Poison Gas",exm7=415554,spellm8 = "Mortal Gas",exm8=915554,spellm9 = "Selfdestruct",exm9=7500007},
["XD"] = { descricao = "Where two kinds of poison gases meet, 2 KOFFINGs can fuse into a Weezing over many years.",desvantagem = "Weaknesses: \n Ground/Psychic",habilidade = "Habilites: headbutt",evoluction = "Koffing: Level 30\nWeezing: Level 85",type = "is a Poison-type"},
},

["Kangaskhan"] = {
["m1"] = {spell = "Headbutt",minLv = 85,ex = 4456803,base1 = 80,base2 = 85,dista = 1,bonus = 8.0,type = "normal",cd = 9},
["m2"] = {spell = "Scratch",minLv = 85,ex = 634091,base1 = 190,base2 = 200,dista = 1,bonus = 8.5,type = "normal",cd = 15},
["m3"] = {spell = "Dizzy Punch",minLv = 85,ex = 829251,base1 = 335,base2 = 340,dista = 1,bonus = 2.9,type = "normal",cd = 15},
["m4"] = {spell = "Bite",minLv = 85,ex = 812922,base1 = 200,base2 = 210,dista = 1,bonus = 7.7,type = "normal",cd = 9},
["m5"] = {spell = "Mega Punch",minLv = 85,ex = 886771,base1 = 335,base2 = 440,dista = 1,bonus = 8.9,type = "fighting",cd = 35},
["m6"] = {spell = "Shockwave",minLv = 85,x = 5585539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 14,type = "ground",cd = 65},
["m7"] = {spell = "Earthshock",minLv = 86,ex = 5600007,base1 = 300,base2 = 301,dista = 10,bonus = 12.8,type = "ground",target = "no",cd = 70},
["m8"] = {spell = "Giga Impact",minLv = 95,ex = 7288335,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 5.5,type = "ground",cd = 80},
["m9"] = {spell = "Rest",minLv = 91,ex = 6843433,base1 = 305,base2 = 316,dista = 10,target = "no",bonus = 6.5,type = "ground",cd = 90},
["!cd"] = { pokenome= "Kangaskhan" , nmoves= 9 , spellm1 = "Headbutt" ,exm1=4456803,spellm2="Scratch",exm2 = 634091,spellm3= "Dizzy Punch",exm3=829251,spellm4 = "Bite",exm4=812922,spellm5 = "Mega Punch",exm5=886771,spellm6 = "Shockwave",exm6=5585539,spellm7 = "Earthshock",exm7=5600007,spellm8 = "Giga Impact",exm8=7288335,spellm9 = "Rest",exm9=6843433},
["XD"] = { descricao = "The infant rarely ventures out of its mother’s protective pouch until it is 3 years old.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: Headbutt",evoluction = "Kangashan Level 85",type = "is a Normal-type"},
},

["Scyther"] = {
["m1"] = {  spell = "Quick Attack", minLv = 85, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "normal",cd = 5},
["m2"] = {  spell = "Fury Attack",minLv = 85,ex = 2548939,base1 = 255,base2 = 260,dista = 1,bonus = 7,type = "bug",cd = 25},
["m3"] = {  spell = "Slash",minLv = 85,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 9,type = "normal",cd = 9},
["m4"] = {  spell = "Wing Attack",minLv = 85,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 18,type = "flying",target = "no",cd = 29},
["m5"] = {  spell = "Pin Missile",minLv = 85,ex = 969741,base1 = 165,base2 = 175,dista = 8,bonus = 12,type = "bug",cd = 45},
["m6"] = {  spell = "Fury Cutter",minLv = 85,ex = 238939,base1 = 255,base2 = 260,dista = 8,bonus = 13,type = "bug",target = "no",cd = 25},
["m7"] = {  spell = "Team Slice",minLv = 95,ex = 524576,base1 = 200,base2 = 220,dista = 8,target = "no",bonus = 25.2,type = "bug",cd = 75},
["m8"] = {  spell = "String Shot",minLv = 85,ex = 333267,base1 = 145,base2 = 150,dista = 3,bonus = 5,type = "bug",cd = 5},
["m9"]=  {  spell = "Agility",minLv = 90,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.9,type = "normal",target = "no",cd = 45},
["!cd"]= {  pokenome= "Scyther" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=262248,spellm2="Fury Attack",exm2 = 2548939,spellm3= "Slash",exm3=4900882,spellm4= "Wing Attack",exm4=900427,spellm5= "Pin Missile",exm5=969741,spellm6= "Fury Cutter",exm6=238939,spellm7= "Team Slice",exm7=524576,spellm8= "String Shot",exm8=333267,spellm9= "Agility",exm9=399559},
["XD"] = { descricao = "With ninja-like agility and speed, it can create the illusion that there is more than one.",desvantagem = "Weaknesses: \n Fire/Rock/Flying/Electric/Ice",habilidade = "Habilites: cut",evoluction = "Scyther: Level 85",type = "is a dual-type Bug/Flying"},
},
["Shiny Scyther"] = {
["m1"] = {  spell = "Quick Attack", minLv = 100, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 12, type = "normal",cd = 5},
["m2"] = {  spell = "Fury Attack",minLv = 100,ex = 2548939,base1 = 255,base2 = 260,dista = 1,bonus = 9,type = "bug",cd = 25},
["m3"] = {  spell = "Slash",minLv = 100,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 11,type = "normal",cd = 9},
["m4"] = {  spell = "Wing Attack",minLv = 100,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 19,type = "flying",target = "no",cd = 29},
["m5"] = {  spell = "Pin Missile",minLv = 100,ex = 969741,base1 = 165,base2 = 175,dista = 8,bonus = 13,type = "bug",cd = 45},
["m6"] = {  spell = "Fury Cutter",minLv = 100,ex = 238939,base1 = 255,base2 = 260,dista = 8,bonus = 14,type = "bug",target = "no",cd = 25},
["m7"] = {  spell = "Team Slice",minLv = 110,ex = 524576,base1 = 200,base2 = 220,dista = 8,target = "no",bonus = 29.2,type = "bug",cd = 75},
["m8"] = {  spell = "String Shot",minLv = 100,ex = 333267,base1 = 145,base2 = 150,dista = 3,bonus = 7,type = "bug",cd = 5},
["m9"]=  {  spell = "Agility",minLv = 105,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 5.9,type = "normal",target = "no",cd = 45},
["!cd"]= {  pokenome= "Shiny Scyther" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=262248,spellm2="Fury Attack",exm2 = 2548939,spellm3= "Slash",exm3=4900882,spellm4= "Wing Attack",exm4=900427,spellm5= "Pin Missile",exm5=969741,spellm6= "Fury Cutter",exm6=238939,spellm7= "Team Slice",exm7=524576,spellm8= "String Shot",exm8=333267,spellm9= "Agility",exm9=399559},
["XD"] = { descricao = "With ninja-like agility and speed, it can create the illusion that there is more than one.",desvantagem = "Weaknesses: \n Fire/Rock/Flying/Electric/Ice",habilidade = "Habilites: cut",evoluction = "Scyther: Level 100",type = "is a dual-type Bug/Flying"},
},

["Jynx"] = {
["m1"] = {  spell = "Doubleslap",minLv = 80,ex = 8964941,base1 = 135,base2 = 140,dista = 1,bonus = 5.9,type = "normal",cd = 5},
["m2"] = {  spell = "Lovey Kiss",minLv = 80,ex = 8445601,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "normal",cd = 9},
["m3"] = {  spell = "Egg Bomb", minLv = 81,ex = 5953831, base1 = 400, base2 = 401, dista = 8, bonus = 15.5,type = "normal",cd = 9},
["m4"] = {  spell = "Ice Punch", minLv = 82, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "ice",cd = 35},
["m5"] = {  spell = "Great Love",minLv = 83,ex = 352031,base1 = 335,base2 = 345,dista = 10,bonus = 15,type = "normal",target = "no",cd = 55},
["m6"] = {  spell = "Psy Wave",minLv = 80,ex = 988455,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m7"] = {  spell = "Psychic", minLv = 80, ex = 775994, base1 = 225,base2 = 225, bonus = 25,type = "psychic",target = "no",cd = 35},
["m8"]=  {  spell = "Icy Wind",minLv = 80,ex = 959952,base1 = 100,base2 = 120,dista = 8,bonus = 9.5,type = "ice",target = "no",cd = 45},
["m9"] = {  spell = "Ice Beam", minLv = 80, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 15.5, type = "ice",cd = 40},
["m10"] = {  spell = "Aurora Beam", minLv = 87, ex = 415554, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 25.5,type = "ice", cd = 65},
["m11"] = {  spell = "Blizzard", minLv = 85, ex = 643924, base1 = 750, base2 = 650, dista = 100, bonus = 27, target = "no", type = "ice",cd = 100},
["!cd"] = { pokenome= "Jynx" , nmoves= 11, spellm1 = "Doubleslap" ,exm1=8964941,spellm2="Lovey Kiss",exm2 = 8445601,spellm3= "Egg Bomb",exm3=5953831,spellm4 = "Ice Punch",exm4=262248,spellm5 = "Great Love",exm5=352031,spellm6 = "Psy Wave",exm6=988455,spellm7 = "Psychic",exm7=775994,spellm8 = "Ice Wynd",exm8=959952,spellm9 = "Ice Beam",exm9=264604,spellm10 = "Aurora Beam",exm10=415554,spellm11 = "Blizzard",exm11=643924},
["XD"] = { descricao = "It seductively wiggles its hips as it walks. It can cause people to dance in unison with it.",desvantagem = "Weaknesses: \n Fire/Bug/Ghost/Rock",habilidade = "Habilites: none",evoluction = "Jynx: Level 80",type = "is a dual-type Ice/Psychic"},
},
["Shiny Jynx"] = {
["m1"] = {  spell = "Doubleslap",minLv = 100,ex = 8964941,base1 = 135,base2 = 140,dista = 1,bonus = 7.9,type = "normal",cd = 5},
["m2"] = {  spell = "Lovey Kiss",minLv = 100,ex = 8445601,base1 = 135,base2 = 140,dista = 5,bonus = 3.9,type = "normal",cd = 9},
["m3"] = {  spell = "Egg Bomb", minLv = 101,ex = 5953831, base1 = 400, base2 = 401, dista = 8, bonus = 17.5,type = "normal",cd = 9},
["m4"] = {  spell = "Ice Punch", minLv = 102, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 12, type = "ice",cd = 35},
["m5"] = {  spell = "Great Love",minLv = 103,ex = 352031,base1 = 335,base2 = 345,dista = 10,bonus = 17,type = "normal",target = "no",cd = 55},
["m6"] = {  spell = "Psy Wave",minLv = 100,ex = 988455,base1 = 335,base2 = 345,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 20},
["m7"] = {  spell = "Psychic", minLv = 100, ex = 775994, base1 = 225,base2 = 225, bonus = 28,type = "psychic",target = "no",cd = 35},
["m8"]=  {  spell = "Icy Wind",minLv = 100,ex = 959952,base1 = 100,base2 = 120,dista = 8,bonus = 10.5,type = "ice",target = "no",cd = 45},
["m9"] = {  spell = "Ice Beam", minLv = 100, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 17.5, type = "ice",cd = 40},
["m10"] = {  spell = "Aurora Beam", minLv = 107, ex = 415554, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 28.5,type = "ice", cd = 65},
["m11"] = {  spell = "Blizzard", minLv = 105, ex = 643924, base1 = 750, base2 = 650, dista = 100, bonus = 30, target = "no", type = "ice",cd = 100},
["!cd"] = { pokenome= "Shiny Jynx" , nmoves= 11, spellm1 = "Doubleslap" ,exm1=8964941,spellm2="Lovey Kiss",exm2 = 8445601,spellm3= "Egg Bomb",exm3=5953831,spellm4 = "Ice Punch",exm4=262248,spellm5 = "Great Love",exm5=352031,spellm6 = "Psy Wave",exm6=988455,spellm7 = "Psychic",exm7=775994,spellm8 = "Ice Wynd",exm8=959952,spellm9 = "Ice Beam",exm9=264604,spellm10 = "Aurora Beam",exm10=415554,spellm11 = "Blizzard",exm11=643924},
["XD"] = { descricao = "It seductively wiggles its hips as it walks. It can cause people to dance in unison with it.",desvantagem = "Weaknesses: \n Fire/Bug/Ghost/Rock",habilidade = "Habilites: none",evoluction = "Jynx: Level 100",type = "is a dual-type Ice/Psychic"},
},

["Electabuzz"] = {
["m1"] = {  spell = "Quick Attack", minLv = 70, ex = 566848, base1 = 200, base2 = 201, dista = 1,bonus = 9, type = "normal",cd = 5},
["m2"] = {  spell = "Bite",minLv = 70,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 10},
["m3"] = {  spell = "Iron Tail",minLv = 70,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 9,type = "normal",cd = 9},
["m4"] = {  spell = "Thundershock",minLv = 70,ex = 585002,base1 = 100,base2 = 118,dista = 5,bonus = 9.8,type = "electric",cd = 9 },
["m5"] = {  spell = "Thunder Bolt",minLv = 71, ex = 575855, base1 = 230, base2 = 245, dista = 5, bonus = 7.5, type = "electric", cd = 20},
["m6"] = {  spell = "Thunder Wave",minLv = 70,ex = 585785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 16,type = "electric",cd = 15},
["m7"] = {  spell = "Thunder Punch", minLv = 73, ex = 565848, base1 = 200, base2 = 201, dista = 1,bonus = 18, type = "electric",cd = 35},
["m8"] = {  spell = "Thunder", minLv = 75, ex = 518935, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 27, type = "electric",cd = 60},
["m9"] = {  spell = "Electric Storm", minLv = 80, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 28, type = "electric",cd = 80},
["!cd"] = { pokenome= "Electabuzz" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=566848,spellm2="Bite",exm2 = 964293,spellm3= "Iron Tail",exm3=488523,spellm4 = "Thundershock",exm4=585002,spellm5 = "Thunder Bolt",exm5=575855,spellm6 = "Thunder Wave",exm6=585785,spellm7 = "Thunder Punch",exm7=565848,spellm8 = "Thunder",exm8=518935,spellm9 = "Electric Storm",exm9=868968},
["XD"] = { descricao = "Normally found near power plants, they can wander away and cause major blackouts in cities.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Light",evoluction = "Electabuzz Level 70",type = "is a Electric-type"},
},


["Shiny Electabuzz"] = {
["m1"] = {  spell = "Quick Attack", minLv = 100, ex = 566848, base1 = 200, base2 = 201, dista = 1,bonus = 11, type = "normal",cd = 5},
["m2"] = {  spell = "Bite",minLv = 100,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 10.5,type = "normal",cd = 10},
["m3"] = {  spell = "Iron Tail",minLv = 100,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 11,type = "normal",cd = 9},
["m4"] = {  spell = "Thundershock",minLv = 100,ex = 585002,base1 = 100,base2 = 118,dista = 5,bonus = 11.8,type = "electric",cd = 9 },
["m5"] = {  spell = "Thunder Bolt",minLv = 101, ex = 575855, base1 = 230, base2 = 245, dista = 5, bonus = 8.5, type = "electric", cd = 20},
["m6"] = {  spell = "Thunder Wave",minLv = 100,ex = 585785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 18,type = "electric",cd = 15},
["m7"] = {  spell = "Thunder Punch", minLv = 103, ex = 565848, base1 = 200, base2 = 201, dista = 1,bonus = 21, type = "electric",cd = 35},
["m8"] = {  spell = "Thunder", minLv = 105, ex = 518935, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 31, type = "electric",cd = 60},
["m9"] = {  spell = "Electric Storm", minLv = 100, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 33, type = "electric",cd = 80},
["!cd"] = { pokenome= "Shiny Electabuzz" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=566848,spellm2="Bite",exm2 = 964293,spellm3= "Iron Tail",exm3=488523,spellm4 = "Thundershock",exm4=585002,spellm5 = "Thunder Bolt",exm5=575855,spellm6 = "Thunder Wave",exm6=585785,spellm7 = "Thunder Punch",exm7=565848,spellm8 = "Thunder",exm8=518935,spellm9 = "Electric Storm",exm9=868968},
["XD"] = { descricao = "Normally found near power plants, they can wander away and cause major blackouts in cities.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Light",evoluction = "Electabuzz Level 70",type = "is a Electric-type"},
},

["Jolteon"] = {
["m1"] = {  spell = "Quick Attack", minLv = 70, ex = 566848, base1 = 200, base2 = 201, dista = 1,bonus = 5, type = "normal",cd = 5},
["m2"] = {  spell = "Bite",minLv = 70,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Iron Tail",minLv = 70,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 7,type = "normal",cd = 9},
["m4"] = {  spell = "Thundershock",minLv = 70,ex = 585002,base1 = 100,base2 = 118,dista = 5,bonus = 6.8,type = "electric",cd = 9 },
["m5"] = {  spell = "Thunder Bolt",minLv = 71, ex = 575855, base1 = 230, base2 = 245, dista = 5, bonus = 6.5, type = "electric", cd = 20},
["m6"] = {  spell = "Thunder Wave",minLv = 70,ex = 585785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 10,type = "electric",cd = 15},
["m7"] = {  spell = "Thunder Fang", minLv = 73, ex = 565848, base1 = 200, base2 = 201, dista = 1,bonus = 15, type = "electric",cd = 35},
["m8"] = {  spell = "Thunder", minLv = 75, ex = 518935, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 20, type = "electric",cd = 60},
["m9"] = {  spell = "Pin Missile",minLv = 75,ex = 969741,base1 = 165,base2 = 175,dista = 8,bonus = 10,type = "bug",cd = 45},
["m10"] = { spell = "Zap Cannon", minLv = 72, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 11.5, type = "electric",cd = 40},
["m11"] = {  spell = "Electric Storm", minLv = 80, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 28, type = "electric",cd = 80},
["!cd"] = { pokenome= "Jolteon" , nmoves= 11 , spellm1 = "Quick Attack" ,exm1=566848,spellm2="Bite",exm2 = 964293,spellm3= "Iron Tail",exm3=488523,spellm4 = "Thundershock",exm4=585002,spellm5 = "Thunder Bolt",exm5=575855,spellm6 = "Thunder Wave",exm6=585785,spellm7 = "Thunder Fang",exm7=565848,spellm8 = "Thunder",exm8=518935,spellm9 = "Pin Missile",exm9=969741,spellm10 = "Zap Cannon",exm10=264604,spellm11 = "Electric Storm",exm11=868968},
["XD"] = { descricao = "It accumulates negative ions in the atmosphere to blast out 10000-volt lightning bolts.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Light",evoluction = "Jolteon Level 70",type = "is a Electric-type"},
},

["Shiny Jolteon"] = {
["m1"] = {  spell = "Quick Attack", minLv = 90, ex = 566848, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "normal",cd = 5},
["m2"] = {  spell = "Bite",minLv = 90,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 7.5,type = "normal",cd = 10},
["m3"] = {  spell = "Iron Tail",minLv = 90,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 8,type = "normal",cd = 9},
["m4"] = {  spell = "Thundershock",minLv = 90,ex = 585002,base1 = 100,base2 = 118,dista = 5,bonus = 7.8,type = "electric",cd = 9 },
["m5"] = {  spell = "Thunder Bolt",minLv = 91, ex = 575855, base1 = 230, base2 = 245, dista = 5, bonus = 8.5, type = "electric", cd = 20},
["m6"] = {  spell = "Thunder Wave",minLv = 90,ex = 585785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 13,type = "electric",cd = 15},
["m7"] = {  spell = "Thunder Fang", minLv = 93, ex = 565848, base1 = 200, base2 = 201, dista = 1,bonus = 20, type = "electric",cd = 35},
["m8"] = {  spell = "Thunder", minLv = 95, ex = 518935, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 25, type = "electric",cd = 60},
["m9"] = {  spell = "Pin Missile",minLv = 95,ex = 969741,base1 = 165,base2 = 175,dista = 8,bonus = 15,type = "bug",cd = 45},
["m10"] = { spell = "Zap Cannon", minLv = 92, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 17.5, type = "electric",cd = 40},
["m11"] = {  spell = "Electric Storm", minLv = 90, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 32, type = "electric",cd = 80},
["!cd"] = { pokenome= "Shiny Jolteon" , nmoves= 11 , spellm1 = "Quick Attack" ,exm1=566848,spellm2="Bite",exm2 = 964293,spellm3= "Iron Tail",exm3=488523,spellm4 = "Thundershock",exm4=585002,spellm5 = "Thunder Bolt",exm5=575855,spellm6 = "Thunder Wave",exm6=585785,spellm7 = "Thunder Fang",exm7=565848,spellm8 = "Thunder",exm8=518935,spellm9 = "Pin Missile",exm9=969741,spellm10 = "Zap Cannon",exm10=264604,spellm11 = "Electric Storm",exm11=868968},
["XD"] = { descricao = "It accumulates negative ions in the atmosphere to blast out 10000-volt lightning bolts.",desvantagem = "Weaknesses: \n Ground",habilidade = "Habilites: Light",evoluction = "Jolteon Level 70",type = "is a Electric-type"},
},

["Pinsir"] = {
["m1"] = {  spell = "Quick Attack", minLv = 65, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "normal",cd = 5},
["m2"] = {  spell = "Fury Attack",minLv = 65,ex = 2548939,base1 = 255,base2 = 260,dista = 1,bonus = 6,type = "bug",cd = 25},
["m3"] = {  spell = "Slash",minLv = 65,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 9,type = "normal",cd = 9},
["m4"] = {  spell = "Scratch",minLv = 65,ex = 634091,base1 = 190,base2 = 200,dista = 1,bonus = 8.5,type = "normal",cd = 15},
["m5"] = {  spell = "Pin Missile",minLv = 65,ex = 969741,base1 = 165,base2 = 175,dista = 8,bonus = 12,type = "bug",cd = 45},
["m6"] = {  spell = "Fury Cutter",minLv = 68,ex = 238939,base1 = 255,base2 = 260,dista = 8,bonus = 11,type = "bug",target = "no",cd = 25},
["m7"] = {  spell = "Harden", minLv = 65, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 9},
["m8"] = {  spell = "Guillotine", minLv = 66, ex = 252223, base1 = 268, base2 = 268, dista = 1, bonus = 12,type = "normal", cd = 20},
["m9"]=  {  spell = "Rage",minLv = 67,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.9,type = "normal",target = "no",cd = 45},
["!cd"]= {  pokenome= "Pinsir" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=262248,spellm2="Fury Attack",exm2 = 2548939,spellm3= "Slash",exm3=4900882,spellm4= "Scratch",exm4=634091,spellm5= "Pin Missile",exm5=969741,spellm6= "Fury Cutter",exm6=238939,spellm7= "Harden",exm7=738333,spellm8= "Guillotine",exm8=252223,spellm9= "Rage",exm9=399559},
["XD"] = { descricao = "If it fails to crush the victim in its pincers, it will swing it around and toss it hard.",desvantagem = "Weaknesses: \n Fire/Rock/Flying",habilidade = "Habilites: none",evoluction = "Pinsir: Level 65",type = "is a Bug-type"},
},

["Tauros"] = {
["m1"] = {spell = "Headbutt",minLv = 75,ex = 4456803,base1 = 80,base2 = 85,dista = 1,bonus = 9.0,type = "normal",cd = 9},
["m2"] = {spell = "Quick Attack", minLv = 75, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "normal",cd = 5},
["m3"] = {spell = "Bite",minLv = 75,ex = 812922,base1 = 200,base2 = 210,dista = 1,bonus = 8.7,type = "normal",cd = 9},
["m4"] = {spell = "Horn Attack", minLv = 75,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 12,type = "normal",cd = 9},
["m5"] = {spell = "Thrash",minLv = 79,ex = 876671,base1 = 335,base2 = 440,dista = 8,bonus = 15.9,type = "normal",cd = 35},
["m6"] = {spell = "Hyper Beam",minLv = 80,ex = 4561005,base1 = 485,target = "no",base2 = 500,bonus = 29,type = "normal",cd = 60},
["m7"] = {spell = "Giga Impact",minLv = 85,ex = 7288335,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 2.5,type = "ground",cd = 85},
["m8"] = {spell = "Rest",minLv = 81,ex = 6843433,base1 = 305,base2 = 316,dista = 10,target = "no",bonus = 6.5,type = "ground",cd = 80},
["m9"]=  {spell = "Rage",minLv = 75,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.9,type = "normal",target = "no",cd = 45},
["m10"] = {spell = "Scary Face",minLv = 82,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Tauros" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=4456803,spellm2="Quick Attack",exm2 = 262248,spellm3= "Bite",exm3=812922,spellm4 = "Horn Attack",exm4=764501,spellm5 = "Trash",exm5=876671,spellm6 = "Hyper Beam",exm6=4561005,spellm7 = "Giga Impact",exm7=7288335,spellm8 = "Rest",exm8=6843433,spellm9 = "Rage",exm9=399559,spellm10 = "Scary Face",exm10=9550008},
["XD"] = { descricao = "When it targets an enemy, it charges furiously while whipping its body with its long tails.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: ride\nHeadbutt",evoluction = "Tauros Level 75",type = "is a Normal-type"},
},

["Eevee"] = {
["m1"] = {  spell = "Headbutt",minLv = 25,ex = 4456803,base1 = 80,base2 = 85,dista = 1,bonus = 5.0,type = "normal",cd = 9},
["m2"] = {  spell = "Quick Attack", minLv = 25, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 4, type = "normal",cd = 10},
["m3"] = {  spell = "Sand Attack",minLv = 25,ex = 25332,base1 = 155,base2 = 162,dista = 1,bonus = 5,target = "no",type = "ground",cd = 9},
["m4"] = {  spell = "Bite",minLv = 25,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m5"] = {  spell = "Iron Tail",minLv = 26,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 7,type = "normal",cd = 9},
["m6"] = {  spell = "Great Love",minLv = 28,ex = 352031,base1 = 335,base2 = 345,dista = 10,bonus = 12,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Eevee" , nmoves= 6, spellm1 = "Headbutt" ,exm1=4456803,spellm2="Quick Attack",exm2 = 262248,spellm3= "Sand Attack",exm3=25332,spellm4 = "Bite",exm4=964293,spellm5 = "Iron Tail",exm5=488523,spellm6 = "Great Love",exm6=352031},
["XD"] = { descricao = "Its genetic code is irregular. It may mutate if it is exposed to radiation from element Stones.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: Headbutt",evoluction = "Eevee: Level 25\nJolteon: Level 70\nVaporeon: Level 70\nFlareon: Level 70",type = "is a Normal-type"},
},

["Porygon"] = {
["m1"] = {spell = "Psy beam",minLv = 50,ex = 9554556,base1 = 335,base2 = 345,dista = 8,bonus = 5,type = "psychic",target = "no",cd = 20},
["m2"] = {spell = "Dark Pulse",minLv = 50,ex = 9550003,base1 = 275,base2 = 285,dista = 6,bonus = 3,type = "ghost",cd = 10},
["m3"] = {spell = "Super Sonic", minLv = 50,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 15},
["m4"] = {spell = "Psychic",minLv = 50,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["m5"] = {spell = "Zap Cannon", minLv = 62, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 13.5, type = "electric",cd = 40},
["m6"] = {spell = "Focus",minLv = 60,ex = 985888,base1 = 235,base2 = 245,dista = 10,bonus = 14,target = "no",type = "psychic",cd = 55},
["m7"] = {spell = "Reflect",minLv = 65,ex = 9595597,base1 = 335,base2 = 345,bonus = 11,type = "psychic",target = "no",cd = 40},
["m8"] = {spell = "Psy Target",minLv = 70,ex = 9350899,base1 = 65,base2 = 75,dista = 5,bonus = 3,type = "psychic",target = "no",cd = 50},
["m9"] = {spell = "Restore",minLv = 55,ex = 64423,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 50},
["!cd"] = { pokenome= "Porygon" , nmoves= 9 , spellm1 = "Psy beam" ,exm1=9554556,spellm2="Dark Pulse",exm2 = 9550003,spellm3= "Super Sonic",exm3=9260905,spellm4 = "Psychic",exm4=9550008,spellm5 = "Zap Cannon",exm5=264604,spellm6 = "Focus",exm6=985888,spellm7 = "Reflect",exm7=9595597,spellm8 = "Psy Target",exm8=9350899,spellm9 = "Restore",exm9=64423},
["XD"] = { descricao = "Additional software was installed to make it a better Pokémon. It began acting oddly, however.",desvantagem = "Weaknesses: \n Fighting",habilidade = "Habilites: none",evoluction = "Porygon: Level 50",type = "is a Normal-type"},
},

["Omanyte"] = {
["m1"] = {  spell = "Bite",minLv = 25,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 15},
["m2"] = {  spell = "Rock Throw",minLv = 25,ex = 7655931,base1 = 205,base2 = 210,dista = 5,bonus = 4,type = "rock",cd = 4},
["m3"] = {  spell = "Mud Shot",minLv = 25,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 1.9,type = "ground",cd = 9},
["m4"] = {  spell = "Bubbles",minLv = 25, ex = 298555, base1 = 240, base2 = 245, dista = 8, bonus = 2.5, type = "water", cd = 15},
["m5"] = {  spell = "Water Gun", minLv = 25, ex = 872554, base1 = 250, base2 = 280, dista = 2, target = "no", bonus = 6.5, type = "water",cd = 40},
["m6"] = {  spell = "Water ball", minLv = 25, ex = 526221, base1 = 260, base2 = 271, dista = 1,bonus = 3, type = "water",cd = 20},
["m7"] = {  spell = "Water Spout", minLv = 28, ex = 444684, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 7.5, type = "water",cd = 20},
["m8"] = {  spell = "Acient Power",minLv = 32,ex = 200548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 11.5,type = "rock",cd = 50},
["m9"] = {  spell = "Harden", minLv = 25, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 25},
["!cd"] = { pokenome= "Omanyte" , nmoves= 9, spellm1 = "Bite" ,exm1=964293,spellm2="Rock Throw",exm2 = 7655931,spellm3= "Mud Shot",exm3=455551,spellm4 = "Bubbles",exm4=298555,spellm5 = "Water Gun",exm5=872554,spellm6 = "Water ball",exm6=526221,spellm7 = "Water Spout",exm7=444684,spellm8 = "Acient Power",exm8=200548,spellm9 = "Harden",exm9=738333},
["XD"] = { descricao = "Although long extinct, in rare cases, it can be genetically resurrected from fossils.",desvantagem = "Weaknesses: \n Grass/Electric/Fighting/Ground",habilidade = "Habilites: dig,rock Smash",evoluction = "Omanyte: Level 25\nOmastar: Level 85",type = "is a dual-type Rock/Water"},
},

["Omastar"] = {
["m1"] = {  spell = "Bite",minLv = 85,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 15},
["m2"] = {  spell = "Rock Throw",minLv = 85,ex = 7655931,base1 = 205,base2 = 210,dista = 5,bonus = 8,type = "rock",cd = 4},
["m3"] = {  spell = "Mud Shot",minLv = 85,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 3.9,type = "ground",cd = 9},
["m4"] = {  spell = "Bubbles",minLv = 85, ex = 298555, base1 = 240, base2 = 245, dista = 8, bonus = 3.5, type = "water", cd = 15},
["m5"] = {  spell = "Water Gun", minLv = 85, ex = 872554, base1 = 250, base2 = 280, dista = 2, target = "no", bonus = 12.5, type = "water",cd = 40},
["m6"] = {  spell = "Water ball", minLv = 85, ex = 526221, base1 = 260, base2 = 271, dista = 1,bonus = 10, type = "water",cd = 20},
["m7"] = {  spell = "Water Spout", minLv = 88, ex = 444684, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 17.5, type = "water",cd = 20},
["m8"] = {  spell = "Acient Power",minLv = 92,ex = 200548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 18.5,type = "rock",cd = 50},
["m9"] = {  spell = "Harden", minLv = 85, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 30},
["m10"]= {  spell = "Hydro Rain", minLv = 95, ex = 646954, base1 = 750, base2 = 650, dista = 10, bonus = 15, target = "no", type = "water",cd = 80},
["!cd"] = { pokenome= "Omastar" , nmoves= 10, spellm1 = "Bite" ,exm1=964293,spellm2="Rock Throw",exm2 = 7655931,spellm3= "Mud Shot",exm3=455551,spellm4 = "Bubbles",exm4=298555,spellm5 = "Water Gun",exm5=872554,spellm6 = "Water ball",exm6=526221,spellm7 = "Water Spout",exm7=444684,spellm8 = "Acient Power",exm8=200548,spellm9 = "Harden",exm9=738333,spellm10 = "Hydro Rain",exm10=646954},
["XD"] = { descricao = "A prehistoric Pokémon that died out when its heavy shell made it impossible to catch prey.",desvantagem = "Weaknesses: \n Grass/Electric/Fighting/Ground",habilidade = "Habilites: dig,rock Smash,surf",evoluction = "Omanyte: Level 25\nOmastar: Level 85",type = "is a dual-type Rock/Water"},
},

["Kabuto"] = {
["m1"] = {  spell = "Scratch",minLv = 25,ex = 634091,base1 = 190,base2 = 200,dista = 1,bonus = 5.5,type = "normal",cd = 15},
["m2"] = {  spell = "Rock Throw",minLv = 25,ex = 7655931,base1 = 205,base2 = 210,dista = 5,bonus = 4,type = "rock",cd = 4},
["m3"] = {  spell = "Mud Shot",minLv = 25,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 1.9,type = "ground",cd = 9},
["m4"] = {  spell = "Bubbles",minLv = 25, ex = 298555, base1 = 240, base2 = 245, dista = 8, bonus = 2.5, type = "water", cd = 15},
["m5"] = {  spell = "Slash",minLv = 25,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 4,type = "normal",cd = 9},
["m6"] = {  spell = "Guillotine", minLv = 26, ex = 252223, base1 = 268, base2 = 268, dista = 1, bonus = 8,type = "normal", cd = 20},
["m7"] = {  spell = "Fury Cutter",minLv = 28,ex = 238939,base1 = 255,base2 = 260,dista = 8,bonus = 6,type = "bug",target = "no",cd = 25},
["m8"] = {  spell = "Acient Power",minLv = 32,ex = 200548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 11.5,type = "rock",cd = 50},
["m9"] = {  spell = "Harden", minLv = 25, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 25},
["m10"]=  {  spell = "Rage",minLv = 31,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Kabuto" , nmoves= 10, spellm1 = "Scratch" ,exm1=634091,spellm2="Rock Throw",exm2 = 7655931,spellm3= "Mud Shot",exm3=455551,spellm4 = "Bubbles",exm4=298555,spellm5 = "Slash",exm5=4900882,spellm6 = "Guillotine",exm6=252223,spellm7 = "Fury Cutter",exm7=238939,spellm8 = "Acient Power",exm8=200548,spellm9 = "Harden",exm9=738333,spellm10 = "Rage",exm10=399559},
["XD"] = { descricao = "A Pokémon that was resurrected from a fossil found in what was once the ocean floor eons ago.",desvantagem = "Weaknesses: \n Grass/Electric/Fighting/Ground",habilidade = "Habilites: dig,rock Smash,Surf",evoluction = "Kabuto: Level 25\nKabutops: Level 85",type = "is a dual-type Rock/Water"},
},

["Kabutops"] = {
["m1"] = {  spell = "Scratch",minLv = 85,ex = 634091,base1 = 190,base2 = 200,dista = 1,bonus = 8.5,type = "normal",cd = 15},
["m2"] = {  spell = "Rock Throw",minLv = 85,ex = 7655931,base1 = 205,base2 = 210,dista = 5,bonus = 8,type = "rock",cd = 4},
["m3"] = {  spell = "Mud Shot",minLv = 85,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m4"] = {  spell = "Bubbles",minLv = 85, ex = 298555, base1 = 240, base2 = 245, dista = 8, bonus = 2.9, type = "water", cd = 15},
["m5"] = {  spell = "Slash",minLv = 85,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 7,type = "normal",cd = 9},
["m6"] = {  spell = "Guillotine", minLv = 85, ex = 252223, base1 = 268, base2 = 268, dista = 1, bonus = 13,type = "normal", cd = 20},
["m7"] = {  spell = "Fury Cutter",minLv = 88,ex = 238939,base1 = 255,base2 = 260,dista = 8,bonus = 13,type = "bug",target = "no",cd = 25},
["m8"] = {  spell = "Acient Power",minLv = 92,ex = 200548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 20.5,type = "rock",cd = 50},
["m9"] = {  spell = "Harden", minLv = 85, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 25},
["m10"]=  {  spell = "Rage",minLv = 91,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 2.9,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Kabutops" , nmoves= 10, spellm1 = "Scratch" ,exm1=634091,spellm2="Rock Throw",exm2 = 7655931,spellm3= "Mud Shot",exm3=455551,spellm4 = "Bubbles",exm4=298555,spellm5 = "Slash",exm5=4900882,spellm6 = "Guillotine",exm6=252223,spellm7 = "Fury Cutter",exm7=238939,spellm8 = "Acient Power",exm8=200548,spellm9 = "Harden",exm9=738333,spellm10 = "Rage",exm10=399559},
["XD"] = { descricao = "Its sleek shape is perfect for swimming. It slashes prey with its claws and drains the body fluids.",desvantagem = "Weaknesses: \n Grass/Electric/Fighting/Ground",habilidade = "Habilites: dig,rock Smash,Surf",evoluction = "Kabuto: Level 25\nKabutops: Level 85",type = "is a dual-type Rock/Water"},
},

["Aerodactyl"] = {
["m1"] = {  spell = "Roar",minLv = 100,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["m2"] = {  spell = "Super Sonic", minLv = 100,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 15},
["m3"] = {  spell = "Rock Throw",minLv = 100,ex = 7655931,base1 = 205,base2 = 210,dista = 5,bonus = 10,type = "rock",cd = 4},
["m4"] = {  spell = "Mud Shot",minLv = 100,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 4.9,type = "ground",cd = 30},
["m5"] = {  spell = "Bite",minLv = 100,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 11.5,type = "normal",cd = 15},
["m6"] = {  spell = "Headbutt",minLv = 100,ex = 4456803,base1 = 80,base2 = 85,dista = 1,bonus = 9.0,type = "normal",cd = 20},
["m7"] = {  spell = "Rock Slide",minLv = 102,ex = 7500069,base1 = 205,base2 = 206,dista = 4,bonus = 8,type = "rock",cd = 15},
["m8"] = {  spell = "Fire Fang",minLv = 100,ex = 200578,base1 = 220,base2 = 235,dista = 1,bonus = 7.5,type = "fire",cd = 15},
["m9"] = {  spell = "Acient Power",minLv = 104,ex = 500548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 25.5,type = "rock",cd = 45},
["m10"]=  { spell = "Hyper Beam",minLv = 109,ex = 4561005,base1 = 485,target = "no",base2 = 500,bonus = 35,type = "normal",cd = 60},
["m11"] = { spell = "Wing Attack",minLv = 102,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 18,type = "flying",target = "no",cd = 29},
["m12"] = { spell = "Falling Rocks",minLv = 110,ex = 7890399,base1 = 300,base2 = 301,dista = 5,target = "no",bonus = 25,type = "rock",cd = 69},
["!cd"] = { pokenome= "Aerodactyl" , nmoves= 12, spellm1 = "Roar" ,exm1=9550008,spellm2="Super Sonic",exm2 = 9260905,spellm3= "Rock Throw",exm3=7655931,spellm4 = "Mud Shot",exm4=455551,spellm5 = "Bite",exm5=964293,spellm6 = "Headbutt",exm6=4456803,spellm7 = "Rock Slide",exm7=7500069,spellm8 = "Fire Fang",exm8=200578,spellm9 = "Acient Power",exm9=500548,spellm10 = "Hyper Beam",exm10=4561005,spellm11 = "Wing Attack",exm11=900427,spellm12 = "Falling Rocks",exm12=7890399},
["XD"] = { descricao = "A ferocious, prehistoric Pokémon that goes for the enemy’s throat with its serrated saw-like fangs.",desvantagem = "Weaknesses: \n Ice/Electric/Rock/Water",habilidade = "Habilites: Fly\nHeadbutt",evoluction = "Aerodactyl: Level 100",type = "is a dual-type Rock/Flying"},
},



}


function onCastSpell(cid, var)
if getPlayerStorageValue(cid, 8) >= 1 then
	return true
end
 if getPlayerStorageValue(cid, 10) >= 1 then
 

	
	return true
	end

 if getPlayerStorageValue(cid, 9) >= 1 then
setPlayerStorageValue(cid, 9,0)	
	return true
	end

--doBroadcastMessage("Testando o pokemon "..getCreatureName(cid).."")

pokemon = moveswild[getCreatureName(cid)]["!cd"]


if not pokemon then
doBroadcastMessage("Houve erro no pokemon "..getCreatureName(cid).."")
return true
end

local moveatack = math.random(1,pokemon.nmoves)

local fala = "m"..moveatack..""
magia = moveswild[getCreatureName(cid)][fala]

if not magia then
doBroadcastMessage("Houve erro no pokemon "..getCreatureName(cid)..",na sequencia "..fala.."")
return true
end
if getPlayerStorageValue(cid, 4555) == 1 then
local npc = getPlayerStorageValue(cid, 4655)
local nomedopoke = pokemon.pokenome
local nomedamagia = magia
doCreatureSay(npc,  ""..nomedopoke.." ,  "..magia.spell..".", 1)
getPlayerStorageValue(cid, 4559)
end

if (hasCondition(cid, CONDITION_HASTE)) or getPlayerStorageValue(cid, 3) >= 1 then
if math.random(1,100) <= 33 then
	doSendAnimatedText(getThingPos(cid), "MISS", 215)
return true
	end	

end
	
if getPlayerStorageValue(cid, 5) >= 1 then
		
		
doSendAnimatedText(getThingPos(cid), "SELF HIT", 180)
			

return true
	
end
if magia.target ~= "no" then
if not isMonster(getCreatureTarget(cid)) and not isPlayer(getCreatureTarget(cid)) then
	return 0
	end
		if getDistanceBetween(getThingPos(cid), getThingPos(getCreatureTarget(cid))) > magia.dista then
		return 0
		end
		if not isSightClear(getThingPos(cid), getThingPos(getCreatureTarget(cid)), false) then
		return 0
		end
end
	if magia.type == "flying" then
		elementa = FLYDAMAGE
	elseif magia.type == "ground" then
		elementa = GROUNDDAMAGE
	elseif magia.type == "electric" then
		elementa = ELECTRICDAMAGE
	elseif magia.type == "ghost" then
		elementa = GHOSTDAMAGE
	elseif magia.type == "normal" then
		elementa = NORMALDAMAGE
	elseif magia.type == "fighting" then
		elementa = FIGHTDAMAGE
	elseif magia.type == "poison" then
		elementa = POISONDAMAGE
	elseif magia.type == "rock" then
		elementa = ROCKDAMAGE
	elseif magia.type == "bug" then
		elementa = BUGDAMAGE
	elseif magia.type == "fire" then
		elementa = FIREDAMAGE
	elseif magia.type == "water" then
		elementa = WATERDAMAGE
	elseif magia.type == "grass" then
		elementa = GRASSDAMAGE
	elseif magia.type == "psychic" then
		elementa = PSYCHICDAMAGE
	elseif magia.type == "ice" then
		elementa = ICEDAMAGE
	elseif magia.type == "dragon" then
		elementa = DRAGONDAMAGE
	end

	local element = elementa
	--local num1 = (magia.base1)
	--local num2 = (magia.base2)
local num1 = (magia.minLv*1.8)
local num2 = (magia.minLv*2.8)
	local num3 = (magia.bonus)

leveldoplayer = pokes[getCreatureName(cid)].level
if getPlayerStorageValue(cid, 4559) >= 1 then
lvpokemon = getPlayerStorageValue(cid, 4559)+leveldoplayer
else
lvpokemon = leveldoplayer
end


  
	if getPlayerStorageValue(cid, 254) >= 1 then
	num3 = num3 * 1.8
	setPlayerStorageValue(cid, 254, 0)
	end
	setPlayerStorageValue(cid, 1000, ((num1)+(lvpokemon*(num3))))
	if magia.spell == "Dynamic Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
local sumonado = cid 
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
elseif magia.spell == "Quick Attack" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
local target = getCreatureTarget(cid)
local monsterpos = getCreatureLookDir(target)
local monstertp = getCreaturePosition(target)
local evasiontp = getCreaturePosition(cid)
if monsterpos == 0 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y+1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(cid,monstertp)
setPlayerStorageValue(target, 9,1)
	
 
end
elseif monsterpos == 2 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y-1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(cid,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 1 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x-1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(cid,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 3 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x+1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(cid,monstertp)
setPlayerStorageValue(target, 9,1)

 
end

end
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		return 0
elseif magia.spell == "Pluck" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		return 0

elseif magia.spell == "Slam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0
elseif magia.spell == "Body Slam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0
elseif magia.spell == "Rapid Hit" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(params.cid, NORMALDAMAGE, getThingPos(getCreatureTarget(params.cid)), 0, -0, -0, 3)
		end
		end
		end
		end

		addEvent(hit, 80, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 280, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 480, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
		return 0
elseif magia.spell == "Drill Peck" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)),0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		end
		end
		end
		end


		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif magia.spell == "Triple Kick" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)),0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 113)
		end
		end
		end
		end


		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif magia.spell == "Multi-Kick" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
doSetCreatureOutfit(cid, lee, 500)

		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		end
		end
		end
		end

		local hitalvo = getCreatureTarget(cid)
		local function hit2(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
doSetCreatureOutfit(cid, lee, 500)

		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 113)
		end
		end
		end
		end

		
		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 680, {cid = cid, hitalvo = hitalvo})
addEvent(hit, 980, {cid = cid, hitalvo = hitalvo})
		addEvent(hit2, 1180, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif magia.spell == "Triple Kick Lee" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
doSetCreatureOutfit(cid, lee, 800)

		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, 0, 0, 110)
		end
		end
		end
		end

local hitalvo = getCreatureTarget(cid)
		local function hit2(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then


		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 113)
		end
		end
		end
		end



	

		
		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
	addEvent(hit2, 480, {cid = cid, hitalvo = hitalvo})
	addEvent(hit2, 680, {cid = cid, hitalvo = hitalvo})
	addEvent(hit2, 780, {cid = cid, hitalvo = hitalvo})
	
	

		return 0
elseif magia.spell == "Triple Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 110)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)),0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		end
		end
		end
		end


		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
	

		return 0
elseif magia.spell == "Punch-Machine" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
doSendMagicEffect(getThingPos(getCreatureTarget(params.cid)), 224)

		end
		end
		end
		end
	local function hit2(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
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
elseif magia.spell == "Karate Chop" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
	
		

	

		return 0

elseif magia.spell == "Bite" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
		return 0
elseif magia.spell == "Slash" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 160)
		return 0
elseif magia.spell == "StickSlash" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 212)
		return 0
elseif magia.spell == "Splash" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendMagicEffect(getThingPos(cid), 53)
		return 0
elseif magia.spell == "Doubleslap" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local function slap(params)
					if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	end
end
		end
		addEvent(slap, 0, {cid = cid})
		addEvent(slap, 600, {cid = cid})
		return 0
elseif magia.spell == "Mega Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
			local function slap(params)
					if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
	end
end
		end
		addEvent(slap, 200, {cid = cid})
doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 180)
		

		return 0
elseif magia.spell == "Toxic Spikes" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		return 0
elseif magia.spell == "Mega Kick" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		local hitalvo = getCreatureTarget(cid)
		local function hit(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureTarget(params.cid) == params.hitalvo then
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)),0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		end
		end
		end
		end


		addEvent(hit, 380, {cid = cid, hitalvo = hitalvo})
		addEvent(hit, 680, {cid = cid, hitalvo = hitalvo})
		return 0
elseif magia.spell == "Thunder Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 40)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 11)
		return 0

elseif magia.spell == "Shadow Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 18)
doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 185)
		return 0
elseif magia.spell == "Scratch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 142)
	return 0
	elseif magia.spell == "Iron Tail" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 160)
	return 0
	elseif magia.spell == "Confusion" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(cid), confusionx, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
  local d = getCreaturesInRange(getThingPos(cid), 2, 2, 1, 0)

                        for _,pid in pairs(d) do
if isSummon(pid) then
 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(cid)
else
                                Confunso(pid)
end
end
                        end

	return 0



elseif magia.spell == "Psy Target" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

setPlayerStorageValue(cid, 985, ((num1)+(lvpokemon*(num3))))
setPlayerStorageValue(cid, 986, ((num2)+(lvpokemon*(num3))))
movesx(cid,false,false,false,false)		
return 0
elseif magia.spell == "Dark Target" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
setPlayerStorageValue(cid, 985, ((num1)+(lvpokemon*(num3))))
setPlayerStorageValue(cid, 986, ((num2)+(lvpokemon*(num3))))
ghostmew(cid,false,false,false,false)
		
return 0
elseif magia.spell == "Psy beam" then
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), bmn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 108)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), bms, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 109)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), bme, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 107)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), bmw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 106)
		end
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0
elseif magia.spell == "Aurora Beam" then
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), bmn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 108)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), bms, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 109)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), bme, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 107)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), bmw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 106)
		end
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0

elseif magia.spell == "Psy Wave" then
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		end
	doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0
elseif magia.spell == "Fury Wave" then
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), furywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), furywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), furywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), furywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		end
	doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0
elseif magia.spell == "Hyper Voice" then
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 22)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 22)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 22)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 22)
		end
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0
elseif magia.spell == "Thunder Wave" then
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		end
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0

elseif magia.spell == "Squishy Licking" then
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 145)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 145)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 145)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 145)
		end
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0
elseif magia.spell == "Icy Wind" then
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		end
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0
	elseif magia.spell == "Psychic" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(cid), psychic, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 251)
	return 0
	elseif magia.spell == "Thunder" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(cid), Thunder, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
	return 0
elseif magia.spell == "Pin Missile" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 13)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0
elseif magia.spell == "Thrash" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 10)
local target = getCreatureTarget(cid)
local monsterpos = getCreatureLookDir(target)
local monstertp = getCreaturePosition(target)
local evasiontp = getCreaturePosition(cid)
if monsterpos == 0 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y+1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(cid,monstertp)
setPlayerStorageValue(target, 9,1)
	
 
end
elseif monsterpos == 2 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y-1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(cid,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 1 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x-1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(cid,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 3 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x+1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(cid,monstertp)
setPlayerStorageValue(target, 9,1)

 
end

end
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		return 0
elseif magia.spell == "Night Shade" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

	doSendMagicEffect(getCreaturePosition(cid), 246)		
		doAreaCombatHealth(cid, element, getThingPos(cid), psychic, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 186)
	return 0
	elseif magia.spell == "Absorb" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local life = getCreatureHealth(getCreatureTarget(cid))
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 14)
		local newlife = life - getCreatureHealth(getCreatureTarget(cid))
		doSendMagicEffect(getThingPos(cid), 14)
		doCreatureAddHealth(cid, newlife)
		doSendAnimatedText(getThingPos(cid), "+"..newlife.."", 35)
	return 0
	elseif magia.spell == "Super Vines" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 213)

	return 0
	elseif magia.spell == "Mud Shot" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

	


Paralize(getCreatureTarget(cid))
		
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 1)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 34)
	return 0

elseif magia.spell == "Mud Slap" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		Paralize(getCreatureTarget(cid))
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 1)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	return 0

elseif magia.spell == "Lovey Kiss" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		Paralize(getCreatureTarget(cid))
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 16)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 147)
	return 0

	elseif magia.spell == "Mud Bomb" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 1)
doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 116)
	return 0	

elseif magia.spell == "Sludge" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 1)
doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 116)
	return 0	
elseif magia.spell == "Bubbles" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),2)
		end
end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		end
end
			end
			local function damage2(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
	end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage2, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		return 0
elseif magia.spell == "Clamp" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),2)
		end
end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 1)
end
end
			end
			local function damage2(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
		end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		return 0
elseif magia.spell == "Ice Shards" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),28)
		end
end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
		end
end
			end
			local function damage2(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 52)
		end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage2, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		return 0

elseif magia.spell == "Ice Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),28)
                  end
                   end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 43)
		end
end
			end
	
		addEvent(damage, 100, {cid = cid})
	
		addEvent(throw, 0, {cid = cid})
		
		return 0
elseif magia.spell == "Aqua tail" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 2)
		end
                       end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
		end
                     end
			end
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
	return 0

elseif magia.spell == "Dream Eather" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
			local function throw(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 18)
		end
                      end
			end
			local function damage(params)
						if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
if getPlayerStorageValue(getCreatureTarget(params.cid), 8) >= 1 then
		local life = getCreatureHealth(getCreatureTarget(cid))
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 138)
		local newlife = life - getCreatureHealth(getCreatureTarget(cid))
		doSendMagicEffect(getThingPos(cid), 14)
		doCreatureAddHealth(cid, newlife)
		doSendAnimatedText(getThingPos(cid), "+"..newlife.."", 35)
end
end
end
end
			
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
	return 0
elseif magia.spell == "Nightmare" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
			local function throw(params)
			if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 18)
			end
end
			end
			local function damage(params)
			if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
if getPlayerStorageValue(getCreatureTarget(params.cid), 8) >= 1 then

		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 138)


end
			end
			end
			end
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
	return 0
elseif magia.spell == "String Shot" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		setPlayerStorageValue(getCreatureTarget(cid), 3, 1)
		local alvo = getCreatureTarget(cid)
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 23)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 137)
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


elseif magia.spell == "Falling Rocks" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 11)
		doAreaCombatHealth(cid, element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 183)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end

	return 0
elseif magia.spell == "Team Slice" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 19)
		doAreaCombatHealth(cid, element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end

	return 0

elseif magia.spell == "Pay Day" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 6)
		doAreaCombatHealth(cid, element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 9)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end

	return 0
elseif magia.spell == "Metronome" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 11)
		doAreaCombatHealth(cid, ROCKDAMAGE, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 44)
		end
		end
		end

local function eletri(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 40)
		doAreaCombatHealth(cid, ELECTRICDAMAGE, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 11)
		end
		end
		end

local function blizzard(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 28)
		doAreaCombatHealth(cid, ICEDAMAGE, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 52)
		end
		end
		end

local function rain(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 2)
		doAreaCombatHealth(cid, WATERDAMAGE, pos, pu, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		end
		end
		end

local function go2(params)
		if isCreature(params.cid) then
doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(cid), combat_arr1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 6)
end
end
	
		
local function go(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(cid), combat_arr2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
	end
end
		
		
local function go1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(cid),combat_arr3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 15)
end
end
local function go3(params)
		if isCreature(params.cid) then
doAreaCombatHealth(cid, FIREDAMAGE, getThingPos(cid),combat_arr4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
end
end
local function shadow(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 18)
		doAreaCombatHealth(cid, GHOSTDAMAGE, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)
		end
		end
		end

	local function dragon(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 3)
		doAreaCombatHealth(cid, DRAGONDAMAGE, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
		end
		end
		end

local function go23(params)
		if isCreature(params.cid) then
doAreaCombatHealth(cid, PSYCHICDAMAGE, getThingPos(cid), psy2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 134)
end
end
	
		
		
local function go3(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(cid, PSYCHICDAMAGE, getThingPos(cid), psy4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 137)
	end
end
		
		
		
local function go13(params)
		if isCreature(params.cid) then
doAreaCombatHealth(cid, PSYCHICDAMAGE, getThingPos(cid), AREA_GREATLOVE, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 133)
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
elseif magia.spell == "Electric Storm" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 40)
		doAreaCombatHealth(cid, element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end

	return 0
elseif magia.spell == "Blizzard" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 28)
		doAreaCombatHealth(cid, element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 52)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end

	return 0

elseif magia.spell == "Hydro Rain" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos(cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 2)
		doAreaCombatHealth(cid, element, pos, pu, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end


	return 0
elseif magia.spell == "Bone Rain" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local function fall(params)
		if isCreature(params.cid) then
		
		local pos = getThingPos(params.cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(params.cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 7)
		doAreaCombatHealth(params.cid, element, pos, pu, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 242)
		end
		
		end
	local sumonado = cid	
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = sumonado})
end


	return 0

elseif magia.spell == "Sludge Rain" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
	local sumonado = cid		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = sumonado})
end


	return 0
elseif magia.spell == "Mortal Gas" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
	local sumonado = cid	
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = sumonado})
end


	return 0
elseif magia.spell == "Hydro Pump" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		
	
		
	
	

					
		
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


doAreaCombatHealth(cid, element, getThingPos(cid), pump, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		
					
		end
		end


		
	
	

local sumonado = cid

addEvent(fall2, 300, {cid = sumonado})
addEvent(fall3, 0, {cid = sumonado})



	return 0

elseif magia.spell == "Mega Horn" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
	local sumonado = cid	
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = sumonado})
end

	return 0

elseif magia.spell == "Shadow Storm" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
	local sumonado = cid	
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = sumonado})
end

	return 0
elseif magia.spell == "Magma Meteor" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local function fall(params)
		if isCreature(params.cid) then
		
		local pos = getThingPos(params.cid)
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos(params.cid)
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 3)
		doAreaCombatHealth(params.cid, element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 181)
		end
		
		end
local sumonado = cid		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = sumonado})
end

	return 0
elseif magia.spell == "Reflect" then

doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendMagicEffect(getThingPos(cid), 135)
		setPlayerStorageValue(cid, 34, 1)
	return 0
elseif magia.spell == "Water Gun" then
	
		
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 74)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 75)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 76)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 77)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 75)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 78)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 69)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 70)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 71)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 72)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 70)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 73)
		end
		doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0

elseif magia.spell == "Ground Chop" then
	
		
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
local function area1(params)
if isCreature(params.cid) then
doAreaCombatHealth(cid, element, getThingPos(cid), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
local function area2(params)
if isCreature(params.cid) then
doAreaCombatHealth(cid, element, getThingPos(cid),wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
		addEvent(area1, 200,{cid = cid})
addEvent(area2, 300,{cid = cid})

		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		local function area1(params)
if isCreature(params.cid) then
doAreaCombatHealth(cid, element, getThingPos(cid), wg2s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
local function area2(params)
if isCreature(params.cid) then
doAreaCombatHealth(cid, element, getThingPos(cid),wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
	addEvent(area1, 200,{cid = cid})
addEvent(area2, 300,{cid = cid})
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
local function area1(params)
if isCreature(params.cid) then
doAreaCombatHealth(cid, element, getThingPos(cid), wg2e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
local function area2(params)
if isCreature(params.cid) then
doAreaCombatHealth(cid, element, getThingPos(cid),wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
	addEvent(area1, 200,{cid = cid})
addEvent(area2, 300,{cid = cid})
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
local function area1(params)
if isCreature(params.cid) then
doAreaCombatHealth(cid, element, getThingPos(cid), wg2w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
local function area2(params)
if isCreature(params.cid) then
doAreaCombatHealth(cid, element, getThingPos(cid),wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
end
end
	addEvent(area1, 200,{cid = cid})
addEvent(area2, 300,{cid = cid})		


		end
		doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0
elseif magia.spell == "Poison Gun" then
	
		
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 7)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 7)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 7)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))),  20)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 7)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))),  8)
		end
		doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0
elseif magia.spell == "Toxic" then
	
		
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))),  114)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))),  114)
		end
		doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0
	elseif magia.spell == "Water Spout" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendDistanceShoot(getThingPos(cid), {x=getThingPos(cid).x, y=getThingPos(cid).y-5, z=getThingPos(cid).z}, 2)
		local function spout(params)
		if isCreature(params.cid) then
		for x = -2,2 do
			for y = -2,2 do
		local newpos = getThingPos(params.cid)
		newpos.x = newpos.x+x
		newpos.y = newpos.y+y
		doSendDistanceShoot({x=getThingPos(params.cid).x, y=getThingPos(params.cid).y-5, z=getThingPos(params.cid).z}, newpos, 2)
		end
		end
		end
		end
		
		local function spdmg(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), waterspout, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		end
		end

		addEvent(spout, 300, {cid = cid})
		addEvent(spdmg, 450, {cid = cid})
	return 0

elseif magia.spell == "Fire Blast" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		posit = getThingPos(cid)
		local function gust(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(params.cid, element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 35)

		
		end
		end
		local posicao = getThingPos(cid)
		if getCreatureLookDir(cid) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 61, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 61, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 61, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 61, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 61, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 61, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 63, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 63, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 63, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 63, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 63, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 63, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0

elseif magia.spell == "Acient Power" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		posit = getThingPos(cid)
		local function gust(params)
		if isCreature(params.cid) then

		doAreaCombatHealth(params.cid, element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 18)

		
		end
		end
		local posicao = getThingPos(cid)
		if getCreatureLookDir(cid) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 61, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 61, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 61, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 61, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 61, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 61, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 63, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 63, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 63, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 63, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 63, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 63, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif magia.spell == "Stickmerang" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		
	local function area1(params)	
if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.arr,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 212) 
end
end
local sumonado = cid

		if getCreatureLookDir(cid) == 0 then
addEvent(area1,100,{cid = sumonado,arr = Stick04})
addEvent(area1,400,{cid = sumonado,arr = Stick04a})
addEvent(area1,800,{cid = sumonado,arr = Stick04b})
addEvent(area1,1200,{cid = sumonado,arr = Stick04c})
addEvent(area1,1600,{cid = sumonado,arr = Stick04d})
addEvent(area1,2000,{cid = sumonado,arr = Stick04e})

		elseif getCreatureLookDir(cid) == 2 then
addEvent(area1,100,{cid = sumonado,arr = Stick01})
addEvent(area1,400,{cid = sumonado,arr = Stick01a})
addEvent(area1,800,{cid = sumonado,arr = Stick01b})
addEvent(area1,1200,{cid = sumonado,arr = Stick01c})
addEvent(area1,1600,{cid = sumonado,arr = Stick01d})
addEvent(area1,2000,{cid = sumonado,arr = Stick01e})
		elseif getCreatureLookDir(cid) == 1 then
addEvent(area1,100,{cid = sumonado,arr = Stick03})
addEvent(area1,400,{cid = sumonado,arr = Stick03a})
addEvent(area1,800,{cid = sumonado,arr = Stick03b})
addEvent(area1,1200,{cid = sumonado,arr = Stick03c})
addEvent(area1,1600,{cid = sumonado,arr = Stick03d})
addEvent(area1,2000,{cid = sumonado,arr = Stick03e})
		
		elseif getCreatureLookDir(cid) == 3 then
addEvent(area1,100,{cid = sumonado,arr = Stick02})
addEvent(area1,400,{cid = sumonado,arr = Stick02a})
addEvent(area1,800,{cid = sumonado,arr = Stick02b})
addEvent(area1,1200,{cid = sumonado,arr = Stick02c})
addEvent(area1,1600,{cid = sumonado,arr = Stick02d})
addEvent(area1,2000,{cid = sumonado,arr = Stick02e})	
		end
		return 0
elseif magia.spell == "Bonemerang" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		
	local function area1(params)	
if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.arr,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 117) 
end
end
local sumonado = cid

		if getCreatureLookDir(cid) == 0 then
addEvent(area1,100,{cid = sumonado,arr = Stick04})
addEvent(area1,400,{cid = sumonado,arr = Stick04a})
addEvent(area1,800,{cid = sumonado,arr = Stick04b})
addEvent(area1,1200,{cid = sumonado,arr = Stick04c})
addEvent(area1,1600,{cid = sumonado,arr = Stick04d})
addEvent(area1,2000,{cid = sumonado,arr = Stick04e})

		elseif getCreatureLookDir(cid) == 2 then
addEvent(area1,100,{cid = sumonado,arr = Stick01})
addEvent(area1,400,{cid = sumonado,arr = Stick01a})
addEvent(area1,800,{cid = sumonado,arr = Stick01b})
addEvent(area1,1200,{cid = sumonado,arr = Stick01c})
addEvent(area1,1600,{cid = sumonado,arr = Stick01d})
addEvent(area1,2000,{cid = sumonado,arr = Stick01e})
		elseif getCreatureLookDir(cid) == 1 then
addEvent(area1,100,{cid = sumonado,arr = Stick03})
addEvent(area1,400,{cid = sumonado,arr = Stick03a})
addEvent(area1,800,{cid = sumonado,arr = Stick03b})
addEvent(area1,1200,{cid = sumonado,arr = Stick03c})
addEvent(area1,1600,{cid = sumonado,arr = Stick03d})
addEvent(area1,2000,{cid = sumonado,arr = Stick03e})
		
		elseif getCreatureLookDir(cid) == 3 then
addEvent(area1,100,{cid = sumonado,arr = Stick02})
addEvent(area1,400,{cid = sumonado,arr = Stick02a})
addEvent(area1,800,{cid = sumonado,arr = Stick02b})
addEvent(area1,1200,{cid = sumonado,arr = Stick02c})
addEvent(area1,1600,{cid = sumonado,arr = Stick02d})
addEvent(area1,2000,{cid = sumonado,arr = Stick02e})	
		end
		return 0
elseif magia.spell == "Fist Machine" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		posit = getThingPos(cid)
		local function gust(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(params.cid, element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)

		else
		end
		end
		local posicao = getThingPos(cid)
		if getCreatureLookDir(cid) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 215, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 215, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 215, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 215, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 215, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 215, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 216, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 216, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 216, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 216, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 216, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 216, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0


elseif magia.spell == "Destroyer Hand" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		posit = getThingPos(cid)
		local function gust(params)
		if isCreature(params.cid) then
doSendDistanceShoot(getThingPos(params.cid),params.ar,26)

		doAreaCombatHealth(params.cid, element, params.ar, champ, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)

		else
		end
		end
		local posicao = getThingPos(cid)
			if getCreatureLookDir(cid) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 217, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 218, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 215, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 215, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 215, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 215, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 215, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 215, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 216, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 216, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 216, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 216, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 216, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 216, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif magia.spell == "Gust" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		posit = getThingPos(cid)
		local function gust(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(params.cid, element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 42)

		else
		end
		end
		local posicao = getThingPos(cid)
		if getCreatureLookDir(cid) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 42, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 42, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 42, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 42, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 42, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 42, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 42, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 42, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 42, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 42, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 42, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 42, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 42, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif magia.spell == "Spark" then
		doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
				local function spark(params)
				if isCreature(params.cid) then
				if isCreature(params.cid) then
				doSendDistanceShoot(getThingPos(params.cid), params.cidpos, 40)
				doAreaCombatHealth(cid, element, params.cidpos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
				end
				end
				end
		for a = -1, 1 do
			for b = -1, 1 do
			cidpos = getThingPos(cid)
			cidpos.x = cidpos.x+a
			cidpos.y = cidpos.y+b
			addEvent(spark, math.abs(a)*350 + math.abs(b)*650, {cid = cid, cidpos = cidpos})
			end
		end		
		return 0
elseif magia.spell == "Stick Wave" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		posit = getThingPos(cid)
		local function gust(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(params.cid, element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)

		else
		end
		end
		local posicao = getThingPos(cid)
		if getCreatureLookDir(cid) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 212, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 212, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 212, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 212, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 212, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 212, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 212, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 212, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 212, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 212, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 212, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 212, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 212, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0

elseif magia.spell == "Hydro Cannon" then
		doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		posit = getThingPos(cid)
		local function gust(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(params.cid, element, params.ar, whirl3,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		else
		end
		end
		local posicao = getThingPos(cid)
		if getCreatureLookDir(cid) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 65, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 65, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 65, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 65, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 65, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 65, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 67, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 67, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 67, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 67, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 67, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 67, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif magia.spell == "Fire Fang" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 146)
		local function damage(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
		end
		end
		end
		addEvent(damage, 200, {cid = cid})
		return 0
elseif magia.spell == "Poison Fang" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 146)
		local function damage(params)
		if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		end
		end
		end
		addEvent(damage, 200, {cid = cid})
		return 0

elseif magia.spell == "Fireball" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 3)
			end
			end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), waba, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
			end
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0
elseif magia.spell == "Water ball" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
			local function throw(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 2)
			end
			end
			end
			local function damage(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), waba, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0


	elseif magia.spell == "Ember" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 3)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 15)
		return 0

elseif magia.spell == "Rollout" then
local summons = cid
local mon = getCreatureName(summons)
local spd = getCreatureSpeed(summons)
local bspd = getCreatureBaseSpeed(summons)
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd+100)
		if getCreatureName(cid) == "Golem" then


		doSetCreatureOutfit(cid, golem, 8300)
		
		elseif getCreatureName(cid) == "Electrode" then
		doSetCreatureOutfit(cid, electrode, 8300)

	elseif getCreatureName(cid) == "Voltorb" then
		doSetCreatureOutfit(cid, voltorb, 8300)
		elseif getCreatureName(cid) == "Shiny Electrode" then
		doSetCreatureOutfit(cid, shinyelectrode, 8300)

	elseif getCreatureName(cid) == "Shiny Voltorb" then
		doSetCreatureOutfit(cid, shinyvoltorb, 8300)

		elseif getCreatureName(cid) == "Sandshrew" then
		doSetCreatureOutfit(cid, sandshrew, 8300)

		elseif getCreatureName(cid) == "Sandslash" then
		doSetCreatureOutfit(cid, sandslash, 8300)

		end
		setPlayerStorageValue(cid, 4, 1)
			local function roll(params)
			if isCreature(params.cid) then
			if isCreature(params.cid) then
			if getCreatureCondition(params.cid, CONDITION_OUTFIT) == true then
			doAreaCombatHealth(cid, element, getThingPos(cid), rollout, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 255)
			end
			end
			end
			end
		for r = 1, 15 do
		addEvent(roll, 500*r, {cid = cid})
		end

			local function stoproll(params)
			if isCreature(params.cid) then
			if isCreature(params.cid) then
			doChangeSpeed(summons, bspd-100)
			if getPlayerStorageValue(params.cid, 4) >= 1 then
			setPlayerStorageValue(params.cid, 4, 0)
doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd)
	
			end
			end
			end
			end
		addEvent(stoproll, 8300, {cid = cid})
		return 0

elseif magia.spell == "Bone Slash" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 7)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 117)
		return 0
elseif magia.spell == "Hyper Fang" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 159)
		return 0
	elseif magia.spell == "Horn Attack" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
return 0
		elseif magia.spell == "Rock Throw" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 11)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	return 0

elseif magia.spell == "Psy Pulse" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
local sumonado = cid
		addEvent(damage, 100, {cid = sumonado })
		addEvent(damage, 600, {cid = sumonado })
		addEvent(throw, 0, {cid = sumonado })
		addEvent(throw, 550, {cid = sumonado })
		return 0

elseif magia.spell == "Bone Club" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
local sumonado = cid
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
		return 0

elseif magia.spell == "Thunder Bolt" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
local sumonado = cid
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
		return 0

elseif magia.spell == "Dark Pulse" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 187)
			end
end
			end
	local function damage2(params)
			if isCreature(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 186)
			end
end
			end
local sumonado = cid
addEvent(throw, 0, {cid = sumonado})
		addEvent(damage2, 100, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		
		return 0



elseif magia.spell == "Restore" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendMagicEffect(getThingPos(cid), 132)
local summon = cid
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(cid, curar)
		doSendAnimatedText(getThingPos(cid), "+"..curar.."", 35)
		return 0

elseif magia.spell == "Self Heal" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendMagicEffect(getThingPos(cid), 132)
local summon = cid
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(cid, curar)
		doSendAnimatedText(getThingPos(cid), "+"..curar.."", 35)
		return 0

elseif magia.spell == "Rest" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendMagicEffect(getThingPos(cid), 32)
local summon = cid
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(cid, curar)
if getCreatureName(cid) == "Snorlax" then
local gordao = {lookType = 258}
doSetCreatureOutfit(summon, gordao, 5000)
end
		rest(summon)
		return 0

elseif magia.spell == "Healera" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

 local summon = cid
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(cid, curar)
		doSendAnimatedText(getThingPos(cid), "+"..curar.."", 35)
 local d = getCreaturesInRange(getThingPos(cid), 2, 2, 1, 0)
                        for _,pid in pairs(d) do
if isMonster(pid) then
  local summon = pid
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth(pid, curar)
		doSendAnimatedText(getThingPos(pid), "+"..curar.."", 35)

end
 end                       
doAreaCombatHealth(cid, element, getThingPos(cid), sleeparea, 0, 0, 12)
		return 0

elseif magia.spell == "Earth Quake" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
xxe = getCreatureName(cid) 
		





local function go14(params)
		 if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)



else
return true
end
end

local function go13(params)
		 if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go14, 500,  cid)

else
return true
end
end
local function go12(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go13, 500,  cid)

else
return true
end
end

local function go11(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go12, 500,  cid)

else
return true
end
end

local function go10(params)
	if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)


addEvent(go11, 500,  cid)
else
return true
end
end

local function go9(params)
		 if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go10, 500,  cid)

else
return true
end
end
local function go8(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go9, 500,  cid)

else
return true
end
end

local function go7(params)
		 if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go8, 500,  cid)

else
return true
end
end


local function go6(params)
		 if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go7, 500,  cid)

else
return true
end
end

local function go5(params)
		 if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go6, 500,  cid)

else
return true
end
end
local function go4(params)
		 if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))),252)

addEvent(go5, 500,  cid)

else
return true
end
end
local function go3(params)
		 if isCreature(cid) then

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go4, 500, cid)


else
return true
end
end

local function go2(params)
		 if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go3, 500, cid)


else
return true
end
end

local function go(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go2, 500, cid)


else
return true
end
end


doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 252)

addEvent(go, 500, cid)


		
		return 0

elseif magia.spell == "Stunning Confusion" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
xxe = getCreatureName(cid) 
		





local function go14(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)



else
return true
end
end

local function go13(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go14, 500,  cid)

else
return true
end
end
local function go12(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go13, 500,  cid)

else
return true
end
end

local function go11(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go12, 500,  cid)

else
return true
end
end

local function go10(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)


addEvent(go11, 500,  cid)
else
return true
end
end

local function go9(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go10, 500,  cid)

else
return true
end
end
local function go8(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go9, 500,  cid)

else
return true
end
end

local function go7(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go8, 500,  cid)

else
return true
end
end


local function go6(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go7, 500,  cid)

else
return true
end
end

local function go5(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go6, 500,  cid)

else
return true
end
end
local function go4(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go5, 500,  cid)

else
return true
end
end
local function go3(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go4, 500, cid)


else
return true
end
end

local function go2(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go3, 500, cid)


else
return true
end
end

local function go(params)
		if isCreature(cid) then 

doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go2, 500, cid)


else
return true
end
end


doAreaCombatHealth(cid, element, getThingPos(cid), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go, 500, cid)


		
		return 0

elseif magia.spell == "Calm Mind" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendMagicEffect(getThingPos(cid), 172)
		setPlayerStorageValue(cid, 254, 1)
		local function quiet(params)
		if isCreature(params.cid) then
		
		if getPlayerStorageValue(params.cid, 254) >= 1 then
		doSendMagicEffect(getThingPos(params.cid), 249)
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
local sumonado = cid
	
		addEvent(quiet, 4000, {cid = sumonado})


		addEvent(desc, 5000, {cid = sumonado})
	return 0
elseif magia.spell == "Focus" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendMagicEffect(getThingPos(cid), 132)
		setPlayerStorageValue(cid, 254, 1)
	
		local function desc(params)
		if isCreature(params.cid) then
		
		if getPlayerStorageValue(params.cid, 254) >= 1 then
		setPlayerStorageValue(params.cid, 254, 0)
		end
		end
		
		end
		
local sumonado = cid
		addEvent(desc, 12*500, {cid = sumonado})
	return 0

elseif magia.spell == "Acient Fury" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
local xsx = getCreatureName(cid)
if xsx == "Elder Charizard" then
		doSetCreatureOutfit(cid, elder, 8300)
elseif xsx == "Shiny Blastoise" then
	doSetCreatureOutfit(cid, blastoise, 8300)
end
	setPlayerStorageValue(cid, 254, 1)
		
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
local sumonado = cid
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})
		end
		

		addEvent(desc, 10*800, {cid = sumonado})
	return 0

elseif magia.spell == "Furious Legs" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
	
		
	

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
local sumonado = cid
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})
		end
		

		
	return 0

elseif magia.spell == "Ultimate Champion" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
	
		
	

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
			
local sumonado = cid
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})
		end
		

		
	return 0
	
elseif magia.spell == "Electric Charge" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

	setPlayerStorageValue(cid, 254, 1)
		
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
local sumonado = cid
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})
		end
		

		addEvent(desc, 10*800, {cid = sumonado})
	return 0

elseif magia.spell == "Fury" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendMagicEffect(getThingPos(cid), 28)

		setPlayerStorageValue(cid, 4, 1)
	
	
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
local sumonado = cid
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})

		end

addEvent(chard, 6000, {cid = sumonado})


		return 0
elseif magia.spell == "Rage" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendMagicEffect(getThingPos(cid), 14)

		
	
	
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

	local sumonado = cid	
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})

		end



		return 0
elseif magia.spell == "Strafe" then
local summons = cid
local mon = getCreatureName(summons)
local spd = getCreatureSpeed(summons)
local bspd = getCreatureBaseSpeed(summons)
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd+100)
		doSendMagicEffect(getThingPos(cid), 14)

		
	
	
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
local sumonado = cid
		addEvent(stopspeed, 6000, {cid = sumonado})
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = sumonado})

		end



		return 0
elseif magia.spell == "Agility" then
local summons = cid
local mon = getCreatureName(summons)
local spd = getCreatureSpeed(summons)
local bspd = getCreatureBaseSpeed(summons)
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

doChangeSpeed(summons, -spd)
doChangeSpeed(summons, bspd+200)
		doSendMagicEffect(getThingPos(cid), 14)

		
	
	
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
local sumonado = cid 
		addEvent(stopspeed, 6000, {cid = sumonado})
		for r = 1, 15 do
		addEvent(roll, 500*r, {cid = sumonado})

		end



		return 0
	elseif magia.spell == "Headbutt" then

doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	return 0
	elseif magia.spell == "Razor Leaf" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
local sumonado = cid 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
	return 0

elseif magia.spell == "Shockwave" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		posit = getThingPos(cid)
		local function sandattack(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, null, params.ar, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.ef)
		doAreaCombatHealth(params.cid, element, params.ar, params.wave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		
		end
		end
		local posicao = getThingPos(cid)
		if getCreatureLookDir(cid) == 0 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-1, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-2, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-3, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-4, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-5, z=posicao.z}, ef = 126, wave = swaven})
		elseif getCreatureLookDir(cid) == 2 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+2, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+3, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+4, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+5, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+6, z=posicao.z}, ef = 125, wave = swaves})
		elseif getCreatureLookDir(cid) == 1 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+2, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+3, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+4, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+5, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+6, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		elseif getCreatureLookDir(cid) == 3 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x-2, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x-3, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x-4, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x-5, y=posicao.y+1, z=posicao.z}, ef = 123, wave = swavew})
		end
	return 0

elseif magia.spell == "Horn Drill" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
local sumonado = cid 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
	return 0

elseif magia.spell == "Fury Attack" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
local sumonado = cid
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
	return 0

elseif magia.spell == "Rock Tomb" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		if getCreatureLookDir(cid) == 0 then
		rock1 = {x=getThingPos(cid).x+1, y=getThingPos(cid).y-1, z=getThingPos(cid).z}
		rock2 = {x=getThingPos(cid).x+0, y=getThingPos(cid).y-1, z=getThingPos(cid).z}
		rock3 = {x=getThingPos(cid).x-1, y=getThingPos(cid).y-1, z=getThingPos(cid).z}
		doAreaCombatHealth(cid, element, getThingPos(cid), tombn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(cid) == 2 then
		rock1 = {x=getThingPos(cid).x+1, y=getThingPos(cid).y+1, z=getThingPos(cid).z}
		rock2 = {x=getThingPos(cid).x+0, y=getThingPos(cid).y+1, z=getThingPos(cid).z}
		rock3 = {x=getThingPos(cid).x-1, y=getThingPos(cid).y+1, z=getThingPos(cid).z}
		doAreaCombatHealth(cid, element, getThingPos(cid), tombs, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(cid) == 3 then
		rock1 = {x=getThingPos(cid).x-1, y=getThingPos(cid).y+1, z=getThingPos(cid).z}
		rock2 = {x=getThingPos(cid).x-1, y=getThingPos(cid).y+0, z=getThingPos(cid).z}
		rock3 = {x=getThingPos(cid).x-1, y=getThingPos(cid).y-1, z=getThingPos(cid).z}
		doAreaCombatHealth(cid, element, getThingPos(cid), tombw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(cid) == 1 then
		rock1 = {x=getThingPos(cid).x+1, y=getThingPos(cid).y+1, z=getThingPos(cid).z}
		rock2 = {x=getThingPos(cid).x+1, y=getThingPos(cid).y+0, z=getThingPos(cid).z}
		rock3 = {x=getThingPos(cid).x+1, y=getThingPos(cid).y-1, z=getThingPos(cid).z}
		doAreaCombatHealth(cid, element, getThingPos(cid), tombe, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		end
		doSendDistanceShoot(getThingPos(cid), rock1, 11)
		doSendDistanceShoot(getThingPos(cid), rock2, 11)
		doSendDistanceShoot(getThingPos(cid), rock3, 11)
		return 0
elseif magia.spell == "Cross Chop" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		if getCreatureLookDir(cid) == 0 then
		rock1 = {x=getThingPos(cid).x+1, y=getThingPos(cid).y-1, z=getThingPos(cid).z}
		rock2 = {x=getThingPos(cid).x+0, y=getThingPos(cid).y-1, z=getThingPos(cid).z}
		rock3 = {x=getThingPos(cid).x-1, y=getThingPos(cid).y-1, z=getThingPos(cid).z}
		doAreaCombatHealth(cid, element, getThingPos(cid), tombn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(cid) == 2 then
		rock1 = {x=getThingPos(cid).x+1, y=getThingPos(cid).y+1, z=getThingPos(cid).z}
		rock2 = {x=getThingPos(cid).x+0, y=getThingPos(cid).y+1, z=getThingPos(cid).z}
		rock3 = {x=getThingPos(cid).x-1, y=getThingPos(cid).y+1, z=getThingPos(cid).z}
		doAreaCombatHealth(cid, element, getThingPos(cid), tombs, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(cid) == 3 then
		rock1 = {x=getThingPos(cid).x-1, y=getThingPos(cid).y+1, z=getThingPos(cid).z}
		rock2 = {x=getThingPos(cid).x-1, y=getThingPos(cid).y+0, z=getThingPos(cid).z}
		rock3 = {x=getThingPos(cid).x-1, y=getThingPos(cid).y-1, z=getThingPos(cid).z}
		doAreaCombatHealth(cid, element, getThingPos(cid), tombw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir(cid) == 1 then
		rock1 = {x=getThingPos(cid).x+1, y=getThingPos(cid).y+1, z=getThingPos(cid).z}
		rock2 = {x=getThingPos(cid).x+1, y=getThingPos(cid).y+0, z=getThingPos(cid).z}
		rock3 = {x=getThingPos(cid).x+1, y=getThingPos(cid).y-1, z=getThingPos(cid).z}
		doAreaCombatHealth(cid, element, getThingPos(cid), tombe, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		end
		doSendDistanceShoot(getThingPos(cid), rock1, 26)
		doSendDistanceShoot(getThingPos(cid), rock2, 26)
		doSendDistanceShoot(getThingPos(cid), rock3, 26)
		return 0
elseif magia.spell == "Psycho Shift" then
		local pos = getThingPos(getCreatureTarget(cid))
		local pos2 = getThingPos(getCreatureTarget(cid))
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		if hasSqm(pos) and isSightClear(getThingPos(cid), pos, false) then
		if getTileThingByPos(pos) and getTileThingByPos(pos).itemid >= 1 and not isInArray({919, 460, 4820, 4821, 4822, 4823, 4824, 4825}, getTileThingByPos(pos).itemid) and isWalkable(pos) then
		pos = getClosestFreeTile(getCreatureTarget(cid), pos)
		doSendDistanceShoot(pos2, pos, 39)
		doTeleportThing(getCreatureTarget(cid), pos, false)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 238)
		doSendMagicEffect(pos2, 134)
		else
		local newpos = getClosestFreeTile(getCreatureTarget(cid), pos)
		doSendDistanceShoot(pos2, newpos, 39)
		doTeleportThing(getCreatureTarget(cid), newpos, false)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 238)
		doSendMagicEffect(pos2, 134)
		end
		else
		doSendDistanceShoot(pos2, getThingPos(getCreatureTarget(cid)), 39)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 238)
		doSendMagicEffect(pos2, 134)
		end	
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		return 0

	elseif magia.spell == "Sand Attack" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		posit = getThingPos(cid)
		local function sandattack(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, params.ar, sand1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.ef)
		
		end
		end
		local posicao = getThingPos(cid)
		if getCreatureLookDir(cid) == 0 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, ef = 120})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, ef = 120})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, ef = 120})
		elseif getCreatureLookDir(cid) == 2 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, ef = 122})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, ef = 122})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, ef = 122})
		elseif getCreatureLookDir(cid) == 1 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, ef = 121})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, ef = 121})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, ef = 121})
		elseif getCreatureLookDir(cid) == 3 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, ef = 119})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, ef = 119})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, ef = 119})
		end
return 0

elseif magia.spell == "Flamethrower" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		if getCreatureLookDir(cid) == 0 then
		local flamepos2 = getThingPos(cid)
		flamepos2.x = flamepos2.x+1
		flamepos2.y = flamepos2.y-1
		doSendMagicEffect(flamepos2, 225)--55
		doAreaCombatHealth(cid, element, getThingPos(cid), flamen, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		elseif getCreatureLookDir(cid) == 1 then
		local flamepos1 = getThingPos(cid)
		flamepos1.x = flamepos1.x+3
		flamepos1.y = flamepos1.y+1
		doSendMagicEffect(flamepos1, 58)--58
		doAreaCombatHealth(cid, element, getThingPos(cid), flamee, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		elseif getCreatureLookDir(cid) == 2 then
		local flamepos = getThingPos(cid)
		flamepos.x = flamepos.x+1
		flamepos.y = flamepos.y+3
		doSendMagicEffect(flamepos, 226)--56
		doAreaCombatHealth(cid, element, getThingPos(cid), flames, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		elseif getCreatureLookDir(cid) == 3 then
		local flamepos = getThingPos(cid)
		flamepos.x = flamepos.x-1
		flamepos.y = flamepos.y+1
		doSendMagicEffect(flamepos, 57)--57
		doAreaCombatHealth(cid, element, getThingPos(cid), flamew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		end
		return 0

elseif magia.spell == "Mind Blast" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		
		
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
local sumonado = cid
doSendMagicEffect(getCreaturePosition(sumonado), 249)	
addEvent(go, 1000, {cid = sumonado})
addEvent(go1, 300, {cid = sumonado})
addEvent(go2, 600, {cid = sumonado})	

		
		return 0
elseif magia.spell == "Great Love" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
	
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
local d = getCreaturesInRange(getThingPos(cid), 3, 3, 1, 0)

                        for _,pid in pairs(d) do
if isSummon(pid) then
 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
love(cid)
else
                                love(pid)
end
end
                        end
local sumonado = cid
addEvent(go, 1000, {cid = sumonado})
addEvent(go1, 300, {cid = sumonado})
addEvent(go2, 600, {cid = sumonado})	

		
		return 0
	elseif magia.spell == "Super Sonic" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local t = getCreatureTarget(cid)
if isPlayer(t) then
return True
end
				

if getPlayerStorageValue(t, 5) <= 0 then
	setPlayerStorageValue(t, 5, 1)	
		local function confd(params)
		if isCreature(params.t) then
if math.random(1,100) >= 50 then 
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
end
		local function nonc(params)
		if isCreature(params.t) then
		
		setPlayerStorageValue(params.t, 5, -1)
		end
		end
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 32)

 
		
		doSendMagicEffect(getThingPos(t), 31)
		for i = 1, 6 do
		addEvent(confd, 1000*i, {t = t})
		end
		addEvent(nonc, 7100, {t = t})
else
local function confd(params)
		if isCreature(params.t) then
if math.random(1,100) >= 50 then 
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
end
		local function nonc(params)
		if isCreature(params.t) then
		setPlayerStorageValue(params.t, 5, -1)
		end
		end
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 32)

	doSendMagicEffect(getThingPos(t), 31)
local function verkpdo4(params)

		if isCreature(params.t) then
if getPlayerStorageValue(params.t, 5) <= 0 then
setPlayerStorageValue(params.t, 5, 1)

		for i = 1, 2 do
		addEvent(confd, 1000*i, {t = params.t})
		end

return true
		end

		end

end

local function verkpdo3(params)
		if isCreature(params.t) then
if getPlayerStorageValue(params.t, 5) <= 0 then
setPlayerStorageValue(params.t, 5, 1)

		for i = 1, 3 do
		addEvent(confd, 1000*i, {t = params.t})
		end

return true
else
addEvent(verkpdo4, 1000, {t = params.t})
		end
		end
end

local function verkpdo2(params)
		if isCreature(params.t) then
if getPlayerStorageValue(params.t, 5) <= 0 then
setPlayerStorageValue(params.t, 5, 1)

		for i = 1, 4 do
		addEvent(confd, 1000*i, {t = params.t})
		end

return true
else
addEvent(verkpdo3, 1000, {t = params.t})
		end
		end
end
local function verkpdo1(params)
		if isCreature(params.t) then
if getPlayerStorageValue(params.t, 5) <= 0 then
setPlayerStorageValue(params.t, 5, 1)

		for i = 1, 5 do
		addEvent(confd, 1000*i, {t = params.t})
		end

return true
else
addEvent(verkpdo2, 1000, {t = params.t})
		end
		end
end
addEvent(nonc, 7100, {t = t})
addEvent(verkpdo1, 1000, {t = t})

end
	return 0

elseif magia.spell == "Roar" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
 local d = getCreaturesInRange(getThingPos(cid), 2, 2, 1, 0)
                      
for _,pid in pairs(d) do
if isSummon(pid) then
 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Roar(cid)
else
                                Roar(pid)
end
end
                        end

	return 0
elseif magia.spell == "Scary Face" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
doSendMagicEffect(getThingPos(cid), 177)
		
 local d = getCreaturesInRange(getThingPos(cid), 2, 2, 1, 0)
                        for _,pid in pairs(d) do
if isSummon(pid) then
 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
fear(cid)
else
                               fear(pid)
end
end
                        end

	return 0


elseif magia.spell == "Sonic Boom" then

doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local t = getCreatureTarget(cid)
if isPlayer(t) then
return True
end
				

if getPlayerStorageValue(t, 5) <= 0 then
	setPlayerStorageValue(t, 5, 1)	
		local function confd(params)
		if isCreature(params.t) then
if math.random(1,100) >= 50 then 
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
end
		local function nonc(params)
		if isCreature(params.t) then
		
		setPlayerStorageValue(params.t, 5, -1)
		end
		end
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 32)

 
		
		doSendMagicEffect(getThingPos(t), 31)
		for i = 1, 6 do
		addEvent(confd, 1000*i, {t = t})
		end
		addEvent(nonc, 7100, {t = t})
else
local function confd(params)
		if isCreature(params.t) then
if math.random(1,100) >= 50 then 
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
end
		local function nonc(params)
		if isCreature(params.t) then
		setPlayerStorageValue(params.t, 5, -1)
		end
		end
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 32)

	doSendMagicEffect(getThingPos(t), 31)
local function verkpdo4(params)

		if isCreature(params.t) then
if getPlayerStorageValue(params.t, 5) <= 0 then
setPlayerStorageValue(params.t, 5, 1)

		for i = 1, 2 do
		addEvent(confd, 1000*i, {t = params.t})
		end

return true
		end

		end

end

local function verkpdo3(params)
		if isCreature(params.t) then
if getPlayerStorageValue(params.t, 5) <= 0 then
setPlayerStorageValue(params.t, 5, 1)

		for i = 1, 3 do
		addEvent(confd, 1000*i, {t = params.t})
		end

return true
else
addEvent(verkpdo4, 1000, {t = params.t})
		end
		end
end

local function verkpdo2(params)
		if isCreature(params.t) then
if getPlayerStorageValue(params.t, 5) <= 0 then
setPlayerStorageValue(params.t, 5, 1)

		for i = 1, 4 do
		addEvent(confd, 1000*i, {t = params.t})
		end

return true
else
addEvent(verkpdo3, 1000, {t = params.t})
		end
		end
end
local function verkpdo1(params)
		if isCreature(params.t) then
if getPlayerStorageValue(params.t, 5) <= 0 then
setPlayerStorageValue(params.t, 5, 1)

		for i = 1, 5 do
		addEvent(confd, 1000*i, {t = params.t})
		end

return true
else
addEvent(verkpdo2, 1000, {t = params.t})
		end
		end
end
addEvent(nonc, 7100, {t = t})
addEvent(verkpdo1, 1000, {t = t})

end

	return 0

elseif magia.spell == "Dizzy Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		local t = getCreatureTarget(cid)
if isPlayer(t) then
return True
end
				

if getPlayerStorageValue(t, 5) <= 0 then
	setPlayerStorageValue(t, 5, 1)	
		local function confd(params)
		if isCreature(params.t) then
if math.random(1,100) >= 50 then 
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
end
		local function nonc(params)
		if isCreature(params.t) then
		
		setPlayerStorageValue(params.t, 5, -1)
		end
		end
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 32)

 
		
		doSendMagicEffect(getThingPos(t), 31)
		for i = 1, 6 do
		addEvent(confd, 1000*i, {t = t})
		end
		addEvent(nonc, 7100, {t = t})
else
local function confd(params)
		if isCreature(params.t) then
if math.random(1,100) >= 50 then 
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
end
		local function nonc(params)
		if isCreature(params.t) then
		setPlayerStorageValue(params.t, 5, -1)
		end
		end
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 32)

	doSendMagicEffect(getThingPos(t), 31)
local function verkpdo4(params)

		if isCreature(params.t) then
if getPlayerStorageValue(params.t, 5) <= 0 then
setPlayerStorageValue(params.t, 5, 1)

		for i = 1, 2 do
		addEvent(confd, 1000*i, {t = params.t})
		end

return true
		end

		end

end

local function verkpdo3(params)
		if isCreature(params.t) then
if getPlayerStorageValue(params.t, 5) <= 0 then
setPlayerStorageValue(params.t, 5, 1)

		for i = 1, 3 do
		addEvent(confd, 1000*i, {t = params.t})
		end

return true
else
addEvent(verkpdo4, 1000, {t = params.t})
		end
		end
end

local function verkpdo2(params)
		if isCreature(params.t) then
if getPlayerStorageValue(params.t, 5) <= 0 then
setPlayerStorageValue(params.t, 5, 1)

		for i = 1, 4 do
		addEvent(confd, 1000*i, {t = params.t})
		end

return true
else
addEvent(verkpdo3, 1000, {t = params.t})
		end
		end
end
local function verkpdo1(params)
		if isCreature(params.t) then
if getPlayerStorageValue(params.t, 5) <= 0 then
setPlayerStorageValue(params.t, 5, 1)

		for i = 1, 5 do
		addEvent(confd, 1000*i, {t = params.t})
		end

return true
else
addEvent(verkpdo2, 1000, {t = params.t})
		end
		end
end
addEvent(nonc, 7100, {t = t})
addEvent(verkpdo1, 1000, {t = t})

end
	return 0
elseif magia.spell == "Windstorm" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		posit = getThingPos(cid)
		local function storm(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, params.el, posit, params.ar,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.ef)
		
		end
		end
local sumonado = cid 
		addEvent(storm, 0, {cid = sumonado, el = element, ar = ws1, ef = 42})
		addEvent(storm, 500, {cid = sumonado, el = element, ar = ws2, ef = 232})
		addEvent(storm, 1000, {cid = sumonado, el = element, ar = ws3, ef = 42})
		addEvent(storm, 1500, {cid = sumonado, el = element, ar = ws4, ef = 232})
		addEvent(storm, 700, {cid = sumonado, el = null, ar = ws4, ef = CONST_ME_POFF})
		addEvent(storm, 1200, {cid = sumonado, el = null, ar = ws1, ef = CONST_ME_POFF})
		addEvent(storm, 1800, {cid = sumonado, el = null, ar = ws3, ef = CONST_ME_POFF})
	return 0
elseif pokemon.spell == "Fire Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 230)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 229)
		return 0
elseif magia.spell == "Poison Sting" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		return 0
elseif magia.spell == "Vine Whip" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		if getCreatureLookDir(cid) == 0 then
		area = vinen
		dano = whipn
		effect = 80
		elseif getCreatureLookDir(cid) == 1 then
		area = vinee
		dano = whipe
		effect = 83
		elseif getCreatureLookDir(cid) == 2 then
		area = vines
		dano = whips
		effect = 81
		elseif getCreatureLookDir(cid) == 3 then
		area = vinew
		dano = whipw
		effect = 82
		end
		doAreaCombatHealth(cid, null, getThingPos(cid), area, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), effect)
		doAreaCombatHealth(cid, element, getThingPos(cid), dano, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 255)
	return 0

elseif magia.spell == "Raging Blast" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(cid), rageblast1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 181)
	local function damage(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.x, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 36)
		end
end
local sumonado = cid 
		addEvent(damage, 200, {cid = sumonado, x = rageblast2})
		addEvent(damage, 400, {cid = sumonado, x = rageblast3})
		addEvent(damage, 600, {cid = sumonado, x = rageblast4})
                

         
	return 0
elseif magia.spell == "Leech Seed" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 5)
		local alvo = getCreatureTarget(cid)
		local leecher = cid
		local function suck(params)
		if isCreature(params.cid) then
		if isCreature(params.alvo) then
		if cid == leecher then
		doSendMagicEffect(getThingPos(params.cid), 14)
		local life = getCreatureHealth(alvo)
		doAreaCombatHealth(params.cid, element, getThingPos(params.alvo), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 45)
		local newlife = life - getCreatureHealth(alvo)
		if newlife >= 1 then
		doCreatureAddHealth(params.cid, newlife)
		doSendAnimatedText(getThingPos(params.cid), "+"..newlife.."", 35)
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
elseif magia.spell == "Leaf Blade" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(cid), rageblast1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 79)
		local function damage(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.x, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 79)
		end
end
local sumonado = cid 
		addEvent(damage, 200, {cid = sumonado, x = rageblast2})
		addEvent(damage, 400, {cid = sumonado, x = rageblast3})
		addEvent(damage, 600, {cid = sumonado, x = rageblast4})
	return 0

elseif magia.spell == "Earthshock" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


	
	doAreaCombatHealth(cid, GROUNDDAMAGE, getThingPos(cid), eshock, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
	local sps = getThingPos(cid)
	sps.x = sps.x+1
	sps.y = sps.y+1
	doSendMagicEffect(sps, 127)
	return 0
elseif magia.spell == "Multi-Slap" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


	
	doAreaCombatHealth(cid, NORMALDAMAGE, getThingPos(cid), eshock, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	
	return 0
	
elseif magia.spell == "Thundershock" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 40)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		return 0
elseif magia.spell == "Solar Beam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

	
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 94)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 95)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 91)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 92)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 86)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 87)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 89)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 90)
		end
		
	return 0
elseif magia.spell == "Charge Beam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

	
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 94)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 95)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 91)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 92)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 86)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 87)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 89)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 90)
		end
		
	return 0
elseif magia.spell == "Zap Cannon" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

	
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 94)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 95)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 91)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 92)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 86)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 87)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 89)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 90)
		end
		
	return 0
elseif magia.spell == "Stun Spore" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)



local d = getCreaturesInRange(getThingPos(cid), 2, 2, 1, 0)
                        for _,pid in pairs(d) do
if isSummon(pid) then
 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Paralize(cid)
else
                               Paralize(pid)
end
end
                        end		
doAreaCombatHealth(cid, element, getThingPos(cid), sleeparea, 0, 0, 85)

    	return 0

elseif magia.spell == "Whirlwind" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		posit = getThingPos(cid)
		local function gust(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, params.ar, params.br, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 42)
		
		end
		end
		local posicao = getThingPos(cid)
		if getCreatureLookDir(cid) == 0 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, br = whirl3})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, br = whirl5})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, br = whirl5})
		elseif getCreatureLookDir(cid) == 2 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, br = whirl3})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, br = whirl5})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, br = whirl5})
		elseif getCreatureLookDir(cid) == 1 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, br = whirl32})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, br = whirl52})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, br = whirl52})
		elseif getCreatureLookDir(cid) == 3 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, br = whirl32})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, br = whirl52})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, br = whirl52})
		end
	return 0

elseif magia.spell == "Sing" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)



local d = getCreaturesInRange(getThingPos(cid), 3, 3, 1, 0)
                        for _,pid in pairs(d) do
if isSummon(pid) then
 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sing(cid)
else
                                Sing(pid)
end
end
                        end		
doAreaCombatHealth(cid, element, getThingPos(cid), AREA_CIRCLE3X3, 0, 0, 22)
    	return 0


elseif magia.spell == "Melody" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)



local d = getCreaturesInRange(getThingPos(cid), 3, 3, 1, 0)
                        for _,pid in pairs(d) do
if isSummon(pid) then
 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
Sing(cid)
else
                                Sing(pid)
end
end
                        end		
doAreaCombatHealth(cid, element, getThingPos(cid), AREA_CIRCLE3X3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 32)
    	return 0

elseif magia.spell == "Stomp" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)



local d = getCreaturesInRange(getThingPos(cid), 2, 2, 1, 0)
                        for _,pid in pairs(d) do
if isSummon(pid) then
                                Paralize(pid)
end
                        end		
doAreaCombatHealth(cid, element, getThingPos(cid), sleeparea, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)
    	return 0
elseif magia.spell == "Sleep Powder" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


                        local d = getCreaturesInRange(getThingPos(cid), 2, 2, 1, 0)
                        for _,pid in pairs(d) do
if isSummon(pid) then
 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Sleep(cid)
else
                                Sleep(pid)
end
end
                        end
doAreaCombatHealth(cid, element, getThingPos(cid), sleeparea,0,0, 27)
	return 0

elseif magia.spell == "Hypnosis" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


                        local summons = getCreatureTarget(cid)
                       if isSummon(summons) then
 if getPlayerStorageValue(summons, 34) >= 1 then
setPlayerStorageValue(summons, 34, 0)
doSendMagicEffect(getThingPos(summons), 135)
doSendAnimatedText(getThingPos(summons), "REFLECT", 215)   
           
Hypnosis(cid)
else
Hypnosis(summons)
end
                                
                       end
doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, 0, 0, 136)

                      
	return 0
elseif magia.spell == "Lick" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


                        local summons = getCreatureTarget(cid)
                       if isSummon(summons) then
                                Paralize(summons)
                       end
doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, 0, 0, 145)

                      
	return 0
elseif magia.spell == "Invisible" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


                        local summons = cid
doSendMagicEffect(getCreaturePosition(summons), 219)
local outfitx = {lookType = 0, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
--doSetCreatureOutfit(summons, outfitx, 3000)
 doSetMonsterOutfit(summons, 'Tall Grass', 3000)                      
    --doSetItemOutfit(summons, outfitx, summons)

                            doAddCondition(summons , conditioninvi)
                       
                      
	return 0

elseif magia.spell == "Element Hand" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


                        local summons = cid
doSendMagicEffect(getCreaturePosition(summons), 219)
		if isInArray({"631"}, getCreatureOutfit(cid).lookType) then
outfitx = {lookType = 630, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                      
 elseif isInArray({"630"}, getCreatureOutfit(cid).lookType) then
outfitx = {lookType = 629, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx) 
 elseif isInArray({"629"}, getCreatureOutfit(cid).lookType) then
outfitx = {lookType = 628, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                       
 
        
        
 elseif isInArray({"628"}, getCreatureOutfit(cid).lookType) then
outfitx = {lookType = 631, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}

doCreatureChangeOutfit(summons, outfitx)                       
 
        
       end             
	return 0









elseif magia.spell == "Bug Bite" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0

elseif magia.spell == "Crabhammer" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
		return 0

elseif magia.spell == "Guillotine" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
		local function guilo(params)
			
if isCreature(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 156)
			end
			end
local sumonado = cid 
		addEvent(guilo, 300, {cid = sumonado})
		

		return 0
elseif magia.spell == "Horn Drill" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		
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
local sumonado = cid 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage2, 600, {cid = sumonado})

	return 0

elseif magia.spell == "Leaf Storm" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

	
	
		
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

local sumonado = cid 
	
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

elseif magia.spell == "Selfdestruct" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		local function death(params)
		if isCreature(params.cid) then
		doCreatureAddHealth(params.cid, -getCreatureHealth(cid))
		end
		end
		addEvent(death, 450, {cid = cid})
local destruct = getCreatureHealth(cid)
		doAreaCombatHealth(cid, element, getThingPos(cid), destruct1, -destruct, -destruct, 181)
		addEvent(doAreaCombatHealth, 150, cid, element, getThingPos(cid), destruct2,  -destruct, -destruct, 181)
		addEvent(doAreaCombatHealth, 350, cid, element, getThingPos(cid), destruct3,  -destruct, -destruct, 181)
		setPlayerStorageValue(cid, 33, 1)




	return 0

elseif magia.spell == "Harden" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		
		setPlayerStorageValue(cid, 4, 1)
		
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
local sumonado = cid 
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

elseif magia.spell == "Rock Slide" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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

local sumonado = cid 
		addEvent(bolt2, 500, {cid = sumonado, boltalvo = boltalvo})
addEvent(bolt, 800, {cid = sumonado, boltalvo = boltalvo})
	return 0

elseif magia.spell == "Dragon Rush" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

	
		
		

		doAreaCombatHealth(cid, element, getThingPos(cid), psy1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 40)



		

local function go1(params)
if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), psy1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
	end
end
local sumonado = cid 
		addEvent(go1, 500, {cid = sumonado})

		return 0

elseif magia.spell == "Flame Blast" then



doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
	
local function go2(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), combat_arr1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 181)
end
end
	
		
local function go(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), combat_arr2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
	end
end
		
		
local function go1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid),combat_arr3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 39)
end
end
local function go3(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid),combat_arr4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 179)
end
end
local sumonado = cid 
addEvent(go2, 600, {cid = sumonado})	
addEvent(go, 1000, {cid = sumonado})
	addEvent(go, 300, {cid = sumonado})
	addEvent(go1, 600, {cid = sumonado})
	addEvent(go2, 900, {cid = sumonado})
	addEvent(go3, 1200, {cid = sumonado})
		

return 0

elseif magia.spell == "Giga Impact" then



doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
	
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
local sumonado = cid 
	addEvent(go, 000, {cid = sumonado})
	addEvent(go1, 700, {cid = sumonado})
	addEvent(go2, 1300, {cid = sumonado})
	addEvent(go3, 2000, {cid = sumonado})
		

return 0

elseif magia.spell == "Fire Sprint" then



doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
	


local function go(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), combat_arr2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 179)
	end
end
local sumonado = cid 
		addEvent(go, 1000, {cid = sumonado})




	addEvent(go, 300, {cid = sumonado})
	
	
		

return 0

elseif magia.spell == "Hyper Beam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

	
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 152)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 158)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 156)

		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 151)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 158)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 155)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 149)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 157)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 153)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 150)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 157)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 154)
		end
		
	return 0

elseif magia.spell == "Ice Beam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

	
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 99)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 105)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 103)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 98)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 105)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 102)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 96)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 104)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 100)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 97)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 104)
		doAreaCombatHealth(cid, element, getThingPos(cid), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 101)
		end
		
	return 0

elseif magia.spell == "Tri Flames" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

	
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, element, getThingPos(cid), tri1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)

		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, element, getThingPos(cid), tri2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, element, getThingPos(cid), tri3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, element, getThingPos(cid), tri4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		end
		
	return 0

elseif magia.spell == "Dragon Breath" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
		posit = getThingPos(cid)
		local function gust(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, null, params.ar, sand1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.eee)
		doAreaCombatHealth(params.cid, element, params.ar, arr1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 253)

		else
		end
		end
		local posicao = getThingPos(cid)
		if getCreatureLookDir(cid) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 5, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 5, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 5, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 5, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 5, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 5, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir(cid) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 5, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 5, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 5, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 5, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 5, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 5, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0

	elseif magia.spell == "Dragon Pulse" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		
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
local sumonado = cid 
		addEvent(damage, 100, {cid = sumonado})
		addEvent(damage, 600, {cid = sumonado})
		addEvent(throw, 0, {cid = sumonado})
		addEvent(throw, 550, {cid = sumonado})
		return 0

elseif magia.spell == "Egg Bomb" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
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
 
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0


	elseif magia.spell == "Acid" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

	
	
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 14)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
			return 0
elseif magia.spell == "Poison Bomb" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		
		
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 14)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
	return 0


elseif magia.spell == "Poison Gas" then

doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		
		
local function gas(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), confusionx, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
	end
	end
local sumonado = cid 
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
elseif magia.spell == "Psy Condition" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
local function psycon(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 251)
	end
	end
local function psycon2(params)
	if isCreature(params.cid) then
doSendMagicEffect(getThingPos(params.cid),172)
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
	end
	end
local function psycon3(params)
	if isCreature(params.cid) then
doSendMagicEffect(getThingPos(params.cid),182)
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 137)
	end
	end
local sumonado = sumomdonego

	doAreaCombatHealth(sumonado, element, getThingPos(sumonado), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 182)
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
elseif magia.spell == "Dark Condition" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
local function darkcon(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)
	end
	end
local function darkcon2(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 186)
	end
	end
local function darkcon3(params)
	if isCreature(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos(params.cid), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 38)
	end
	end
local sumonado = cid 
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



                elseif magia.spell == "Poison Powder" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
	

doAreaCombatHealth(cid, element, getThingPos(cid), sleeparea, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 85)
                        local d = getCreaturesInRange(getThingPos(cid), 2, 2, 1, 0)
                                       for _,pid in pairs(d) do
if isSummon(pid) then
Poison(pid, 8, 10)
 if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Poison(cid, 8, 10)
else
Poison(pid, 8, 10)
end
end
end
return 0

elseif magia.spell == "Wing Attack" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, COMBAT_PDAMAGE, getThingPos(cid), wingn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		doAreaCombatHealth(cid, element, getThingPos(cid), wingdn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, COMBAT_PDAMAGE, getThingPos(cid), winge, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		doAreaCombatHealth(cid, element, getThingPos(cid), wingde, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, COMBAT_PDAMAGE, getThingPos(cid), wings, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		doAreaCombatHealth(cid, element, getThingPos(cid), wingds, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, COMBAT_PDAMAGE, getThingPos(cid), wingw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		doAreaCombatHealth(cid, element, getThingPos(cid), wingdw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		end
		return 0

elseif magia.spell == "Fury Cutter" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		if getCreatureLookDir(cid) == 0 then
		doAreaCombatHealth(cid, COMBAT_PDAMAGE, getThingPos(cid), wingn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		doAreaCombatHealth(cid, element, getThingPos(cid), wingdn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(cid) == 1 then
		doAreaCombatHealth(cid, COMBAT_PDAMAGE, getThingPos(cid), winge, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		doAreaCombatHealth(cid, element, getThingPos(cid), wingde, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(cid) == 2 then
		doAreaCombatHealth(cid, COMBAT_PDAMAGE, getThingPos(cid), wings, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		doAreaCombatHealth(cid, element, getThingPos(cid), wingds, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir(cid) == 3 then
		doAreaCombatHealth(cid, COMBAT_PDAMAGE, getThingPos(cid), wingw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		doAreaCombatHealth(cid, element, getThingPos(cid), wingdw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
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
local sumonado = cid 
		addEvent(fury, 500, {cid = sumonado})
		return 0

elseif magia.spell == "Twister" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(cid), rageblast1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 142)
		local function damage(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.x, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 42)
		end
		end
local sumonado = cid 
		addEvent(damage, 200, {cid = sumonado, x = rageblast2})
		addEvent(damage, 400, {cid = sumonado, x = rageblast3})
		addEvent(damage, 600, {cid = sumonado, x = rageblast4})
	return 0

	
	
	
end
end