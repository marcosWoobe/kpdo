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
local paralize = createConditionObject(CONDITION_HASTE)
setConditionParam(paralize, CONDITION_PARAM_TICKS, 6*1000)
setConditionFormula(paralize, -0.7, 0, -0.8, 0)
function Paralize(inparalize)
if isSummon(inparalize) or isPlayer(inparalize) then
if (hasCondition(inparalize, CONDITION_HASTE)) then
  doRemoveCondition(inparalize, CONDITION_HASTE)
elseif (hasCondition(inparalize, CONDITION_PARALYZE)) then

doSendAnimatedText(getCreaturePosition(inparalize), "Hm...", 210)
doRemoveCondition(inparalize, CONDITION_PARALYZE)
end


 doAddCondition(inparalize , paralize)
local function stunmiss(params)

if isMonster(inparalize) then
if (hasCondition(inparalize, CONDITION_HASTE)) then
setPlayerStorageValue(inparalize, 3, 1)
end

else
return True
end
end
addEvent(stunmiss, 100)
addEvent(stunmiss, 500)
addEvent(stunmiss, 1500)
addEvent(stunmiss, 2000)
addEvent(stunmiss, 3500)


       
end
       
        
end

local sleep = createConditionObject(CONDITION_PARALYZE)
setConditionParam(sleep, CONDITION_PARAM_TICKS, 4*1000)
setConditionFormula(sleep, -1.7, 0, -1.8, 0)
local singx = createConditionObject(CONDITION_PARALYZE)
setConditionParam(singx, CONDITION_PARAM_TICKS, 7*1000)
setConditionFormula(singx, -1.7, 0, -1.8, 0)
function Sleep(insleep)
if (hasCondition(insleep, CONDITION_PARALYZE)) then
  doRemoveCondition(insleep, CONDITION_PARALYZE)
  
end
if isSummon(insleep) or isPlayer(insleep) then
doAddCondition(insleep , sleep)
p = getCreaturePosition(insleep)
doSendAnimatedText(p, "Sleep", 154)
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
       
end


function Sing(insleep)
if isSummon(inparalize) or isPlayer(inparalize) then
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

local paralize = createConditionObject(CONDITION_PARALYZE)
setConditionParam(paralize, CONDITION_PARAM_TICKS, 10*1000)
setConditionFormula(paralize, -0.7, 0, -0.8, 0)
function Lick(insleep)

p = getCreaturePosition(insleep)
setPlayerStorageValue(insleep, 3, 1)
local function stopsleep(params)
if isMonster(insleep) then
setPlayerStorageValue(insleep, 3, 1)
else
return True
end
end
addEvent(stopsleep, 3000)



doAddCondition(insleep , paralize)

end





       




function Confunso(inparalize)
if isSummon(inparalize) or isPlayer(inparalize) then
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
local dmg = getPlayerStorageValue(cid, 985)
local dmg2 = getPlayerStorageValue(cid, 986)

        local n = n or 0

        if (n < config.jumps) then
            if (isCreature(cid)) then
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
local dmg = getPlayerStorageValue(cid, 985)
local dmg2 = getPlayerStorageValue(cid, 986)
        local n = n or 0

        if (n < config.jumps) then
            if (isCreature(cid)) then
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
        doAreaCombatHealth(pet, POISONDAMAGE, p, 0, -300, -400, ef)
        return addEvent(Poison, 800, inpoison, ef, rounds-1)
end
end

local cp = {
["Venusaur"] = {
["m1"] = {  spell = "Headbutt", minLv = 1,ex = 1830001, base1 = 200, base2 = 201, dista = 1, bonus = 8,type = "normal",cd = 5},
["m2"] = {  spell = "Razor Leaf",minLv = 1, ex = 600002, base1 = 230, base2 = 245, dista = 8, bonus = 4.5, type = "grass", cd = 10},
["m3"] = {  spell = "Vine Whip", minLv = 1, ex = 7200004, base1 = 230, base2 = 280, dista = 2, target = "no", bonus = 8.5, type = "grass",cd = 19},
["m4"] = {  spell = "Quick Attack", minLv = 1, ex = 1833001, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "normal",cd = 10},
["m5"] = {  spell = "Leech Seed", minLv = 85, ex = 4300003, base1 = 18, base2 = 18, dista = 5, bonus = 3.5,type = "grass", cd = 35},
["m6"] = {  spell = "Leaf Blade", minLv = 90, ex = 813986, base1 = 360, base2 = 380, target = "no",bonus = 10.6,type = "grass",cd = 40},
["m7"] = {  spell = "Solar Beam", minLv = 85, ex = 6200004, base1 = 750, base2 = 650, dista = 100, bonus = 15, target = "no", type = "grass",cd = 60},
["m8"] = {  spell = "Sleep Powder", minLv = 85, ex = 619508, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 30},
["m9"] = {  spell = "Stun Spore", minLv = 85, ex = 610008, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "grass",cd = 50},
["m10"] = {  spell = "Leaf Storm", minLv = 95, ex = 655006, base1 = 360, base2 = 380, target = "no", bonus = 5.0, type = "grass", cd = 95},
["!cd"] = { pokenome= "Venusaur" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=1830001,spellm2="Razor Leaf",exm2 = 600002,spellm3= "Vine Whip",exm3=7200004,spellm4 = "Quick Attack",exm4=1833001,spellm5 ="Leech Seed",exm5=4300003,spellm6="Leaf Blade",exm6=813986,spellm7= "Solar Beam",exm7=6200004,spellm8="Sleep Powder",exm8=619508,spellm9 = "Stun Spore",exm9=610008,spellm10 = "Leaf Storm",exm10=655006},
},
["Shiny Venusaur"] = {
["m1"] = {  spell = "Headbutt", minLv = 1,ex = 4830001, base1 = 200, base2 = 201, dista = 1, bonus = 10,type = "normal",cd = 5},
["m2"] = {  spell = "Razor Leaf",minLv = 1, ex = 400002, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "grass", cd = 10},
["m3"] = {  spell = "Vine Whip", minLv = 1, ex = 4200004, base1 = 230, base2 = 280, dista = 2, target = "no", bonus = 9.5, type = "grass",cd = 19},
["m4"] = {  spell = "Quick Attack", minLv = 1, ex = 4833001, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "normal",cd = 10},
["m5"] = {  spell = "Leech Seed", minLv = 85, ex = 4300003, base1 = 18, base2 = 18, dista = 5, bonus = 4.5,type = "grass", cd = 35},
["m6"] = {  spell = "Leaf Blade", minLv = 90, ex = 413986, base1 = 360, base2 = 380, target = "no",bonus = 13.6,type = "grass",cd = 40},
["m7"] = {  spell = "Solar Beam", minLv = 85, ex = 4200004, base1 = 750, base2 = 650, dista = 100, bonus = 16, target = "no", type = "grass",cd = 60},
["m8"] = {  spell = "Sleep Powder", minLv = 85, ex = 419508, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 30},
["m9"] = {  spell = "Stun Spore", minLv = 85, ex = 410008, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 8, type = "grass",cd = 50},
["m10"] = {  spell = "Leaf Storm", minLv = 95, ex = 455006, base1 = 360, base2 = 380, target = "no", bonus = 7.0, type = "grass", cd = 95},
["!cd"] = { pokenome= "Shiny Venusaur" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=4830001,spellm2="Razor Leaf",exm2 = 400002,spellm3= "Vine Whip",exm3=4200004,spellm4 = "Quick Attack",exm4=4833001,spellm5 ="Leech Seed",exm5=4300003,spellm6="Leaf Blade",exm6=413986,spellm7= "Solar Beam",exm7=4200004,spellm8="Sleep Powder",exm8=419508,spellm9 = "Stun Spore",exm9=410008,spellm10 = "Leaf Storm",exm10=455006},
},
["Bulbasaur"] = {
["m1"] = {  spell = "Headbutt", minLv = 1,ex = 1810001, base1 = 200, base2 = 201, dista = 1, bonus = 6,type = "normal",cd = 9},
["m2"] = {  spell = "Razor Leaf",minLv = 1, ex = 400002, base1 = 230, base2 = 245, dista = 8, bonus = 2.5, type = "grass", cd = 10},
["m3"] = {  spell = "Vine Whip", minLv = 1, ex = 7000004, base1 = 230, base2 = 280, dista = 2, target = "no", bonus = 4.5, type = "grass",cd = 20},
["m4"] = {  spell = "Quick Attack", minLv = 1, ex = 1811001, base1 = 200, base2 = 201, dista = 1,bonus = 7, type = "normal",cd = 10},
["m5"] = {  spell = "Leech Seed", minLv = 35, ex = 4308903, base1 = 18, base2 = 18, dista = 5, bonus = 1.5,type = "grass", cd = 35},
["m6"] = {  spell = "Solar Beam", minLv = 40, ex = 6209804, base1 = 750, base2 = 650, dista = 100, bonus = 7, target = "no", type = "grass",cd = 60},
["m7"] = {  spell = "Sleep Powder", minLv = 1, ex = 616808, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 30},
["m8"] = {  spell = "Stun Spore", minLv = 25, ex = 610468, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2, type = "grass",cd = 50},
["!cd"] = { pokenome= "Bulbasaur" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=1810001,spellm2="Razor Leaf",exm2 = 400002,spellm3= "Vine Whip",exm3=7000004,spellm4 = "Quick Attack",exm4=1811001,spellm5 ="Leech Seed",exm5=4308903,spellm6="Solar Beam",exm6=6209804,spellm7= "Sleep Powder",exm7=616808,spellm8="Stun Spore",exm8=610468},
},
["Ivysaur"] = {
["m1"] = {  spell = "Headbutt", minLv = 1,ex = 1810301, base1 = 200, base2 = 201, dista = 1, bonus = 7,type = "normal",cd = 9},
["m2"] = {  spell = "Razor Leaf",minLv = 1, ex = 405002, base1 = 230, base2 = 245, dista = 8, bonus = 3.1, type = "grass", cd = 10},
["m3"] = {  spell = "Vine Whip", minLv = 1, ex = 7060004, base1 = 230, base2 = 280, dista = 2, target = "no", bonus = 5.1, type = "grass",cd = 20},
["m4"] = {  spell = "Quick Attack", minLv = 1, ex = 1891001, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "normal",cd = 10},
["m5"] = {  spell = "Leech Seed", minLv = 42, ex = 4305623, base1 = 18, base2 = 18, dista = 5, bonus = 2.1,type = "grass", cd = 35},
["m6"] = {  spell = "Leaf Blade", minLv = 45, ex = 510856, base1 = 360, base2 = 380, target = "no",bonus = 5.1,type = "grass",cd = 40},
["m7"] = {  spell = "Solar Beam", minLv = 50, ex = 6207604, base1 = 750, base2 = 650, dista = 2, bonus = 10, target = "no", type = "grass",cd = 60},
["m8"] = {  spell = "Sleep Powder", minLv = 1, ex = 618808, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 30},
["m9"] = {  spell = "Stun Spore", minLv = 44, ex = 610498, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 3, type = "grass",cd = 50},
["!cd"] = { pokenome= "Ivysaur" , nmoves= 9 , spellm1 = "Headbutt" ,exm1=1810301,spellm2="Razor Leaf",exm2 = 405002,spellm3= "Vine Whip",exm3=7060004,spellm4 = "Quick Attack",exm4=1891001,spellm5 ="Leech Seed",exm5=4305623,spellm6="Leaf Blade",exm6=510856,spellm7= "Solar Beam",exm7=6207604,spellm8="Sleep Powder",exm8=618808,spellm9="Stun Spore",exm9=610498},
},

["Bellsprout"] = {
["m1"] = {  spell = "Razor Leaf", minLv = 5,ex = 1250301, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m2"] = {  spell = "Vine Whip",minLv = 8, ex = 236402, base1 = 230, base2 = 245, dista = 2,target = "no", bonus = 0.7, type = "grass", cd = 20},
["m3"] = {  spell = "Acid", minLv = 1, ex = 3065084, base1 = 230, base2 = 280, dista = 1, bonus = 0.5, type = "poison",cd = 20},
["m4"] = {  spell = "Slash", minLv = 1, ex = 2599001, base1 = 200, base2 = 201, dista = 1,bonus = 0.5, type = "normal",cd = 10},
["!cd"] = { pokenome= "Bellsprout" , nmoves= 4 , spellm1 = "Razor Leaf" ,exm1=1250301,spellm2="Vine Whip",exm2 = 236402,spellm3= "Acid",exm3=3065084,spellm4 = "Slash",exm4=2599001},
},
["Weepinbell"] = {
["m1"] = {  spell = "Razor Leaf", minLv = 18,ex = 1259381, base1 = 200, base2 = 201, dista = 8, bonus = 1.5,type = "grass",cd = 9},
["m2"] = {  spell = "Vine Whip",minLv = 18, ex = 236892, base1 = 230, base2 = 245, dista = 2,target = "no", bonus = 1.5, type = "grass", cd = 15},
["m3"] = {  spell = "Acid", minLv = 1, ex = 3065099, base1 = 230, base2 = 280, dista = 1, bonus = 2.5, type = "poison",cd = 20},
["m4"] = {  spell = "Slash", minLv = 1, ex = 2599981, base1 = 200, base2 = 201, dista = 1,bonus = 1.5, type = "normal",cd = 10},
["m5"] = {  spell = "Poison Bomb", minLv = 23, ex = 7004895, base1 = 200,base2 = 201, dista = 4, bonus = 8, type = "poison",cd = 24},
["m6"] = {  spell = "Stun Spore", minLv = 23, ex = 313118, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 3, type = "grass",cd = 50},
["!cd"] = { pokenome= "Weepinbell" , nmoves= 6 , spellm1 = "Razor Leaf" ,exm1=1259381,spellm2="Vine Whip",exm2 = 236892,spellm3= "Acid",exm3=3065099,spellm4 = "Slash",exm4=2599981,spellm5 = "Poison Bomb",exm5=7004895,spellm6 = "Stun Spore",exm6=313118},
},
["Victreebel"] = {
["m1"] = {  spell = "Razor Leaf", minLv = 1,ex = 2998381, base1 = 200, base2 = 201, dista = 8, bonus = 5.5,type = "grass",cd = 9},
["m2"] = {  spell = "Vine Whip",minLv = 1, ex = 335832, base1 = 230, base2 = 245, dista = 2,target = "no", bonus = 9.5, type = "grass", cd = 15},
["m3"] = {  spell = "Acid", minLv = 1, ex = 4568099, base1 = 230, base2 = 280, dista = 1, bonus = 4.5, type = "poison",cd = 20},
["m4"] = {  spell = "Slash", minLv = 1, ex = 3629881, base1 = 200, base2 = 201, dista = 1,bonus = 10.5, type = "normal",cd = 10},
["m5"] = {  spell = "Poison Bomb", minLv = 65, ex = 2356895, base1 = 200,base2 = 201, dista = 4, bonus = 15, type = "poison",cd = 24},
["m6"] = {  spell = "Stun Spore", minLv = 1, ex = 356118, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "grass",cd = 50},
["m7"] = {  spell = "Poison Powder", minLv = 1, ex = 436898, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "poison",cd = 50},
["m8"] = {  spell = "Sleep Powder", minLv = 1, ex = 616408, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 30},
["m9"] = {  spell = "Leaf Storm", minLv = 70, ex = 255341, base1 = 360, base2 = 380, target = "no", bonus = 5.0, type = "grass", cd = 95},
["!cd"] = { pokenome= "Victreebel" , nmoves= 9 , spellm1 = "Razor Leaf" ,exm1=2998381,spellm2="Vine Whip",exm2 = 335832,spellm3= "Acid",exm3=4568099,spellm4 = "Slash",exm4=3629881,spellm5 = "Poison Bomb",exm5=2356895,spellm6 = "Stun Spore",exm6=356118,spellm7 = "Poison Powder",exm7=436898,spellm8 = "Sleep Powder",exm8=616408,spellm9 = "Leaf Storm",exm9=255341},
},
["Oddish"] = {
["m1"] = {  spell = "Absorb", minLv = 5,ex = 9260905, base1 = 200, base2 = 201, dista = 1, bonus = 0.5,type = "grass",cd = 9},
["m2"] = {  spell = "Acid",minLv = 5, ex = 389459, base1 = 230, base2 = 245, dista = 2, bonus = 0.7, type = "poison", cd = 20},
["m3"] = {  spell = "Leech Seed", minLv = 7, ex = 4865984, base1 = 18, base2 = 18, dista = 6, bonus = 0.5, type = "grass",cd = 20},
["m4"] = {  spell = "Sleep Powder", minLv = 10, ex = 9893211, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 0.5, type = "grass",cd = 30},
["m5"] = {  spell = "Stun Spore", minLv = 9, ex = 618198, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 0.5, type = "grass",cd = 50},
["!cd"] = { pokenome= "Oddish" , nmoves= 5 , spellm1 = "Absorb" ,exm1=9260905,spellm2="Acid",exm2 = 389459,spellm3= "Leech Seed",exm3=4865984,spellm4 = "Sleep Powder",exm4=9893211,spellm5 = "Stun Spore",exm5=618198},
},
["Gloom"] = {
["m1"] = {  spell = "Absorb", minLv = 25,ex = 9266985, base1 = 200, base2 = 201, dista = 1, bonus = 1.5,type = "grass",cd = 9},
["m2"] = {  spell = "Leech Seed",minLv = 25, ex = 444429, base1 = 18, base2 = 18, dista = 2, bonus = 1.7, type = "grass", cd = 20},
["m3"] = {  spell = "Poison Bomb", minLv = 28, ex = 8434445, base1 = 200,base2 = 201, dista = 4, bonus = 10, type = "poison",cd = 24},
["m4"] = {  spell = "Acid",minLv = 25, ex = 389666, base1 = 230, base2 = 245, dista = 2, bonus = 1.7, type = "poison", cd = 20},
["m5"] = {  spell = "Poison Gas", minLv = 30, ex = 617778, base1 = 120, target = "no", base2 = 120, dista = 100, bonus = 1.5, type = "poison",cd = 50},
["m6"] = {  spell = "Sleep Powder", minLv = 25, ex = 9793217, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m7"] = {  spell = "Stun Spore", minLv = 28, ex = 678197, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1.5, type = "grass",cd = 50},
["!cd"] = { pokenome= "Gloom" , nmoves= 7 , spellm1 = "Absorb" ,exm1=9266985,spellm2="Leech Seed",exm2 = 444429,spellm3= "Poison Bomb",exm3=8434445,spellm4 = "Acid",exm4=389666,spellm5 = "Poison Gas",exm5=617778,spellm6 = "Sleep Powder",exm6=9793217,spellm7 = "Stun Spore",exm7=678197},
},

["Vileplume"] = {
["m1"] = {  spell = "Absorb", minLv = 1,ex = 9263331, base1 = 200, base2 = 201, dista = 1, bonus = 2.5,type = "grass",cd = 9},
["m2"] = {  spell = "Leech Seed",minLv = 1, ex = 443331, base1 = 18, base2 = 18, dista = 2, bonus = 2.7, type = "grass", cd = 20},
["m3"] = {  spell = "Poison Bomb", minLv = 70, ex = 813335, base1 = 200,base2 = 201, dista = 4, bonus = 15, type = "poison",cd = 24},
["m4"] = {  spell = "Acid",minLv = 1, ex = 383663, base1 = 230, base2 = 245, dista = 2, bonus = 2.7, type = "poison", cd = 20},
["m5"] = {  spell = "Poison Gas", minLv = 1, ex = 755578, base1 = 120, target = "no", base2 = 120, dista = 100, bonus = 3.5, type = "poison",cd = 50},
["m6"] = {  spell = "Solar Beam", minLv = 70, ex = 3343404, base1 = 750, base2 = 650, dista = 2, bonus = 10, target = "no", type = "grass",cd = 60},
["m7"] = {  spell = "Sleep Powder", minLv = 1, ex = 999237, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m8"] = {  spell = "Stun Spore", minLv = 1, ex = 635157, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 50},
["!cd"] = { pokenome= "Vileplume" , nmoves= 8 , spellm1 = "Absorb" ,exm1=9263331,spellm2="Leech Seed",exm2 = 443331,spellm3= "Poison Bomb",exm3=813335,spellm4 = "Acid",exm4=383663,spellm5 = "Poison Gas",exm5=755578,spellm6 = "Solar Beam",exm6=3343404,spellm7 = "Sleep Powder",exm7=999237,spellm8 = "Stun Spore",exm8=635157},
},

["Tangela"] = {
["m1"] = {  spell = "Absorb", minLv = 1,ex = 733331, base1 = 200, base2 = 201, dista = 1, bonus = 6.5,type = "grass",cd = 10},
["m2"] = {  spell = "Leech Seed",minLv = 1, ex = 733331, base1 = 18, base2 = 18, dista = 4, bonus = 2.7, type = "grass", cd = 20},
["m3"] = {  spell = "Super Vines", minLv = 1, ex = 733335, base1 = 200,base2 = 201, dista = 1, bonus = 12, type = "grass",cd = 20},
["m4"] = {  spell = "Vine Whip",minLv = 1, ex = 335832, base1 = 330, base2 = 345, dista = 2,target = "no", bonus = 10.5, type = "grass", cd = 5},
["m5"] = {  spell = "Poison Powder", minLv = 1, ex = 734898, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "poison",cd = 35},
["m6"] = {  spell = "Sleep Powder", minLv = 1, ex = 569237, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m7"] = {  spell = "Stun Spore", minLv = 1, ex = 895157, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 15},
["!cd"] = { pokenome= "Tangela" , nmoves= 7 , spellm1 = "Absorb" ,exm1=733331,spellm2="Leech Seed",exm2 = 733331,spellm3= "Super Vines",exm3=733335,spellm4 = "Vine Whip",exm4=335832,spellm6 = "Poison Powder",exm5=734898,spellm6 = "Sleep Powder",exm6=569237,spellm7 = "Stun Spore",exm7=895157},
},
["Exeggcute"] = {
["m1"] = {  spell = "Hypnosis", minLv = 14,ex = 9467781, base1 = 200, base2 = 201, dista = 6, bonus = 0.5,type = "psychic",cd = 20},
["m2"] = {  spell = "Leech Seed", minLv = 1, ex = 4868684, base1 = 18, base2 = 18, dista = 6, bonus = 0.5, type = "grass",cd = 20},
["m3"] = {  spell = "Egg Bomb", minLv = 1,ex = 1259381, base1 = 400, base2 = 401, dista = 8, bonus = 10.5,type = "normal",cd = 9},
["m4"] = {  spell =  "Confusion", minLv = 16, ex = 6398703, base1 = 65,base2 = 75, bonus = 10,type = "psychic",target = "no",cd = 15},
["!cd"] = { pokenome= "Exeggcute" , nmoves= 4 , spellm1 = "Hypnosis" ,exm1=9467781,spellm2="Leech Seed",exm2 = 4868684,spellm3= "Egg Bomb",exm3=1259381,spellm4 = "Confusion",exm4=6398703},
},

["Exeggutor"] = {
["m1"] = {  spell = "Hypnosis", minLv = 1,ex = 9453211, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 20},
["m2"] = {  spell = "Leech Seed", minLv = 1, ex = 2963354, base1 = 18, base2 = 18, dista = 6, bonus = 3.5, type = "grass",cd = 20},
["m3"] = {  spell = "Egg Bomb", minLv = 1,ex = 5357891, base1 = 400, base2 = 401, dista = 8, bonus = 20.5,type = "normal",cd = 9},
["m4"] = {  spell =  "Confusion", minLv = 1, ex = 4368973, base1 = 165,base2 = 175, bonus = 15,type = "psychic",target = "no",cd = 25},
["m5"] = {  spell =  "Psychic", minLv = 1, ex = 4368667, base1 = 225,base2 = 225, bonus = 15,type = "psychic",target = "no",cd = 35},
["m6"] = {  spell = "Solar Beam", minLv = 55, ex = 6763695, base1 = 750, base2 = 650, dista = 2, bonus = 10, target = "no", type = "grass",cd = 60},
["m7"] = {  spell = "Stun Spore", minLv = 1, ex = 623466, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 50},
["m8"] = {  spell = "Poison Powder", minLv = 1, ex = 356987, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "poison",cd = 50},
["m9"] = {  spell = "Leaf Storm", minLv = 70, ex = 538972, base1 = 360, base2 = 380, target = "no", bonus = 5.0, type = "grass", cd = 95},
["!cd"] = { pokenome= "Exeggutor" , nmoves= 9 , spellm1 = "Hypnosis" ,exm1=9453211,spellm2="Leech Seed",exm2 = 2963354,spellm3= "Egg Bomb",exm3=5357891,spellm4 = "Confusion",exm4=4368973,spellm5 = "Psychic",exm5=4368667,spellm6 = "Solar Beam",exm6=6763695,spellm7 = "Stun Spore",exm7=623466,spellm8 = "Poison Powder",exm8=356987,spellm9 = "Leaf Storm",exm9=538972},
},

["Dratini"] = {
["m1"] = {spell = "Headbutt", minLv = 1, ex = 1450001, base1 = 80,base2 = 85, dista = 1, bonus = 5.0, type = "normal", cd = 9},
["m2"] = {spell = "Thundershock", minLv = 1, ex = 8220002, base1 = 100,base2 = 118, dista = 5, bonus = 3.8, type = "electric", cd = 9 },
["m3"] = {spell = "Dragon Pulse", minLv = 17 , ex = 6500003 , base1 = 80, base2 = 90 ,dista = 5, bonus = 3.8, type = "dragon", cd = 10},
["m4"] = {spell = "Hyper Beam", minLv = 25, ex = 6500865, base1 = 205, target = "no", base2 = 210, dista = 2, bonus = 15, type = "normal",cd = 50},
["m5"] = {spell = "Dragon Breath", minLv = 20, ex = 6610009, base1 = 80, base2 = 90, dista = 8, bonus = 4.8,target = "no",type = "dragon",cd = 25},
["m6"] = {spell = "Twister",minLv = 28,ex = 6611009,base1 = 80,base2 = 90,dista = 8,bonus = 2.8,target = "no",type = "dragon",cd = 30  },
["m7"] = {spell = "Dragon Rush",minLv = 30,ex = 6205012,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 10,type = "dragon",cd = 95},
["m8"] = {spell = "Fury",minLv = 30,ex = 500576,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Dratini" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=1450001,spellm2="Thundershock",exm2 = 8220002,spellm3= "Dragon Pulse",exm3=6500003,spellm4 = "Hyper Beam",exm4=6500865,spellm5 = "Dragon Breath",exm5=6610009,spellm6 = "Twister",exm6=6611009,spellm7 = "Dragon Rush",exm7=6205012,spellm8 = "Dragon Rush",exm8=500576},
		 },

["Dragonair"] = {
["m1"] = {spell = "Headbutt", minLv = 1, ex = 1458591, base1 = 180,base2 = 185, dista = 1, bonus = 6.0, type = "normal", cd = 9},
["m2"] = {spell = "Thundershock", minLv = 1, ex = 9224602, base1 = 200,base2 = 218, dista = 5, bonus = 4.8, type = "electric", cd = 9 },
["m3"] = {spell = "Dragon Pulse", minLv = 1 , ex = 4566303 , base1 = 180, base2 = 190 ,dista = 5, bonus = 4.8, type = "dragon", cd = 10},
["m4"] = {spell = "Hyper Beam", minLv = 75, ex = 826953, base1 = 225,target = "no",base2 = 250,dista = 8, bonus = 30, type = "normal",cd = 50},
["m5"] = {spell = "Dragon Breath", minLv = 72, ex = 5620369, base1 = 180, base2 = 190, dista = 8, bonus = 9.8,target = "no",type = "dragon",cd = 25},
["m6"] = {spell = "Twister",minLv = 73,ex = 1698403,base1 = 180,base2 = 190,dista = 8,bonus = 5.8,target = "no",type = "dragon",cd = 30  },
["m7"] = {spell = "Dragon Rush",minLv = 80,ex = 6205013,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 15,type = "dragon",cd = 95},
["m8"] = {spell = "Fury",minLv = 78,ex = 500578,base1 = 100,base2 = 120,dista = 1,bonus = 3.2,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Dragonair" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=1458591,spellm2="Thundershock",exm2 = 9224602,spellm3= "Dragon Pulse",exm3=4566303,spellm4 = "Hyper Beam",exm4=826953,spellm5 = "Dragon Breath",exm5=5620369,spellm6 = "Twister",exm6=1698403,spellm7 = "Dragon Rush",exm7=6205013,spellm8 = "Fury",exm8=500578},
		 },

["Dragonite"] = {
["m1"] = {spell = "Headbutt",minLv = 1,ex = 1450003,base1 = 80,base2 = 85,dista = 1,bonus = 9.0,type = "normal",cd = 9},
["m2"] = {spell = "Thundershock",minLv = 1,ex = 8240002,base1 = 100,base2 = 118,dista = 5,bonus = 6.8,type = "electric",cd = 9 },
["m3"] = {spell = "Dragon Pulse",minLv = 1,ex = 6700003,base1 = 275,base2 = 385,dista = 5,bonus = 8,type = "dragon",cd = 8},
["m4"] = {spell = "Hyper Beam",minLv = 110,ex = 6251005,base1 = 485,target = "no",base2 = 500,bonus = 40,type = "normal",cd = 50},
["m5"] = {spell = "Dragon Breath",minLv = 102,ex = 6810005,base1 = 275,base2 = 385,dista = 5,bonus = 12,target = "no",type = "dragon",cd = 25},
["m6"] = {spell = "Twister",minLv = 104,ex = 6831005,base1 = 275,base2 = 385,dista = 5,bonus = 8,target = "no",type = "dragon",cd = 30},
["m7"] = {spell = "Wing Attack",minLv = 102,ex = 655107,base1 = 250,base2 = 300,dista = 10,bonus = 10,type = "flying",target = "no",cd = 29},
["m8"] = {spell = "Dragon Rush",minLv = 110,ex = 6205018,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 15,type = "dragon",cd = 95},
["m9"] = {spell = "Magma Meteor",minLv = 115,ex = 6205015,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 20,type = "dragon",cd = 165},
["m10"] = {spell = "Fury",minLv = 108,ex = 500559,base1 = 100,base2 = 120,dista = 1,bonus = 5.5,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Dragonite" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=1450003,spellm2="Thundershock",exm2 = 8240002,spellm3= "Dragon Pulse",exm3=6700003,spellm4 = "Hyper Beam",exm4=6251005,spellm5 = "Dragon Breath",exm5=6810005,spellm6 = "Twister",exm6=6831005,spellm7 = "Wing Attack",exm7=655107,spellm8 = "Dragon Rush",exm8=6205018,spellm9 = "Magma Meteor",exm9=6205015,spellm10 = "Fury",exm10=500559},
},
["Snorlax"] = {
["m1"] = {spell = "Headbutt",minLv = 1,ex = 4456803,base1 = 80,base2 = 85,dista = 1,bonus = 9.0,type = "normal",cd = 9},
["m2"] = {spell = "Scratch",minLv = 1,ex = 634091,base1 = 190,base2 = 200,dista = 1,bonus = 9.5,type = "normal",cd = 15},
["m3"] = {spell = "Dizzy Punch",minLv = 1,ex = 829251,base1 = 335,base2 = 340,dista = 1,bonus = 3.9,type = "normal",cd = 15},
["m4"] = {spell = "Bite",minLv = 1,ex = 812922,base1 = 200,base2 = 210,dista = 1,bonus = 8.7,type = "normal",cd = 9},
["m5"] = {spell = "Mega Punch",minLv = 1,ex = 886771,base1 = 335,base2 = 440,dista = 1,bonus = 10.9,type = "fighting",cd = 25},
["m6"] = {spell = "Body Slam",minLv = 89,ex = 876671,base1 = 335,base2 = 440,dista = 1,bonus = 14.9,type = "normal",cd = 35},
["m7"] = {spell = "Hyper Beam",minLv = 90,ex = 4561005,base1 = 485,target = "no",base2 = 500,bonus = 40,type = "normal",cd = 50},
["m8"] = {spell = "Giga Impact",minLv = 95,ex = 7288335,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 6.5,type = "ground",cd = 60},
["m9"] = {spell = "Rest",minLv = 91,ex = 6843433,base1 = 305,base2 = 316,dista = 10,target = "no",bonus = 6.5,type = "ground",cd = 50},
["!cd"] = { pokenome= "Snorlax" , nmoves= 9 , spellm1 = "Headbutt" ,exm1=4456803,spellm2="Scratch",exm2 = 634091,spellm3= "Dizzy Punch",exm3=829251,spellm4 = "Bite",exm4=812922,spellm5 = "Mega Punch",exm5=886771,spellm6 = "Body Slam",exm6=876671,spellm7 = "Hyper Beam",exm7=4561005,spellm8 = "Giga Impact",exm8=7288335,spellm9 = "Rest",exm9=6843433},
},
["Abra"] = {
["m1"] = {spell = "Psy Pulse",minLv = 17,ex = 6300003,base1 = 100,base2 = 150,dista = 5,bonus = 2.8,type = "psychic",cd = 10},
["m2"] = {spell = "Calm Mind",minLv = 20,ex = 7491808,base1 = 235,base2 = 245,dista = 10,bonus = 7,target = "no",type = "psychic",cd = 35},
["m3"] = {spell = "Restore",minLv = 15,ex = 6300002,base1 = 70,base2 = 140,dista = 100,bonus = 65,target = "no",type = "normal",cd = 100},
["m4"] = {spell = "Confusion",minLv = 1,ex = 6300001,base1 = 65,base2 = 75,dista = 5,bonus = 10,type = "psychic",target = "no",cd = 15},
["m5"] = {spell = "Psy Target",minLv = 20,ex = 6300009,base1 = 65,base2 = 75,dista = 5,bonus = 10,type = "psychic",target = "no",cd = 30},
["!cd"] = { pokenome= "Abra" , nmoves= 5 , spellm1 = "Psy Pulse" ,exm1=6300003,spellm2="Calm Mind",exm2 = 7491808,spellm3= "Restore",exm3=6300002,spellm4 = "Confusion",exm4=6300001,spellm5 = "Psy Target",exm5=6300009},
},

["Kadabra"] = {	
["m1"] = {spell = "Psy beam",minLv = 1,ex = 6409526,base1 = 335,base2 = 345,dista = 8,bonus = 5,type = "psychic",target = "no",cd = 20},
["m2"] = {spell = "Psy Wave",minLv = 1,ex = 6304556,base1 = 335,base2 = 345,dista = 8,bonus = 5,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psychic",minLv = 1,ex = 6400001,base1 = 135,base2 = 145,dista = 8,bonus = 12,type = "psychic",target = "no",cd = 35},
["m4"] = {spell = "Confusion",minLv = 1,ex = 6465001,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psy Pulse",minLv = 1,ex = 6400003,base1 = 175,base2 = 185,dista = 5,bonus = 3,type = "psychic",cd = 10},
["m6"] = {spell = "Hypnosis", minLv = 1,ex = 6405689, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 60},
["m7"] = {spell = "Calm Mind",minLv = 60,ex = 6401358,base1 = 235,base2 = 245,dista = 10,bonus = 7,target = "no",type = "psychic",cd = 35},
["m8"] = {spell = "Restore",minLv = 55,ex = 6400002,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 100},
["m9"] = {spell = "Reflect",minLv = 50,ex = 6404598,base1 = 335,base2 = 345,bonus = 11,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Psycho Shift",minLv = 55,ex = 6110004,base1 = 235,base2 = 245,dista = 10,bonus = 10,type = "psychic",cd = 24},
["m11"] = {spell = "Psy Target",minLv = 60,ex = 6300019,base1 = 65,base2 = 75,dista = 5,bonus = 10,type = "psychic",target = "no",cd = 30},
["!cd"] = { pokenome= "Kadabra" , nmoves= 11 , spellm1 = "Psy beam" ,exm1=6409526,spellm2="Psy Wave",exm2 = 6304556,spellm3= "Psychic",exm3=6400001,spellm4 = "Confusion",exm4=6465001,spellm5 = "Psy Pulse",exm5=6400003,spellm6 = "Hypnosis",exm6=6405689,spellm7 = "Calm Mind",exm7=6401358,spellm8 = "Restore",exm8=6400002,spellm9 = "Reflect",exm9=6404598,spellm10 = "Psycho Shift",exm10=6110004,spellm11 = "Psy Target",exm11=6300019},
},

["Alakazam"] = {
["m1"] = {spell = "Psy beam",minLv = 1,ex = 6509526,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m2"] = {spell = "Psy Wave",minLv = 1,ex = 6504556,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 1,ex = 6560003,base1 = 275,base2 = 285,dista = 6,bonus = 5,type = "psychic",cd = 15},
["m4"] = {spell = "Confusion",minLv = 1,ex = 6565001,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 1,ex = 6560008,base1 = 235,base2 = 245,dista = 8,bonus = 15,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Mind Blast",minLv = 95,ex = 6222008,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 15,type = "psychic",cd = 95},
["m7"] = {spell = "Calm Mind",minLv = 90,ex = 6801359,base1 = 235,base2 = 245,dista = 10,bonus = 7,target = "no",type = "psychic",cd = 70},
["m8"] = {spell = "Hypnosis", minLv = 85,ex = 8903669, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 60},
["m9"] = {spell = "Reflect",minLv = 85,ex = 7555597,base1 = 335,base2 = 345,bonus = 11,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Restore",minLv = 85,ex = 6400056,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 100},
["m11"] = {spell = "Psycho Shift",minLv = 90,ex = 61100888,base1 = 235,base2 = 245,dista = 10,bonus = 12,type = "psychic",cd = 24},
["m12"] = {spell = "Psy Target",minLv = 90,ex = 6300899,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "psychic",target = "no",cd = 50},
["!cd"] = { pokenome= "Alakazam" , nmoves= 12 , spellm1 = "Psy beam" ,exm1=6509526,spellm2="Psy Wave",exm2 = 6504556,spellm3= "Psy Pulse",exm3=6560003,spellm4 = "Confusion",exm4=6565001,spellm5 = "Psychic",exm5=6560008,spellm6 = "Mind Blast",exm6=6222008,spellm7 = "Calm Mind",exm7=6801359,spellm8 = "Hypnosis",exm8=8903669,spellm9 = "Reflect",exm9=7555597,spellm10 = "Restore",exm10=6400056,spellm11 = "Psycho Shift",exm11=61100888,spellm12 = "Psy Target",exm12=6300899},
},

["Shiny Alakazam"] = {
["m1"] = {spell = "Psy Condition",minLv = 105,ex = 6659526,base1 = 335,base2 = 345,dista = 8,bonus = 3.0,type = "psychic",target = "no",cd = 70},
["m2"] = {spell = "Psy Wave",minLv = 1,ex = 6594556,base1 = 335,base2 = 345,dista = 8,bonus = 9,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 1,ex = 6960003,base1 = 275,base2 = 285,dista = 6,bonus = 9,type = "psychic",cd = 15},
["m4"] = {spell = "Confusion",minLv = 1,ex = 6965001,base1 = 165,base2 = 175,dista = 8,bonus = 9,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 1,ex = 6960008,base1 = 235,base2 = 245,dista = 8,bonus = 20,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Mind Blast",minLv = 115,ex = 6922008,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 20,type = "psychic",cd = 95},
["m7"] = {spell = "Calm Mind",minLv = 110,ex = 6901359,base1 = 235,base2 = 245,dista = 10,bonus = 7,target = "no",type = "psychic",cd = 70},
["m8"] = {spell = "Hypnosis", minLv = 105,ex = 9903689, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 60},
["m9"] = {spell = "Reflect",minLv = 105,ex = 7955597,base1 = 335,base2 = 345,bonus = 11,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Restore",minLv = 105,ex = 6900056,base1 = 135,base2 = 145,bonus = 120,type = "psychic",target = "no",cd = 100},
["m11"] = {spell = "Psycho Shift",minLv = 110,ex = 69100888,base1 = 235,base2 = 245,dista = 10,bonus = 12,type = "psychic",cd = 24},
["m12"] = {spell = "Psy Target",minLv = 110,ex = 6900899,base1 = 65,base2 = 75,dista = 5,bonus = 6,type = "psychic",target = "no",cd = 50},
["!cd"] = { pokenome= "Shiny Alakazam" , nmoves= 12 , spellm1 = "Psy Condition" ,exm1=6659526,spellm2="Psy Wave",exm2 = 6594556,spellm3= "Psy Pulse",exm3=6960003,spellm4 = "Confusion",exm4=6965001,spellm5 = "Psychic",exm5=6960008,spellm6 = "Mind Blast",exm6=6922008,spellm7 = "Calm Mind",exm7=6901359,spellm8 = "Hypnosis",exm8=9903689,spellm9 = "Reflect",exm9=7955597,spellm10 = "Restore",exm10=6900056,spellm11 = "Psycho Shift",exm11=69100888,spellm12 = "Psy Target",exm12=6900899},
},

["Drowzee"] = {
["m1"] = {spell = "Psy Wave",minLv = 1,ex = 9884556,base1 = 335,base2 = 345,dista = 8,bonus = 2,type = "psychic",target = "no",cd = 20},
["m2"] = {spell = "Psy Pulse",minLv = 1,ex = 9880003,base1 = 275,base2 = 285,dista = 6,bonus = 2,type = "psychic",cd = 15},
["m3"] = {spell = "Confusion",minLv = 1,ex = 9885001,base1 = 165,base2 = 175,dista = 8,bonus = 3,type = "psychic",target = "no",cd = 45},
["m4"] = {spell = "Psychic",minLv = 1,ex = 9588008,base1 = 235,base2 = 245,dista = 8,bonus = 6,type = "psychic",target = "no",cd = 35},
["m5"] = {spell = "Calm Mind",minLv = 30,ex = 9858859,base1 = 235,base2 = 245,dista = 10,bonus = 7,target = "no",type = "psychic",cd = 55},
["m6"] = {spell = "Hypnosis", minLv = 25,ex = 9958689, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 50},
["m7"] = {spell = "Dream Eather",minLv = 30,ex = 9898597,base1 = 335,base2 = 345,bonus = 3,dista = 6,type = "psychic",cd = 45},
["!cd"] = { pokenome= "Drowzee" , nmoves= 7 , spellm1 = "Psy Wave" ,exm1=9884556,spellm2="Psy Pulse",exm2 = 9880003,spellm3= "Confusion",exm3=9885001,spellm4 = "Psychic",exm4=9588008,spellm5 = "Calm Mind",exm5=9858859,spellm6 = "Hypnosis",exm6=9958689,spellm7 = "Dream Eather",exm7=9898597},
},

["Hypno"] = {
["m1"] = {spell = "Psy Condition",minLv = 1,ex = 988952,base1 = 335,base2 = 345,dista = 8,bonus = 2.5,type = "psychic",target = "no",cd = 100},
["m2"] = {spell = "Psy Wave",minLv = 1,ex = 988455,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 1,ex = 988000,base1 = 275,base2 = 285,dista = 6,bonus = 5,type = "psychic",cd = 15},
["m4"] = {spell = "Confusion",minLv = 1,ex = 988500,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 1,ex = 958800,base1 = 235,base2 = 245,dista = 8,bonus = 15,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Calm Mind",minLv = 70,ex = 985885,base1 = 235,base2 = 245,dista = 10,bonus = 14,target = "no",type = "psychic",cd = 55},
["m7"] = {spell = "Hypnosis", minLv = 1,ex = 995868, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 50},
["m8"] = {spell = "Dream Eather",minLv = 70,ex = 989859,base1 = 335,base2 = 345,bonus = 11,dista = 6,type = "psychic",cd = 45},
["m9"] = {spell = "Psy Target",minLv = 65,ex = 935888,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "psychic",target = "no",cd = 80},
["!cd"] = { pokenome= "Hypno" , nmoves= 9 , spellm1 = "Psy Condition" ,exm1=988952,spellm2="Psy Wave",exm2 = 988455,spellm3= "Psy Pulse",exm3=988000,spellm4 = "Confusion",exm4=988500,spellm5 = "Psychic",exm5=958800,spellm6 = "Calm Mind",exm6=985885,spellm7 = "Hypnosis",exm7=995868,spellm8 = "Dream Eather",exm8=989859,spellm9 = "Psy Target",exm10=935888},
},
["Shiny Hypno"] = {
["m1"] = {spell = "Psy Condition",minLv = 1,ex = 488952,base1 = 335,base2 = 345,dista = 8,bonus = 3.0,type = "psychic",target = "no",cd = 100},
["m2"] = {spell = "Psy Wave",minLv = 1,ex = 488455,base1 = 335,base2 = 345,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 1,ex = 488000,base1 = 275,base2 = 285,dista = 6,bonus = 7,type = "psychic",cd = 15},
["m4"] = {spell = "Confusion",minLv = 1,ex = 488500,base1 = 165,base2 = 175,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 1,ex = 458800,base1 = 235,base2 = 245,dista = 8,bonus = 17,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Calm Mind",minLv = 90,ex = 485885,base1 = 235,base2 = 245,dista = 10,bonus = 16,target = "no",type = "psychic",cd = 55},
["m7"] = {spell = "Hypnosis", minLv = 1,ex = 495868, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 50},
["m8"] = {spell = "Dream Eather",minLv = 90,ex = 489859,base1 = 335,base2 = 345,bonus = 15,dista = 6,type = "psychic",cd = 45},
["m9"] = {spell = "Psy Target",minLv = 95,ex = 435888,base1 = 65,base2 = 75,dista = 5,bonus = 7,type = "psychic",target = "no",cd = 80},
["!cd"] = { pokenome= "Shiny Hypno" , nmoves= 9 , spellm1 = "Psy Condition" ,exm1=488952,spellm2="Psy Wave",exm2 = 488455,spellm3= "Psy Pulse",exm3=488000,spellm4 = "Confusion",exm4=488500,spellm5 = "Psychic",exm5=458800,spellm6 = "Calm Mind",exm6=485885,spellm7 = "Hypnosis",exm7=495868,spellm8 = "Dream Eather",exm8=489859,spellm9 = "Psy Target",exm10=435888},
},

["Mr Mime"] = {
["m1"] = {spell = "Psy Condition",minLv = 1,ex = 9559526,base1 = 335,base2 = 345,dista = 8,bonus = 2.5,type = "psychic",target = "no",cd = 70},
["m2"] = {spell = "Psy Wave",minLv = 1,ex = 9554556,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 1,ex = 9550003,base1 = 275,base2 = 285,dista = 6,bonus = 5,type = "psychic",cd = 10},
["m4"] = {spell = "Confusion",minLv = 1,ex = 9555001,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 1,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 15,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Mind Blast",minLv = 75,ex = 9252008,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 15,type = "psychic",cd = 95},
["m7"] = {spell = "Calm Mind",minLv = 65,ex = 9851359,base1 = 235,base2 = 245,dista = 10,bonus = 7,target = "no",type = "psychic",cd = 65},
["m8"] = {spell = "Hypnosis", minLv = 65,ex = 9953669, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 60},
["m9"] = {spell = "Reflect",minLv = 65,ex = 9595597,base1 = 335,base2 = 345,bonus = 11,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Psy Target",minLv = 70,ex = 9350899,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "psychic",target = "no",cd = 50},
["!cd"] = { pokenome= "Mr Mime" , nmoves= 10 , spellm1 = "Psy Condition" ,exm1=9559526,spellm2="Psy Wave",exm2 = 9554556,spellm3= "Psy Pulse",exm3=9550003,spellm4 = "Confusion",exm4=9555001,spellm5 = "Psychic",exm5=9550008,spellm6 = "Mind Blast",exm6=9252008,spellm7 = "Calm Mind",exm7=9851359,spellm8 = "Hypnosis",exm8=9953669,spellm9 = "Reflect",exm9=9595597,spellm10 = "Psy Target",exm10=9350899},
},

["Mew"] = {
["m1"] = {spell = "Psy Condition",minLv = 1,ex = 9509526,base1 = 335,base2 = 345,dista = 8,bonus = 5.5,type = "psychic",target = "no",cd = 50},
["m2"] = {spell = "Psy Wave",minLv = 1,ex = 9504556,base1 = 335,base2 = 345,dista = 8,bonus = 16,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 1,ex = 9560003,base1 = 275,base2 = 285,dista = 6,bonus = 10,type = "psychic",cd = 10},
["m4"] = {spell = "Confusion",minLv = 1,ex = 9565001,base1 = 165,base2 = 175,dista = 8,bonus = 16,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 1,ex = 9560008,base1 = 235,base2 = 245,dista = 8,bonus = 30,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Mind Blast",minLv = 165,ex = 9222008,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 30,type = "psychic",cd = 95},
["m7"] = {spell = "Calm Mind",minLv = 155,ex = 9801359,base1 = 235,base2 = 245,dista = 10,bonus = 7,target = "no",type = "psychic",cd = 35},
["m8"] = {spell = "Hypnosis", minLv = 155,ex = 9903669, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 60},
["m9"] = {spell = "Reflect",minLv = 155,ex = 9555597,base1 = 335,base2 = 345,bonus = 11,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Restore",minLv = 155,ex = 9400056,base1 = 535,base2 = 545,bonus = 100,type = "psychic",target = "no",cd = 100},
["m11"] = {spell = "Psycho Shift",minLv = 160,ex = 91100888,base1 = 235,base2 = 245,dista = 10,bonus = 20,type = "psychic",cd = 24},
["m12"] = {spell = "Psy Target",minLv = 160,ex = 9300899,base1 = 65,base2 = 75,dista = 5,bonus = 10,type = "psychic",target = "no",cd = 30},
["!cd"] = { pokenome= "Mew" , nmoves= 12 , spellm1 = "Psy Condition" ,exm1=9509526,spellm2="Psy Wave",exm2 = 9504556,spellm3= "Psy Pulse",exm3=9560003,spellm4 = "Confusion",exm4=9565001,spellm5 = "Psychic",exm5=9560008,spellm6 = "Mind Blast",exm6=9222008,spellm7 = "Calm Mind",exm7=9801359,spellm8 = "Hypnosis",exm8=9903669,spellm9 = "Reflect",exm9=9555597,spellm10 = "Restore",exm10=9400056,spellm11 = "Psycho Shift",exm11=91100888,spellm12 = "Psy Target",exm12=9300899},
},
["Mewtwo"] = {
["m1"] = {spell = "Dark Condition",minLv = 1,ex = 9609526,base1 = 335,base2 = 345,dista = 8,bonus = 5.5,type = "ghost",target = "no",cd = 50},
["m2"] = {spell = "Psy Wave",minLv = 1,ex = 9604556,base1 = 335,base2 = 345,dista = 8,bonus = 16,type = "psychic",target = "no",cd = 20},
["m3"] = {spell = "Psy Pulse",minLv = 1,ex = 9660003,base1 = 275,base2 = 285,dista = 6,bonus = 10,type = "psychic",cd = 10},
["m4"] = {spell = "Confusion",minLv = 1,ex = 9665001,base1 = 165,base2 = 175,dista = 8,bonus = 16,type = "psychic",target = "no",cd = 45},
["m5"] = {spell = "Psychic",minLv = 1,ex = 9660008,base1 = 235,base2 = 245,dista = 8,bonus = 30,type = "psychic",target = "no",cd = 35},
["m6"] = {spell = "Mind Blast",minLv = 165,ex = 9622008,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 30,type = "psychic",cd = 95},
["m7"] = {spell = "Calm Mind",minLv = 160,ex = 9601359,base1 = 235,base2 = 245,dista = 10,bonus = 7,target = "no",type = "psychic",cd = 35},
["m8"] = {spell = "Hypnosis", minLv = 155,ex = 9603669, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 60},
["m9"] = {spell = "Reflect",minLv = 155,ex = 9655597,base1 = 335,base2 = 345,bonus = 11,type = "psychic",target = "no",cd = 40},
["m10"] = {spell = "Restore",minLv = 155,ex = 9600056,base1 = 535,base2 = 545,bonus = 100,type = "psychic",target = "no",cd = 100},
["m11"] = {spell = "Psycho Shift",minLv = 160,ex = 96100888,base1 = 235,base2 = 245,dista = 10,bonus = 20,type = "psychic",cd = 24},
["m12"] = {spell = "Dark Target",minLv = 160,ex = 9600899,base1 = 65,base2 = 75,dista = 5,bonus = 6,type = "psychic",target = "no",cd = 30},
["!cd"] = { pokenome= "Mewtwo" , nmoves= 12 , spellm1 = "Dark Condition" ,exm1=9609526,spellm2="Psy Wave",exm2 = 9604556,spellm3= "Psy Pulse",exm3=9660003,spellm4 = "Confusion",exm4=9665001,spellm5 = "Psychic",exm5=9660008,spellm6 = "Mind Blast",exm6=9622008,spellm7 = "Calm Mind",exm7=9601359,spellm8 = "Hypnosis",exm8=9603669,spellm9 = "Reflect",exm9=9655597,spellm10 = "Restore",exm10=9600056,spellm11 = "Psycho Shift",exm11=96100888,spellm12 = "Dark Target",exm12=9600899},
},
["Crystal Onix"] = {
["m1"] = {spell = "Rock Throw",minLv = 1,ex = 1835402,base1 = 200,base2 = 201,dista = 6,bonus = 15,type = "rock",cd = 10},
["m2"] = {spell = "Sand Attack",minLv = 1,ex = 7604626,base1 = 215,base2 = 222,dista = 1,bonus = 12,target = "no",type = "ground",cd = 9 },
["m3"] = {spell = "Rock Slide",minLv = 1,ex = 7665403,base1 = 385,base2 = 400,dista = 5,bonus = 15.8,type = "rock",cd = 15},
["m4"] = {spell = "Harden",minLv = 1,ex = 7664504,base1 = 0,target = "no",base2 = 0,dista = 100,bonus = 0,type = "normal",cd = 17},
["m5"] = {spell = "Rock Tomb",minLv = 102,ex = 7601705,base1 = 100,base2 = 120,dista = 5,target = "no",bonus = 15,type = "rock",cd = 25},
["m6"] = {spell = "Falling Rocks",minLv = 105,ex = 7600436,base1 = 200,base2 = 201,dista = 5,target = "no",bonus = 25,type = "rock",cd = 49},
["m7"] = {spell = "Earthshock",minLv = 105,ex = 7603327,base1 = 300,base2 = 301,dista = 10,bonus = 18.8,type = "ground",target = "no",cd = 60},
["m8"] = {spell = "Earth Quake",minLv = 108,ex = 721301,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 1.5,type = "ground",cd = 70},
["!cd"] = { pokenome= "Crystal Onix" , nmoves= 8 , spellm1 = "Rock Throw" ,exm1=1835402,spellm2="Sand Attack",exm2 = 7604626,spellm3= "Rock Slide",exm3=7665403,spellm4 = "Harden",exm4=7664504,spellm5 = "Rock Tomb",exm5=7601705,spellm6 = "Falling Rocks",exm6=7600436,spellm7 = "Earthshock",exm7=7603327,spellm8 = "Earth Quake",exm8=721301},
},
["Onix"] = {
["m1"] = {spell = "Rock Throw",minLv = 1,ex = 1835403,base1 = 200,base2 = 201,dista = 6,bonus = 7,type = "rock",cd = 10},
["m2"] = {spell = "Sand Attack",minLv = 1,ex = 7604623,base1 = 215,base2 = 222,dista = 1,bonus = 6,target = "no",type = "ground",cd = 9 },
["m3"] = {spell = "Rock Slide",minLv = 1,ex = 7665404,base1 = 385,base2 = 400,dista = 5,bonus = 7,type = "rock",cd = 15},
["m4"] = {spell = "Harden",minLv = 1,ex = 7664505,base1 = 0,target = "no",base2 = 0,dista = 100,bonus = 0,type = "normal",cd = 17},
["m5"] = {spell = "Rock Tomb",minLv = 42,ex = 7601706,base1 = 100,base2 = 120,dista = 5,target = "no",bonus = 7,type = "rock",cd = 25},
["m6"] = {spell = "Falling Rocks",minLv = 45,ex = 7600437,base1 = 200,base2 = 201,dista = 5,target = "no",bonus = 13,type = "rock",cd = 49},
["m7"] = {spell = "Earthshock",minLv = 50,ex = 7603328,base1 = 300,base2 = 301,dista = 10,bonus = 18.8,type = "ground",target = "no",cd = 60},
["m8"] = {spell = "Earth Quake",minLv = 58,ex = 721309,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 1.0,type = "ground",cd = 70},
["!cd"] = { pokenome= "Onix" , nmoves= 8 , spellm1 = "Rock Throw" ,exm1=1835403,spellm2="Sand Attack",exm2 = 7604623,spellm3= "Rock Slide",exm3=7665404,spellm4 = "Harden",exm4=7664505,spellm5 = "Rock Tomb",exm5=7601706,spellm6 = "Falling Rocks",exm6=7600437,spellm7 = "Earthshock",exm7=7603328,spellm8 = "Earth Quake",exm8=721309},
},
["Golem"] = {
["m1"] = {spell = "Rock Throw",minLv = 1,ex = 7600031,base1 = 205,base2 = 210,dista = 5,bonus = 7,type = "rock",cd = 4},
["m2"] = {spell = "Sand Attack",minLv = 1,ex = 7600002,base1 = 215,base2 = 222,dista = 1,bonus = 9,target = "no",type = "ground",cd = 9},
["m3"] = {spell = "Rock Slide",minLv = 1,ex = 7600003,base1 = 385,base2 = 400,dista = 4,bonus = 11.8,type = "rock",cd = 15},
["m4"] = {spell = "Harden",minLv = 1,ex = 7600004,base1 = 0,target = "no",base2 = 0,dista = 100,bonus = 0,type = "normal",cd = 17},
["m5"] = {spell = "Rock Tomb",minLv = 72,ex = 7600005,base1 = 260,base2 = 270,dista = 5,target = "no",bonus = 10,type = "rock",cd = 25},
["m6"] = {spell = "Falling Rocks",minLv = 75,ex = 7600006,base1 = 300,base2 = 301,dista = 5,target = "no",bonus = 15,type = "rock",cd = 49},
["m7"] = {spell = "Earthshock",minLv = 1,ex = 7600007,base1 = 300,base2 = 301,dista = 10,bonus = 10.8,type = "ground",target = "no",cd = 40},
["m8"] = {spell = "Rollout",minLv = 1,ex = 7600008,base1 = 125,target = "no",base2 = 175,dista = 100,bonus = 1.5,type = "rock",cd = 40},
["m9"] = {spell = "Selfdestruct",minLv = 75,ex = 7600009,base1 = 3800,base2 = 4500,dista = 10,bonus = 20,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Golem" , nmoves= 9 , spellm1 = "Rock Throw" ,exm1=7600031,spellm2="Sand Attack",exm2 = 7600002,spellm3= "Rock Slide",exm3=7600003,spellm4 = "Harden",exm4=7600004,spellm5 = "Rock Tomb",exm5=7600005,spellm6 = "Falling Rocks",exm6=7600006,spellm7 = "Earthshock",exm7=7600007,spellm8 = "Rollout",exm8=7600008,spellm9 = "Selfdestruct",exm9=7600009},
},

["Graveler"] = {
["m1"] = {spell = "Rock Throw",minLv = 1,ex = 7500021,base1 = 105,base2 = 106,dista = 5,bonus = 5,type = "rock",cd = 4},
["m2"] = {spell = "Sand Attack",minLv = 1,ex = 7500002,base1 = 115,base2 = 122,dista = 1,bonus = 8,type = "ground",cd = 9},
["m3"] = {spell = "Rock Slide",minLv = 16,ex = 7500003,base1 = 205,base2 = 206,dista = 4,bonus = 7.8,type = "rock",cd = 15},
["m4"] = {spell = "Harden",minLv = 17,ex = 7500004,base1 = 0,target = "no",base2 = 0,dista = 100,bonus = 0,type = "normal",cd = 17},
["m5"] = {spell = "Rock Tomb",minLv = 42,ex = 7500005,base1 = 100,base2 = 110,dista = 5,target = "no",bonus = 7,type = "rock",cd = 25},
["m6"] = {spell = "Falling Rocks",minLv = 45,ex = 7500006,base1 = 200,base2 = 201,dista = 5,target = "no",bonus = 10.5,type = "rock",cd = 49},
["m7"] = {spell = "Selfdestruct",minLv = 42,ex = 7500007,base1 = 1500,base2 = 2000,dista = 10,bonus = 21,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Graveler" , nmoves= 7 , spellm1 = "Rock Throw" ,exm1=7500021,spellm2="Sand Attack",exm2 = 7500002,spellm3= "Rock Slide",exm3=7500003,spellm4 = "Harden",exm4=7500004,spellm5 = "Rock Tomb",exm5=7500005,spellm6 = "Falling Rocks",exm6=7500006,spellm7 = "Selfdestruct",exm7=7500007},
},
["Geodude"] = {
["m1"] = {spell = "Rock Throw",minLv = 1,ex = 7500029,base1 = 105,base2 = 106,dista = 5,bonus = 2,type = "rock",cd = 4},
["m2"] = {spell = "Sand Attack",minLv = 1,ex = 7500009,base1 = 115,base2 = 122,dista = 1,bonus = 2,type = "ground",cd = 9},
["m3"] = {spell = "Rock Slide",minLv = 1,ex = 7500069,base1 = 205,base2 = 206,dista = 4,bonus = 2.8,type = "rock",cd = 15},
["m4"] = {spell = "Harden",minLv = 1,ex = 7500039,base1 = 0,target = "no",base2 = 0,dista = 100,bonus = 0,type = "normal",cd = 17},
["m5"] = {spell = "Rock Tomb",minLv = 22,ex = 7980009,base1 = 100,base2 = 110,dista = 5,target = "no",bonus = 2,type = "rock",cd = 25},
["m6"] = {spell = "Earthshock",minLv = 25,ex = 7603329,base1 = 300,base2 = 301,dista = 10,bonus = 6.8,type = "ground",target = "no",cd = 60},
["!cd"] = { pokenome= "Geodude" , nmoves= 6 , spellm1 = "Rock Throw" ,exm1=7500029,spellm2="Sand Attack",exm2 = 7500009,spellm3= "Rock Slide",exm3=7500069,spellm4 = "Harden",exm4=7500039,spellm5 = "Rock Tomb",exm5=7980009,spellm6 = "Earthshock",exm6=7603329},
},

["Rhyhorn"] = {
["m1"] = {spell = "Iron Tail",minLv = 1,ex = 7588029,base1 = 155,base2 = 156,dista = 1,bonus = 3,type = "normal",cd = 4},
["m2"] = {spell = "Horn Attack",minLv = 1,ex = 5360001,base1 = 130,base2 = 135,dista = 1,bonus = 10.4,type = "normal",cd = 5},
["m3"] = {spell = "Stomp",minLv = 32,ex = 7508869,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 5.8,type = "ground",cd = 30},
["m4"] = {spell = "Horn Drill",minLv = 35,ex = 7588239,base1 = 255,base2 = 260,dista = 1,bonus = 6,type = "normal",cd = 25},
["m5"] = {spell = "Shockwave",minLv = 37,ex = 7588539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 5,type = "ground",cd = 40},
["!cd"] = { pokenome= "Rhyhorn" , nmoves= 5 , spellm1 = "Iron Tail" ,exm1=7588029,spellm2="Horn Attack",exm2 = 5360001,spellm3= "Stomp",exm3=7508869,spellm4 = "Horn Drill",exm4=7588239,spellm5 = "Shockwave",exm5=7588539},
},

["Rhydon"] = {
["m1"] = {spell = "Iron Tail",minLv = 1,ex = 7585529,base1 = 155,base2 = 156,dista = 1,bonus = 6,type = "normal",cd = 4},
["m2"] = {spell = "Horn Attack",minLv = 1,ex = 5360251,base1 = 130,base2 = 135,dista = 1,bonus = 15.4,type = "normal",cd = 5},
["m3"] = {spell = "Rock Throw",minLv = 1,ex = 7655931,base1 = 205,base2 = 210,dista = 5,bonus = 7,type = "rock",cd = 4},
["m4"] = {spell = "Stomp",minLv = 32,ex = 7555869,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 6.8,type = "ground",cd = 30},
["m5"] = {spell = "Horn Drill",minLv = 35,ex = 7588939,base1 = 255,base2 = 260,dista = 1,bonus = 10,type = "normal",cd = 25},
["m6"] = {spell = "Shockwave",minLv = 37,ex = 7589959,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 8,type = "ground",cd = 40},
["m7"] = {spell = "Falling Rocks",minLv = 75,ex = 7890399,base1 = 300,base2 = 301,dista = 5,target = "no",bonus = 15,type = "rock",cd = 49},
["m8"] = {spell = "Mega Horn",minLv = 75,ex = 7890398,base1 = 300,base2 = 301,dista = 5,target = "no",bonus = 15,type = "rock",cd = 49},
["!cd"] = { pokenome= "Rhydon" , nmoves= 8 , spellm1 = "Iron Tail" ,exm1=7585529,spellm2="Horn Attack",exm2 = 5360251,spellm3= "Rock Throw",exm3=7655931,spellm4 = "Stomp",exm4=7555869,spellm5 = "Horn Drill",exm5=7588939,spellm6 = "Shockwave",exm6=7589959,spellm7 = "Falling Rocks",exm7=7890399,spellm8 = "Mega Horn",exm8=7890398},

},
["Charizard"] = {
["m1"] = {spell = "Scratch",minLv = 1,ex = 600001,base1 = 190,base2 = 200,dista = 1,bonus = 7.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 1,ex = 600002,base1 = 220,base2 = 235,dista = 4,bonus = 6.9,type = "fire",cd = 7},
["m3"] = {spell = "Fire Fang",minLv = 1,ex = 600003,base1 = 245,base2 = 258,dista = 1,bonus = 7.1,type = "fire",cd = 18},
["m4"] = {spell = "Fireball",minLv = 88,ex = 600004,base1 = 250,base2 = 251,dista = 4,bonus = 7.4,type = "fire",cd = 22},
["m5"] = {spell = "Flamethrower",minLv = 85,ex = 600005,base1 = 370,base2 = 381,target = "no",bonus = 9.2,type = "fire",cd = 35},
["m6"] = {spell = "Raging Blast",minLv = 90,ex = 600006,base1 = 360,base2 = 380,target = "no",bonus = 10.4,type = "fire",cd = 40},
["m7"] = {spell = "Wing Attack",minLv = 86,ex = 600007,base1 = 250,base2 = 300,dista = 10,bonus = 7,type = "flying",target = "no",cd = 29},
["m8"] = {spell = "Fire Blast",minLv = 89,ex = 600008,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 12.5,type = "fire",cd = 50},
["m9"] = {spell = "Flame Blast",minLv = 95,ex = 655486,base1 = 360,base2 = 380,target = "no",bonus = 3.0,type = "fire",cd = 95},
["m10"]=  {spell = "Rage",minLv = 90,ex = 659952,base1 = 100,base2 = 120,dista = 1,bonus = 3.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Charizard" , nmoves= 10 , spellm1 = "Scratch" ,exm1=600001,spellm2="Ember",exm2 = 600002,spellm3= "Fire Fang",exm3=600003,spellm4 = "Fireball",exm4=600004,spellm5 = "Flamethrower",exm5=600005,spellm6 = "Raging Blast",exm6=600006,spellm7 = "Wing Attack",exm7=600007,spellm8 = "Fire Blast",exm8=600008,spellm9 = "Flame Blast",exm9=655486,spellm10 = "Rage",exm10=659952},
},

["Elder Charizard"] = {
["m1"] = {spell = "Scratch",minLv = 1,ex = 600031,base1 = 190,base2 = 200,dista = 1,bonus = 10.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 1,ex = 600032,base1 = 220,base2 = 235,dista = 4,bonus = 10.9,type = "fire",cd = 7},
["m3"] = {spell = "Fire Fang",minLv = 1,ex = 600033,base1 = 245,base2 = 258,dista = 1,bonus = 10.1,type = "fire",cd = 18},
["m4"] = {spell = "Fireball",minLv = 102,ex = 600044,base1 = 250,base2 = 251,dista = 4,bonus = 12.4,type = "fire",cd = 22},
["m5"] = {spell = "Flamethrower",minLv = 1,ex = 600055,base1 = 370,base2 = 381,target = "no",bonus = 12.2,type = "fire",cd = 35},
["m6"] = {spell = "Raging Blast",minLv = 103,ex = 600066,base1 = 360,base2 = 380,target = "no",bonus = 11.4,type = "fire",cd = 40},
["m7"] = {spell = "Wing Attack",minLv = 106,ex = 600077,base1 = 250,base2 = 300,dista = 10,bonus = 14,type = "flying",target = "no",cd = 29},
["m8"] = {spell = "Fire Blast",minLv = 109,ex = 600088,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 15.5,type = "fire",cd = 50},
["m9"] = {spell = "Flame Blast",minLv = 115,ex = 655496,base1 = 360,base2 = 380,target = "no",bonus = 5.0,type = "fire",cd = 95},
["m10"]= {spell = "Acient Fury",minLv = 110,ex = 9605399,base1 = 235,base2 = 245,dista = 10,bonus = 5,target = "no",type = "normal",cd = 35},
["!cd"] = { pokenome= "Elder Charizard" , nmoves= 10 , spellm1 = "Scratch" ,exm1=600031,spellm2="Ember",exm2 = 600032,spellm3= "Fire Fang",exm3=600033,spellm4 = "Fireball",exm4=600044,spellm5 = "Flamethrower",exm5=600055,spellm6 = "Raging Blast",exm6=600066,spellm7 = "Wing Attack",exm7=600077,spellm8 = "Fire Blast",exm8=600088,spellm9 = "Flame Blast",exm9=655496,spellm10 = "Acient Fury",exm10=9605399},
},

["Charmander"] = {
["m1"] = {spell = "Scratch",minLv = 1,ex = 400001,base1 = 30,base2 = 40,dista = 1,bonus = 5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 1,ex = 400002,base1 = 60,base2 = 75,dista = 4,bonus = 3.8,type = "fire",cd = 9},
["m3"] = {spell = "Fire Fang",minLv = 1,ex = 400003,base1 = 75,base2 = 78,dista = 1,bonus = 4.7,type = "fire",cd = 18},
["m4"] = {spell = "Fireball",minLv = 22,ex = 400004,base1 = 100,base2 = 101,dista = 4,bonus = 4.6,type = "fire",cd = 22},
["m5"] = {spell = "Flamethrower",minLv = 27,ex = 400005,base1 = 170,base2 = 181,target = "no",bonus = 5,type = "fire",cd = 35},
["m6"]=  {spell = "Rage",minLv = 30,ex = 659952,base1 = 100,base2 = 120,dista = 1,bonus = 1.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Charmander" , nmoves= 6 , spellm1 = "Scratch" ,exm1=400001,spellm2="Ember",exm2 = 400002,spellm3= "Fire Fang",exm3=400003,spellm4 = "Fireball",exm4=400004,spellm5 = "Flamethrower",exm5=400005,spellm6 = "Rage",exm6=659952},
},

["Charmeleon"] = {
["m1"] = {spell = "Scratch",minLv = 1,ex = 400011,base1 = 130,base2 = 140,dista = 1,bonus = 5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 1,ex = 400022,base1 = 160,base2 = 175,dista = 4,bonus = 3.8,type = "fire",cd = 9},
["m3"] = {spell = "Fire Fang",minLv = 1,ex = 400033,base1 = 175,base2 = 178,dista = 1,bonus = 4.7,type = "fire",cd = 18},
["m4"] = {spell = "Fireball",minLv = 42,ex = 400044,base1 = 200,base2 = 201,dista = 4,bonus = 4.6,type = "fire",cd = 22},
["m5"] = {spell = "Flamethrower",minLv = 45,ex = 400055,base1 = 270,base2 = 281,target = "no",bonus = 5,type = "fire",cd = 35},
["m6"] = {spell = "Raging Blast",minLv = 45,ex = 400066,base1 = 360,base2 = 380,target = "no",bonus = 6.4,type = "fire",cd = 40},
["m7"] = {spell = "Fire Blast",minLv = 49,ex = 400077,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 6.5,type = "fire",cd = 50},
["m8"]=  {spell = "Rage",minLv = 50,ex = 659952,base1 = 100,base2 = 120,dista = 1,bonus = 2.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Charmeleon" , nmoves= 8 , spellm1 = "Scratch" ,exm1=400011,spellm2="Ember",exm2 = 400022,spellm3= "Fire Fang",exm3=400033,spellm4 = "Fireball",exm4=400044,spellm5 = "Flamethrower",exm5=400055,spellm6 = "Raging Blast",exm5=400066,spellm7 = "Fire Blast",exm7=400077,spellm8 = "Rage",exm8=659952},
},

["Magmar"] = {
["m1"] = {spell = "Scratch",minLv = 1,ex = 600541,base1 = 190,base2 = 200,dista = 1,bonus = 7.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 1,ex = 600542,base1 = 220,base2 = 235,dista = 4,bonus = 7.9,type = "fire",cd = 7},
["m3"] = {spell = "Fire Fang",minLv = 1,ex = 600543,base1 = 245,base2 = 258,dista = 1,bonus = 8.1,type = "fire",cd = 18},
["m4"] = {spell = "Fireball",minLv = 88,ex = 600544,base1 = 250,base2 = 251,dista = 4,bonus = 8.4,type = "fire",cd = 22},
["m5"] = {spell = "Flamethrower",minLv = 85,ex = 600545,base1 = 370,base2 = 381,target = "no",bonus = 9.9,type = "fire",cd = 35},
["m6"] = {spell = "Raging Blast",minLv = 90,ex = 600546,base1 = 360,base2 = 380,target = "no",bonus = 12.4,type = "fire",cd = 40},
["m7"] = {spell = "Fire Sprint",minLv = 90,ex = 600547,base1 = 250,base2 = 300,dista = 10,bonus = 5,type = "fire",target = "no",cd = 29},
["m8"] = {spell = "Fire Blast",minLv = 89,ex = 600548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 14.5,type = "fire",cd = 50},
["m9"] = {spell = "Flame Blast",minLv = 95,ex = 655546,base1 = 360,base2 = 380,target = "no",bonus = 4.0,type = "fire",cd = 95},
["!cd"] = { pokenome= "Magmar" , nmoves= 9 , spellm1 = "Scratch" ,exm1=600541,spellm2="Ember",exm2 = 600542,spellm3= "Fire Fang",exm3=600543,spellm4 = "Fireball",exm4=600544,spellm5 = "Flamethrower",exm5=600545,spellm6 = "Raging Blast",exm6=600546,spellm7 = "Fire Sprint",exm7=600547,spellm8 = "Fire Blast",exm8=600548,spellm9 = "Flame Blast",exm9=655546},
},

["Ponyta"] = {
["m1"] = {spell = "Quick Attack", minLv = 1, ex = 745185, base1 = 200, base2 = 201, dista = 1,bonus = 3, type = "normal",cd = 10},
["m2"] = {spell = "Iron Tail",minLv = 1,ex = 532823,base1 = 155,base2 = 156,dista = 1,bonus = 3,type = "normal",cd = 4},
["m3"] = {spell = "Ember",minLv = 1,ex = 456802,base1 = 60,base2 = 75,dista = 4,bonus = 3.8,type = "fire",cd = 9},
["m4"] = {spell = "Flamethrower",minLv = 35,ex = 598855,base1 = 270,base2 = 281,target = "no",bonus = 5,type = "fire",cd = 35},
["m5"] = {spell = "Fireball",minLv = 1,ex = 564787,base1 = 250,base2 = 251,dista = 4,bonus = 3,type = "fire",cd = 22},
["m6"] = {spell = "Stomp",minLv = 32,ex = 7503455,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 5.8,type = "ground",cd = 30},
["!cd"] = { pokenome= "Ponyta" , nmoves= 6 , spellm1 = "Quick Attack" ,exm1=745185,spellm2="Iron Tail",exm2 = 532823,spellm3= "Ember",exm3=456802,spellm4 = "Flamethrower",exm4=598855,spellm5 = "Fireball",exm5=564787,spellm6 = "Stomp",exm6=7503455},
},

["Rapidash"] = {
["m1"] = {spell = "Quick Attack", minLv = 1, ex = 742385, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {spell = "Iron Tail",minLv = 1,ex = 536423,base1 = 155,base2 = 156,dista = 1,bonus = 6,type = "normal",cd = 4},
["m3"] = {spell = "Horn Attack",minLv = 1,ex = 1335851,base1 = 230,base2 = 235,dista = 1,bonus = 7,type = "normal",cd = 5},
["m4"] = {spell = "Ember",minLv = 1,ex = 568902,base1 = 60,base2 = 75,dista = 4,bonus = 3.8,type = "fire",cd = 9},
["m5"] = {spell = "Flamethrower",minLv = 63,ex = 438535,base1 = 270,base2 = 281,target = "no",bonus = 10,type = "fire",cd = 35},
["m6"] = {spell = "Fireball",minLv = 1,ex = 564984,base1 = 250,base2 = 251,dista = 4,bonus = 6,type = "fire",cd = 22},
["m8"] = {spell = "Stomp",minLv = 62,ex = 7502365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 7.8,type = "ground",cd = 30},
["m7"] = {spell = "Giga Impact",minLv = 62,ex = 7883455,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 3.5,type = "ground",cd = 30},
["!cd"] = { pokenome= "Rapidash" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=742385,spellm2="Iron Tail",exm2 = 536423,spellm3= "Horn Attack",exm3=1335851,spellm4 = "Ember",exm4=568902,spellm5 = "Flamethrower",exm5=438535,spellm6 = "Fireball",exm6=564984,spellm7 = "Stomp",exm7=7502365,spellm8 = "Giga Impact",exm8=7883455},
},

["Vulpix"] = {
["m1"] = {spell = "Quick Attack", minLv = 1, ex = 789185, base1 = 200, base2 = 201, dista = 1,bonus = 3, type = "normal",cd = 10},
["m2"] = {spell = "Iron Tail",minLv = 1,ex = 558823,base1 = 155,base2 = 156,dista = 1,bonus = 3,type = "normal",cd = 4},
["m3"] = {spell = "Ember",minLv = 1,ex = 458002,base1 = 60,base2 = 75,dista = 4,bonus = 3.8,type = "fire",cd = 9},
["m4"] = {spell = "Flamethrower",minLv = 35,ex = 560855,base1 = 270,base2 = 281,target = "no",bonus = 5,type = "fire",cd = 35},
["m5"] = {spell = "Fireball",minLv = 1,ex = 564347,base1 = 250,base2 = 251,dista = 4,bonus = 3,type = "fire",cd = 22},
["m6"] = {spell = "Fire Sprint",minLv = 40,ex = 600437,base1 = 250,base2 = 300,dista = 10,bonus = 2,type = "fire",target = "no",cd = 29},
["!cd"] = { pokenome= "Vulpix" , nmoves= 6 , spellm1 = "Quick Attack" ,exm1=789185,spellm2="Iron Tail",exm2 = 558823,spellm3= "Ember",exm3=458002,spellm4 = "Flamethrower",exm4=560855,spellm5 = "Fireball",exm5=564347,spellm6 = "Fire Sprint",exm6=600437},
},

["Ninetales"] = {
["m1"] = {spell = "Quick Attack", minLv = 1, ex = 549185, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {spell = "Iron Tail",minLv = 1,ex = 328823,base1 = 155,base2 = 156,dista = 1,bonus = 6,type = "normal",cd = 4},
["m3"] = {spell = "Ember",minLv = 1,ex = 148002,base1 = 60,base2 = 75,dista = 4,bonus = 8.1,type = "fire",cd = 9},
["m4"] = {spell = "Flamethrower",minLv = 67,ex = 560855,base1 = 270,base2 = 281,target = "no",bonus = 10,type = "fire",cd = 35},
["m5"] = {spell = "Fireball",minLv = 1,ex = 984347,base1 = 250,base2 = 251,dista = 4,bonus = 8,type = "fire",cd = 22},
["m6"] = {spell = "Fire Sprint",minLv = 68,ex = 560437,base1 = 250,base2 = 300,dista = 10,bonus = 5,type = "fire",target = "no",cd = 29},
["m7"] = {spell = "Fire Blast",minLv = 70,ex = 430548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 13.5,type = "fire",cd = 50},
["m8"] = {spell = "Flame Blast",minLv = 80,ex = 245546,base1 = 360,base2 = 380,target = "no",bonus = 3.0,type = "fire",cd = 95},
["!cd"] = { pokenome= "Ninetales" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=549185,spellm2="Iron Tail",exm2 = 328823,spellm3= "Ember",exm3=148002,spellm4 = "Flamethrower",exm4=560855,spellm5 = "Fireball",exm5=984347,spellm6 = "Fire Sprint",exm6=560437,spellm7 = "Fire Blast",exm7=430548,spellm8 = "Flame Blast",exm8=245546},
},

["Growlithe"] = {
["m1"] = {spell = "Scratch",minLv = 1,ex = 509599,base1 = 190,base2 = 200,dista = 1,bonus = 3.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 1,ex = 600992,base1 = 220,base2 = 235,dista = 4,bonus = 3.5,type = "fire",cd = 10},
["m3"] = {spell = "Bite",minLv = 1,ex = 410996,base1 = 200,base2 = 210,dista = 1,bonus = 2.7,type = "normal",cd = 5},
["m4"] = {spell = "Quick Attack", minLv = 1, ex = 289105, base1 = 200, base2 = 201, dista = 1,bonus = 3, type = "normal",cd = 10},
["m5"] = {spell = "Fireball",minLv = 1,ex = 600547,base1 = 250,base2 = 251,dista = 4,bonus = 3,type = "fire",cd = 22},
["m6"] = {spell = "Flamethrower",minLv = 1,ex = 600895,base1 = 370,base2 = 381,target = "no",bonus = 3,type = "fire",cd = 35},
["m2"] = {spell = "Fire Fang",minLv = 1,ex = 600589,base1 = 220,base2 = 235,dista = 1,bonus = 3.5,type = "fire",cd = 10},
["m8"] = {spell = "Fury",minLv = 1,ex = 600587,base1 = 100,base2 = 120,dista = 8,bonus = 1,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Growlithe" , nmoves= 8 , spellm1 = "Scratch" ,exm1=509599,spellm2="Ember",exm2 = 600992,spellm3= "Bite",exm3=410996,spellm4 = "Quick Attack",exm4=289105,spellm5 = "Fireball",exm5=600547,spellm6 = "Flamethrower",exm6=600895,spellm7 = "Fire Fang",exm7=600589,spellm8 = "Fury",exm8=600587},
},

["Arcanine"] = {
["m1"] = {spell = "Scratch",minLv = 1,ex = 579598,base1 = 190,base2 = 200,dista = 1,bonus = 6.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 1,ex = 607998,base1 = 220,base2 = 235,dista = 4,bonus = 7.5,type = "fire",cd = 10},
["m3"] = {spell = "Bite",minLv = 1,ex = 410998,base1 = 200,base2 = 210,dista = 1,bonus = 6.7,type = "normal",cd = 5},
["m4"] = {spell = "Quick Attack", minLv = 1, ex = 289178, base1 = 200, base2 = 201, dista = 1,bonus = 12, type = "normal",cd = 10},
["m5"] = {spell = "Fireball",minLv = 1,ex = 607548,base1 = 250,base2 = 251,dista = 4,bonus = 7,type = "fire",cd = 22},
["m6"] = {spell = "Flamethrower",minLv = 1,ex = 670898,base1 = 370,base2 = 381,target = "no",bonus = 8,type = "fire",cd = 35},
["m7"] = {spell = "Fire Fang",minLv = 1,ex = 600578,base1 = 220,base2 = 235,dista = 1,bonus = 7.5,type = "fire",cd = 15},
["m8"] = {spell = "Fire Blast",minLv = 82,ex = 600548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 13.5,type = "fire",cd = 50},
["m9"] = {spell = "Tri Flames",minLv = 84,ex = 600578,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 13.5,type = "fire",cd = 50},
["m10"] = {spell = "Fury",minLv = 85,ex = 600588,base1 = 100,base2 = 120,dista = 1,bonus = 3.2,type = "normal",target = "no",cd = 35},
["m11"] = {  spell = "Roar",minLv = 82,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Arcanine" , nmoves= 11 , spellm1 = "Scratch" ,exm1=579598,spellm2="Ember",exm2 = 607998,spellm3= "Bite",exm3=410998,spellm4 = "Quick Attack",exm4=289178,spellm5 = "Fireball",exm5=607548,spellm6 = "Flamethrower",exm6=670898,spellm7 = "Fire Fang",exm7=600578,spellm8 = "Fire Blast",exm8=600548,spellm9 = "Tri Flames",exm9=600578,spellm10 = "Fury",exm10=600588,spellm11 = "Roar",exm11=9550008},
},

["Flareon"] = {
["m1"] = {spell = "Ember",minLv = 1,ex = 634998,base1 = 220,base2 = 235,dista = 4,bonus = 7.5,type = "fire",cd = 10},
["m2"] = {spell = "Bite",minLv = 1,ex = 415678,base1 = 200,base2 = 210,dista = 1,bonus = 6.7,type = "normal",cd = 5},
["m3"] = {spell = "Fire Sprint",minLv = 55,ex = 625644,base1 = 250,base2 = 300,dista = 10,bonus = 5,type = "fire",target = "no",cd = 29},
["m4"] = {spell = "Fireball",minLv = 1,ex = 608953,base1 = 250,base2 = 251,dista = 4,bonus = 7,type = "fire",cd = 22},
["m5"] = {spell = "Flamethrower",minLv = 1,ex = 778898,base1 = 370,base2 = 381,target = "no",bonus = 8,type = "fire",cd = 35},
["m6"] = {spell = "Fire Fang",minLv = 1,ex = 600458,base1 = 220,base2 = 235,dista = 4,bonus = 7.5,type = "fire",cd = 15},
["m7"] = {spell = "Raging Blast",minLv = 60,ex = 302006,base1 = 360,base2 = 380,target = "no",bonus = 10.4,type = "fire",cd = 40},
["m8"] = {spell = "Fire Blast",minLv = 1,ex = 606558,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 13.5,type = "fire",cd = 50},
["m9"] = {spell = "Tri Flames",minLv = 57,ex = 666578,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 13.5,type = "fire",cd = 50},
["m10"] = {spell = "Flame Blast",minLv = 65,ex = 785546,base1 = 360,base2 = 380,target = "no",bonus = 4.0,type = "fire",cd = 95},
["!cd"] = { pokenome= "Flareon" , nmoves= 10 , spellm1 = "Ember" ,exm1=634998,spellm2="Bite",exm2 = 415678,spellm3= "Fire Sprint",exm3=625644,spellm4 = "Fire Ball",exm4=608953,spellm5 = "Flamethrower",exm5=778898,spellm6 = "Fire Fang",exm6=600458,spellm7 = "Raging Blast",exm7=302006,spellm8 = "Fire Blast",exm8=606558,spellm9 = "Tri Flames",exm9=666578,spellm10 = "Flame Blast",exm10=785546},
},

["Vaporeon"] = {
["m1"] = {spell = "Quick Attack",minLv = 1,ex = 636983,base1 = 220,base2 = 235,dista = 1,bonus = 7.5,type = "normal",cd = 10},
["m2"] = {spell = "Bite",minLv = 1,ex = 413336,base1 = 200,base2 = 210,dista = 1,bonus = 6.7,type = "normal",cd = 5},
["m3"] = {spell = "Water Gun", minLv = 1, ex = 334554, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 8.5, type = "water",cd = 40},
["m4"] = {spell = "Water ball", minLv = 1, ex = 551545, base1 = 460, base2 = 471, dista = 1,bonus = 6, type = "water",cd = 25},
["m5"] = {spell = "Water Spout", minLv = 55, ex = 544505, base1 = 530, base2 = 580, dista = 2, target = "no", bonus = 15.5, type = "water",cd = 40},
["m6"] = {spell = "Aurora Beam", minLv = 1, ex = 432455, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 15.5,type = "ice", cd = 45},
["m7"] = {spell = "Hydro Cannon", minLv = 1, ex = 362424, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "water",cd = 60},
["m8"] = {spell = "Hydro Pump", minLv = 65, ex = 991882, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 15, type = "water",cd = 95},
["m9"] = {spell = "Hydro Rain", minLv = 60, ex = 644034, base1 = 750, base2 = 650, dista = 10, bonus = 8, target = "no", type = "water",cd = 50},
["!cd"] = { pokenome= "Vaporeon" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=636983,spellm2="Bite",exm2 = 413336,spellm3= "Water Gun",exm3=334554,spellm4 = "Water Ball",exm4=551545,spellm5 = "Water Spout",exm5=544505,spellm6 = "Aurora Beam",exm6=432455,spellm7 = "Hydro Cannon",exm7=362424,spellm8 = "Hydro Pump",exm8=991882,spellm9 = "Hydro Rain",exm9=644034},
},


["Shiny Arcanine"] = {
["m1"] = {spell = "Scratch",minLv = 1,ex = 279598,base1 = 190,base2 = 200,dista = 1,bonus = 9.5,type = "normal",cd = 9},
["m2"] = {spell = "Ember",minLv = 1,ex = 207998,base1 = 220,base2 = 235,dista = 4,bonus = 8.5,type = "fire",cd = 10},
["m3"] = {spell = "Bite",minLv = 1,ex = 210998,base1 = 200,base2 = 210,dista = 1,bonus = 7.7,type = "normal",cd = 5},
["m4"] = {spell = "Quick Attack", minLv = 1, ex = 389178, base1 = 200, base2 = 201, dista = 1,bonus = 14, type = "normal",cd = 10},
["m5"] = {spell = "Fireball",minLv = 1,ex = 207548,base1 = 250,base2 = 251,dista = 4,bonus = 8,type = "fire",cd = 22},
["m6"] = {spell = "Flamethrower",minLv = 1,ex = 270898,base1 = 370,base2 = 381,target = "no",bonus = 9,type = "fire",cd = 35},
["m7"] = {spell = "Fire Fang",minLv = 1,ex = 200578,base1 = 220,base2 = 235,dista = 1,bonus = 7.5,type = "fire",cd = 15},
["m8"] = {spell = "Fire Blast",minLv = 102,ex = 200548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 15.5,type = "fire",cd = 50},
["m9"] = {spell = "Tri Flames",minLv = 104,ex = 200578,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 15.5,type = "fire",cd = 50},
["m10"] = {spell = "Fury",minLv = 105,ex = 200588,base1 = 100,base2 = 120,dista = 1,bonus = 5.2,type = "normal",target = "no",cd = 35},
["m11"] = {  spell = "Roar",minLv = 102,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Shiny Arcanine" , nmoves= 11 , spellm1 = "Scratch" ,exm1=279598,spellm2="Ember",exm2 = 207998,spellm3= "Bite",exm3=210998,spellm4 = "Quick Attack",exm4=389178,spellm5 = "Fireball",exm5=207548,spellm6 = "Flamethrower",exm6=270898,spellm7 = "Fire Fang",exm7=200578,spellm8 = "Fire Blast",exm8=200548,spellm9 = "Tri Flames",exm9=200578,spellm10 = "Fury",exm10=200588,spellm11 = "Roar",exm11=9550008},
},

["Caterpie"] = {
["m1"] = {spell = "Headbutt", minLv = 1,ex = 1835681, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 5},
["m2"] = {spell = "String Shot",minLv = 1,ex = 1300002,base1 = 45,base2 = 50,dista = 3,bonus = 3,type = "bug",cd = 9},
["m3"] = {spell = "Bug Bite",minLv = 1,ex = 1400003,base1 = 95,base2 = 100,dista = 1,bonus = 4,type = "bug",cd = 16},
["!cd"] = { pokenome= "Caterpie" , nmoves= 3 , spellm1 = "Headbutt" ,exm1=1835681,spellm2="String Shot",exm2 = 1300002,spellm3= "Bug Bite",exm3=1400003},

},

["Metapod"] = {
["m1"] = {spell = "Headbutt", minLv = 1,ex = 243564, base1 = 200, base2 = 201, dista = 1, bonus = 4,type = "normal",cd = 5},
["m2"] = {spell = "String Shot",minLv = 1,ex = 233620,base1 = 145,base2 = 150,dista = 3,bonus = 5,type = "bug",cd = 5},
["m3"] = {spell = "Bug Bite",minLv = 1,ex = 142545,base1 = 195,base2 = 200,dista = 1,bonus = 5,type = "bug",cd = 5},
["m4"] = {  spell = "Harden", minLv = 1, ex = 292238, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 6},
["!cd"] = { pokenome= "Metapod" , nmoves= 4 , spellm1 = "Headbutt" ,exm1=243564,spellm2="String Shot",exm2 = 233620,spellm3= "Bug Bite",exm3=142545,spellm4= "Harden",exm4=292238},

},
["Butterfree"] = {
["m1"] = {spell = "Psy beam",minLv = 1,ex = 4325678,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m2"] = {spell = "Whirlwind", minLv = 60, ex = 4563324, base1 = 750, base2 = 650, dista = 100, bonus = 10, target = "no", type = "flying",cd = 30},
["m3"] = {spell = "String Shot",minLv = 1,ex = 234654,base1 = 145,base2 = 150,dista = 3,bonus = 5,type = "bug",cd = 5},
["m4"] = {spell = "Bug Bite",minLv = 1,ex = 144325,base1 = 195,base2 = 200,dista = 1,bonus = 5,type = "bug",cd = 5},
["m5"] = {spell = "Confusion",minLv = 1,ex = 965641,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 45},
["m6"] = {spell = "Psychic",minLv = 55,ex = 92508,base1 = 235,base2 = 245,dista = 8,bonus = 15,type = "psychic",target = "no",cd = 35},
["m7"] = {spell = "Sleep Powder", minLv = 1, ex = 364267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m8"] = {spell = "Stun Spore", minLv = 1, ex = 653462, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 50},
["m9"] = {spell = "Poison Powder", minLv = 1, ex = 352947, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "poison",cd = 50},
["!cd"] = { pokenome= "Butterfree" , nmoves= 9 , spellm1 = "Psy beam" ,exm1=4325678,spellm2="Whirlwind",exm2 = 4563324,spellm3= "String Shot",exm3=234654,spellm4= "Bug Bite",exm4=144325,spellm5= "Confusion",exm5=965641,spellm6= "Psychic",exm6=92508,spellm7= "Sleep Powder",exm7=364267,spellm8= "Stun Spore",exm8=653462,spellm9= "Poison Powder",exm9=352947},

},

["Weedle"] = {
["m1"] = {spell = "Headbutt", minLv = 1,ex = 1835683, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 5},
["m2"] = {spell = "String Shot",minLv = 1,ex = 1300004,base1 = 45,base2 = 50,dista = 3,bonus = 3,type = "bug",cd = 9},
["m3"] = {spell = "Poison Sting",minLv = 1,ex = 1300005,base1 = 105,base2 = 106,dista = 3,bonus = 4,type = "poison",cd = 13},
["!cd"] = { pokenome= "Weedle" , nmoves= 3 , spellm1 = "Headbutt" ,exm1=1835683,spellm2="String Shot",exm2 = 1300004,spellm3= "Poison Sting",exm3=1300005},

},
["Kakuna"] = {
["m1"] = {spell = "Headbutt", minLv = 1,ex = 233564, base1 = 200, base2 = 201, dista = 1, bonus = 4,type = "normal",cd = 5},
["m2"] = {spell = "String Shot",minLv = 1,ex = 253620,base1 = 145,base2 = 150,dista = 3,bonus = 5,type = "bug",cd = 5},
["m3"] = {spell = "Bug Bite",minLv = 1,ex = 442565,base1 = 195,base2 = 200,dista = 1,bonus = 5,type = "bug",cd = 5},
["m4"] = {  spell = "Harden", minLv = 1, ex = 395238, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 6},
["!cd"] = { pokenome= "Kakuna" , nmoves= 4 , spellm1 = "Headbutt" ,exm1=233564,spellm2="String Shot",exm2 = 253620,spellm3= "Bug Bite",exm3=442565,spellm4= "Harden",exm4=395238},

},

["Beedrill"] = {
["m1"] = {spell = "Poison Sting",minLv = 1,ex = 3325678,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "poison",cd = 20},
["m2"] = {spell = "Fury Attack",minLv = 55,ex = 2548939,base1 = 255,base2 = 260,dista = 1,bonus = 10,type = "bug",cd = 25},
["m3"] = {spell = "String Shot",minLv = 1,ex = 254354,base1 = 145,base2 = 150,dista = 3,bonus = 5,type = "bug",cd = 5},
["m4"] = {spell = "Bug Bite",minLv = 1,ex = 144285,base1 = 195,base2 = 200,dista = 1,bonus = 5,type = "bug",cd = 5},
["m5"] = {spell = "Pin Missile",minLv = 1,ex = 969741,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "bug",cd = 45},
["m6"] = {spell = "Fury Cutter",minLv = 58,ex = 238939,base1 = 255,base2 = 260,dista = 8,bonus = 10,type = "bug",target = "no",cd = 25},
["m7"] = {spell = "Rage",minLv = 1,ex = 524576,base1 = 200,base2 = 220,dista = 1,bonus = 2.2,type = "normal",target = "no",cd = 35},
["m8"] = {spell = "Sleep Powder", minLv = 1, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m9"] = {spell = "Stun Spore", minLv = 1, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 50},
["m10"] = {spell = "Poison Powder", minLv = 1, ex = 222947, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "poison",cd = 50},
["!cd"] = { pokenome= "Beedrill" , nmoves= 10 , spellm1 = "Poison Sting" ,exm1=3325678,spellm2="Fury Attack",exm2 = 2548939,spellm3= "String Shot",exm3=254354,spellm4= "Bug Bite",exm4=144285,spellm5= "Pin Missile",exm5=969741,spellm6= "Fury Cutter",exm6=238939,spellm7= "Rage",exm7=524576,spellm8= "Sleep Powder",exm8=333267,spellm9= "Stun Spore",exm9=653222,spellm10= "Poison Powder",exm10=222947},

},

["Rattata"] = {
["m1"] = {spell = "Headbutt", minLv = 1,ex = 1835787, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 5},
["m2"] = {spell = "Quick Attack",minLv = 1,ex = 1308008,base1 = 65,base2 = 70,dista = 1,bonus = 3,type = "normal",cd = 9},
["m3"] = {spell = "Scratch",minLv = 1,ex = 1900882,base1 = 90,base2 = 110,dista = 1,bonus = 2,type = "normal",cd = 9},
["m4"] = {spell = "Hyper Fang",minLv = 11,ex = 1900004,base1 = 240,base2 = 250,dista = 1,bonus = 4,type = "normal",cd = 19},
["!cd"] = { pokenome= "Rattata" , nmoves= 4 , spellm1 = "Headbutt" ,exm1=1835787,spellm2="Quick Attack",exm2 = 1308008,spellm3= "Scratch",exm3=1900882,spellm4= "Hyper Fang",exm4=1900004},

},

["Raticate"] = {
["m1"] = {spell = "Headbutt", minLv = 1,ex = 1875897, base1 = 200, base2 = 201, dista = 1, bonus = 4,type = "normal",cd = 5},
["m2"] = {spell = "Quick Attack",minLv = 1,ex = 732558,base1 = 65,base2 = 70,dista = 1,bonus = 8,type = "normal",cd = 9},
["m3"] = {spell = "Scratch",minLv = 1,ex = 179856,base1 = 90,base2 = 110,dista = 1,bonus = 9,type = "normal",cd = 9},
["m4"] = {spell = "Hyper Fang",minLv = 11,ex = 234504,base1 = 240,base2 = 250,dista = 1,bonus = 8,type = "normal",cd = 19},
["m5"] = {spell = "Rage",minLv = 40,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 1,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Raticate" , nmoves= 4 , spellm1 = "Headbutt" ,exm1=1875897,spellm2="Quick Attack",exm2 = 732558,spellm3= "Scratch",exm3=179856,spellm4= "Hyper Fang",exm4=234504,spellm5= "Rage",exm5=651482},

},

["Gastly"] = {

["m1"] = {spell = "Lick", minLv = 1,ex = 283189, base1 = 200, base2 = 201, dista = 1, bonus = 1,type = "normal",cd = 15},
["m2"] = {spell = "Dark Pulse",minLv = 1,ex = 754793,base1 = 275,base2 = 285,dista = 6,bonus = 1,type = "ghost",cd = 15},
["m3"] = {spell = "Invisible", minLv = 1,ex = 288537, base1 = 200, base2 = 201, dista = 100,target = "no", bonus = 2,type = "normal",cd = 8},
["m4"] = {spell = "Night Shade",minLv = 1,ex = 736021,base1 = 335,base2 = 345,dista = 100,bonus = 10,type = "ghost",target = "no",cd = 35},
["m5"] = {  spell = "Scary Face",minLv = 32,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Gastly" , nmoves= 5 , spellm1 = "Lick" ,exm1=283189,spellm2="Dark Pulse",exm2 = 754793,spellm3= "Invisible",exm3=288537,spellm4= "Night Shade",exm4=736021,spellm5= "Scary Face",exm5=9550008},
},

["Haunter"] = {

["m1"] = {spell = "Lick", minLv = 1,ex = 283199, base1 = 200, base2 = 201, dista = 100, bonus = 2,type = "normal",cd = 15},
["m2"] = {spell = "Dark Pulse",minLv = 1,ex = 754993,base1 = 275,base2 = 285,dista = 6,bonus = 1.5,type = "ghost",cd = 15},
["m3"] = {spell = "Invisible", minLv = 1,ex = 288537, base1 = 200, base2 = 201, dista = 100,target = "no", bonus = 2,type = "normal",cd = 8},
["m4"] = {spell = "Night Shade",minLv = 1,ex = 746021,base1 = 335,base2 = 345,dista = 16,bonus = 15,type = "ghost",target = "no",cd = 35},
["m5"] = {spell = "Shadow Storm",minLv = 65,ex = 756415,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 20,type = "ghost",cd = 75},
["m6"] = {spell = "Nightmare",minLv = 1,ex = 919778,base1 = 335,base2 = 345,bonus = 13,dista = 6,type = "ghost",cd = 45},
["m7"] = {spell = "Hypnosis", minLv = 1,ex = 914685, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 50},
["m8"] = {  spell = "Scary Face",minLv = 62,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Haunter" , nmoves= 8 , spellm1 = "Lick" ,exm1=283199,spellm2="Dark Pulse",exm2 = 754993,spellm3= "Invisible",exm3=288537,spellm4= "Night Shade",exm4=746021,spellm5= "Shadow Storm",exm5=756415,spellm6= "Nightmare",exm6=919778,spellm7= "Hypnosis",exm7=914685,spellm8= "Scary Face",exm8=9550008},
},
["Gengar"] = {

["m1"] = {spell = "Lick", minLv = 1,ex = 183199, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 15},
["m2"] = {spell = "Shadow Punch", minLv = 82,ex = 183549, base1 = 270, base2 = 291, dista = 1, bonus = 10,type = "ghost",cd = 40},
["m3"] = {spell = "Dark Pulse",minLv = 1,ex = 654993,base1 = 275,base2 = 285,dista = 6,bonus = 2,type = "ghost",cd = 15},
["m4"] = {spell = "Invisible", minLv = 1,ex = 188537, base1 = 200, base2 = 201, dista = 100,target = "no", bonus = 2,type = "normal",cd = 8},
["m5"] = {spell = "Night Shade",minLv = 1,ex = 646021,base1 = 335,base2 = 345,dista = 100,bonus = 20,type = "ghost",target = "no",cd = 35},
["m6"] = {spell = "Shadow Storm",minLv = 86,ex = 656415,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 25,type = "ghost",cd = 75},
["m7"] = {spell = "Nightmare",minLv = 1,ex = 989778,base1 = 335,base2 = 345,bonus = 15,dista = 6,type = "ghost",cd = 45},
["m8"] = {spell = "Hypnosis", minLv = 1,ex = 994685, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 50},
["m9"] = {spell = "Dark Target",minLv = 85,ex = 638689,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "ghost",target = "no",cd = 50},
["m10"] = {  spell = "Scary Face",minLv = 82,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Gengar" , nmoves= 10 , spellm1 = "Lick" ,exm1=183199,spellm2="Shadow Punch",exm2 = 183549,spellm3= "Dark Pulse",exm3=654993,spellm4= "Invisible",exm4=188537,spellm5= "Night Shade",exm5=646021,spellm6= "Shadow Storm",exm6=656415,spellm7= "Nightmare",exm7=989775,spellm8= "Hypnosis",exm8=994685,spellm9= "Dark Target",exm9=638689,spellm10= "Scary Face",exm10=9550008},
},
["Shiny Gengar"] = {
["m1"] = {spell = "Dark Condition",minLv = 102,ex = 968926,base1 = 335,base2 = 345,dista = 8,bonus = 3.0,type = "ghost",target = "no",cd = 50},
["m2"] = {spell = "Lick", minLv = 1,ex = 383199, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 15},
["m3"] = {spell = "Shadow Punch", minLv = 102,ex = 483549, base1 = 270, base2 = 291, dista = 1, bonus = 15,type = "ghost",cd = 40},
["m4"] = {spell = "Dark Pulse",minLv = 1,ex = 554993,base1 = 275,base2 = 285,dista = 6,bonus = 3,type = "ghost",cd = 15},
["m5"] = {spell = "Invisible", minLv = 1,ex = 688537, base1 = 200, base2 = 201, dista = 10,target = "no", bonus = 2,type = "normal",cd = 8},
["m6"] = {spell = "Night Shade",minLv = 1,ex = 746021,base1 = 335,base2 = 345,dista = 10,bonus = 25,type = "ghost",target = "no",cd = 35},
["m7"] = {spell = "Shadow Storm",minLv = 106,ex = 856415,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 35,type = "ghost",cd = 75},
["m8"] = {spell = "Nightmare",minLv = 1,ex = 929778,base1 = 335,base2 = 345,bonus = 20,dista = 6,type = "ghost",cd = 45},
["m9"] = {spell = "Hypnosis", minLv = 1,ex = 934685, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 50},
["m10"] = {spell = "Dark Target",minLv = 105,ex = 648689,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "ghost",target = "no",cd = 50},
["m11"] = {  spell = "Scary Face",minLv = 102,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Shiny Gengar" , nmoves= 11 , spellm1 = "Dark Condition" ,exm1=968926,spellm2="Lick",exm2 = 383199,spellm3= "Shadow Punch",exm3=483549,spellm4= "Dark Pulse",exm4=554993,spellm5= "Invisible",exm5=688537,spellm6= "Night Shade",exm6=746021,spellm7= "Shadow Storm",exm7=856415,spellm8= "Nightmare",exm8=929778,spellm9= "Hypnosis",exm9=934685,spellm10= "Dark Target",exm10=648689,spellm11= "Scary Face",exm11=9550008},
},
["Ditto"] = {
["m1"] = {spell = "Lick", minLv = 1,ex = 3404556, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 15},
["m2"] = {spell = "Shadow Punch", minLv = 3406856,ex = 1835499, base1 = 270, base2 = 291, dista = 1, bonus = 10,type = "ghost",cd = 40},
["m3"] = {spell = "Dark Pulse",minLv = 1,ex = 6980403,base1 = 275,base2 = 285,dista = 6,bonus = 2,type = "ghost",cd = 15},
["m4"] = {spell = "Invisible", minLv = 1,ex = 9585001, base1 = 200, base2 = 201, dista = 100,target = "no", bonus = 2,type = "normal",cd = 8},
["m5"] = {spell = "Night Shade",minLv = 1,ex = 8967008,base1 = 335,base2 = 345,dista = 100,bonus = 20,type = "ghost",target = "no",cd = 35},
["m6"] = {spell = "Shadow Storm",minLv = 86,ex = 9978008,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 25,type = "ghost",cd = 75},
["m7"] = {spell = "Nightmare",minLv = 1,ex = 6708359,base1 = 335,base2 = 345,bonus = 15,dista = 6,type = "ghost",cd = 45},
["m8"] = {spell = "Hypnosis", minLv = 1,ex = 8705669, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 50},
["m9"] = {spell = "Ddsds",minLv = 85,ex = 8595597,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "ghost",target = "no",cd = 50},
["m10"] = {spell = "xxxx",minLv = 85,ex = 6480956,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "ghost",target = "no",cd = 50},
["m11"] = {spell = "Dgsfsget",minLv = 85,ex = 9180078,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "ghost",target = "no",cd = 50},
["m12"] = {spell = "Dadsdset",minLv = 85,ex = 9800899,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "ghost",target = "no",cd = 50},
["!cd"] = { pokenome= "Gengar" , nmoves= 9 , spellm1 = "Lick" ,exm1=1831998,spellm2="Shadow Punch",exm2 = 1835499,spellm3= "Dark Pulse",exm3=654993,spellm4= "Invisible",exm4=188537,spellm5= "Night Shade",exm5=646021,spellm6= "Shadow Storm",exm6=656415,spellm7= "Nightmare",exm7=989775,spellm8= "Hypnosis",exm8=9946855,spellm9= "Dark Target",exm9=6386899},



},

["Chansey"] = {
["m1"] = {  spell = "Doubleslap",minLv = 1,ex = 8964941,base1 = 135,base2 = 140,dista = 1,bonus = 9.9,type = "normal",cd = 5},
["m2"] = {  spell = "Lovey Kiss",minLv = 1,ex = 8445601,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "normal",cd = 9},
["m3"] = {  spell = "Egg Bomb", minLv = 1,ex = 5953831, base1 = 400, base2 = 401, dista = 8, bonus = 25.5,type = "normal",cd = 9},
["m4"] = {  spell = "Great Love",minLv = 1,ex = 352031,base1 = 335,base2 = 345,dista = 10,bonus = 15,type = "normal",target = "no",cd = 35},
["m5"] = {  spell = "Self Heal",minLv = 1,ex = 364556,base1 = 535,base2 = 545,bonus = 100,type = "psychic",target = "no",cd = 45},
["m6"] = {  spell = "Healera",minLv = 1,ex = 6203356,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 65},
["!cd"] = { pokenome= "Chansey" , nmoves= 6, spellm1 = "Doubleslap" ,exm1=8964941,spellm2="Lovey Kiss",exm2 = 8445601,spellm3= "Egg Bomb",exm3=5953831,spellm4 = "Great Love",exm4=352031,spellm5 = "Self Heal",exm5=364556,spellm6 = "Healera",exm6=6203356},
},

["Horsea"] = {
["m1"] = {  spell = "Mud Shot",minLv = 1,ex = 8900001,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 490422, base1 = 140, base2 = 145, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 1, ex = 674004, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 6.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 711521, base1 = 160, base2 = 171, dista = 1,bonus = 2, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 10, ex = 346123, base1 = 168, base2 = 168, dista = 5, bonus = 2.5,type = "water", cd = 35},
["!cd"] = { pokenome= "Horsea" , nmoves= 5 , spellm1 = "Mud Shot" ,exm1=8900001,spellm2="Bubbles",exm2 = 490422,spellm3= "Water Gun",exm3=674004,spellm4 = "Waterball",exm4=711521,spellm5 ="Aqua tail",exm5=346123},
},

["Seadra"] = {
["m1"] = {  spell = "Mud Shot",minLv = 1,ex = 795641,base1 = 235,base2 = 240,dista = 5,bonus = 4.9,type = "ground",cd = 9},
["m2"] = {  spell = "Mud Bomb",minLv = 1, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 8.5, type = "ground", cd = 20},
["m3"] = {  spell = "Bubbles",minLv = 1, ex = 260654, base1 = 300, base2 = 350, dista = 8, bonus = 8.5, type = "water", cd = 10},
["m4"] = {  spell = "Quick Attack", minLv = 1, ex = 239248, base1 = 200, base2 = 201, dista = 1,bonus = 7, type = "normal",cd = 10},
["m5"] = {  spell = "Water Gun", minLv = 1, ex = 654505, base1 = 450, base2 = 480, dista = 8, target = "no", bonus = 9.5, type = "water",cd = 40},
["m6"] = {  spell = "Water ball", minLv = 1, ex = 151341, base1 = 460, base2 = 471, dista = 1,bonus = 6, type = "water",cd = 25},
["m7"] = {  spell = "Aqua tail", minLv = 1, ex = 329853, base1 = 250, base2 = 268, dista = 1, bonus = 7.5,type = "water", cd = 35},
["m8"] = {  spell = "Hydro Cannon", minLv = 60, ex = 562944, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "water",cd = 60},
["m9"] = {  spell = "Water Spout", minLv = 55, ex = 944504, base1 = 530, base2 = 580, dista = 2, target = "no", bonus = 15.5, type = "water",cd = 40},
["!cd"] = { pokenome= "Seadra" , nmoves= 9 , spellm1 = "Mud Shot" ,exm1=795641,spellm2="Mud Bomb",exm2 = 432498,spellm3= "Bubbles",exm3=260654,spellm4 = "Quick Attack",exm4=239248,spellm5 ="Water Gun",exm5=654505,spellm6 ="Water Ball",exm6=151341,spellm7 ="Aqua tail",exm7=329853,spellm7 ="Aqua tail",exm7=329853,spellm8 ="Hydro Cannon",exm8=562944,spellm9 ="Water Spout",exm9=944504},
},

["Poliwag"] = {
["m1"] = {  spell = "Doubleslap",minLv = 1,ex = 8954301,base1 = 135,base2 = 140,dista = 1,bonus = 2.9,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 490865, base1 = 140, base2 = 145, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 1, ex = 923004, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 6.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 724521, base1 = 160, base2 = 171, dista = 1,bonus = 2, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 10, ex = 346423, base1 = 168, base2 = 168, dista = 5, bonus = 2.5,type = "water", cd = 35},
["m6"] = {  spell = "Hypnosis", minLv = 1,ex = 877689, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 30},
["!cd"] = { pokenome= "Poliwag" , nmoves= 6 , spellm1 = "Doubleslap" ,exm1=8954301,spellm2="Bubbles",exm2 = 490865,spellm3= "Water Gun",exm3=923004,spellm4 = "Waterball",exm4=724521,spellm5 ="Aqua tail",exm5=346423,spellm6 ="Hypnosis",exm6=877689},
},

["Poliwhirl"] = {
["m1"] = {  spell = "Doubleslap",minLv = 1,ex = 895451,base1 = 235,base2 = 240,dista = 1,bonus = 3.9,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 492345, base1 = 240, base2 = 245, dista = 8, bonus = 3.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 1, ex = 224504, base1 = 250, base2 = 280, dista = 2, target = "no", bonus = 6.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 726661, base1 = 260, base2 = 271, dista = 1,bonus = 3, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 10, ex = 346323, base1 = 268, base2 = 269, dista = 5, bonus = 3.5,type = "water", cd = 35},
["m6"] = {  spell = "Mega Punch",minLv = 30,ex = 896421,base1 = 235,base2 = 240,dista = 1,bonus = 8.9,type = "fighting",cd = 9},
["m7"] = {  spell = "Hypnosis", minLv = 32,ex = 977683, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 30},
["!cd"] = { pokenome= "Poliwhirl" , nmoves= 7 , spellm1 = "Doubleslap" ,exm1=895451,spellm2="Bubbles",exm2 = 492345,spellm3= "Water Gun",exm3=224504,spellm4 = "Waterball",exm4=726661,spellm5 ="Aqua tail",exm5=346323,spellm6 ="Mega Punch",exm6=896421,spellm7 ="Hypnosis",exm7=977683},
},

["Poliwrath"] = {
["m1"] = {  spell = "Doubleslap",minLv = 1,ex = 895981,base1 = 335,base2 = 340,dista = 1,bonus = 4.9,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 495334, base1 = 340, base2 = 345, dista = 8, bonus = 4.5, type = "water", cd = 10},
["m3"] = {  spell = "Dizzy Punch",minLv = 1,ex = 425451,base1 = 335,base2 = 340,dista = 1,bonus = 3.9,type = "normal",cd = 9},
["m4"] = {  spell = "Water Gun", minLv = 1, ex = 434504, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 8.5, type = "water",cd = 40},
["m5"] = {  spell = "Ice Beam", minLv = 1, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 8.5, type = "ice",cd = 40},
["m6"] = {  spell = "Water ball", minLv = 1, ex = 766891, base1 = 360, base2 = 371, dista = 1,bonus = 4, type = "water",cd = 15},
["m7"] = {  spell = "Aqua tail", minLv = 10, ex = 346773, base1 = 368, base2 = 369, dista = 5, bonus = 4.5,type = "water", cd = 35},
["m8"] = {  spell = "Mega Punch",minLv = 70,ex = 876771,base1 = 335,base2 = 440,dista = 1,bonus = 10.9,type = "fighting",cd = 9},
["m9"] = {  spell = "Dynamic Punch", minLv = 1, ex = 777404, base1 = 430, base2 = 480, dista = 1, bonus = 5.5, type = "fighting",cd = 40},
["m10"] = {  spell = "Hypnosis", minLv = 72,ex = 974463, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 30},
["!cd"] = { pokenome= "Poliwrath" , nmoves= 10 , spellm1 = "Doubleslap" ,exm1=895981,spellm2="Bubbles",exm2 = 495334,spellm3= "Dizzy Punch",exm3=425451,spellm4 = "Water Gun",exm4=434504,spellm5 ="Ice Beam",exm5=264604,spellm6 ="Water Ball",exm6=766891,spellm7 ="Aqua Tail",exm7=346773,spellm8 ="Mega Punch",exm8=876771,spellm9 ="Dynamic Punch",exm9=777404,spellm10 ="Hypnosis",exm10=974463},
},

["Tentacool"] = {
["m1"] = {  spell = "Mud Shot",minLv = 19,ex = 3254001,base1 = 235,base2 = 240,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m2"] = {  spell = "Poison Sting",minLv = 1,ex = 564678,base1 = 235,base2 = 245,dista = 8,bonus = 4,type = "poison",cd = 20},
["m3"] = {  spell = "Bubbles",minLv = 1, ex = 250928, base1 = 240, base2 = 245, dista = 8, bonus = 4.5, type = "water", cd = 10},
["m4"] = {  spell = "Acid",minLv = 1, ex = 979759, base1 = 230, base2 = 245, dista = 2, bonus = 0.7, type = "poison", cd = 20},
["m5"] = {  spell = "Water ball", minLv = 1, ex = 817721, base1 = 260, base2 = 271, dista = 5,bonus = 3, type = "water",cd = 15},
["m6"] = {  spell = "Psy Pulse",minLv = 17,ex = 788773,base1 = 275,base2 = 285,dista = 6,bonus = 2,type = "psychic",cd = 15},
["m7"] = {  spell = "Super Sonic",minLv = 20,ex = 710541,base1 = 0,base2 = 0,dista = 5,bonus = 0,type = "normal",cd = 20},
["!cd"] = { pokenome= "Tentacool" , nmoves= 7 , spellm1 = "Mud Shot" ,exm1=3254001,spellm2="Poison Sting",exm2 = 564678,spellm3= "Bubbles",exm3=250928,spellm4 = "Acid",exm4=979759,spellm5 ="Water Ball",exm5=817721,spellm6 ="Psy Pulse",exm6=788773,spellm7 ="Super Sonic",exm7=710541},
},

["Tentacruel"] = {
["m1"] = {  spell = "Mud Shot",minLv = 1,ex = 455941,base1 = 335,base2 = 340,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m2"] = {  spell = "Poison Sting",minLv = 1,ex = 365648,base1 = 335,base2 = 345,dista = 8,bonus = 4,type = "poison",cd = 20},
["m3"] = {  spell = "Bubbles",minLv = 1, ex = 254988, base1 = 340, base2 = 345, dista = 8, bonus = 4.5, type = "water", cd = 10},
["m4"] = {  spell = "Acid",minLv = 1, ex = 978956, base1 = 330, base2 = 345, dista = 2, bonus = 0.7, type = "poison", cd = 20},
["m5"] = {  spell = "Poison Bomb", minLv = 1, ex = 418935, base1 = 200,base2 = 201, dista = 4, bonus = 15, type = "poison",cd = 24},
["m6"] = {  spell = "Water ball", minLv = 1, ex = 413221, base1 = 360, base2 = 371, dista = 5,bonus = 3, type = "water",cd = 15},
["m7"] = {  spell = "Psy Pulse",minLv = 1,ex = 748753,base1 = 375,base2 = 385,dista = 6,bonus = 2,type = "psychic",cd = 15},
["m8"] = {  spell = "Super Sonic",minLv = 1,ex = 965489,base1 = 0,base2 = 0,dista = 5,bonus = 0,type = "normal",cd = 20},
["m9"] = {  spell = "Hydro Pump", minLv = 85, ex = 491659, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 15, type = "water",cd = 95},
["m10"] = {  spell = "Hydro Rain", minLv = 80, ex = 345924, base1 = 750, base2 = 650, dista = 10, bonus = 8, target = "no", type = "water",cd = 50},
["!cd"] = { pokenome= "Tentacruel" , nmoves= 10 , spellm1 = "Mud Shot" ,exm1=455941,spellm2="Poison Sting",exm2 = 365648,spellm3= "Bubbles",exm3=254988,spellm4 = "Acid",exm4=978956,spellm5 ="Poison Bomb",exm5=418935,spellm6 ="Water Ball",exm6=413221,spellm7 ="Psy Pulse",exm7=748753,spellm8 ="Super Sonic",exm8=965489,spellm9 ="Hydro Pump",exm9=491659,spellm10 ="Hydro Rain",exm10=345924},
},


["Krabby"] = {
["m1"] = {  spell = "Mud Shot",minLv = 1,ex = 995361,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 290455, base1 = 140, base2 = 145, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 1, ex = 574554, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 6.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 521221, base1 = 160, base2 = 171, dista = 1,bonus = 2, type = "water",cd = 15},
["m5"] = {  spell = "Crabhammer", minLv = 10, ex = 942123, base1 = 168, base2 = 168, dista = 1, bonus = 2.8,type = "normal", cd = 10},
["m6"] = {  spell = "Harden", minLv = 1, ex = 798238, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 6},
["!cd"] = { pokenome= "Krabby" , nmoves= 6 , spellm1 = "Mud Shot" ,exm1=995361,spellm2="Bubbles",exm2 = 290455,spellm3= "Water Gun",exm3=574554,spellm4 = "Waterball",exm4=521221,spellm5 ="Crabhammer",exm5=942123,spellm6 ="Harden",exm6=798238},
},

["Kingler"] = {
["m1"] = {  spell = "Mud Shot",minLv = 1,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 3.9,type = "ground",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 298555, base1 = 240, base2 = 245, dista = 8, bonus = 3.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 1, ex = 872554, base1 = 250, base2 = 280, dista = 2, target = "no", bonus = 7.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 526221, base1 = 260, base2 = 271, dista = 1,bonus = 4, type = "water",cd = 15},
["m5"] = {  spell = "Crabhammer", minLv = 10, ex = 963133, base1 = 268, base2 = 268, dista = 1, bonus = 4.8,type = "normal", cd = 10},
["m6"] = {  spell = "Harden", minLv = 1, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 6},
["m7"] = {  spell = "Guillotine", minLv = 50, ex = 252223, base1 = 268, base2 = 268, dista = 1, bonus = 12,type = "normal", cd = 20},
["m8"] = {  spell = "Fury Cutter",minLv = 45,ex = 259329,base1 = 255,base2 = 260,dista = 8,bonus = 10,type = "bug",target = "no",cd = 35},
["!cd"] = { pokenome= "Kingler" , nmoves= 8 , spellm1 = "Mud Shot" ,exm1=455551,spellm2="Bubbles",exm2 = 298555,spellm3= "Water Gun",exm3=872554,spellm4 = "Waterball",exm4=526221,spellm5 ="Crabhammer",exm5=963133,spellm6 ="Harden",exm6=738333,spellm7 ="Guillotine",exm7=252223,spellm8 ="Fury Cutter",exm8=259329},
},

["Goldeen"] = {
["m1"] = {  spell = "Horn Attack",minLv = 10,ex = 423520,base1 = 130,base2 = 135,dista = 1,bonus = 5.4,type = "normal",cd = 15},
["m2"] = {  spell = "Horn Drill",minLv = 8,ex = 333226,base1 = 155,base2 = 160,dista = 1,bonus = 6,type = "normal",cd = 25},
["m3"] = {  spell = "Poison Sting",minLv = 1,ex = 431605,base1 = 155,base2 = 156,dista = 3,bonus = 4,type = "poison",cd = 13},
["m4"] = {  spell = "Water Gun", minLv = 1, ex = 374244, base1 = 150, base2 = 180, dista = 20, target = "no", bonus = 6.5, type = "water",cd = 40},
["m5"] = {  spell = "Water ball", minLv = 1, ex = 315541, base1 = 160, base2 = 171, dista = 6,bonus = 2, type = "water",cd = 15},
["m6"] = {  spell = "Water Spout", minLv = 15, ex = 332404, base1 = 130, base2 = 180, dista = 8, target = "no", bonus = 4.5, type = "water",cd = 40},
["m7"] = {  spell = "Super Sonic",minLv = 1,ex = 810301,base1 = 0,base2 = 0,dista = 5,bonus = 0,type = "normal",cd = 20},
["!cd"] = { pokenome= "Goldeen" , nmoves= 7 , spellm1 = "Horn Attack" ,exm1=423520,spellm2="Horn Drill",exm2 = 333226,spellm3= "Poison Sting",exm3=431605,spellm4 = "Water Gun",exm4=374244,spellm5 ="Water ball",exm5=315541,spellm6 ="Water Spout",exm6=332404,spellm7 ="Super Sonic",exm7=810301},
},

["Seaking"] = {
["m1"] = {  spell = "Horn Attack",minLv = 25,ex = 325524,base1 = 230,base2 = 235,dista = 1,bonus = 5.4,type = "normal",cd = 15},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 645543, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m3"] = {  spell = "Aqua tail", minLv = 1, ex = 265233, base1 = 218, base2 = 218, dista = 1, bonus = 3.5,type = "water", cd = 35},
["m4"] = {  spell = "Horn Drill",minLv = 28,ex = 343656,base1 = 255,base2 = 260,dista = 1,bonus = 6,type = "normal",cd = 25},
["m5"] = {  spell = "Poison Sting",minLv = 1,ex = 435345,base1 = 255,base2 = 256,dista = 3,bonus = 4,type = "poison",cd = 13},
["m6"] = {  spell = "Water Gun", minLv = 1, ex = 274334, base1 = 250, base2 = 280, dista = 8, target = "no", bonus = 6.5, type = "water",cd = 40},
["m7"] = {  spell = "Water ball", minLv = 1, ex = 455542, base1 = 260, base2 = 271, dista = 8,bonus = 2, type = "water",cd = 15},
["m8"] = {  spell = "Water Spout", minLv = 25, ex = 342304, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 4.5, type = "water",cd = 40},
["m9"] = {  spell = "Super Sonic",minLv = 1,ex = 215551,base1 = 0,base2 = 0,dista = 5,bonus = 0,type = "normal",cd = 20},
["!cd"] = { pokenome= "Seaking" , nmoves= 9 , spellm1 = "Horn Attack" ,exm1=325524,spellm2="Bubbles",exm2 = 645543,spellm3= "Aqua tail",exm3=265233,spellm4 = "Horn Drill",exm4=343656,spellm5 ="Poison Sting",exm5=435345,spellm6 ="Water Gun",exm6=274334,spellm7 ="Water Ball",exm7=455542,spellm8 ="Water Spout",exm8=342304,spellm8 ="Super Sonic",exm8=215551},
},

["Squirtle"] = {
["m1"] = {  spell = "Headbutt", minLv = 1,ex = 1513001, base1 = 200, base2 = 201, dista = 1, bonus = 6,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 400422, base1 = 230, base2 = 245, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 1, ex = 654004, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 6.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 1113201, base1 = 200, base2 = 201, dista = 8,bonus = 7, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 35, ex = 4604123, base1 = 180, base2 = 180, dista = 1, bonus = 3.5,type = "water", cd = 35},
["m6"] = {  spell = "Hydro Cannon", minLv = 40, ex = 7789804, base1 = 750, base2 = 650, dista = 10, bonus = 7, target = "no", type = "water",cd = 60},
["m7"] = {  spell = "Harden", minLv = 1, ex = 896808, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 30},
["!cd"] = { pokenome= "Squirtle" , nmoves= 7 , spellm1 = "Headbutt" ,exm1=1513001,spellm2="Bubbles",exm2 = 400002,spellm3= "Water Gun",exm3=654004,spellm4 = "Waterball",exm4=1113201,spellm5 ="Aqua tail",exm5=4604123,spellm6="Hydro Cannon",exm6=7789804,spellm7= "Harden",exm7=896808},
},
["Wartortle"] = {
["m1"] = {  spell = "Headbutt", minLv = 1,ex = 564201, base1 = 200, base2 = 201, dista = 1, bonus = 8,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 400542, base1 = 230, base2 = 245, dista = 8, bonus = 4.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 1, ex = 644004, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 7.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 1233201, base1 = 200, base2 = 201, dista = 8,bonus = 8, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 1, ex = 4655123, base1 = 18, base2 = 18, dista = 1, bonus = 3.5,type = "water", cd = 35},
["m6"] = {  spell = "Hydro Cannon", minLv = 50, ex = 6489804, base1 = 750, base2 = 650, dista = 100, bonus = 13, target = "no", type = "water",cd = 60},
["m7"] = {  spell = "Water Spout", minLv = 42, ex = 342004, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 8.5, type = "water",cd = 40},
["m8"] = {  spell = "Harden", minLv = 1, ex = 896822, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 30},
["!cd"] = { pokenome= "Wartortle" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=564201,spellm2="Bubbles",exm2 = 400542,spellm3= "Water Gun",exm3=644004,spellm4 = "Water ball",exm4=1233201,spellm5 ="Aqua tail",exm5=4655123,spellm6="Hydro Cannon",exm6=6489804,spellm7= "Water Spout",exm7=342004,spellm8= "Harden",exm8=896822},
},
["Blastoise"] = {
["m1"] = {  spell = "Headbutt", minLv = 1,ex = 664201, base1 = 200, base2 = 201, dista = 1, bonus = 10,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 670542, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 1, ex = 848004, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 8.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 188321, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 1, ex = 465554, base1 = 18, base2 = 18, dista = 1, bonus = 6.5,type = "water", cd = 35},
["m6"] = {  spell = "Hydro Cannon", minLv = 1, ex = 6623804, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "water",cd = 60},
["m7"] = {  spell = "Water Spout", minLv = 1, ex = 344554, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 10.5, type = "water",cd = 40},
["m8"] = {  spell = "Harden", minLv = 1, ex = 893726, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 30},
["m9"] = {  spell = "Hydro Pump", minLv = 95, ex = 291852, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 15, type = "water",cd = 95},
["m10"] = {  spell = "Hydro Rain", minLv = 90, ex = 646924, base1 = 750, base2 = 650, dista = 10, bonus = 8, target = "no", type = "water",cd = 50},
["!cd"] = { pokenome= "Blastoise" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=664201,spellm2="Bubbles",exm2 = 670542,spellm3= "Water Gun",exm3=848004,spellm4 = "Water ball",exm4=188321,spellm5 ="Aqua tail",exm5=465554,spellm6="Hydro Cannon",exm6=6623804,spellm7= "Water Spout",exm7=344554,spellm8= "Harden",exm8=893726,spellm9= "Hydro Pump",exm9=291852,spellm10= "Hydro Rain",exm10=646924},
},


["Psyduck"] = {
["m1"] = {  spell = "Bubbles",minLv = 1, ex = 478572, base1 = 230, base2 = 245, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m2"] = {  spell = "Water Gun", minLv = 1, ex = 256304, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 5.5, type = "water",cd = 40},
["m3"] = {  spell = "Confusion", minLv = 18, ex = 389573, base1 = 165,base2 = 175, bonus = 10,type = "psychic",target = "no",cd = 25},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 48241, base1 = 200, base2 = 201, dista = 8,bonus = 5, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 1, ex = 565698, base1 = 18, base2 = 18, dista = 1, bonus = 3.5,type = "water", cd = 35},
["m6"] = {  spell = "Stunning Confusion",minLv = 1,ex = 426809,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 0.5,type = "psychic",cd = 40},
["!cd"] = { pokenome= "Psyduck" , nmoves= 6 , spellm1 = "Bubbles" ,exm1=478572,spellm2="Water Gun",exm2 = 256304,spellm3= "Confusion",exm3=389573,spellm4 = "Water ball",exm4=48241,spellm5 ="Aqua tail",exm5=565698,spellm6="Stunning Confusion",exm6=426809},
},
["Golduck"] = {
["m1"] = {  spell = "Bubbles",minLv = 1, ex = 678572, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m2"] = {  spell = "Water Gun", minLv = 1, ex = 856004, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 8.5, type = "water",cd = 40},
["m3"] = {  spell =  "Confusion", minLv = 1, ex = 489973, base1 = 165,base2 = 175, bonus = 15,type = "psychic",target = "no",cd = 25},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 183241, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 1, ex = 465665, base1 = 18, base2 = 18, dista = 1, bonus = 6.5,type = "water", cd = 35},
["m6"] = {  spell =  "Psychic", minLv = 1, ex = 775604, base1 = 225,base2 = 225, bonus = 15,type = "psychic",target = "no",cd = 35},
["m7"] = {  spell = "Water Spout", minLv = 1, ex = 344968, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 10.5, type = "water",cd = 40},
["m8"] = {  spell = "Hydro Rain", minLv = 60, ex = 626434, base1 = 750, base2 = 650, dista = 10, bonus = 8, target = "no", type = "water",cd = 50},
["m9"] = {spell = "Stunning Confusion",minLv = 58,ex = 726809,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 0.5,type = "psychic",cd = 40},
["!cd"] = { pokenome= "Golduck" , nmoves= 9 , spellm1 = "Bubbles" ,exm1=678572,spellm2="Water Gun",exm2 = 856004,spellm3= "Confusion",exm3=489973,spellm4 = "Water ball",exm4=183241,spellm5 ="Aqua tail",exm5=465665,spellm6="Psychic",exm6=775604,spellm7= "Water Spout",exm7=344968,spellm8= "Hydro Rain",exm8=626434,spellm9= "Stunning Confusion",exm9=726809},
},

["Slowpoke"] = {
["m1"] = {  spell = "Headbutt", minLv = 1,ex = 943501, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 948562, base1 = 230, base2 = 245, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m3"] = {  spell = "Confusion", minLv = 1, ex = 463993, base1 = 165,base2 = 175, bonus = 15,type = "psychic",target = "no",cd = 25},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 945821, base1 = 200, base2 = 201, dista = 8,bonus = 5, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 1, ex = 445925, base1 = 18, base2 = 18, dista = 1, bonus = 3.5,type = "water", cd = 35},
["m6"] = {  spell = "Water Spout", minLv = 1, ex = 545258, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 5.5, type = "water",cd = 40},
["!cd"] = { pokenome= "Slowpoke" , nmoves= 6 , spellm1 = "Headbutt" ,exm1=943501,spellm2="Bubbles",exm2 = 948562,spellm3= "Confusion",exm3=463993,spellm4 = "Water ball",exm4=945821,spellm5 ="Aqua tail",exm5=445925,spellm6="Water Spout",exm6=545258},
},

["Slowbro"] = {
["m1"] = {  spell = "Headbutt", minLv = 1,ex = 643201, base1 = 200, base2 = 201, dista = 1, bonus = 5,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 943572, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m3"] = {  spell = "Confusion", minLv = 1, ex = 564973, base1 = 165,base2 = 175, bonus = 15,type = "psychic",target = "no",cd = 25},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 985241, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 1, ex = 465325, base1 = 18, base2 = 18, dista = 1, bonus = 6.5,type = "water", cd = 35},
["m6"] = {  spell =  "Psychic", minLv = 47, ex = 776644, base1 = 225,base2 = 225, bonus = 15,type = "psychic",target = "no",cd = 35},
["m7"] = {  spell = "Water Spout", minLv = 1, ex = 944268, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 10.5, type = "water",cd = 40},
["m8"] = {spell = "Stunning Confusion",minLv = 48,ex = 324609,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 0.5,type = "psychic",cd = 40},
["!cd"] = { pokenome= "Slowbro" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=643201,spellm2="Bubbles",exm2 = 943572,spellm3= "Confusion",exm3=564973,spellm4 = "Water ball",exm4=985241,spellm5 ="Aqua tail",exm5=465325,spellm6="Psychic",exm6=776644,spellm7= "Water Spout",exm7=944268,spellm8= "Stunning Confusion",exm8=324609},
},


["Staryu"] = {
["m1"] = {  spell = "Slash", minLv = 1, ex = 355468, base1 = 18, base2 = 18, dista = 1, bonus = 3.5,type = "normal", cd = 20},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 688582, base1 = 230, base2 = 245, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 1, ex = 957074, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 4.5, type = "water",cd = 40},
["m4"] = {  spell = "Confusion", minLv = 1, ex = 587773, base1 = 165,base2 = 175, bonus = 7,type = "psychic",target = "no",cd = 25},
["m5"] = {  spell = "Water ball", minLv = 1, ex = 663241, base1 = 200, base2 = 201, dista = 8,bonus = 5, type = "water",cd = 15},
["m6"] = {  spell = "Water Spout", minLv = 22, ex = 642966, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 6.5, type = "water",cd = 40},
["m7"] = {  spell = "Restore",minLv = 30,ex = 685222,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 60},
["!cd"] = { pokenome= "Staryu" , nmoves= 7 , spellm1 = "Slash" ,exm1=355468,spellm2="Bubbles",exm2 = 688582,spellm3= "Water Gun",exm3=957074,spellm4 = "Confusion",exm4=587773,spellm5 ="Water ball",exm5=663241,spellm6="Water Spout",exm6=642966,spellm7= "Restore",exm7=685222},
},

["Starmie"] = {
["m1"] = {  spell = "Slash", minLv = 1, ex = 365665, base1 = 18, base2 = 18, dista = 1, bonus = 6.5,type = "normal", cd = 20},
["m2"] = {  spell = "Psy beam",minLv = 1,ex = 5405526,base1 = 335,base2 = 345,dista = 8,bonus = 5,type = "psychic",target = "no",cd = 20},
["m3"] = {  spell = "Bubbles",minLv = 1, ex = 675572, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m4"] = {  spell = "Water Gun", minLv = 1, ex = 554004, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 8.5, type = "water",cd = 40},
["m5"] = {  spell = "Confusion", minLv = 1, ex = 483923, base1 = 165,base2 = 175, bonus = 15,type = "psychic",target = "no",cd = 25},
["m6"] = {  spell = "Water ball", minLv = 1, ex = 883541, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m7"] = {  spell = "Psychic", minLv = 1, ex = 775994, base1 = 225,base2 = 225, bonus = 15,type = "psychic",target = "no",cd = 35},
["m8"] = {  spell = "Water Spout", minLv = 52, ex = 444568, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 10.5, type = "water",cd = 40},
["m9"] = {  spell = "Restore",minLv = 55,ex = 64423,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 70},
["!cd"] = { pokenome= "Starmie" , nmoves= 9 , spellm1 = "Slash" ,exm1=365665,spellm2="Psy Beam",exm2 = 5405526,spellm3= "Bubbles",exm3=675572,spellm4 = "Water Gun",exm4=554004,spellm5 ="Confusion",exm5=483923, spellm6= "Water Ball" ,exm6=883541,spellm7= "Psychic",exm7=775994,spellm8 = "Water Spout",exm8=444568,spellm9= "Restore",exm9=64423},
},

["Shiny Blastoise"] = {
["m1"] = {  spell = "Headbutt", minLv = 1,ex = 664281, base1 = 200, base2 = 201, dista = 1, bonus = 13,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 670582, base1 = 230, base2 = 245, dista = 8, bonus = 8.5, type = "water", cd = 10},
["m3"] = {  spell = "Water Gun", minLv = 1, ex = 848084, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 9.5, type = "water",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 188381, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m5"] = {  spell = "Aqua tail", minLv = 1, ex = 465584, base1 = 18, base2 = 18, dista = 1, bonus = 9.5,type = "water", cd = 35},
["m6"] = {  spell = "Hydro Cannon", minLv = 1, ex = 662384, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "water",cd = 60},
["m7"] = {  spell = "Water Spout", minLv = 1, ex = 344584, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 12.5, type = "water",cd = 40},
["m8"] = {  spell = "Harden", minLv = 1, ex = 893786, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 30},
["m9"] = {  spell = "Hydro Pump", minLv = 110, ex = 291882, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 20, type = "water",cd = 95},
["m10"] = {  spell = "Hydro Rain", minLv = 105, ex = 646984, base1 = 750, base2 = 650, dista = 10, bonus = 15, target = "no", type = "water",cd = 50},
["m11"]= {spell = "Acient Fury",minLv = 110,ex = 9605399,base1 = 235,base2 = 245,dista = 10,bonus = 5,target = "no",type = "normal",cd = 35},
["!cd"] = { pokenome= "Shiny Blastoise" , nmoves= 11 , spellm1 = "Headbutt" ,exm1=664281,spellm2="Bubbles",exm2 = 670582,spellm3= "Water Gun",exm3=848084,spellm4 = "Water ball",exm4=188381,spellm5 ="Aqua tail",exm5=465584,spellm6="Hydro Cannon",exm6=662384,spellm7= "Water Spout",exm7=344584,spellm8= "Harden",exm8=893786,spellm9= "Hydro Pump",exm9=291882,spellm10= "Hydro Rain",exm10=646984,spellm11= "Acient Fury",exm11=9605399},
},

["Magikarp"] = {
["m1"] = {  spell = "Splash",minLv = 1,ex = 6586883,base1 = 180,base2 = 185,dista = 1,bonus = 5.0,type = "water",cd = 5},
["!cd"] = { pokenome= "Magikarp" , nmoves= 1 , spellm1 = "Splash" ,exm1=6586883},
},

["Gyarados"] = {
["m1"] = {  spell = "Headbutt",minLv = 1,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 11.0,type = "normal",cd = 15},
["m2"] = {  spell = "Water ball", minLv = 1, ex = 888321, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m3"] = {  spell = "Dragon Pulse",minLv = 1,ex = 8720203,base1 = 275,base2 = 385,dista = 5,bonus = 6,type = "dragon",cd = 15},
["m4"] = {  spell = "Hyper Beam",minLv = 108,ex = 2251202,base1 = 485,target = "no",base2 = 500,bonus = 40,type = "normal",cd = 80},
["m5"] = {  spell = "Dragon Breath",minLv = 1,ex = 6282205,base1 = 275,base2 = 385,dista = 5,bonus = 12,target = "no",type = "dragon",cd = 35},
["m6"] = {  spell = "Hydro Cannon", minLv = 1, ex = 2231002, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "water",cd = 60},
["m7"] = {  spell = "Water Spout", minLv = 1, ex = 444684, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 12.5, type = "water",cd = 20},
["m8"] = {  spell = "Hydro Pump", minLv = 105, ex = 491892, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 20, type = "water",cd = 95},
["m9"] = {  spell = "Hydro Rain", minLv = 100, ex = 646954, base1 = 750, base2 = 650, dista = 10, bonus = 15, target = "no", type = "water",cd = 60},
["m10"]= {  spell = "Fury",minLv = 98,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 4.2,type = "normal",target = "no",cd = 45},
["m11"] = {  spell = "Roar",minLv = 92,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Gyarados" , nmoves= 11 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Water Ball",exm2 = 888321,spellm3= "Dragon Pulse",exm3=8720203,spellm4 = "Hyper Beam",exm4=2251202,spellm5 = "Dragon Breath",exm5=6282205,spellm6 = "Hydro Cannon",exm6=2231002,spellm7 = "Water Spout",exm7=444684,spellm8 = "Hydro Pump",exm8=491892,spellm9 = "Hydro Rain",exm9=646954,spellm10 = "Fury",exm10=399559,spellm11 = "Roar",exm11=9550008},
},

["Lapras"] = {
["m1"] = {  spell = "Horn Attack", minLv = 1,ex = 664501, base1 = 200, base2 = 201, dista = 1, bonus = 10,type = "normal",cd = 9},
["m2"] = {  spell = "Bubbles",minLv = 1, ex = 870546, base1 = 230, base2 = 245, dista = 8, bonus = 6.5, type = "water", cd = 10},
["m3"] = {  spell = "Ice Shards", minLv = 1, ex = 748004, base1 = 230, base2 = 280, dista = 8, bonus = 4.5, type = "ice",cd = 40},
["m4"] = {  spell = "Water ball", minLv = 1, ex = 488321, base1 = 200, base2 = 201, dista = 8,bonus = 10, type = "water",cd = 15},
["m5"] = {  spell = "Hydro Cannon", minLv = 50, ex = 2623804, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "water",cd = 60},
["m6"] = {  spell = "Aurora Beam", minLv = 1, ex = 415554, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 15.5,type = "ice", cd = 45},
["m7"] = {  spell = "Sing", minLv = 42, ex = 344564, base1 = 230, base2 = 280, dista = 100, target = "no", bonus = 1.5, type = "water",cd = 40},
["m8"] = {  spell = "Harden", minLv = 1, ex = 893526, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 30},
["m9"] = {  spell = "Hydro Pump", minLv = 1, ex = 294852, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 15, type = "water",cd = 95},
["m10"] = {  spell = "Blizzard", minLv = 50, ex = 643924, base1 = 750, base2 = 650, dista = 100, bonus = 20, target = "no", type = "ice",cd = 100},
["!cd"] = { pokenome= "Lapras" , nmoves= 10 , spellm1 = "Horn Attack" ,exm1=664501,spellm2="Bubbles",exm2 = 870546,spellm3= "Ice Shards",exm3=748004,spellm4 = "Water ball",exm4=488321,spellm5 ="Hydro Cannon",exm5=2623804,spellm6="Aurora Beam",exm6=415554,spellm7= "Sing",exm7=344564,spellm8= "Harden",exm8=893526,spellm9= "Hydro Pump",exm9=294852,spellm10= "Blizzard",exm10=643924},
},

["Spearow"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 469248, base1 = 200, base2 = 201, dista = 1,bonus = 3, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 1,ex = 45332,base1 = 115,base2 = 122,dista = 1,bonus = 1,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 1, ex = 424561, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 1.0, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 12, ex = 425095, base1 = 50, base2 = 51, dista = 1,bonus = 0.2, type = "flying",cd = 15},
["m5"]=  {  spell = "Strafe",minLv = 15,ex = 459952,base1 = 100,base2 = 120,dista = 1,bonus = 0.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Spearow" , nmoves= 5 , spellm1 = "Quick Attack" ,exm1=469248,spellm2="Sand Attack",exm2 = 45332,spellm3= "Gust",exm3=424561,spellm4 = "Drill Peck",exm4=425095,spellm5 = "Strafe",exm5=459952},
},

["Fearow"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 662248, base1 = 200, base2 = 201, dista = 1,bonus = 15, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 1,ex = 65332,base1 = 155,base2 = 162,dista = 1,bonus = 8,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 1, ex = 624521, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 11.9, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 1, ex = 625025, base1 = 150, base2 = 151, dista = 1,bonus = 6, type = "flying",cd = 15},
["m5"] = {  spell = "Whirlwind", minLv = 25, ex = 6563224, base1 = 150, base2 = 160, dista = 100, bonus = 15, target = "no", type = "flying",cd = 30},
["m6"] = {  spell = "Wing Attack",minLv = 52,ex = 600427,base1 = 150,base2 = 200,dista = 10,bonus = 15,type = "flying",target = "no",cd = 29},
["m7"] = {  spell = "Windstorm", minLv = 60, ex = 6353324, base1 = 150, base2 = 160, dista = 100, bonus = 25, target = "no", type = "flying",cd = 60},
["m8"]=  {  spell = "Strafe",minLv = 55,ex = 659952,base1 = 100,base2 = 120,dista = 1,bonus = 3.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Fearow" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=662248,spellm2="Sand Attack",exm2 = 65332,spellm3= "Gust",exm3=624521,spellm4 = "Drill Peck",exm4=625025,spellm5 = "Whirlwind",exm5=6563224,spellm6 = "Wing Attack",exm6=600427,spellm7 = "WindStorm",exm7=6353324,spellm8 = "Strafe",exm8=659952},
},

["Pidgey"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 569248, base1 = 200, base2 = 201, dista = 1,bonus = 3, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 1,ex = 55332,base1 = 115,base2 = 122,dista = 1,bonus = 1,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 1, ex = 924561, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 1.0, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 12, ex = 325095, base1 = 50, base2 = 51, dista = 1,bonus = 0.2, type = "flying",cd = 15},
["!cd"] = { pokenome= "Pidgey" , nmoves= 4 , spellm1 = "Quick Attack" ,exm1=569248,spellm2="Sand Attack",exm2 = 55332,spellm3= "Gust",exm3=924561,spellm4 = "Drill Peck",exm4=325095},
},

["Pidgeotto"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 1,ex = 25332,base1 = 155,base2 = 162,dista = 1,bonus = 5,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 1, ex = 224521, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 7.0, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 1, ex = 225025, base1 = 150, base2 = 151, dista = 1,bonus = 2, type = "flying",cd = 15},
["m5"] = {  spell = "Whirlwind", minLv = 25, ex = 2563224, base1 = 150, base2 = 160, dista = 100, bonus = 9, target = "no", type = "flying",cd = 30},
["m6"] = {  spell = "Wing Attack",minLv = 22,ex = 200427,base1 = 150,base2 = 200,dista = 10,bonus = 8,type = "flying",target = "no",cd = 29},
["m7"] = {  spell = "Windstorm", minLv = 35, ex = 2353324, base1 = 150, base2 = 160, dista = 100, bonus = 8, target = "no", type = "flying",cd = 60},
["!cd"] = { pokenome= "Pidgeotto" , nmoves= 7 , spellm1 = "Quick Attack" ,exm1=262248,spellm2="Sand Attack",exm2 = 25332,spellm3= "Gust",exm3=224521,spellm4 = "Drill Peck",exm4=225025,spellm5 = "Whirlwind",exm5=2563224,spellm6 = "Wing Attack",exm6=200427,spellm7 = "WindStorm",exm7=2353324},
},

["Pidgeot"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 962248, base1 = 200, base2 = 201, dista = 1,bonus = 16, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 1,ex = 95332,base1 = 155,base2 = 162,dista = 1,bonus = 10,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 1, ex = 924521, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 13.9, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 1, ex = 925025, base1 = 150, base2 = 151, dista = 1,bonus = 8, type = "flying",cd = 15},
["m5"] = {  spell = "Whirlwind", minLv = 1, ex = 9563224, base1 = 150, base2 = 160, dista = 100, bonus = 17, target = "no", type = "flying",cd = 30},
["m6"] = {  spell = "Wing Attack",minLv = 68,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 18,type = "flying",target = "no",cd = 29},
["m7"] = {  spell = "Windstorm", minLv = 70, ex = 9353324, base1 = 150, base2 = 160, dista = 100, bonus = 30, target = "no", type = "flying",cd = 60},
["m8"]=  {  spell = "Strafe",minLv = 67,ex = 959952,base1 = 100,base2 = 120,dista = 1,bonus = 3.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Pidgeot" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=962248,spellm2="Sand Attack",exm2 = 95332,spellm3= "Gust",exm3=924521,spellm4 = "Drill Peck",exm4=925025,spellm5 = "Whirlwind",exm5=9563224,spellm6 = "Wing Attack",exm6=900427,spellm7 = "WindStorm",exm7=9353324,spellm8 = "Strafe",exm8=959952},
},

["Ekans"] = {
["m1"] = {  spell = "Bite",minLv = 1,ex = 564296,base1 = 200,base2 = 210,dista = 1,bonus = 1.5,type = "normal",cd = 10},
["m2"] = {  spell = "Poison Fang",minLv = 1,ex = 400573,base1 = 220,base2 = 235,dista = 1,bonus = 2.5,type = "poison",cd = 15},
["m3"] = {  spell = "Poison Gun", minLv = 20, ex = 424562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 5.0, type = "poison",cd = 40},
["m4"] = {  spell = "Acid",minLv = 1, ex = 879752, base1 = 230, base2 = 245, dista = 2, bonus = 0.7, type = "poison", cd = 20},
["!cd"] = { pokenome= "Ekans" , nmoves= 4 , spellm1 = "Bite" ,exm1=569248,spellm2="Poison Fang",exm2 = 400573,spellm3= "Poison Gun",exm3=424562,spellm4 = "Acid",exm4=879752},
},
["Arbok"] = {
["m1"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m2"] = {  spell = "Iron Tail",minLv = 1,ex = 528923,base1 = 155,base2 = 156,dista = 1,bonus = 6,type = "normal",cd = 4},
["m3"] = {  spell = "Poison Fang",minLv = 1,ex = 550573,base1 = 220,base2 = 235,dista = 1,bonus = 12.5,type = "poison",cd = 15},
["m4"] = {  spell = "Poison Gun", minLv = 55, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 20, type = "poison",cd = 40},
["m5"] = {  spell = "Acid",minLv = 1, ex = 579755, base1 = 230, base2 = 245, dista = 2, bonus = 10, type = "poison", cd = 20},
["m6"] = {  spell = "Pin Missile",minLv = 1,ex = 569745,base1 = 165,base2 = 175,dista = 8,bonus = 8,type = "bug",cd = 45},
["m7"] = {  spell = "Poison Bomb", minLv = 52, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 15, type = "poison",cd = 24},
["m8"] = {  spell = "Fury",minLv = 52,ex = 500585,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "normal",target = "no",cd = 35},
["m9"] = {  spell = "Poison Powder", minLv = 1, ex = 922947, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 5, type = "poison",cd = 50},
["m10"] = {  spell = "Scary Face",minLv = 52,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Arbok" , nmoves= 10 , spellm1 = "Bite" ,exm1=464296,spellm2="Iron Tail",exm2 = 528923,spellm3= "Poison Fang",exm3=550573,spellm4 = "Poison Gun",exm4=524562,spellm5 = "Acid",exm5=579755,spellm6 = "Pin Missile",exm6=569745,spellm7 = "Poison Bomb",exm7=518935,spellm8 = "Fury",exm8=500585,spellm9 = "Poison Powder",exm9=922947,spellm10 = "Scary Face",exm10=9550008},
},

["Pikachu"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 462848, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464298,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Iron Tail",minLv = 1,ex = 588923,base1 = 155,base2 = 156,dista = 1,bonus = 6,type = "normal",cd = 4},
["m4"] = {  spell = "Thundershock",minLv = 1,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 6.8,type = "electric",cd = 9 },
["m5"] = {  spell = "Thunder Bolt",minLv = 1, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 3, type = "electric", cd = 20},
["m6"] = {  spell = "Thunder Wave",minLv = 1,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 8,type = "electric",cd = 15},
["m7"] = {  spell = "Thunder", minLv = 52, ex = 818938, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 20, type = "electric",cd = 60},
["m8"] = {  spell = "Electric Charge",minLv = 52,ex = 588885,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "electric",target = "no",cd = 35},
["!cd"] = { pokenome= "Pikachu" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=462848,spellm2="Bite",exm2 = 464298,spellm3= "Iron Tail",exm3=588923,spellm4 = "Thundershock",exm4=884002,spellm5 = "Thunder Bolt",exm5=879855,spellm6 = "Thunder Wave",exm6=589785,spellm7 = "Thunder",exm7=818938,spellm8 = "Electric Charge",exm8=588885},
},

["Raichu"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 566848, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 1,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 7.5,type = "normal",cd = 10},
["m3"] = {  spell = "Iron Tail",minLv = 1,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 8,type = "normal",cd = 4},
["m4"] = {  spell = "Mega Kick", minLv = 1, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "fighting",cd = 10},
["m5"] = {  spell = "Thundershock",minLv = 1,ex = 585002,base1 = 100,base2 = 118,dista = 5,bonus = 8.8,type = "electric",cd = 9 },
["m6"] = {  spell = "Thunder Bolt",minLv = 1, ex = 575855, base1 = 230, base2 = 245, dista = 5, bonus = 6, type = "electric", cd = 20},
["m7"] = {  spell = "Thunder Wave",minLv = 1,ex = 585785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 15,type = "electric",cd = 15},
["m8"] = {  spell = "Thunder Punch", minLv = 1, ex = 565848, base1 = 200, base2 = 201, dista = 1,bonus = 15, type = "electric",cd = 35},
["m9"] = {  spell = "Thunder", minLv = 1, ex = 518935, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 25, type = "electric",cd = 60},
["m10"] = {  spell = "Electric Storm", minLv = 75, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 25, type = "electric",cd = 80},
["m11"] = {  spell = "Electric Charge",minLv = 72,ex = 568865,base1 = 100,base2 = 120,dista = 1,bonus = 3.1,type = "electric",target = "no",cd = 55},
["!cd"] = { pokenome= "Raichu" , nmoves= 11 , spellm1 = "Quick Attack" ,exm1=566848,spellm2="Bite",exm2 = 964293,spellm3= "Iron Tail",exm3=488523,spellm4 = "Mega Kick",exm4=552848,spellm5 = "Thundershock",exm5=585002,spellm6 = "Thunder Bolt",exm6=575855,spellm7 = "Thunder Wave",exm7=585785,spellm8 = "Thunder Punch",exm8=565848,spellm9 = "Thunder",exm9=518935,spellm10 = "Electric Storm",exm10=868968,spellm11 = "Electric Charge",exm11=568865},
},

["Sandshrew"] = {
["m1"] = {  spell = "Sand Attack",minLv = 1,ex = 45332,base1 = 115,base2 = 122,dista = 1,bonus = 2,target = "no",type = "ground",cd = 9},
["m2"] = {  spell = "Mud Shot",minLv = 1,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m3"] = {  spell = "Scratch",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 3,type = "normal",cd = 9},
["m4"] = {  spell = "Rollout",minLv = 1,ex = 4600008,base1 = 125,target = "no",base2 = 175,dista = 100,bonus = 1.5,type = "rock",cd = 40},
["m5"] = {  spell = "Shockwave",minLv = 25,ex = 4588539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 5,type = "ground",cd = 40},
["!cd"] = { pokenome= "Sandshrew" , nmoves= 5 , spellm1 = "Sand Attack" ,exm1=45332,spellm2="Mud Shot",exm2 = 495361,spellm3= "Scratch",exm3=4900882,spellm4 = "Rollout",exm4= 4600008,spellm5 ="Shockwave",exm5=4588539},
},

["Sandslash"] = {
["m1"] = {  spell = "Sand Attack",minLv = 1,ex = 55332,base1 = 115,base2 = 122,dista = 1,bonus = 4,target = "no",type = "ground",cd = 9},
["m2"] = {  spell = "Mud Shot",minLv = 1,ex = 595361,base1 = 135,base2 = 140,dista = 5,bonus = 6.9,type = "ground",cd = 9},
["m3"] = {  spell = "Scratch",minLv = 1,ex = 5950882,base1 = 90,base2 = 110,dista = 1,bonus = 7,type = "normal",cd = 9},
["m4"] = {  spell = "Rollout",minLv = 1,ex = 5605008,base1 = 125,target = "no",base2 = 175,dista = 100,bonus = 1.5,type = "rock",cd = 40},
["m5"] = {  spell = "Shockwave",minLv = 65,x = 5585539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 15,type = "ground",cd = 40},
["m6"] = {  spell = "Fury Cutter",minLv = 68,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 10,type = "bug",target = "no",cd = 35},
["m7"] = {  spell = "Earthshock",minLv = 1,ex = 5600007,base1 = 300,base2 = 301,dista = 10,bonus = 10.8,type = "ground",target = "no",cd = 40},
["m8"] = {  spell = "Earth Quake",minLv = 72,ex = 521309,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 1.5,type = "ground",cd = 70},
["!cd"] = { pokenome= "Sandslash" , nmoves= 8 , spellm1 = "Sand Attack" ,exm1=55332,spellm2="Mud Shot",exm2 = 595361,spellm3= "Scratch",exm3=5950882,spellm4 = "Rollout",exm4= 5605008,spellm5 ="Shockwave",exm5=5585539,spellm6 ="Fury Cutter",exm6=559329,spellm7 ="Earthshock",exm7=5600007,spellm8 ="Earth Quake",exm8=521309},
},


["Nidoranfe"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 2.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 2.5,type = "normal",cd = 10},
["m3"] = {  spell = "Horn Attack", minLv = 12,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 5,type = "normal",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 1,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 3,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 15,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 8,type = "poison",cd = 20},
["!cd"] = { pokenome= "Nidoranfe" , nmoves= 5 , spellm1 = "Quick Attack" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Horn Attack",exm3=764501,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573},
},

["Nidorina"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 5.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Horn Attack", minLv = 1,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 7,type = "normal",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 1,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 6,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 1,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 10,type = "poison",cd = 20},
["m6"] = {  spell = "Poison Gun", minLv = 40, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 15, type = "poison",cd = 40},
["m7"] = {  spell = "Stomp",minLv = 35,ex = 7502365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 5.8,type = "ground",cd = 30},
["m8"]=  {  spell = "Fury",minLv = 38,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Nidorina" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Horn Attack",exm3=764501,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Poison Gun",exm6=524562,spellm7 ="Stomp",exm7=7502365,spellm8 ="Fury",exm8=399559},
},


["Nidoqueen"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 7.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 10},
["m3"] = {  spell = "Horn Attack", minLv = 1,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 12,type = "normal",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 1,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 12,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 1,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 15,type = "poison",cd = 20},
["m6"] = {  spell = "Mega Punch",minLv = 69,ex = 876771,base1 = 335,base2 = 440,dista = 1,bonus = 12.9,type = "fighting",cd = 30},
["m7"] = {  spell = "Toxic Spikes",minLv = 67,ex = 566771,base1 = 335,base2 = 440,dista = 1,bonus = 10.9,type = "poison",cd = 25},
["m8"] = {  spell = "Poison Gun", minLv = 68, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 25, type = "poison",cd = 40},
["m9"] = {  spell = "Stomp",minLv = 1,ex = 6602365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 8.8,type = "ground",cd = 30},
["m10"] = {  spell = "Earthshock",minLv = 70,ex = 5600007,base1 = 300,base2 = 301,dista = 10,bonus = 12.8,type = "ground",target = "no",cd = 40},
["m11"]=  {  spell = "Fury",minLv = 1,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.2,type = "normal",target = "no",cd = 45},
["m12"] = {  spell = "Scary Face",minLv = 72,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Nidoqueen" , nmoves= 12 , spellm1 = "Quick Attack" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Horn Attack",exm3=764501,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Mega Punch",exm6=876771,spellm7 ="Toxic Spikes",exm7=566771,spellm8 ="Poison Gun",exm8=524562,spellm9 ="Stomp",exm9=6602365,spellm10 ="Earth Shock",exm10=5600007,spellm11 ="Fury",exm11=399559,spellm12 ="Scary Face",exm12=9550008},
},


["Nidoran"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 2.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 2.5,type = "normal",cd = 10},
["m3"] = {  spell = "Horn Attack", minLv = 12,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 5,type = "normal",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 1,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 3,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 15,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 8,type = "poison",cd = 20},
["!cd"] = { pokenome= "Nidoran" , nmoves= 5 , spellm1 = "Quick Attack" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Horn Attack",exm3=764501,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573},
},

["Nidorino"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 5.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Horn Attack", minLv = 1,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 7,type = "normal",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 1,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 6,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 1,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 10,type = "poison",cd = 20},
["m6"] = {  spell = "Poison Gun", minLv = 40, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 15, type = "poison",cd = 40},
["m7"] = {  spell = "Stomp",minLv = 35,ex = 7502365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 5.8,type = "ground",cd = 30},
["m8"]=  {  spell = "Fury",minLv = 38,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Nidorino" , nmoves= 8 , spellm1 = "Quick Attack" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Horn Attack",exm3=764501,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Poison Gun",exm6=524562,spellm7 ="Stomp",exm7=7502365,spellm8 ="Fury",exm8=399559},
},

["Nidoking"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 7.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 10},
["m3"] = {  spell = "Horn Attack", minLv = 1,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 12,type = "normal",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 1,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 12,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 1,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 15,type = "poison",cd = 20},
["m6"] = {  spell = "Mega Punch",minLv = 69,ex = 876771,base1 = 335,base2 = 440,dista = 1,bonus = 12.9,type = "fighting",cd = 30},
["m7"] = {  spell = "Toxic Spikes",minLv = 67,ex = 566771,base1 = 335,base2 = 440,dista = 1,bonus = 10.9,type = "poison",cd = 35},
["m8"] = {  spell = "Horn Drill",minLv = 67,ex = 596779,base1 = 335,base2 = 440,dista = 1,bonus = 10.9,type = "normal",cd = 30},
["m9"] = {  spell = "Poison Gun", minLv = 68, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 25, type = "poison",cd = 40},
["m10"] = {  spell = "Stomp",minLv = 1,ex = 6602365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 8.8,type = "ground",cd = 30},
["m11"] = {  spell = "Shockwave",minLv = 70,ex = 5600007,base1 = 300,base2 = 301,dista = 10,bonus = 12.8,type = "ground",target = "no",cd = 40},
["m12"]=  {  spell = "Fury",minLv = 1,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.2,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Nidoking" , nmoves= 12 , spellm1 = "Quick Attack" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Horn Attack",exm3=764501,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Mega Punch",exm6=876771,spellm7 ="Toxic Spikes",exm7=566771,spellm8 ="Horn Drill",exm8=596779,spellm9 ="Poison Gun",exm9=524562,spellm10 ="Stomp",exm10=6602365,spellm11 ="Shockwave",exm11=5600007,spellm12 ="Fury",exm12=399559},
},

["Clefairy"] = {
["m1"] = {  spell = "Doubleslap",minLv = 1,ex = 895451,base1 = 235,base2 = 240,dista = 1,bonus = 3.9,type = "normal",cd = 9},
["m2"] = {  spell = "Lovey Kiss",minLv = 1,ex = 8445601,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "normal",cd = 9},
["m3"] = {  spell = "Sing", minLv = 35, ex = 344564, base1 = 230, base2 = 280, dista = 100, target = "no", bonus = 1.5, type = "water",cd = 40},
["m4"] = {  spell = "Self Heal",minLv = 1,ex = 364556,base1 = 535,base2 = 545,bonus = 100,type = "psychic",target = "no",cd = 45},
["m5"] = {  spell = "Healera",minLv = 36,ex = 6203356,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 65},
["m6"] = {  spell = "Multi-Slap", minLv = 40, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 10, type = "poison",cd = 40},
["m7"] = {  spell = "Metronome",minLv = 35,ex = 7502365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 15,type = "ground",cd = 30},
["!cd"] = { pokenome= "Clefairy" , nmoves= 7 , spellm1 = "Doubleslap" ,exm1=895451,spellm2="Lovey Kiss",exm2 = 8445601,spellm3= "Sing",exm3=344564,spellm4 = "Self Heal",exm4= 364556,spellm5 ="Healera",exm5=6203356,spellm6 ="Multi-Slap",exm6=524562,spellm7 ="Metronome",exm7=7502365},
},

["Clefable"] = {
["m1"] = {  spell = "Doubleslap",minLv = 1,ex = 895451,base1 = 235,base2 = 240,dista = 1,bonus = 4.9,type = "normal",cd = 9},
["m2"] = {  spell = "Lovey Kiss",minLv = 1,ex = 8345601,base1 = 135,base2 = 140,dista = 5,bonus = 5.9,type = "normal",cd = 9},
["m3"] = {  spell = "Sing", minLv = 55, ex = 344524, base1 = 230, base2 = 280, dista = 100, target = "no", bonus = 1.5, type = "water",cd = 40},
["m4"] = {  spell = "Self Heal",minLv = 1,ex = 354556,base1 = 535,base2 = 545,bonus = 100,type = "psychic",target = "no",cd = 45},
["m5"] = {  spell = "Great Love",minLv = 1,ex = 652031,base1 = 335,base2 = 345,dista = 10,bonus = 15,type = "normal",target = "no",cd = 35},
["m6"] = {  spell = "Healera",minLv = 52,ex = 6206356,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 65},
["m7"] = {  spell = "Multi-Slap", minLv = 54, ex = 624562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 15, type = "poison",cd = 40},
["m8"] = {  spell = "Metronome",minLv = 1,ex = 7502369,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 20,type = "ground",cd = 30},
["m9"] = {  spell = "Focus",minLv = 60,ex = 985888,base1 = 235,base2 = 245,dista = 10,bonus = 14,target = "no",type = "psychic",cd = 55},
["!cd"] = { pokenome= "Clefable" , nmoves= 9 , spellm1 = "Doubleslap" ,exm1=895451,spellm2="Lovey Kiss",exm2 = 8345601,spellm3= "Sing",exm3=344524,spellm4 = "Self Heal",exm4= 354556,spellm5 ="Great Love",exm5=652031,spellm6 ="Healera",exm6=6206356,spellm7 ="Multi-Slap",exm7=624562,spellm8 ="Metronome",exm8=7502369,spellm9 ="Focus",exm9=985888},
},

["Jigglypuff"] = {
["m1"] = {  spell = "Doubleslap",minLv = 1,ex = 895451,base1 = 235,base2 = 240,dista = 1,bonus = 3.9,type = "normal",cd = 9},
["m2"] = {  spell = "Lovey Kiss",minLv = 1,ex = 8445601,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "normal",cd = 9},
["m3"] = {  spell = "Sing", minLv = 35, ex = 344564, base1 = 230, base2 = 280, dista = 100, target = "no", bonus = 1.5, type = "water",cd = 40},
["m4"] = {  spell = "Self Heal",minLv = 1,ex = 364556,base1 = 535,base2 = 545,bonus = 100,type = "psychic",target = "no",cd = 45},
["m5"] = {  spell = "Healera",minLv = 36,ex = 6203356,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 65},
["m6"] = {  spell = "Hyper Voice", minLv = 40, ex = 524562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 10, type = "poison",cd = 40},
["m7"] = {  spell = "Metronome",minLv = 35,ex = 7502365,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 15,type = "ground",cd = 30},
["!cd"] = { pokenome= "Jigglypuff" , nmoves= 7 , spellm1 = "Doubleslap" ,exm1=895451,spellm2="Lovey Kiss",exm2 = 8445601,spellm3= "Sing",exm3=344564,spellm4 = "Self Heal",exm4= 364556,spellm5 ="Healera",exm5=6203356,spellm6 ="Hyper Voice",exm6=524562,spellm7 ="Metronome",exm7=7502365},
},

["Wigglytuff"] = {
["m1"] = {  spell = "Doubleslap",minLv = 1,ex = 895451,base1 = 235,base2 = 240,dista = 1,bonus = 4.9,type = "normal",cd = 9},
["m2"] = {  spell = "Lovey Kiss",minLv = 1,ex = 8345601,base1 = 135,base2 = 140,dista = 5,bonus = 5.9,type = "normal",cd = 9},
["m3"] = {  spell = "Sing", minLv = 55, ex = 344524, base1 = 230, base2 = 280, dista = 100, target = "no", bonus = 1.5, type = "water",cd = 40},
["m4"] = {  spell = "Self Heal",minLv = 1,ex = 354556,base1 = 535,base2 = 545,bonus = 100,type = "psychic",target = "no",cd = 45},
["m5"] = {  spell = "Melody",minLv = 1,ex = 652031,base1 = 335,base2 = 345,dista = 10,bonus = 15,type = "normal",target = "no",cd = 35},
["m6"] = {  spell = "Healera",minLv = 52,ex = 6206356,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 65},
["m7"] = {  spell = "Hyper Voice", minLv = 54, ex = 624562, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 15, type = "poison",cd = 40},
["m8"] = {  spell = "Metronome",minLv = 1,ex = 7502369,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 20,type = "ground",cd = 30},
["m9"] = {  spell = "Focus",minLv = 60,ex = 985888,base1 = 235,base2 = 245,dista = 10,bonus = 14,target = "no",type = "psychic",cd = 55},
["!cd"] = { pokenome= "Wigglytuff" , nmoves= 9 , spellm1 = "Doubleslap" ,exm1=895451,spellm2="Lovey Kiss",exm2 = 8345601,spellm3= "Sing",exm3=344524,spellm4 = "Self Heal",exm4= 354556,spellm5 ="Melody",exm5=652031,spellm6 ="Healera",exm6=6206356,spellm7 ="Hyper Voice",exm7=624562,spellm8 ="Metronome",exm8=7502369,spellm9 ="Focus",exm9=985888},
},

["Zubat"] = {
["m1"] = {  spell = "Super Sonic", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 8,bonus = 2.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 2.5,type = "normal",cd = 10},
["m3"] = {  spell = "Absorb", minLv = 12,ex = 9260905, base1 = 200, base2 = 201, dista = 1, bonus = 0.5,type = "grass",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 1,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 3,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 15,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 8,type = "poison",cd = 20},
["m6"] = {  spell = "Toxic", minLv = 20, ex = 524562, base1 = 50, base2 = 80, dista = 8, target = "no", bonus = 11, type = "poison",cd = 40},
["!cd"] = { pokenome= "Zubat" , nmoves= 6 , spellm1 = "Super Sonic" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Absorb",exm3=9260905,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Toxic",exm6=524562},
},

["Golbat"] = {
["m1"] = {  spell = "Super Sonic", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 8,bonus = 2.5, type = "normal",cd = 10},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 7.5,type = "normal",cd = 10},
["m3"] = {  spell = "Absorb", minLv = 1,ex = 9260905, base1 = 200, base2 = 201, dista = 1, bonus = 10.5,type = "grass",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 1,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 10,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 1,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 15,type = "poison",cd = 20},
["m6"] = {  spell = "Toxic", minLv = 1, ex = 524562, base1 = 50, base2 = 80, dista = 8, target = "no", bonus = 20, type = "poison",cd = 40},
["m7"] = {  spell = "Poison Gun", minLv = 58, ex = 624568, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 25, type = "poison",cd = 50},
["m8"] = {  spell = "Whirlwind", minLv = 55, ex = 6563224, base1 = 150, base2 = 160, dista = 100, bonus = 15, target = "no", type = "flying",cd = 30},
["m9"] = {  spell = "Wing Attack",minLv = 52,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 18,type = "flying",target = "no",cd = 29},
["!cd"] = { pokenome= "Golbat" , nmoves= 9 , spellm1 = "Super Sonic" ,exm1=662848,spellm2="Bite",exm2 = 464296,spellm3= "Absorb",exm3=9260905,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Toxic",exm6=524562,spellm7 ="Poison Gun",exm7=624568,spellm8 ="Whirlwind",exm8=6563224,spellm9 ="Wing Attack",exm9=900427},
},

["Paras"] = {
["m1"] = {  spell = "Absorb", minLv = 1,ex = 9260908, base1 = 200, base2 = 201, dista = 1, bonus = 3.5,type = "grass",cd = 9},
["m2"] = {  spell = "Scratch", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 2.5, type = "normal",cd = 10},
["m3"] = {  spell = "Poison Sting",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 2.5,type = "normal",cd = 10},
["m4"] = {  spell = "Slash", minLv = 12,ex = 9260905, base1 = 200, base2 = 201, dista = 1, bonus = 0.5,type = "grass",cd = 9},
["m5"] = {  spell = "Sleep Powder", minLv = 12, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m6"] = {  spell = "Stun Spore", minLv = 1, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 50},
["m7"] = {  spell = "Poison Powder", minLv = 1, ex = 222947, base1 = 65, target = "no", base2 = 75, dista = 100, bonus = 1, type = "poison",cd = 20},
["!cd"] = { pokenome= "Paras" , nmoves= 7 , spellm1 = "Absorb" ,exm1=9260908,spellm2="Scratch",exm2 = 662848,spellm3= "Poison Sting",exm3=464296,spellm4 = "Slash",exm4= 9260905,spellm5 ="Sleep Powder",exm5=333267,spellm6 ="Stun Spore",exm6=653222,spellm7 ="Poison Powder",exm7=222947},
},

["Parasect"] = {
["m1"] = {  spell = "Absorb", minLv = 1,ex = 9260908, base1 = 200, base2 = 201, dista = 1, bonus = 10.5,type = "grass",cd = 9},
["m2"] = {  spell = "Scratch", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 10.5, type = "normal",cd = 10},
["m3"] = {  spell = "Poison Sting",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 10.5,type = "normal",cd = 10},
["m4"] = {  spell = "Slash", minLv = 1,ex = 9260905, base1 = 200, base2 = 201, dista = 1, bonus = 10.5,type = "grass",cd = 9},
["m5"] = {  spell = "Poison Bomb", minLv = 70, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 20, type = "poison",cd = 24},
["m6"] = {  spell = "Fury Cutter",minLv = 68,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 11,type = "bug",target = "no",cd = 35},
["m7"] = {  spell = "Toxic", minLv = 1, ex = 524562, base1 = 50, base2 = 80, dista = 8, target = "no", bonus = 20, type = "poison",cd = 40},
["m8"] = {  spell = "Sleep Powder", minLv = 67, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m9"] = {  spell = "Stun Spore", minLv = 1, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 50},
["m10"] = {  spell = "Poison Powder", minLv = 1, ex = 222947, base1 = 65, target = "no", base2 = 75, dista = 100, bonus = 5, type = "poison",cd = 20},
["!cd"] = { pokenome= "Parasect" , nmoves= 10 , spellm1 = "Absorb" ,exm1=9260908,spellm2="Scratch",exm2 = 662848,spellm3= "Poison Sting",exm3=464296,spellm4 = "Slash",exm4= 9260905,spellm5 ="Poison Bomb",exm5=518935,spellm6 ="Fury Cutter",exm6=559329,spellm7 ="Toxic",exm7=524562,spellm8 ="Sleep Powder",exm8=333267,spellm9 ="Stun Spore",exm9=653222,spellm10 ="Poison Powder",exm10=222947},
},


["Venonat"] = {
["m1"] = {  spell = "Absorb", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 3.5, type = "grass",cd = 10},
["m2"] = {  spell = "Bug Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 3.5,type = "bug",cd = 10},
["m3"] = {  spell = "Super Sonic", minLv = 12,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m4"] = {  spell = "Poison Sting",minLv = 1,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 3,type = "poison",cd = 13},
["m5"] = {  spell = "Poison Fang",minLv = 25,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 8,type = "poison",cd = 20},
["m6"] = {  spell = "Psychic", minLv = 28, ex = 775994, base1 = 225,base2 = 225, bonus = 11,type = "psychic",target = "no",cd = 35},
["m7"] = {  spell = "Sleep Powder", minLv = 22, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m8"] = {  spell = "Stun Spore", minLv = 1, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 50},
["m9"] = {  spell = "Poison Powder", minLv = 1, ex = 222947, base1 = 65, target = "no", base2 = 75, dista = 100, bonus = 1, type = "poison",cd = 20},
["!cd"] = { pokenome= "Venonat" , nmoves= 9 , spellm1 = "Absorb" ,exm1=662848,spellm2="Bug Bite",exm2 = 464296,spellm3= "Super Sonic",exm3=9260905,spellm4 = "Poison Sting",exm4= 931605,spellm5 ="Poison Fang",exm5=555573,spellm6 ="Psychic",exm6=775994,spellm7 ="Sleep Powder",exm7=333267,spellm8 ="Stun Spore",exm8=653222,spellm9 ="Poison Powder",exm9=222947},
},

["Venomoth"] = {
["m1"] = {  spell = "Absorb", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 7.5, type = "grass",cd = 10},
["m2"] = {  spell = "Bug Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 7.5,type = "bug",cd = 10},
["m3"] = {  spell = "Super Sonic", minLv = 52,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m4"] = {  spell = "Confusion", minLv = 1, ex = 483923, base1 = 165,base2 = 175, bonus = 15,type = "psychic",target = "no",cd = 25},
["m5"] = {  spell = "Poison Sting",minLv = 1,ex = 931605,base1 = 155,base2 = 156,dista = 3,bonus = 10,type = "poison",cd = 13},
["m6"] = {  spell = "Poison Fang",minLv = 55,ex = 555573,base1 = 220,base2 = 235,dista = 1,bonus = 15,type = "poison",cd = 20},
["m7"] = {  spell = "Psychic", minLv = 58, ex = 775994, base1 = 225,base2 = 225, bonus = 25,type = "psychic",target = "no",cd = 35},
["m8"] = {  spell = "Sleep Powder", minLv = 52, ex = 333267, base1 = 200, base2 = 201, dista = 1,target = "no",bonus = 1.5, type = "grass",cd = 30},
["m9"] = {  spell = "Stun Spore", minLv = 1, ex = 653222, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 2.5, type = "grass",cd = 50},
["m10"] = {  spell = "Poison Powder", minLv = 1, ex = 222947, base1 = 65, target = "no", base2 = 75, dista = 100, bonus = 5, type = "poison",cd = 20},
["!cd"] = { pokenome= "Venomoth" , nmoves= 10 , spellm1 = "Absorb" ,exm1=662848,spellm2="Bug Bite",exm2 = 464296,spellm3= "Super Sonic",exm3=9260905,spellm4 = "Confusion",exm4= 483923,spellm5 ="Poison Sting",exm5=931605,spellm6 ="Poison Fang",exm6=555573,spellm7 ="Psychic",exm7=775994,spellm8 ="Sleep Powder",exm8=333267,spellm9 ="Stun Spore",exm9=653222,spellm10 ="Poison Powder",exm10=222947},
},

["Diglett"] = {
["m1"] = {  spell = "Sand Attack",minLv = 1,ex = 45332,base1 = 115,base2 = 122,dista = 1,bonus = 2,target = "no",type = "ground",cd = 9},
["m2"] = {  spell = "Mud Shot",minLv = 1,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m3"] = {  spell = "Scratch",minLv = 1,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 3,type = "normal",cd = 9},
["m4"] = {  spell = "Slash",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 3,type = "normal",cd = 9},
["m5"] = {  spell = "Mud Slap",minLv = 1,ex = 895361,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m6"] = {  spell = "Earthshock",minLv = 25,ex = 4588539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 5,type = "ground",cd = 40},
["!cd"] = { pokenome= "Diglett" , nmoves= 6 , spellm1 = "Sand Attack" ,exm1=45332,spellm2="Mud Shot",exm2 = 495361,spellm3= "Scratch",exm3=4900889,spellm4 = "Slash",exm4= 4900882,spellm5 ="Mud Slap",exm5=895361,spellm6 ="Earthshock",exm6=4588539},
},

["Dugtrio"] = {
["m1"] = {  spell = "Sand Attack",minLv = 1,ex = 45332,base1 = 115,base2 = 122,dista = 1,bonus = 6,target = "no",type = "ground",cd = 9},
["m2"] = {  spell = "Mud Shot",minLv = 1,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 5.9,type = "ground",cd = 9},
["m3"] = {  spell = "Scratch",minLv = 1,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 7,type = "normal",cd = 9},
["m4"] = {  spell = "Slash",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 8,type = "normal",cd = 9},
["m5"] = {  spell = "Mud Slap",minLv = 1,ex = 895361,base1 = 135,base2 = 140,dista = 5,bonus = 4.9,type = "ground",cd = 9},
["m6"] = {  spell = "Shockwave",minLv = 55,x = 5585539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 15,type = "ground",cd = 40},
["m7"] = {  spell = "Earthshock",minLv = 1,ex = 5600007,base1 = 300,base2 = 301,dista = 10,bonus = 10.8,type = "ground",target = "no",cd = 40},
["m8"] = {  spell = "Earth Quake",minLv = 52,ex = 521309,base1 = 225,target = "no",base2 = 275,dista = 100,bonus = 1.5,type = "ground",cd = 70},
["!cd"] = { pokenome= "Dugtrio" , nmoves= 8 , spellm1 = "Sand Attack" ,exm1=45332,spellm2="Mud Shot",exm2 = 495361,spellm3= "Scratch",exm3=4900889,spellm4 = "Slash",exm4= 4900882,spellm5 ="Mud Slap",exm5=895361,spellm6 ="Shockwave",exm6=5585539,spellm7 ="Earthshock",exm7=5600007,spellm8 ="Earth Quake",exm8=521309},
},

["Meowth"] = {
["m1"] = {  spell = "Headbutt",minLv = 1,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 5.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Scratch",minLv = 1,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 5,type = "normal",cd = 9},
["m4"] = {  spell = "Slash",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 5,type = "normal",cd = 9},
["m5"] = {  spell = "Quick Attack", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 5.5, type = "normal",cd = 10},
["m6"] = {  spell = "Fury Cutter",minLv = 28,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 6,type = "bug",target = "no",cd = 35},
["m7"]=  {  spell = "Fury",minLv = 30,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 2.2,type = "normal",target = "no",cd = 45},
["m8"] = {  spell = "Scary Face",minLv = 32,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Meowth" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Scratch",exm3=4900889,spellm4 = "Slash",exm4= 4900882,spellm5 ="Quick Attack",exm5=662848,spellm6 ="Fury Cutter",exm6=559329,spellm7 ="Fury",exm7=399559,spellm8 ="Scary Face",exm8=9550008},
},

["Persian"] = {
["m1"] = {  spell = "Headbutt",minLv = 1,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 8.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 10},
["m3"] = {  spell = "Scratch",minLv = 1,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 9,type = "normal",cd = 9},
["m4"] = {  spell = "Slash",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 9,type = "normal",cd = 9},
["m5"] = {  spell = "Quick Attack", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 9.5, type = "normal",cd = 10},
["m6"] = {  spell = "Fury Cutter",minLv = 48,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 12,type = "bug",target = "no",cd = 35},
["m7"]=  {  spell = "Fury",minLv = 42,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.2,type = "normal",target = "no",cd = 45},
["m8"] = {  spell = "Pay Day",minLv = 50,ex = 559929,base1 = 255,base2 = 260,dista = 8,bonus = 20,type = "normal",target = "no",cd = 55},
["m9"] = {  spell = "Scary Face",minLv = 52,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Persian" , nmoves= 9 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Scratch",exm3=4900889,spellm4 = "Slash",exm4= 4900882,spellm5 ="Quick Attack",exm5=662848,spellm6 ="Fury Cutter",exm6=559329,spellm7 ="Fury",exm7=399559,spellm8 ="Pay Day",exm8=559929,spellm9 ="Scary Face",exm9=9550008},
},

["Mankey"] = {
["m1"] = {  spell = "Headbutt",minLv = 1,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 5.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Scratch",minLv = 1,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 5,type = "normal",cd = 9},
["m4"] = {  spell = "Triple Kick",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 3.5,type = "fighting",cd = 15},
["m5"] = {  spell = "Karate Chop", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 6.5, type = "fighting",cd = 20},
["m6"] = {  spell = "Cross Chop",minLv = 28,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 8,type = "fighting",target = "no",cd = 35},
["m7"]=  {  spell = "Fury",minLv = 30,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1.2,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Mankey" , nmoves= 7 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Scratch",exm3=4900889,spellm4 = "Triple Kick",exm4= 4900882,spellm5 ="Karate Chop",exm5=662848,spellm6 ="Cross Chop",exm6=559329,spellm7 ="Fury",exm7=399559},
},
["Primeape"] = {
["m1"] = {  spell = "Headbutt",minLv = 1,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 8.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 10},
["m3"] = {  spell = "Scratch",minLv = 1,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 8,type = "normal",cd = 9},
["m4"] = {  spell = "Triple Kick",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 7.5,type = "fighting",cd = 15},
["m5"] = {  spell = "Karate Chop", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 9.5, type = "fighting",cd = 20},
["m6"] = {  spell = "Mega Kick", minLv = 1, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "fighting",cd = 10},
["m7"] = {  spell = "Mega Punch",minLv = 1,ex = 876771,base1 = 335,base2 = 440,dista = 1,bonus = 12.9,type = "fighting",cd = 30},
["m8"] = {  spell = "Cross Chop",minLv = 52,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 15,type = "fighting",target = "no",cd = 45},
["m9"]=  {  spell = "Fury",minLv = 58,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 2.8,type = "normal",target = "no",cd = 45},
["m10"] = {spell = "Scary Face",minLv = 52,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Primeape" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Scratch",exm3=4900889,spellm4 = "Triple Kick",exm4= 4900882,spellm5 ="Karate Chop",exm5=662848,spellm6 ="Mega Kick",exm6=552848,spellm7 ="Mega Punch",exm7=876771,spellm8 ="Cross Chop",exm8=559329,spellm9 ="Fury",exm9=399559,spellm10 ="Scary Face",exm10=9550008},
},

["Machop"] = {
["m1"] = {  spell = "Headbutt",minLv = 1,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 5.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m3"] = {  spell = "Mega Punch",minLv = 1,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 8,type = "normal",cd = 15},
["m4"] = {  spell = "Triple Punch",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 2.5,type = "fighting",cd = 15},
["m5"] = {  spell = "Karate Chop", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 6.5, type = "fighting",cd = 20},
["m6"] = {  spell = "Ground Chop",minLv = 28,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 8,type = "fighting",target = "no",cd = 35},
["m7"]=  {  spell = "Fury",minLv = 30,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Machop" , nmoves= 7 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Mega Punch",exm3=4900889,spellm4 = "Triple Kick",exm4= 4900882,spellm5 ="Karate Chop",exm5=662848,spellm6 ="Ground Chop",exm6=559329,spellm7 ="Fury",exm7=399559},
},

["Machoke"] = {
["m1"] = {  spell = "Headbutt",minLv = 1,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 8.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 7.5,type = "normal",cd = 10},
["m3"] = {  spell = "Mega Punch",minLv = 1,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 8,type = "normal",cd = 15},
["m4"] = {  spell = "Triple Punch",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 3.5,type = "fighting",cd = 15},
["m5"] = {  spell = "Karate Chop", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 7.5, type = "fighting",cd = 20},
["m6"] = {  spell = "Ground Chop",minLv = 48,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 20,type = "fighting",target = "no",cd = 55},
["m7"] = {  spell = "Fist Machine",minLv = 48,ex = 559321,base1 = 255,base2 = 260,dista = 8,bonus = 15,type = "fighting",target = "no",cd = 55},
["m8"]=  {  spell = "Fury",minLv = 50,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Machoke" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Mega Punch",exm3=4900889,spellm4 = "Triple Kick",exm4= 4900882,spellm5 ="Karate Chop",exm5=662848,spellm6 ="Ground Chop",exm6=559329,spellm7 ="Fist Machine",exm7=559321,spellm8 ="Fury",exm8=399559},
},

["Machamp"] = {
["m1"] = {  spell = "Headbutt",minLv = 1,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 9.0,type = "normal",cd = 15},
["m2"] = {  spell = "Bite",minLv = 1,ex = 464296,base1 = 200,base2 = 210,dista = 1,bonus = 9.5,type = "normal",cd = 10},
["m3"] = {  spell = "Mega Punch",minLv = 1,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 10,type = "fighting",cd = 15},
["m4"] = {  spell = "Triple Punch",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 4.5,type = "fighting",cd = 15},
["m5"] = {  spell = "Karate Chop", minLv = 1, ex = 662848, base1 = 200, base2 = 201, dista = 1,bonus = 10.5, type = "fighting",cd = 20},
["m6"] = {  spell = "Ground Chop",minLv = 78,ex = 559329,base1 = 255,base2 = 260,dista = 8,bonus = 25,type = "fighting",target = "no",cd = 55},
["m7"] = {  spell = "Fist Machine",minLv = 77,ex = 559321,base1 = 255,base2 = 260,dista = 8,bonus = 15,type = "fighting",target = "no",cd = 55},
["m8"] = {  spell = "Destroyer Hand",minLv = 1,ex = 859321,base1 = 255,base2 = 260,dista = 8,bonus = 20,type = "fighting",target = "no",cd = 55},
["m9"] = {  spell = "Dynamic Punch",minLv = 80,ex = 558321,base1 = 255,base2 = 260,dista = 1,bonus = 4,type = "fighting",cd = 55},
["m10"]=  {  spell = "Fury",minLv = 80,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.9,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Machamp" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=4556803,spellm2="Bite",exm2 = 464296,spellm3= "Mega Punch",exm3=4900889,spellm4 = "Triple Kick",exm4= 4900882,spellm5 ="Karate Chop",exm5=662848,spellm6 ="Ground Chop",exm6=559329,spellm7 ="Fist Machine",exm7=559321,spellm8 ="Destroyer Hand",exm8=859321,spellm9 ="Dynamic Punch",exm9=558321,spellm10 ="Fury",exm10=399559},
},

["Magnemite"] = {
["m1"] = {  spell = "Super Sonic", minLv = 1,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m2"] = {  spell = "Thundershock",minLv = 1,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 4.8,type = "electric",cd = 9 },
["m3"] = {  spell = "Thunder Bolt",minLv = 16, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 3, type = "electric", cd = 20},
["m4"] = {  spell = "Thunder Wave",minLv = 17,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 8,type = "electric",cd = 15},
["m5"] = {  spell = "Sonic Boom", minLv = 1,ex = 8860905, base1 = 200, base2 = 201, dista = 8, bonus = 2.5,type = "psychic",cd = 9},
["!cd"] = { pokenome= "Magnemite" , nmoves= 5 , spellm1 = "Super Sonic" ,exm1=9260905,spellm2="Thundershock",exm2 = 884002,spellm3= "Thunder Bolt",exm3=879855,spellm4 = "Thunder Wave",exm4= 589785,spellm5 ="Sonic Boom",exm5=8860905},
},

["Magneton"] = {
["m1"] = {  spell = "Super Sonic", minLv = 1,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m2"] = {  spell = "Thundershock",minLv = 1,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 8.8,type = "electric",cd = 9 },
["m3"] = {  spell = "Thunder Bolt",minLv = 1, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 4, type = "electric", cd = 20},
["m4"] = {  spell = "Thunder Wave",minLv = 1,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 15,type = "electric",cd = 15},
["m5"] = {  spell = "Thunder", minLv = 45, ex = 518935, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 20, type = "electric",cd = 60},
["m6"] =  {  spell = "Electric Storm", minLv = 48, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 20, type = "electric",cd = 80},
["m7"] = {  spell = "Sonic Boom", minLv = 1,ex = 8860905, base1 = 200, base2 = 201, dista = 8, bonus = 6.5,type = "psychic",cd = 9},
["!cd"] = { pokenome= "Magneton" , nmoves= 7 , spellm1 = "Super Sonic" ,exm1=9260905,spellm2="Thundershock",exm2 = 884002,spellm3= "Thunder Bolt",exm3=879855,spellm4 = "Thunder Wave",exm4= 589785,spellm5 ="Thunder",exm5=518935,spellm6 ="Electric Storm",exm6=868968,spellm7 ="Sonic Boom",exm7=8860905},
},

["Farfetchd"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 962248, base1 = 200, base2 = 201, dista = 1,bonus = 16, type = "normal",cd = 10},
["m2"] = {  spell = "Slash",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 9,type = "normal",cd = 9},
["m3"] = {  spell = "Sand Attack",minLv = 1,ex = 95332,base1 = 155,base2 = 162,dista = 1,bonus = 10,target = "no",type = "ground",cd = 9},
["m4"] = {  spell = "StickSlash", minLv = 1, ex = 924521, base1 = 150, base2 = 180, dista = 1, bonus = 13.9, type = "flying",cd = 40},
["m5"] = {  spell = "Drill Peck", minLv = 1, ex = 925025, base1 = 150, base2 = 151, dista = 1,bonus = 8, type = "flying",cd = 15},
["m6"] = {  spell = "Stickmerang", minLv = 1, ex = 965625, base1 = 150, base2 = 151, dista = 8,target = "no",bonus = 20, type = "flying",cd = 15},
["m7"] = {  spell = "Stick Wave", minLv = 53, ex = 9563224, base1 = 150, base2 = 160, dista = 10, bonus = 17, target = "no", type = "flying",cd = 30},
["m8"] = {  spell = "Wing Attack",minLv = 52,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 18,type = "flying",target = "no",cd = 29},
["m9"]=  {  spell = "Strafe",minLv = 55,ex = 959952,base1 = 100,base2 = 120,dista = 1,bonus = 3.5,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Farfetchd" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=962248,spellm2="Slash",exm2 = 4900882,spellm3= "Sand Attack",exm3=95332,spellm4 = "StickSlash",exm4=924521,spellm5 = "Drill Peck",exm5=925025,spellm6 = "Stickmerang",exm6=965625,spellm7 = "Stick Wave",exm7=9563224,spellm8 = "Wing Attack",exm8=900427,spellm9 = "Strafe",exm9=959952},
},

["Doduo"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 1,ex = 25332,base1 = 155,base2 = 162,dista = 1,bonus = 5,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 1, ex = 224521, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 5.0, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 1, ex = 225025, base1 = 150, base2 = 151, dista = 1,bonus = 2, type = "flying",cd = 15},
["m5"]=  {  spell = "Strafe",minLv = 25,ex = 959952,base1 = 100,base2 = 120,dista = 1,bonus = 2.5,type = "normal",target = "no",cd = 45},
["m6"] = {  spell = "Rage",minLv = 20,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 2,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Doduo" , nmoves= 6 , spellm1 = "Quick Attack" ,exm1=262248,spellm2="Sand Attack",exm2 = 25332,spellm3= "Gust",exm3=224521,spellm4 = "Drill Peck",exm4=225025,spellm5 = "Strafe",exm5=959952,spellm6 = "Rage",exm6=651482},
},

["Dodrio"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "normal",cd = 10},
["m2"] = {  spell = "Sand Attack",minLv = 1,ex = 25332,base1 = 155,base2 = 162,dista = 1,bonus = 10,target = "no",type = "ground",cd = 9},
["m3"] = {  spell = "Gust", minLv = 1, ex = 224521, base1 = 150, base2 = 180, dista = 2, target = "no", bonus = 11.0, type = "flying",cd = 40},
["m4"] = {  spell = "Drill Peck", minLv = 1, ex = 225025, base1 = 150, base2 = 151, dista = 1,bonus = 8, type = "flying",cd = 15},
["m5"] = {  spell = "Pluck", minLv = 50, ex = 225929, base1 = 150, base2 = 151, dista = 1,bonus = 15, type = "normal",cd = 35},
["m6"]=  {  spell = "Strafe",minLv = 1,ex = 959952,base1 = 100,base2 = 120,dista = 1,bonus = 3.5,type = "normal",target = "no",cd = 45},
["m7"] = {  spell = "Rage",minLv = 1,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 2,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Dodrio" , nmoves= 7 , spellm1 = "Quick Attack" ,exm1=262248,spellm2="Sand Attack",exm2 = 25332,spellm3= "Gust",exm3=224521,spellm4 = "Drill Peck",exm4=225025,spellm5 = "Pluck",exm5=225929,spellm6 = "Strafe",exm6=959952,spellm7 = "Rage",exm7=651482},
},

["Seel"] = {
["m1"] = {  spell = "Headbutt", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {  spell = "Aqua tail", minLv = 1, ex = 445925, base1 = 18, base2 = 18, dista = 1, bonus = 3.5,type = "water", cd = 35},
["m3"] = {  spell = "Ice Shards", minLv = 1, ex = 748004, base1 = 230, base2 = 280, dista = 8, bonus = 4.5, type = "ice",cd = 15},
["m4"] = {  spell = "Ice Beam", minLv = 1, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 8.5, type = "ice",cd = 40},
["m5"]=  {  spell = "Icy Wind",minLv = 25,ex = 959952,base1 = 100,base2 = 120,dista = 8,bonus = 8.5,type = "ice",target = "no",cd = 45},
["m6"] = {  spell = "Aurora Beam", minLv = 40, ex = 415554, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 13.5,type = "ice", cd = 45},
["!cd"] = { pokenome= "Seel" , nmoves= 6 , spellm1 = "Headbutt" ,exm1=262248,spellm2="Aqua Tail",exm2 = 445925,spellm3= "Ice Shards",exm3=748004,spellm4 = "Ice Beam",exm4=264604,spellm5 = "Ice Wind",exm5=959952,spellm6 = "Aurora Beam",exm6=415554},
},

["Dewgong"] = {
["m1"] = {  spell = "Headbutt", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "normal",cd = 10},
["m2"] = {  spell = "Aqua tail", minLv = 1, ex = 445925, base1 = 18, base2 = 18, dista = 1, bonus = 10.5,type = "water", cd = 35},
["m3"] = {  spell = "Ice Shards", minLv = 1, ex = 748004, base1 = 230, base2 = 280, dista = 8, bonus = 7.5, type = "ice",cd = 15},
["m4"] = {  spell = "Ice Beam", minLv = 1, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 13.5, type = "ice",cd = 40},
["m5"]=  {  spell = "Icy Wind",minLv = 1,ex = 959952,base1 = 100,base2 = 120,dista = 8,bonus = 9.5,type = "ice",target = "no",cd = 45},
["m6"] = {  spell = "Aurora Beam", minLv = 67, ex = 415554, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 21.5,type = "ice", cd = 45},
["m7"] = {  spell = "Blizzard", minLv = 70, ex = 643924, base1 = 750, base2 = 650, dista = 100, bonus = 25, target = "no", type = "ice",cd = 100},
["m8"] = {  spell = "Rest",minLv = 71,ex = 6843433,base1 = 305,base2 = 316,dista = 10,target = "no",bonus = 6.5,type = "ground",cd = 90},
["!cd"] = { pokenome= "Dewgong" , nmoves= 8 , spellm1 = "Headbutt" ,exm1=262248,spellm2="Aqua Tail",exm2 = 445925,spellm3= "Ice Shards",exm3=748004,spellm4 = "Ice Beam",exm4=264604,spellm5 = "Ice Wind",exm5=959952,spellm6 = "Aurora Beam",exm6=415554,spellm7 = "Blizzard",exm7=643924,spellm8 = "Rest",exm8=6843433},
},

["Grimer"] = {
["m1"] = {  spell = "Mud Shot",minLv = 1,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m2"] = {  spell = "Acid",minLv = 1, ex = 879752, base1 = 230, base2 = 245, dista = 2, bonus = 4.7, type = "poison", cd = 20},
["m3"] = {  spell = "Mud Bomb",minLv = 1, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 6.5, type = "ground", cd = 20},
["m4"] = {  spell = "Poison Bomb", minLv = 35, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 12, type = "poison",cd = 24},
["m5"] = {  spell = "Poison Gun", minLv = 38, ex = 624568, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 15, type = "poison",cd = 50},
["m6"] = {  spell = "Sludge", minLv = 40, ex = 415554, base1 = 750, base2 = 650, dista = 6,bonus = 13.5,type = "poison", cd = 45},
["!cd"] = { pokenome= "Grimer" , nmoves= 6 , spellm1 = "Mud Shot" ,exm1=495361,spellm2="Acid",exm2 = 879752,spellm3= "Mud Bomb",exm3=432498,spellm4 = "Poison Bomb",exm4=518935,spellm5 = "Poison Gun",exm5=624568,spellm6 = "Sludge",exm6=415554},
},

["Muk"] = {
["m1"] = {  spell = "Mud Shot",minLv = 1,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 7.9,type = "ground",cd = 9},
["m2"] = {  spell = "Acid",minLv = 1, ex = 879752, base1 = 230, base2 = 245, dista = 2, bonus = 8.7, type = "poison", cd = 15},
["m3"] = {  spell = "Mud Bomb",minLv = 1, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 10.5, type = "ground", cd = 25},
["m4"] = {  spell = "Poison Bomb", minLv = 1, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 18, type = "poison",cd = 30},
["m5"] = {  spell = "Poison Gun", minLv = 82, ex = 624568, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 25, type = "poison",cd = 60},
["m6"] = {  spell = "Sludge", minLv = 1, ex = 415554, base1 = 750, base2 = 650, dista = 6,bonus = 15.5,type = "poison", cd = 30},
["m7"] = {  spell = "Sludge Rain", minLv = 90, ex = 915554, base1 = 750, base2 = 650, dista = 6,target = "no",bonus = 20,type = "poison", cd = 100},
["m8"] = {  spell = "Harden", minLv = 1, ex = 893526, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 30},
["!cd"] = { pokenome= "Muk" , nmoves= 8 , spellm1 = "Mud Shot" ,exm1=495361,spellm2="Acid",exm2 = 879752,spellm3= "Mud Bomb",exm3=432498,spellm4 = "Poison Bomb",exm4=518935,spellm5 = "Poison Gun",exm5=624568,spellm6 = "Sludge",exm6=415554,spellm7 = "Sludge Rain",exm7=915554,spellm8 = "Harden",exm8=893526},
},

["Shellder"] = {
["m1"] = {  spell = "Lick", minLv = 1,ex = 3404556, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 15},
["m2"] = {  spell = "Super Sonic", minLv = 1,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m3"] = {  spell = "Clamp",minLv = 20, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 3.5, type = "water", cd = 20},
["m4"] = {  spell = "Bubbles",minLv = 1, ex = 688582, base1 = 230, base2 = 245, dista = 8, bonus = 2.5, type = "water", cd = 10},
["m5"] = {  spell = "Ice Beam", minLv = 22, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 6.5, type = "ice",cd = 40},
["m6"] = {  spell = "Harden", minLv = 18, ex = 893526, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 15},
["!cd"] = { pokenome= "Shellder" , nmoves= 6 , spellm1 = "Lick" ,exm1=3404556,spellm2="Super Sonic",exm2 = 9260905,spellm3= "Clamp",exm3=432498,spellm4 = "Bubbles",exm4=688582,spellm5 = "Ice Beam",exm5=264604,spellm6 = "Harden",exm6=893526},
},

["Cloyster"] = {
["m1"] = {  spell = "Lick", minLv = 1,ex = 3404556, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 15},
["m2"] = {  spell = "Super Sonic", minLv = 1,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 9},
["m3"] = {  spell = "Clamp",minLv = 1, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 6, type = "water", cd = 10},
["m4"] = {  spell = "Bubbles",minLv = 1, ex = 688582, base1 = 230, base2 = 245, dista = 8, bonus = 4.5, type = "water", cd = 10},
["m5"] = {  spell = "Ice Beam", minLv = 1, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 15.5, type = "ice",cd = 40},
["m6"] = {  spell = "Aurora Beam", minLv = 67, ex = 415554, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 21.5,type = "ice", cd = 45},
["m7"] = {  spell = "Blizzard", minLv = 70, ex = 643924, base1 = 750, base2 = 650, dista = 100, bonus = 25, target = "no", type = "ice",cd = 100},
["m8"] = {  spell = "Harden", minLv = 1, ex = 893526, base1 = 425, target = "no", base2 = 575, dista = 100, bonus = 1, type = "grass",cd = 15},
["!cd"] = { pokenome= "Cloyster" , nmoves= 8 , spellm1 = "Lick" ,exm1=3404556,spellm2="Super Sonic",exm2 = 9260905,spellm3= "Clamp",exm3=432498,spellm4 = "Bubbles",exm4=688582,spellm5 = "Ice Beam",exm5=264604,spellm6 = "Aurora Beam",exm6=415554,spellm7 = "Blizzard",exm7=643924,spellm8 = "Harden",exm8=893526},
},

["Voltorb"] = {
["m1"] = {  spell = "Spark", minLv = 1, ex = 964609, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 6.5, type = "electric",cd = 30},
["m2"] = {  spell = "Thundershock",minLv = 1,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 4.8,type = "electric",cd = 9 },
["m3"] = {  spell = "Thunder Bolt",minLv = 16, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 2.8, type = "electric", cd = 20},
["m4"] = {  spell = "Thunder Wave",minLv = 17,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 8,type = "electric",cd = 15},
["m5"] = {  spell = "Rollout",minLv = 20,ex = 4600008,base1 = 125,target = "no",base2 = 175,dista = 100,bonus = 1.5,type = "rock",cd = 40},
["m6"] = {  spell = "Charge Beam", minLv = 22, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 7.5, type = "electric",cd = 40},
["m7"] = {  spell = "Selfdestruct",minLv = 30,ex = 7500007,base1 = 1500,base2 = 2000,dista = 10,bonus = 21,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Voltorb" , nmoves= 7 , spellm1 = "Spark" ,exm1=964609,spellm2="Thundershock",exm2 = 884002,spellm3= "Thunder Bolt",exm3=879855,spellm4 = "Thunder Wave",exm4=589785,spellm5 = "Rollout",exm5=4600008,spellm6 = "Charge Beam",exm6=264604,spellm7 = "Selfdestruct",exm7=7500007},
},


["Electrode"] = {
["m1"] = {  spell = "Spark", minLv = 1, ex = 964609, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 8.5, type = "electric",cd = 30},
["m2"] = {  spell = "Thundershock",minLv = 1,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 7.8,type = "electric",cd = 9 },
["m3"] = {  spell = "Thunder Bolt",minLv = 1, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 4.8, type = "electric", cd = 20},
["m4"] = {  spell = "Thunder Wave",minLv = 1,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 12,type = "electric",cd = 15},
["m5"] = {  spell = "Rollout",minLv = 1,ex = 4600008,base1 = 125,target = "no",base2 = 175,dista = 100,bonus = 2.5,type = "rock",cd = 40},
["m6"] = {  spell = "Charge Beam", minLv = 42, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 14.5, type = "electric",cd = 40},
["m7"] = { spell = "Electric Storm", minLv = 48, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 20, type = "electric",cd = 60},
["m8"] = {  spell = "Selfdestruct",minLv = 50,ex = 7500007,base1 = 1500,base2 = 2000,dista = 10,bonus = 21,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Electrode" , nmoves= 8 , spellm1 = "Spark" ,exm1=964609,spellm2="Thundershock",exm2 = 884002,spellm3= "Thunder Bolt",exm3=879855,spellm4 = "Thunder Wave",exm4=589785,spellm5 = "Rollout",exm5=4600008,spellm6 = "Charge Beam",exm6=264604,spellm7 = "Electric Storm",exm7=868968,spellm8 = "Selfdestruct",exm8=7500007},
},

["Cubone"] = {
["m1"] = {  spell = "Headbutt", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 6, type = "normal",cd = 10},
["m2"] = {  spell = "Bonemerang", minLv = 1, ex = 965625, base1 = 150, base2 = 151, dista = 8,target = "no",bonus = 13, type = "ground",cd = 15},
["m3"] = {  spell = "Bone Club",minLv = 25, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 3.8, type = "ground", cd = 20},
["m4"] = {  spell = "Bone Slash",minLv = 1,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 5.8,type = "ground",cd = 9 },
["m5"] = {  spell = "Rage",minLv = 30,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 2,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Cubone" , nmoves= 5 , spellm1 = "Headbutt" ,exm1=262248,spellm2="Bonemerang",exm2 = 965625,spellm3= "Bone Club",exm3=879855,spellm4 = "Bone Slash",exm4=884002,spellm5 = "Rage",exm5=651482},
},

["Marowak"] = {
["m1"] = {  spell = "Headbutt", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "normal",cd = 10},
["m2"] = {  spell = "Bonemerang", minLv = 1, ex = 965625, base1 = 150, base2 = 151, dista = 8,target = "no",bonus = 15, type = "ground",cd = 25},
["m3"] = {  spell = "Bone Club",minLv = 1, ex = 879855, base1 = 230, base2 = 245, dista = 5, bonus = 6.8, type = "ground", cd = 20},
["m4"] = {  spell = "Bone Slash",minLv = 1,ex = 884002,base1 = 100,base2 = 118,dista = 5,bonus = 7.8,type = "ground",cd = 9 },
["m5"] = {  spell = "Mud Shot",minLv = 1,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 7.9,type = "ground",cd = 9},
["m6"] = {  spell = "Earthshock",minLv = 1,ex = 5600007,base1 = 300,base2 = 301,dista = 10,bonus = 13.8,type = "ground",target = "no",cd = 60},
["m7"] = {  spell = "Shockwave",minLv = 78,x = 5585539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 15,type = "ground",cd = 65},
["m8"] = {  spell = "Bone Rain", minLv = 80, ex = 965625, base1 = 150, base2 = 151, dista = 8,target = "no",bonus = 20, type = "ground",cd = 90},
["m9"] = {  spell = "Rage",minLv = 1,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 4,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Marowak" , nmoves= 9 , spellm1 = "Headbutt" ,exm1=262248,spellm2="Bonemerang",exm2 = 965625,spellm3= "Bone Club",exm3=879855,spellm4 = "Bone Slash",exm4=884002,spellm5 = "Mud Shot",exm5=495361,spellm6 = "Earthshock",exm6=5600007,spellm7 = "Shockwave",exm7=5585539,spellm8 = "Bone Rain",exm8=965625,spellm9 = "Rage",exm9=651482},
},

["Hitmonlee"] = {
["m1"] = {  spell = "Triple Kick Lee",minLv = 80,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 4.0,type = "fighting",cd = 20},
["m2"] = {  spell = "Mega Kick", minLv = 1, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 4, type = "fighting",cd = 10},
["m3"] = {  spell = "Multi-Kick",minLv = 1,ex = 4900889,base1 = 90,base2 = 110,dista = 1,bonus = 2,type = "fighting",cd = 35},
["m4"]=  {  spell = "Furious Legs",minLv = 80,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "fighting",target = "no",cd = 45},
["!cd"] = { pokenome= "Hitmonlee" , nmoves= 4 , spellm1 = "Triple Kick Lee" ,exm1=4556803,spellm2="Mega Kick",exm2 = 552848,spellm3= "Multi-Kick",exm3=4900889,spellm4 = "Furious Legs",exm4= 399559},
},

["Hitmonchan"] = {
["m1"] = {  spell = "Triple Punch",minLv = 80,ex = 4556803,base1 = 380,base2 = 385,dista = 1,bonus = 4.0,type = "fighting",cd = 20},
["m2"] = {  spell = "Mega Punch", minLv = 1, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "fighting",cd = 10},
["m3"] = {  spell = "Punch-Machine",minLv = 1,ex = 4900889,base1 = 90,base2 = 110,dista = 4,bonus = 4,type = "fighting",cd = 60},
["m4"]=  {  spell = "Ultimate Champion",minLv = 80,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "fighting",target = "no",cd = 45},
["m5"]=  {  spell = "Element Hand",minLv = 1,ex = 499559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "fighting",target = "no",cd = 3},
["!cd"] = { pokenome= "Hitmonchan" , nmoves= 5, spellm1 = "Triple Punch" ,exm1=4556803,spellm2="Mega Punch",exm2 = 552848,spellm3= "Punch-Machine",exm3=4900889,spellm4 = "Ultimate Champion",exm4= 399559,spellm5 = "Element Hand",exm5= 499559},
},


["Lickitung"] = {
["m1"] = {  spell = "Lick", minLv = 1,ex = 3404556, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 10},
["m2"] = {  spell = "Super Sonic", minLv = 1,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 15},
["m3"] = {  spell = "Headbutt", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "normal",cd = 10},
["m4"] = {  spell = "Doubleslap",minLv = 1,ex = 895451,base1 = 235,base2 = 240,dista = 1,bonus = 4.9,type = "normal",cd = 5},
["m5"] = {  spell = "Mega Punch", minLv = 1, ex = 552848, base1 = 200, base2 = 201, dista = 1,bonus = 8, type = "fighting",cd = 15},
["m6"] = {  spell = "Iron Tail",minLv = 1,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 3,type = "normal",cd = 4},
["m7"] = {  spell = "Squishy Licking",minLv = 60,ex = 589785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 15,type = "normal",cd = 35},
["m8"] = {  spell = "Rage",minLv = 1,ex = 651482,base1 = 100,base2 = 120,dista = 1,bonus = 3,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Lickitung" , nmoves= 8 , spellm1 = "Lick" ,exm1=3404556,spellm2="Super Sonic",exm2 = 9260905,spellm3= "Headbutt",exm3=262248,spellm4 = "Doubleslap",exm4=895451,spellm5 = "Mega Punch",exm5=552848,spellm6 = "Iron Tail",exm6=488523,spellm7 = "Squishy Licking",exm7=589785,spellm8 = "Rage",exm8=651482},
},

["Koffing"] = {
["m1"] = {  spell = "Mud Shot",minLv = 1,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m2"] = {  spell = "Acid",minLv = 1, ex = 879752, base1 = 230, base2 = 245, dista = 2, bonus = 4.7, type = "poison", cd = 20},
["m3"] = {  spell = "Headbutt", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 4, type = "normal",cd = 19},
["m4"] = {  spell = "Mud Bomb",minLv = 1, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 3.5, type = "ground", cd = 25},
["m5"] = {  spell = "Poison Bomb", minLv = 35, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 8, type = "poison",cd = 30},
["m6"] = {  spell = "Poison Gun", minLv = 38, ex = 624568, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 11, type = "poison",cd = 50},
["m7"] = {  spell = "Poison Gas", minLv = 40, ex = 415554, base1 = 750, base2 = 650, dista = 6,bonus = 1.5,target = "no",type = "poison", cd = 45},
["m8"] = {  spell = "Selfdestruct",minLv = 50,ex = 7500007,base1 = 1500,base2 = 2000,dista = 10,bonus = 21,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Koffing" , nmoves= 8 , spellm1 = "Mud Shot" ,exm1=495361,spellm2="Acid",exm2 = 879752,spellm3= "Headbutt",exm3=262248,spellm4 = "Mud Bomb",exm4=432498,spellm5 = "Poison Bomb",exm5=518935,spellm6 = "Poison Gun",exm6=624568,spellm7 = "Poison Gas",exm7=415554,spellm8 = "Selfdestruct",exm8=7500007},
},

["Weezing"] = {
["m1"] = {  spell = "Mud Shot",minLv = 1,ex = 495361,base1 = 135,base2 = 140,dista = 5,bonus = 6.9,type = "ground",cd = 9},
["m2"] = {  spell = "Acid",minLv = 1, ex = 879752, base1 = 230, base2 = 245, dista = 2, bonus = 9.7, type = "poison", cd = 20},
["m3"] = {  spell = "Headbutt", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 7, type = "normal",cd = 19},
["m4"] = {  spell = "Mud Bomb",minLv = 1, ex = 432498, base1 = 400, base2 = 450, dista = 8, bonus = 9.5, type = "ground", cd = 25},
["m5"] = {  spell = "Poison Bomb", minLv = 1, ex = 518935, base1 = 200,base2 = 201, dista = 4, bonus = 15, type = "poison",cd = 30},
["m6"] = {  spell = "Poison Gun", minLv = 1, ex = 624568, base1 = 50, base2 = 80, dista = 2, target = "no", bonus = 17, type = "poison",cd = 50},
["m7"] = {  spell = "Poison Gas", minLv = 1, ex = 415554, base1 = 750, base2 = 650, dista = 6,bonus = 3.5,target = "no",type = "poison", cd = 45},
["m8"] = {  spell = "Mortal Gas", minLv = 90, ex = 915554, base1 = 750, base2 = 650, dista = 6,target = "no",bonus = 20,type = "poison", cd = 100},
["m9"] = {  spell = "Selfdestruct",minLv = 90,ex = 7500007,base1 = 1500,base2 = 2000,dista = 10,bonus = 21,type = "psychic",target = "no",cd = 200},
["!cd"] = { pokenome= "Weezing" , nmoves= 9 , spellm1 = "Mud Shot" ,exm1=495361,spellm2="Acid",exm2 = 879752,spellm3= "Headbutt",exm3=262248,spellm4 = "Mud Bomb",exm4=432498,spellm5 = "Poison Bomb",exm5=518935,spellm6 = "Poison Gun",exm6=624568,spellm7 = "Poison Gas",exm7=415554,spellm8 = "Mortal Gas",exm8=915554,spellm9 = "Selfdestruct",exm9=7500007},
},

["Kangaskhan"] = {
["m1"] = {spell = "Headbutt",minLv = 1,ex = 4456803,base1 = 80,base2 = 85,dista = 1,bonus = 8.0,type = "normal",cd = 9},
["m2"] = {spell = "Scratch",minLv = 1,ex = 634091,base1 = 190,base2 = 200,dista = 1,bonus = 8.5,type = "normal",cd = 15},
["m3"] = {spell = "Dizzy Punch",minLv = 1,ex = 829251,base1 = 335,base2 = 340,dista = 1,bonus = 2.9,type = "normal",cd = 15},
["m4"] = {spell = "Bite",minLv = 1,ex = 812922,base1 = 200,base2 = 210,dista = 1,bonus = 7.7,type = "normal",cd = 9},
["m5"] = {spell = "Mega Punch",minLv = 1,ex = 886771,base1 = 335,base2 = 440,dista = 1,bonus = 8.9,type = "fighting",cd = 35},
["m6"] = {spell = "Shockwave",minLv = 1,x = 5585539,base1 = 250,target = "no",base2 = 260,dista = 100,bonus = 14,type = "ground",cd = 65},
["m7"] = {spell = "Earthshock",minLv = 86,ex = 5600007,base1 = 300,base2 = 301,dista = 10,bonus = 12.8,type = "ground",target = "no",cd = 70},
["m8"] = {spell = "Giga Impact",minLv = 95,ex = 7288335,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 5.5,type = "ground",cd = 80},
["m9"] = {spell = "Rest",minLv = 91,ex = 6843433,base1 = 305,base2 = 316,dista = 10,target = "no",bonus = 6.5,type = "ground",cd = 90},
["!cd"] = { pokenome= "Kangaskhan" , nmoves= 9 , spellm1 = "Headbutt" ,exm1=4456803,spellm2="Scratch",exm2 = 634091,spellm3= "Dizzy Punch",exm3=829251,spellm4 = "Bite",exm4=812922,spellm5 = "Mega Punch",exm5=886771,spellm6 = "Shockwave",exm6=5585539,spellm7 = "Earthshock",exm7=5600007,spellm8 = "Giga Impact",exm8=7288335,spellm9 = "Rest",exm9=6843433},
},

["Scyther"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "normal",cd = 5},
["m2"] = {  spell = "Fury Attack",minLv = 1,ex = 2548939,base1 = 255,base2 = 260,dista = 1,bonus = 7,type = "bug",cd = 25},
["m3"] = {  spell = "Slash",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 9,type = "normal",cd = 9},
["m4"] = {  spell = "Wing Attack",minLv = 1,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 18,type = "flying",target = "no",cd = 29},
["m5"] = {  spell = "Pin Missile",minLv = 1,ex = 969741,base1 = 165,base2 = 175,dista = 8,bonus = 12,type = "bug",cd = 45},
["m6"] = {  spell = "Fury Cutter",minLv = 1,ex = 238939,base1 = 255,base2 = 260,dista = 8,bonus = 13,type = "bug",target = "no",cd = 25},
["m7"] = {  spell = "Team Slice",minLv = 95,ex = 524576,base1 = 200,base2 = 220,dista = 8,target = "no",bonus = 25.2,type = "bug",cd = 75},
["m8"] = {  spell = "String Shot",minLv = 1,ex = 333267,base1 = 145,base2 = 150,dista = 3,bonus = 5,type = "bug",cd = 5},
["m9"]=  {  spell = "Agility",minLv = 90,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.9,type = "normal",target = "no",cd = 45},
["!cd"]= {  pokenome= "Scyther" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=262248,spellm2="Fury Attack",exm2 = 2548939,spellm3= "Slash",exm3=4900882,spellm4= "Wing Attack",exm4=900427,spellm5= "Pin Missile",exm5=969741,spellm6= "Fury Cutter",exm6=238939,spellm7= "Team Slice",exm7=524576,spellm8= "String Shot",exm8=333267,spellm9= "Agility",exm9=399559},

},

["Jynx"] = {
["m1"] = {  spell = "Doubleslap",minLv = 1,ex = 8964941,base1 = 135,base2 = 140,dista = 1,bonus = 5.9,type = "normal",cd = 5},
["m2"] = {  spell = "Lovey Kiss",minLv = 1,ex = 8445601,base1 = 135,base2 = 140,dista = 5,bonus = 2.9,type = "normal",cd = 9},
["m3"] = {  spell = "Egg Bomb", minLv = 1,ex = 5953831, base1 = 400, base2 = 401, dista = 8, bonus = 15.5,type = "normal",cd = 9},
["m4"] = {  spell = "Ice Punch", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "ice",cd = 35},
["m5"] = {  spell = "Great Love",minLv = 1,ex = 352031,base1 = 335,base2 = 345,dista = 10,bonus = 15,type = "normal",target = "no",cd = 55},
["m6"] = {  spell = "Psy Wave",minLv = 1,ex = 988455,base1 = 335,base2 = 345,dista = 8,bonus = 8,type = "psychic",target = "no",cd = 20},
["m7"]=  {  spell = "Icy Wind",minLv = 1,ex = 959952,base1 = 100,base2 = 120,dista = 8,bonus = 9.5,type = "ice",target = "no",cd = 45},
["m8"] = {  spell = "Ice Beam", minLv = 1, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 15.5, type = "ice",cd = 40},
["m9"] = {  spell = "Aurora Beam", minLv = 67, ex = 415554, base1 = 750, base2 = 650, dista = 100, target = "no",bonus = 25.5,type = "ice", cd = 65},
["m10"] = {  spell = "Blizzard", minLv = 70, ex = 643924, base1 = 750, base2 = 650, dista = 100, bonus = 27, target = "no", type = "ice",cd = 100},
["!cd"] = { pokenome= "Jynx" , nmoves= 10, spellm1 = "Doubleslap" ,exm1=8964941,spellm2="Lovey Kiss",exm2 = 8445601,spellm3= "Egg Bomb",exm3=5953831,spellm4 = "Ice Punch",exm4=262248,spellm5 = "Great Love",exm5=352031,spellm6 = "Psy Wave",exm6=988455,spellm7 = "Icy Wind",exm7=959952,spellm8 = "Ice Beam",exm8=264604,spellm9 = "Aurora Beam",exm9=415554,spellm10 = "Blizzard",exm10=643924},
},

["Electabuzz"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 566848, base1 = 200, base2 = 201, dista = 1,bonus = 9, type = "normal",cd = 5},
["m2"] = {  spell = "Bite",minLv = 1,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 10},
["m3"] = {  spell = "Iron Tail",minLv = 1,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 9,type = "normal",cd = 9},
["m4"] = {  spell = "Thundershock",minLv = 1,ex = 585002,base1 = 100,base2 = 118,dista = 5,bonus = 9.8,type = "electric",cd = 9 },
["m5"] = {  spell = "Thunder Bolt",minLv = 1, ex = 575855, base1 = 230, base2 = 245, dista = 5, bonus = 7.5, type = "electric", cd = 20},
["m6"] = {  spell = "Thunder Wave",minLv = 1,ex = 585785,base1 = 165,base2 = 175,dista = 8,target = "no",bonus = 16,type = "electric",cd = 15},
["m7"] = {  spell = "Thunder Punch", minLv = 1, ex = 565848, base1 = 200, base2 = 201, dista = 1,bonus = 18, type = "electric",cd = 35},
["m8"] = {  spell = "Thunder", minLv = 1, ex = 518935, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 27, type = "electric",cd = 60},
["m9"] = {  spell = "Electric Storm", minLv = 85, ex = 868968, base1 = 200,base2 = 201, dista = 4,target = "no", bonus = 28, type = "electric",cd = 80},
["!cd"] = { pokenome= "Electabuzz" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=566848,spellm2="Bite",exm2 = 964293,spellm3= "Iron Tail",exm3=488523,spellm4 = "Thundershock",exm4=585002,spellm5 = "Thunder Bolt",exm5=575855,spellm6 = "Thunder Wave",exm6=585785,spellm7 = "Thunder Punch",exm7=565848,spellm8 = "Thunder",exm8=518935,spellm9 = "Electric Storm",exm9=868968},
},

["Pinsir"] = {
["m1"] = {  spell = "Quick Attack", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "normal",cd = 5},
["m2"] = {  spell = "Fury Attack",minLv = 1,ex = 2548939,base1 = 255,base2 = 260,dista = 1,bonus = 6,type = "bug",cd = 25},
["m3"] = {  spell = "Slash",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 9,type = "normal",cd = 9},
["m4"] = {  spell = "Scratch",minLv = 1,ex = 634091,base1 = 190,base2 = 200,dista = 1,bonus = 8.5,type = "normal",cd = 15},
["m5"] = {  spell = "Pin Missile",minLv = 1,ex = 969741,base1 = 165,base2 = 175,dista = 8,bonus = 12,type = "bug",cd = 45},
["m6"] = {  spell = "Fury Cutter",minLv = 68,ex = 238939,base1 = 255,base2 = 260,dista = 8,bonus = 11,type = "bug",target = "no",cd = 25},
["m7"] = {  spell = "Harden", minLv = 1, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 9},
["m8"] = {  spell = "Guillotine", minLv = 66, ex = 252223, base1 = 268, base2 = 268, dista = 1, bonus = 12,type = "normal", cd = 20},
["m9"]=  {  spell = "Rage",minLv = 67,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.9,type = "normal",target = "no",cd = 45},
["!cd"]= {  pokenome= "Pinsir" , nmoves= 9 , spellm1 = "Quick Attack" ,exm1=262248,spellm2="Fury Attack",exm2 = 2548939,spellm3= "Slash",exm3=4900882,spellm4= "Scratch",exm4=634091,spellm5= "Pin Missile",exm5=969741,spellm6= "Fury Cutter",exm6=238939,spellm7= "Harden",exm7=738333,spellm8= "Guillotine",exm8=252223,spellm9= "Rage",exm9=399559},

},

["Tauros"] = {
["m1"] = {spell = "Headbutt",minLv = 1,ex = 4456803,base1 = 80,base2 = 85,dista = 1,bonus = 9.0,type = "normal",cd = 9},
["m2"] = {spell = "Quick Attack", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 10, type = "normal",cd = 5},
["m3"] = {spell = "Bite",minLv = 1,ex = 812922,base1 = 200,base2 = 210,dista = 1,bonus = 8.7,type = "normal",cd = 9},
["m4"] = {spell = "Horn Attack", minLv = 1,ex = 764501, base1 = 200, base2 = 201, dista = 1, bonus = 12,type = "normal",cd = 9},
["m5"] = {spell = "Thrash",minLv = 79,ex = 876671,base1 = 335,base2 = 440,dista = 8,bonus = 15.9,type = "normal",cd = 35},
["m6"] = {spell = "Hyper Beam",minLv = 80,ex = 4561005,base1 = 485,target = "no",base2 = 500,bonus = 29,type = "normal",cd = 60},
["m7"] = {spell = "Giga Impact",minLv = 85,ex = 7288335,base1 = 305,base2 = 316,dista = 6,target = "no",bonus = 2.5,type = "ground",cd = 85},
["m8"] = {spell = "Rest",minLv = 81,ex = 6843433,base1 = 305,base2 = 316,dista = 10,target = "no",bonus = 6.5,type = "ground",cd = 80},
["m9"]=  {spell = "Rage",minLv = 1,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 3.9,type = "normal",target = "no",cd = 45},
["m10"] = {spell = "Scary Face",minLv = 82,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["!cd"] = { pokenome= "Tauros" , nmoves= 10 , spellm1 = "Headbutt" ,exm1=4456803,spellm2="Quick Attack",exm2 = 262248,spellm3= "Bite",exm3=812922,spellm4 = "Horn Attack",exm4=764501,spellm5 = "Trash",exm5=876671,spellm6 = "Hyper Beam",exm6=4561005,spellm7 = "Giga Impact",exm7=7288335,spellm8 = "Rest",exm8=6843433,spellm9 = "Rage",exm9=399559,spellm10 = "Scary Face",exm10=9550008},
},

["Eevee"] = {
["m1"] = {  spell = "Headbutt",minLv = 1,ex = 4456803,base1 = 80,base2 = 85,dista = 1,bonus = 5.0,type = "normal",cd = 9},
["m2"] = {  spell = "Quick Attack", minLv = 1, ex = 262248, base1 = 200, base2 = 201, dista = 1,bonus = 4, type = "normal",cd = 10},
["m3"] = {  spell = "Sand Attack",minLv = 1,ex = 25332,base1 = 155,base2 = 162,dista = 1,bonus = 5,target = "no",type = "ground",cd = 9},
["m4"] = {  spell = "Bite",minLv = 1,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 10},
["m5"] = {  spell = "Iron Tail",minLv = 1,ex = 488523,base1 = 155,base2 = 156,dista = 1,bonus = 7,type = "normal",cd = 9},
["m6"] = {  spell = "Great Love",minLv = 1,ex = 352031,base1 = 335,base2 = 345,dista = 10,bonus = 12,type = "normal",target = "no",cd = 35},
["!cd"] = { pokenome= "Eevee" , nmoves= 6, spellm1 = "Headbutt" ,exm1=4456803,spellm2="Quick Attack",exm2 = 262248,spellm3= "Sand Attack",exm3=25332,spellm4 = "Bite",exm4=964293,spellm5 = "Iron Tail",exm5=488523,spellm6 = "Great Love",exm6=352031},
},

["Porygon"] = {
["m1"] = {spell = "Psy beam",minLv = 1,ex = 9554556,base1 = 335,base2 = 345,dista = 8,bonus = 5,type = "psychic",target = "no",cd = 20},
["m2"] = {spell = "Dark Pulse",minLv = 1,ex = 9550003,base1 = 275,base2 = 285,dista = 6,bonus = 3,type = "ghost",cd = 10},
["m3"] = {spell = "Super Sonic", minLv = 1,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 15},
["m4"] = {spell = "Psychic",minLv = 1,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["m5"] = {spell = "Zap Cannon", minLv = 62, ex = 264604, base1 = 350, base2 = 380, dista = 10, target = "no", bonus = 13.5, type = "electric",cd = 40},
["m6"] = {spell = "Focus",minLv = 60,ex = 985888,base1 = 235,base2 = 245,dista = 10,bonus = 14,target = "no",type = "psychic",cd = 55},
["m7"] = {spell = "Reflect",minLv = 65,ex = 9595597,base1 = 335,base2 = 345,bonus = 11,type = "psychic",target = "no",cd = 40},
["m8"] = {spell = "Psy Target",minLv = 70,ex = 9350899,base1 = 65,base2 = 75,dista = 5,bonus = 3,type = "psychic",target = "no",cd = 50},
["m9"] = {spell = "Restore",minLv = 55,ex = 64423,base1 = 135,base2 = 145,bonus = 65,type = "psychic",target = "no",cd = 50},
["!cd"] = { pokenome= "Porygon" , nmoves= 9 , spellm1 = "Psy beam" ,exm1=9554556,spellm2="Dark Pulse",exm2 = 9550003,spellm3= "Super Sonic",exm3=9260905,spellm4 = "Psychic",exm4=9550008,spellm5 = "Zap Cannon",exm5=264604,spellm6 = "Focus",exm6=985888,spellm7 = "Reflect",exm7=9595597,spellm8 = "Psy Target",exm8=9350899,spellm9 = "Restore",exm9=64423},
},

["Omanyte"] = {
["m1"] = {  spell = "Bite",minLv = 1,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 5.5,type = "normal",cd = 15},
["m2"] = {  spell = "Rock Throw",minLv = 1,ex = 7655931,base1 = 205,base2 = 210,dista = 5,bonus = 4,type = "rock",cd = 4},
["m3"] = {  spell = "Mud Shot",minLv = 1,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 1.9,type = "ground",cd = 9},
["m4"] = {  spell = "Bubbles",minLv = 1, ex = 298555, base1 = 240, base2 = 245, dista = 8, bonus = 2.5, type = "water", cd = 15},
["m5"] = {  spell = "Water Gun", minLv = 1, ex = 872554, base1 = 250, base2 = 280, dista = 2, target = "no", bonus = 6.5, type = "water",cd = 40},
["m6"] = {  spell = "Water ball", minLv = 1, ex = 526221, base1 = 260, base2 = 271, dista = 1,bonus = 3, type = "water",cd = 20},
["m7"] = {  spell = "Water Spout", minLv = 28, ex = 444684, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 7.5, type = "water",cd = 20},
["m8"] = {  spell = "Acient Power",minLv = 32,ex = 200548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 11.5,type = "rock",cd = 50},
["m9"] = {  spell = "Harden", minLv = 25, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 25},
["!cd"] = { pokenome= "Omanyte" , nmoves= 9, spellm1 = "Bite" ,exm1=964293,spellm2="Rock Throw",exm2 = 7655931,spellm3= "Mud Shot",exm3=455551,spellm4 = "Bubbles",exm4=298555,spellm5 = "Water Gun",exm5=872554,spellm6 = "Water ball",exm6=526221,spellm7 = "Water Spout",exm7=444684,spellm8 = "Acient Power",exm8=200548,spellm9 = "Harden",exm9=738333},
},

["Omastar"] = {
["m1"] = {  spell = "Bite",minLv = 1,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 8.5,type = "normal",cd = 15},
["m2"] = {  spell = "Rock Throw",minLv = 1,ex = 7655931,base1 = 205,base2 = 210,dista = 5,bonus = 8,type = "rock",cd = 4},
["m3"] = {  spell = "Mud Shot",minLv = 1,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 3.9,type = "ground",cd = 9},
["m4"] = {  spell = "Bubbles",minLv = 1, ex = 298555, base1 = 240, base2 = 245, dista = 8, bonus = 3.5, type = "water", cd = 15},
["m5"] = {  spell = "Water Gun", minLv = 1, ex = 872554, base1 = 250, base2 = 280, dista = 2, target = "no", bonus = 12.5, type = "water",cd = 40},
["m6"] = {  spell = "Water ball", minLv = 1, ex = 526221, base1 = 260, base2 = 271, dista = 1,bonus = 10, type = "water",cd = 20},
["m7"] = {  spell = "Water Spout", minLv = 88, ex = 444684, base1 = 230, base2 = 280, dista = 8, target = "no", bonus = 17.5, type = "water",cd = 20},
["m8"] = {  spell = "Acient Power",minLv = 92,ex = 200548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 18.5,type = "rock",cd = 50},
["m9"] = {  spell = "Harden", minLv = 1, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 30},
["m10"]= {  spell = "Hydro Rain", minLv = 95, ex = 646954, base1 = 750, base2 = 650, dista = 10, bonus = 15, target = "no", type = "water",cd = 80},
["!cd"] = { pokenome= "Omastar" , nmoves= 10, spellm1 = "Bite" ,exm1=964293,spellm2="Rock Throw",exm2 = 7655931,spellm3= "Mud Shot",exm3=455551,spellm4 = "Bubbles",exm4=298555,spellm5 = "Water Gun",exm5=872554,spellm6 = "Water ball",exm6=526221,spellm7 = "Water Spout",exm7=444684,spellm8 = "Acient Power",exm8=200548,spellm9 = "Harden",exm9=738333,spellm10 = "Hydro Rain",exm10=646954},
},

["Kabuto"] = {
["m1"] = {  spell = "Scratch",minLv = 1,ex = 634091,base1 = 190,base2 = 200,dista = 1,bonus = 5.5,type = "normal",cd = 15},
["m2"] = {  spell = "Rock Throw",minLv = 1,ex = 7655931,base1 = 205,base2 = 210,dista = 5,bonus = 4,type = "rock",cd = 4},
["m3"] = {  spell = "Mud Shot",minLv = 1,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 1.9,type = "ground",cd = 9},
["m4"] = {  spell = "Bubbles",minLv = 1, ex = 298555, base1 = 240, base2 = 245, dista = 8, bonus = 2.5, type = "water", cd = 15},
["m5"] = {  spell = "Slash",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 4,type = "normal",cd = 9},
["m6"] = {  spell = "Guillotine", minLv = 26, ex = 252223, base1 = 268, base2 = 268, dista = 1, bonus = 8,type = "normal", cd = 20},
["m7"] = {  spell = "Fury Cutter",minLv = 28,ex = 238939,base1 = 255,base2 = 260,dista = 8,bonus = 6,type = "bug",target = "no",cd = 25},
["m8"] = {  spell = "Acient Power",minLv = 32,ex = 200548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 11.5,type = "rock",cd = 50},
["m9"] = {  spell = "Harden", minLv = 25, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 25},
["m10"]=  {  spell = "Rage",minLv = 31,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 1.9,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Kabuto" , nmoves= 10, spellm1 = "Scratch" ,exm1=634091,spellm2="Rock Throw",exm2 = 7655931,spellm3= "Mud Shot",exm3=455551,spellm4 = "Bubbles",exm4=298555,spellm5 = "Slash",exm5=4900882,spellm6 = "Guillotine",exm6=252223,spellm7 = "Fury Cutter",exm7=238939,spellm8 = "Acient Power",exm8=200548,spellm9 = "Harden",exm9=738333,spellm10 = "Rage",exm10=399559},
},

["Kabutops"] = {
["m1"] = {  spell = "Scratch",minLv = 1,ex = 634091,base1 = 190,base2 = 200,dista = 1,bonus = 8.5,type = "normal",cd = 15},
["m2"] = {  spell = "Rock Throw",minLv = 1,ex = 7655931,base1 = 205,base2 = 210,dista = 5,bonus = 8,type = "rock",cd = 4},
["m3"] = {  spell = "Mud Shot",minLv = 1,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 2.9,type = "ground",cd = 9},
["m4"] = {  spell = "Bubbles",minLv = 1, ex = 298555, base1 = 240, base2 = 245, dista = 8, bonus = 2.9, type = "water", cd = 15},
["m5"] = {  spell = "Slash",minLv = 1,ex = 4900882,base1 = 90,base2 = 110,dista = 1,bonus = 7,type = "normal",cd = 9},
["m6"] = {  spell = "Guillotine", minLv = 1, ex = 252223, base1 = 268, base2 = 268, dista = 1, bonus = 13,type = "normal", cd = 20},
["m7"] = {  spell = "Fury Cutter",minLv = 88,ex = 238939,base1 = 255,base2 = 260,dista = 8,bonus = 13,type = "bug",target = "no",cd = 25},
["m8"] = {  spell = "Acient Power",minLv = 92,ex = 200548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 20.5,type = "rock",cd = 50},
["m9"] = {  spell = "Harden", minLv = 1, ex = 738333, base1 = 425, target = "no", base2 = 575, dista = 10, bonus = 1, type = "grass",cd = 25},
["m10"]=  {  spell = "Rage",minLv = 91,ex = 399559,base1 = 100,base2 = 120,dista = 1,bonus = 2.9,type = "normal",target = "no",cd = 45},
["!cd"] = { pokenome= "Kabutops" , nmoves= 10, spellm1 = "Scratch" ,exm1=634091,spellm2="Rock Throw",exm2 = 7655931,spellm3= "Mud Shot",exm3=455551,spellm4 = "Bubbles",exm4=298555,spellm5 = "Slash",exm5=4900882,spellm6 = "Guillotine",exm6=252223,spellm7 = "Fury Cutter",exm7=238939,spellm8 = "Acient Power",exm8=200548,spellm9 = "Harden",exm9=738333,spellm10 = "Rage",exm10=399559},
},

["Aerodactyl"] = {
["m1"] = {  spell = "Roar",minLv = 1,ex = 9550008,base1 = 235,base2 = 245,dista = 8,bonus = 10,type = "psychic",target = "no",cd = 35},
["m2"] = {  spell = "Super Sonic", minLv = 1,ex = 9260905, base1 = 200, base2 = 201, dista = 8, bonus = 0.5,type = "grass",cd = 15},
["m3"] = {  spell = "Rock Throw",minLv = 1,ex = 7655931,base1 = 205,base2 = 210,dista = 5,bonus = 10,type = "rock",cd = 4},
["m4"] = {  spell = "Mud Shot",minLv = 1,ex = 455551,base1 = 235,base2 = 240,dista = 5,bonus = 4.9,type = "ground",cd = 30},
["m5"] = {  spell = "Bite",minLv = 1,ex = 964293,base1 = 200,base2 = 210,dista = 1,bonus = 11.5,type = "normal",cd = 15},
["m6"] = {  spell = "Headbutt",minLv = 1,ex = 4456803,base1 = 80,base2 = 85,dista = 1,bonus = 9.0,type = "normal",cd = 20},
["m7"] = {  spell = "Rock Slide",minLv = 1,ex = 7500069,base1 = 205,base2 = 206,dista = 4,bonus = 8,type = "rock",cd = 15},
["m8"] = {  spell = "Fire Fang",minLv = 1,ex = 200578,base1 = 220,base2 = 235,dista = 1,bonus = 7.5,type = "fire",cd = 15},
["m9"] = {  spell = "Acient Power",minLv = 92,ex = 500548,base1 = 425,target = "no",base2 = 575,dista = 100,bonus = 25.5,type = "rock",cd = 45},
["m10"]=  { spell = "Hyper Beam",minLv = 80,ex = 4561005,base1 = 485,target = "no",base2 = 500,bonus = 35,type = "normal",cd = 60},
["m11"] = { spell = "Wing Attack",minLv = 1,ex = 900427,base1 = 150,base2 = 200,dista = 10,bonus = 18,type = "flying",target = "no",cd = 29},
["m12"] = { spell = "Falling Rocks",minLv = 75,ex = 7890399,base1 = 300,base2 = 301,dista = 5,target = "no",bonus = 25,type = "rock",cd = 69},
["!cd"] = { pokenome= "Aerodactyl" , nmoves= 12, spellm1 = "Roar" ,exm1=9550008,spellm2="Super Sonic",exm2 = 9260905,spellm3= "Rock Throw",exm3=7655931,spellm4 = "Mud Shot",exm4=455551,spellm5 = "Bite",exm5=964293,spellm6 = "Headbutt",exm6=4456803,spellm7 = "Rock Slide",exm7=7500069,spellm8 = "Fire Fang",exm8=200578,spellm9 = "Acient Power",exm9=500548,spellm10 = "Hyper Beam",exm10=4561005,spellm11 = "Wing Attack",exm11=900427,spellm12 = "Falling Rocks",exm12=7890399},
},



}


local kpdo = {
["Ditto"] = {
["m1"] = {spell = "Lick", minLv = 1,ex = 3404556, base1 = 200, base2 = 201, dista = 1, bonus = 2,type = "normal",cd = 15},
["m2"] = {spell = "Shadow Punch", minLv = 3406856,ex = 1835499, base1 = 270, base2 = 291, dista = 1, bonus = 10,type = "ghost",cd = 40},
["m3"] = {spell = "Dark Pulse",minLv = 1,ex = 6980403,base1 = 275,base2 = 285,dista = 6,bonus = 2,type = "ghost",cd = 15},
["m4"] = {spell = "Invisible", minLv = 1,ex = 9585001, base1 = 200, base2 = 201, dista = 100,target = "no", bonus = 2,type = "normal",cd = 8},
["m5"] = {spell = "Night Shade",minLv = 1,ex = 8967008,base1 = 335,base2 = 345,dista = 100,bonus = 20,type = "ghost",target = "no",cd = 35},
["m6"] = {spell = "Shadow Storm",minLv = 86,ex = 9978008,base1 = 425,base2 = 575,target = "no",dista = 100,bonus = 25,type = "ghost",cd = 75},
["m7"] = {spell = "Nightmare",minLv = 1,ex = 6708359,base1 = 335,base2 = 345,bonus = 15,dista = 6,type = "ghost",cd = 45},
["m8"] = {spell = "Hypnosis", minLv = 1,ex = 8705669, base1 = 200, base2 = 301, dista = 6, bonus = 1.0,type = "psychic",cd = 50},
["m9"] = {spell = "Ddsds",minLv = 85,ex = 8595597,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "ghost",target = "no",cd = 50},
["m10"] = {spell = "xxxx",minLv = 85,ex = 6480956,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "ghost",target = "no",cd = 50},
["m11"] = {spell = "Dgsfsget",minLv = 85,ex = 9180078,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "ghost",target = "no",cd = 50},
["m12"] = {spell = "Dadsdset",minLv = 85,ex = 9800899,base1 = 65,base2 = 75,dista = 5,bonus = 5,type = "ghost",target = "no",cd = 50},
["!cd"] = { pokenome= "Gengar" , nmoves= 9 , spellm1 = "Lick" ,exm1=1831998,spellm2="Shadow Punch",exm2 = 1835499,spellm3= "Dark Pulse",exm3=654993,spellm4= "Invisible",exm4=188537,spellm5= "Night Shade",exm5=646021,spellm6= "Shadow Storm",exm6=656415,spellm7= "Nightmare",exm7=989775,spellm8= "Hypnosis",exm8=9946855,spellm9= "Dark Target",exm9=6386899},

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


pokemon = cp[getCreatureName(cid)]["!cd"]




local moveatack = math.random(1,pokemon.nmoves)

local fala = "m"..moveatack..""
magia = cp[getCreatureName(cid)][fala]

if getPlayerStorageValue(cid, 4555) == 1 then
local npc = getPlayerStorageValue(cid, 4655)
local nomedopoke = pokemon.pokenome
local nomedamagia = magia
doCreatureSay(npc,  ""..nomedopoke.." ,  "..magia.spell..".", 1)
end

if (hasCondition(cid, CONDITION_HASTE)) or getPlayerStorageValue(cid, 3) >= 1 then
if math.random(1,100) <= 33 then
	doSendAnimatedText(getThingPos(cid), "MISS", 215)
return true
	end	

end
	
if getPlayerStorageValue(cid, 5) >= 1 then
		
if math.random(1,100) <= 33 then
		
doSendAnimatedText(getThingPos(cid), "SELF HIT", 180)
			
if isPlayer(getCreatureTarget(cid)) then
			
huah = getPlayerLevel(getCreatureTarget(cid))
			
else
			
huah = getPlayerLevel(getCreatureMaster(getCreatureTarget(cid)))			
end
		
local levels = huah
		
doTargetCombatHealth(getCreatureTarget(cid), cid, COMBAT_PHYSICALDAMAGE, -(math.random((levels*3),(levels*5))), -((math.random((levels*3),(levels*5))+10)), 3)

return true
end	
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
	local num1 = (magia.base1)
	local num2 = (magia.base2)
	local num3 = (magia.bonus)


local leveldoplayer = pokes[getCreatureName(cid)].level
local lvpokemon = leveldoplayer
        
        
	if getPlayerStorageValue(cid, 254) >= 1 then
	num3 = num3 * 1.8
	setPlayerStorageValue(cid, 254, 0)
	end
	setPlayerStorageValue(cid, 1000, ((num1)+(lvpokemon*(num3))))
	if magia.spell == "Dynamic Punch" then
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), dynpun1, 0, 0, 112)
		addEvent(doAreaCombatHealth, 105, (cid), element, getThingPos(getCreatureTarget(cid)), dynpun1, 0, 0, 112)
		addEvent(doAreaCombatHealth, 250, (cid), element, getThingPos(getCreatureTarget(cid)), dynpun2, 0, 0, 113)
		addEvent(doAreaCombatHealth, 400, (cid), element, getThingPos(getCreatureTarget(cid)), dynpun3, 0, 0, 113)
		addEvent(doAreaCombatHealth, 555, (cid), element, getThingPos(getCreatureTarget(cid)), dynpun4, 0, 0, 112)
		addEvent(doAreaCombatHealth, 700, (cid), element, getThingPos(getCreatureTarget(cid)), dynpun5, 0, 0, 113)
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		
elseif magia.spell == "Quick Attack" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 111)
		return 0

elseif magia.spell == "Slam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0
elseif magia.spell == "Body Slam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0
elseif magia.spell == "Rapid Hit" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
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
elseif magia.spell == "Bite" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
		return 0
elseif magia.spell == "Slash" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 160)
		return 0
elseif magia.spell == "Splash" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendMagicEffect(getThingPos((cid)), 53)
		return 0
elseif magia.spell == "Doubleslap" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		local function slap(params)
		if isMonster(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		end
		end
		addEvent(slap, 0, {cid = cid})
		addEvent(slap, 600, {cid = cid})
		return 0
elseif magia.spell == "Mega Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		return 0

elseif magia.spell == "Shadow Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 18)
doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)
		return 0
elseif magia.spell == "Scratch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 142)
	return 0
	elseif magia.spell == "Iron Tail" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 160)
	return 0
	elseif magia.spell == "Confusion" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos((cid)), confusionx, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
  local d = getCreaturesInRange(getThingPos((cid)), 2, 2, 1, 0)

                        for _,pid in pairs(d) do
                                Confunso(pid)
                        end

	return 0



elseif magia.spell == "Psy Target" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
setPlayerStorageValue(cid, 985, ((num1)+(lvpokemon*(num3))))
setPlayerStorageValue(cid, 986, ((num2)+(lvpokemon*(num3))))
movesx((cid))
		
return 0
elseif magia.spell == "Dark Target" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
setPlayerStorageValue(cid, 985, ((num1)+(lvpokemon*(num3))))
setPlayerStorageValue(cid, 986, ((num2)+(lvpokemon*(num3))))
ghostmew((cid))
		
return 0
elseif magia.spell == "Psy beam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		if getCreatureLookDir((cid)) == 0 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), bmn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 108)
		elseif getCreatureLookDir((cid)) == 2 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), bms, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 109)
		elseif getCreatureLookDir((cid)) == 1 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), bme, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 107)
		elseif getCreatureLookDir((cid)) == 3 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), bmw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 106)
		end

		return 0
elseif magia.spell == "Aurora Beam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		if getCreatureLookDir((cid)) == 0 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), bmn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 108)
		elseif getCreatureLookDir((cid)) == 2 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), bms, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 109)
		elseif getCreatureLookDir((cid)) == 1 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), bme, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 107)
		elseif getCreatureLookDir((cid)) == 3 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), bmw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 106)
		end

		return 0

elseif magia.spell == "Psy Wave" then
		if getCreatureLookDir((cid)) == 0 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), psywave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		elseif getCreatureLookDir((cid)) == 2 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), psywave2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		elseif getCreatureLookDir((cid)) == 1 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), psywave3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		elseif getCreatureLookDir((cid)) == 3 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), psywave4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 133)
		end
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		return 0
	elseif magia.spell == "Psychic" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos((cid)), psychic, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 134)
	return 0
elseif magia.spell == "Pin Missile" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 13)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0
elseif magia.spell == "Night Shade" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos((cid)), psychic, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 38)
	return 0
	elseif magia.spell == "Absorb" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		local life = getCreatureHealth(getCreatureTarget(cid))
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 14)
		local newlife = life - getCreatureHealth(getCreatureTarget(cid))
		doSendMagicEffect(getThingPos((cid)), 14)
		doCreatureAddHealth((cid), newlife)
		doSendAnimatedText(getThingPos((cid)), "+"..newlife.."", 35)
	return 0
	elseif magia.spell == "Super Vines" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 213)

	return 0
	elseif magia.spell == "Mud Shot" then
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
		addEvent(ver, 4500, {mudalvo = mudalvo})
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 1)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 34)
	return 0

	elseif magia.spell == "Mud Bomb" then
doPlayerSay(cid, getCreatureName((cid)).." , "..magia.spell..".", 1)
doCreatureSay((cid),  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		exhaustion.set(cid, magia.ex, magia.cd)
		setPlayerStorageValue(getCreatureTarget(cid), 3, 1)
		local mudalvo = getCreatureTarget(cid)
	local function ver(params)
	if isCreature(params.mudalvo) then
	if getPlayerStorageValue(params.mudalvo, 3) >= 1 then
	setPlayerStorageValue(params.mudalvo, 3, -1)
	end
	end
	end
		addEvent(ver, 4500, {mudalvo = mudalvo})
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 1)
doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 34)
	return 0	
elseif magia.spell == "Bubbles" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),2)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 2)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
			end
			end
			local function damage2(params)
			if isMonster(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage2, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		return 0
elseif magia.spell == "Ice Shards" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),28)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 28)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 41)
			end
			end
			local function damage2(params)
			if isMonster(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 52)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 52)
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
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),28)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 28)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 43)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 43)
			end
			end
	
		addEvent(damage, 100, {cid = cid})
	
		addEvent(throw, 0, {cid = cid})
		
		return 0
elseif magia.spell == "Aqua tail" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 2)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 2)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			end
			end
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
	return 0

elseif magia.spell == "Dream Eather" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 18)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 18)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
if getPlayerStorageValue(getCreatureTarget(params.cid), 8) >= 1 then
		local life = getCreatureHealth(getCreatureTarget(cid))
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 138)
		local newlife = life - getCreatureHealth(getCreatureTarget(cid))
		doSendMagicEffect(getThingPos((cid)), 14)
		doCreatureAddHealth((cid), newlife)
		doSendAnimatedText(getThingPos((cid)), "+"..newlife.."", 35)
end
			elseif isPlayer(getCreatureTarget(params.cid)) then
if getPlayerStorageValue(getCreatureTarget(params.cid), 8) >= 1 then
		local life = getCreatureHealth(getCreatureTarget(cid))
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 138)
		local newlife = life - getCreatureHealth(getCreatureTarget(cid))
		doSendMagicEffect(getThingPos((cid)), 14)
		doCreatureAddHealth((cid), newlife)
		doSendAnimatedText(getThingPos((cid)), "+"..newlife.."", 35)
end
			end
			end
		addEvent(throw, 0, {cid = cid})
		addEvent(damage, 0, {cid = cid})
	return 0
elseif magia.spell == "Nightmare" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 18)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 18)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
if getPlayerStorageValue(getCreatureTarget(params.cid), 8) >= 1 then

		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 138)


end
			elseif isPlayer(getCreatureTarget(params.cid)) then
if getPlayerStorageValue(getCreatureTarget(params.cid), 8) >= 1 then

		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 138)


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
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 23)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 137)
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
		local pos = getThingPos((cid))
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos((cid))
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 11)
		doAreaCombatHealth((cid), element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 44)
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
		local pos = getThingPos((cid))
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos((cid))
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 28)
		doAreaCombatHealth((cid), element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 52)
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
		local pos = getThingPos((cid))
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos((cid))
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 2)
		doAreaCombatHealth((cid), element, pos, pu, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end


	return 0
elseif magia.spell == "Hydro Pump" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		
	
		
	
	

					doAreaCombatHealth((cid), element, getThingPos((cid)), pump, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		
	local function fall2(params)
		
		
		
	
	

		
					doAreaCombatHealth((cid), element, getThingPos((cid)), pump2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 53)
		end
		
		
	
	



addEvent(fall2, 200, cid)



	return 0

elseif magia.spell == "Mega Horn" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos((cid))
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos((cid))
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 25)
		doAreaCombatHealth((cid), element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 29)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end

	return 0

elseif magia.spell == "Shadow Storm" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos((cid))
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos((cid))
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 18)
		doAreaCombatHealth((cid), element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end

	return 0
elseif magia.spell == "Magma Meteor" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		local function fall(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		local pos = getThingPos((cid))
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		local frompos = getThingPos((cid))
		frompos.x = pos.x - 7
		frompos.y = pos.y - 6
		doSendDistanceShoot(frompos, pos, 3)
		doAreaCombatHealth((cid), element, pos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
		end
		end
		end
		
for rocks = 1, 72 do
addEvent(fall, rocks*35, {cid = cid})
end

	return 0
elseif magia.spell == "Reflect" then

doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendMagicEffect(getThingPos((cid)), 135)
		setPlayerStorageValue((cid), 34, 1)
	return 0
elseif magia.spell == "Water Gun" then
	
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)		
		if getCreatureLookDir((cid)) == 0 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 74)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 75)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3n,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 76)
		elseif getCreatureLookDir((cid)) == 2 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 77)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 75)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3s,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 78)
		elseif getCreatureLookDir((cid)) == 1 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 69)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 70)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3e,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 71)
		elseif getCreatureLookDir((cid)) == 3 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 72)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 70)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3w,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 73)
		end

		return 0
	elseif magia.spell == "Water Spout" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendDistanceShoot(getThingPos((cid)), {x=getThingPos((cid)).x, y=getThingPos((cid)).y-5, z=getThingPos((cid)).z}, 2)
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
		posit = getThingPos((cid))
		local function gust(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, null, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(params.cid, element, params.ar, whirl3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 35)

		else
		end
		end
		local posicao = getThingPos((cid))
		if getCreatureLookDir((cid)) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 60, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir((cid)) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 62, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir((cid)) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 61, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 61, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 61, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 61, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 61, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 61, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir((cid)) == 3 then
		addEvent(gust, 0, {cid = cid, eee = 63, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 63, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 63, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 63, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 63, ar = {x=posicao.x-5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 63, ar = {x=posicao.x-6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x-5, y=posicao.y, z=posicao.z}})
		end
		return 0
elseif magia.spell == "Hydro Cannon" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		posit = getThingPos((cid))
		local function gust(params)
		if isCreature(params.cid) then
		doAreaCombatHealth(params.cid, element, params.ar, sand1, 0, 0, params.eee)
		doAreaCombatHealth(params.cid, element, params.ar, whirl3,  -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
		else
		end
		end
		local posicao = getThingPos((cid))
		if getCreatureLookDir((cid)) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 64, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir((cid)) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 66, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir((cid)) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 65, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 65, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 65, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 65, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 65, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 65, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir((cid)) == 3 then
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
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
		end
		end
		end
		addEvent(damage, 200, {cid = cid})
		return 0

elseif magia.spell == "Fireball" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 3)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 3)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), waba, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), waba, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0
elseif magia.spell == "Water ball" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 2)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 2)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), waba, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), waba, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 68)
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0


	elseif magia.spell == "Ember" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 3)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 15)
		return 0

elseif magia.spell == "Rollout" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		if getCreatureName((cid)) == "Golem" then

		doSetCreatureOutfit((cid), golem, 8300)
		
		elseif getCreatureName((cid)) == "Electrode" then
		doSetCreatureOutfit((cid), electrode, 8300)
	
	elseif getCreatureName((cid)) == "Voltorb" then
		doSetCreatureOutfit((cid), voltorb, 8300)

		elseif getCreatureName((cid)) == "Sandshrew" then
		doSetCreatureOutfit((cid), sandshrew, 8300)

		elseif getCreatureName((cid)) == "Sandslash" then
		doSetCreatureOutfit((cid), sandslash, 8300)

		end
		setPlayerStorageValue((cid), 4, 1)
			local function roll(params)
			if isCreature(params.cid) then
			if isCreature(params.cid) then
			if getCreatureCondition(params.cid, CONDITION_OUTFIT) == true then
			doAreaCombatHealth((cid), element, getThingPos((cid)), rollout, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 255)
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
			doChangeSpeed(params.cid, -145)
			if getPlayerStorageValue(params.cid, 4) >= 1 then
			setPlayerStorageValue(params.cid, 4, 0)
			end
			end
			end
			end
		addEvent(stoproll, 8300, {cid = cid})
		return 0

elseif magia.spell == "Hyper Fang" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 159)
		return 0
	elseif magia.spell == "Horn Attack" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
return 0
		elseif magia.spell == "Rock Throw" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 11)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	return 0

elseif magia.spell == "Psy Pulse" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
			local function throw(params)
			if isCreature(getCreatureTarget(params.cid)) then
if isCreature(params.cid) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),24)
end
			end
			end
			local function damage(params)
				if isCreature(getCreatureTarget(params.cid)) then
if isCreature(params.cid) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
	end
end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		return 0

elseif magia.spell == "Dark Pulse" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),18)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 18)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)

			end
			end
addEvent(throw, 0, {cid = cid})
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		addEvent(damage, 600, {cid = cid})
		
		return 0



elseif magia.spell == "Restore" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendMagicEffect(getThingPos((cid)), 132)
local summon = (cid)
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth((cid), curar)
		doSendAnimatedText(getThingPos((cid)), "+"..curar.."", 35)
		return 0

elseif magia.spell == "Rest" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendMagicEffect(getThingPos((cid)), 32)
local summon = (cid)
local lifequeta = getCreatureHealth(summon)
local lifemax =   getCreatureMaxHealth(summon)

curar = lifemax-lifequeta 
		doCreatureAddHealth((cid), curar)
local gordao = {lookType = 258}
doSetCreatureOutfit(summon, gordao, 5000)
		rest(summon)
		return 0

elseif magia.spell == "Healer" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


 local d = getCreaturesInRange(getThingPos((cid)), 2, 2, 1, 0)
                        for _,pid in pairs(d) do
if isMonster(pid) then
                 doCreatureAddHealth(getCreatureMaster(pid), ((num2)+((lvpokemon)*(num3))))
		doSendAnimatedText(getThingPos(pid), "+"..((num2)+((lvpokemon)*(num3))).."", 35)
end
                        end
doAreaCombatHealth((cid), element, getThingPos((cid)), sleeparea, 0, 0, 12)
		return 0

elseif magia.spell == "Earth Quake" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		





local function go14(params)
		if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)



else
return true
end
end

local function go13(params)
		if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go14, 500, {cid = cid})


else
return true
end
end
local function go12(params)
		if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go13, 500, {cid = cid})


else
return true
end
end

local function go11(params)
	if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go12, 500, {cid = cid})


else
return true
end
end

local function go10(params)
	if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go11, 500, {cid = cid})


else
return true
end
end

local function go9(params)
	if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go10, 500, {cid = cid})


else
return true
end
end
local function go8(params)
	if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go9, 500, {cid = cid})


else
return true
end
end

local function go7(params)
	if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go8, 500, {cid = cid})


else
return true
end
end


local function go6(params)
	if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go7, 500, {cid = cid})


else
return true
end
end

local function go5(params)
			if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go6, 500, {cid = cid})


else
return true
end
end
local function go4(params)
		if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go5, 500, {cid = cid})


else
return true
end
end
local function go3(params)
		if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go4, 500, {cid = cid})


else
return true
end
end

local function go2(params)
		if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go3, 500, {cid = cid})


else
return true
end
end

local function go(params)
		if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go2, 500, {cid = cid})


else
return true
end
end


doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)

addEvent(go, 500, {cid = cid})


		
		return 0

elseif magia.spell == "Stunning Confusion" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		





local function go14(params)
		if isCreature(params.cid) then

doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)



else
return true
end
end

local function go13(params)
		if isCreature(params.cid) then

doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go14, 500,  {cid = cid})

else
return true
end
end
local function go12(params)
		if isCreature(params.cid) then

doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go13, 500,  {cid = cid})

else
return true
end
end

local function go11(params)
		if isCreature(params.cid) then

doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go12, 500,  {cid = cid})

else
return true
end
end

local function go10(params)
		if isCreature(params.cid) then

doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)


addEvent(go11, 500,  {cid = cid})
else
return true
end
end

local function go9(params)
		if isCreature(params.cid) then

doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go10, 500,  {cid = cid})

else
return true
end
end
local function go8(params)
	if isCreature(params.cid) then

doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go9, 500,  {cid = cid})

else
return true
end
end

local function go7(params)
		if isCreature(params.cid) then

doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go8, 500,  {cid = cid})

else
return true
end
end


local function go6(params)
		if isCreature(params.cid) then

doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go7, 500,  {cid = cid})

else
return true
end
end

local function go5(params)
		if isCreature(params.cid) then

doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go6, 500,  {cid = cid})

else
return true
end
end
local function go4(params)
		if isCreature(params.cid) then

doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go5, 500,  {cid = cid})

else
return true
end
end
local function go3(params)
	if isCreature(params.cid) then

doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go4, 500, {cid = cid})


else
return true
end
end

local function go2(params)
		if isCreature(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 139)

addEvent(go3, 500, {cid = cid})


else
return true
end
end

local function go(params)
		if isMonster(params.cid) then

doAreaCombatHealth((params.cid), element, getThingPos((params.cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 139)

addEvent(go2, 5000, {cid = cid})


else
return true
end
end


doAreaCombatHealth((cid), element, getThingPos((cid)), quake, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 136)

addEvent(go, 500, {cid = cid})


		
		return 0

elseif magia.spell == "Calm Mind" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendMagicEffect(getThingPos((cid)), 37)
		setPlayerStorageValue((cid), 254, 1)
		local function quiet(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		if getPlayerStorageValue((cid), 254) >= 1 then
		doSendMagicEffect(getThingPos(params.cid), 220)
		end
		end
		end
		end
		local function desc(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		if getPlayerStorageValue((cid), 254) >= 1 then
		setPlayerStorageValue((cid), 254, 0)
		end
		end
		end
		end
		for calm = 1, 12 do
		addEvent(quiet, calm*500, {cid = cid})

		end

		addEvent(desc, 12*500, {cid = cid})
	return 0

elseif magia.spell == "Acient Fury" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
local xsx = getCreatureName((cid))
if xsx == "Elder Charizard" then
		doSetCreatureOutfit((cid), elder, 8300)
elseif xsx == "Shiny Blastoise" then
	doSetCreatureOutfit((cid), blastoise, 8300)
end
	setPlayerStorageValue((cid), 254, 1)
		
		local function desc(params)
		if isCreature(params.cid) then
		if isCreature(params.cid) then
		if getPlayerStorageValue((cid), 254) >= 1 then
		setPlayerStorageValue((cid), 254, 0)
		end
		end
		end
		end

			local function roll(params)
			if isCreature(params.cid) then
			if isCreature(params.cid) then
doSendMagicEffect(getThingPos((cid)), 29)
if  isMonster(getCreatureTarget(cid)) or isPlayer(getCreatureTarget(cid)) then
	if getDistanceBetween(getThingPos((cid)), getThingPos(getCreatureTarget(cid))) == 1 then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			end
end
end
			
			end
			end
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = cid})
		end
		

		addEvent(desc, 10*800, {cid = cid})
	return 0

elseif magia.spell == "Fury" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendMagicEffect(getThingPos((cid)), 28)

		setPlayerStorageValue((cid), 4, 1)
	
	
			local function roll(params)
			if isCreature(params.cid) then
			if isCreature(params.cid) then
				doSendMagicEffect(getThingPos((cid)), 28)
if  isMonster(getCreatureTarget(cid)) or isPlayer(getCreatureTarget(cid)) then
	if getDistanceBetween(getThingPos((cid)), getThingPos(getCreatureTarget(cid))) == magia.dista then
	doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
			end
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
		for r = 1, 10 do
		addEvent(roll, 800*r, {cid = cid})

		end
addEvent(chard, 6000, {cid = cid})


		return 0
	elseif magia.spell == "Headbutt" then

doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	return 0
	elseif magia.spell == "Razor Leaf" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 8)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 8)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 79)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 79)
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
	return 0

elseif magia.spell == "Shockwave" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		posit = getThingPos((cid))
		local function sandattack(params)
		if isMonster(params.cid) then
		doAreaCombatHealth(params.cid, null, params.ar, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.ef)
		doAreaCombatHealth(params.cid, element, params.ar, params.wave, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		else
		end
		end
		local posicao = getThingPos((cid))
		if getCreatureLookDir((cid)) == 0 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-1, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-2, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-3, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-4, z=posicao.z}, ef = 126, wave = swaven})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+1, y=posicao.y-5, z=posicao.z}, ef = 126, wave = swaven})
		elseif getCreatureLookDir((cid)) == 2 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+2, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+3, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+4, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+5, z=posicao.z}, ef = 125, wave = swaves})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+1, y=posicao.y+6, z=posicao.z}, ef = 125, wave = swaves})
		elseif getCreatureLookDir((cid)) == 1 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+2, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+3, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+4, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 1200, {cid = cid, ar = {x=posicao.x+5, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		addEvent(sandattack, 1600, {cid = cid, ar = {x=posicao.x+6, y=posicao.y+1, z=posicao.z}, ef = 124, wave = swavee})
		elseif getCreatureLookDir((cid)) == 3 then
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
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 25)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 25)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
	return 0

elseif magia.spell == "Fury Attack" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 15)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 15)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
	return 0

elseif magia.spell == "Rock Tomb" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		if getCreatureLookDir((cid)) == 0 then
		rock1 = {x=getThingPos((cid)).x+1, y=getThingPos((cid)).y-1, z=getThingPos((cid)).z}
		rock2 = {x=getThingPos((cid)).x+0, y=getThingPos((cid)).y-1, z=getThingPos((cid)).z}
		rock3 = {x=getThingPos((cid)).x-1, y=getThingPos((cid)).y-1, z=getThingPos((cid)).z}
		doAreaCombatHealth((cid), element, getThingPos((cid)), tombn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir((cid)) == 2 then
		rock1 = {x=getThingPos((cid)).x+1, y=getThingPos((cid)).y+1, z=getThingPos((cid)).z}
		rock2 = {x=getThingPos((cid)).x+0, y=getThingPos((cid)).y+1, z=getThingPos((cid)).z}
		rock3 = {x=getThingPos((cid)).x-1, y=getThingPos((cid)).y+1, z=getThingPos((cid)).z}
		doAreaCombatHealth((cid), element, getThingPos((cid)), tombs, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir((cid)) == 3 then
		rock1 = {x=getThingPos((cid)).x-1, y=getThingPos((cid)).y+1, z=getThingPos((cid)).z}
		rock2 = {x=getThingPos((cid)).x-1, y=getThingPos((cid)).y+0, z=getThingPos((cid)).z}
		rock3 = {x=getThingPos((cid)).x-1, y=getThingPos((cid)).y-1, z=getThingPos((cid)).z}
		doAreaCombatHealth((cid), element, getThingPos((cid)), tombw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		elseif getCreatureLookDir((cid)) == 1 then
		rock1 = {x=getThingPos((cid)).x+1, y=getThingPos((cid)).y+1, z=getThingPos((cid)).z}
		rock2 = {x=getThingPos((cid)).x+1, y=getThingPos((cid)).y+0, z=getThingPos((cid)).z}
		rock3 = {x=getThingPos((cid)).x+1, y=getThingPos((cid)).y-1, z=getThingPos((cid)).z}
		doAreaCombatHealth((cid), element, getThingPos((cid)), tombe, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 118)
		end
		doSendDistanceShoot(getThingPos((cid)), rock1, 11)
		doSendDistanceShoot(getThingPos((cid)), rock2, 11)
		doSendDistanceShoot(getThingPos((cid)), rock3, 11)
		return 0
elseif magia.spell == "Psycho Shift" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		local pos = getThingPos(getCreatureTarget(cid))
		local pos2 = getThingPos(getCreatureTarget(cid))
		pos.x = pos.x + math.random(-4,4)
		pos.y = pos.y + math.random(-4,4)
		if hasSqm(pos) and isSightClear(getThingPos((cid)), pos, false) then
		if getTileThingByPos(pos) and getTileThingByPos(pos).itemid >= 1 and not isInArray({919, 460, 4820, 4821, 4822, 4823, 4824, 4825}, getTileThingByPos(pos).itemid) and isWalkable(pos) then
		pos = getClosestFreeTile(getCreatureTarget(cid), pos)
		doSendDistanceShoot(pos2, pos, 39)
		doTeleportThing(getCreatureTarget(cid), pos, false)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 134)
		doSendMagicEffect(pos2, 12)
		else
		local newpos = getClosestFreeTile(getCreatureTarget(cid), pos)
		doSendDistanceShoot(pos2, newpos, 39)
		doTeleportThing(getCreatureTarget(cid), newpos, false)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 134)
		doSendMagicEffect(pos2, 12)
		end
		else
		doSendDistanceShoot(pos2, getThingPos(getCreatureTarget(cid)), 39)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 134)
		doSendMagicEffect(pos2, 12)
		end	

		return 0

	elseif magia.spell == "Sand Attack" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		posit = getThingPos((cid))
		local function sandattack(params)
		if isMonster(params.cid) then
		doAreaCombatHealth(params.cid, element, params.ar, sand1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.ef)
		else
		end
		end
		local posicao = getThingPos((cid))
		if getCreatureLookDir((cid)) == 0 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, ef = 120})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, ef = 120})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, ef = 120})
		elseif getCreatureLookDir((cid)) == 2 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, ef = 122})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, ef = 122})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, ef = 122})
		elseif getCreatureLookDir((cid)) == 1 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, ef = 121})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, ef = 121})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, ef = 121})
		elseif getCreatureLookDir((cid)) == 3 then
		addEvent(sandattack, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, ef = 119})
		addEvent(sandattack, 400, {cid = cid, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, ef = 119})
		addEvent(sandattack, 800, {cid = cid, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, ef = 119})
		end
return 0

elseif magia.spell == "Flamethrower" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		if getCreatureLookDir((cid)) == 0 then
		local flamepos2 = getThingPos((cid))
		flamepos2.x = flamepos2.x+1
		flamepos2.y = flamepos2.y-1
		doSendMagicEffect(flamepos2, 55)--55
		doAreaCombatHealth((cid), element, getThingPos((cid)), flamen, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		elseif getCreatureLookDir((cid)) == 1 then
		local flamepos1 = getThingPos((cid))
		flamepos1.x = flamepos1.x+3
		flamepos1.y = flamepos1.y+1
		doSendMagicEffect(flamepos1, 58)--58
		doAreaCombatHealth((cid), element, getThingPos((cid)), flamee, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		elseif getCreatureLookDir((cid)) == 2 then
		local flamepos = getThingPos((cid))
		flamepos.x = flamepos.x+1
		flamepos.y = flamepos.y+3
		doSendMagicEffect(flamepos, 56)--56
		doAreaCombatHealth((cid), element, getThingPos((cid)), flames, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		elseif getCreatureLookDir((cid)) == 3 then
		local flamepos = getThingPos((cid))
		flamepos.x = flamepos.x-1
		flamepos.y = flamepos.y+1
		doSendMagicEffect(flamepos, 57)--57
		doAreaCombatHealth((cid), element, getThingPos((cid)), flamew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		end
		return 0

elseif magia.spell == "Mind Blast" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		if math.random(1,3) == 1 then
		random = 17
		else
		if math.random(1,2) == 2 then
		random = 143
		else
		random = 44
		end
		end
local function go2(params)
		if isCreature(params.cid) then
doAreaCombatHealth((cid), element, getThingPos((cid)), psy2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 134)
end
end
	addEvent(go2, 600, {cid = cid})	
		if math.random(1,3) == 1 then
		random = 17
		else
		if math.random(1,2) == 2 then
		random = 143
		else
		random = 44
		end
		end
local function go(params)
		if isCreature(params.cid) then
		doAreaCombatHealth((cid), element, getThingPos((cid)), psy4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 137)
	end
end
		addEvent(go, 1000, {cid = cid})
		if math.random(1,3) == 1 then
		random = 17
		else
		if math.random(1,2) == 2 then
		random = 143
		else
		random = 44
		end
		end
local function go1(params)
		if isCreature(params.cid) then
doAreaCombatHealth((cid), element, getThingPos((cid)), psy2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 133)
end
end
addEvent(go1, 300, {cid = cid})
		
		return 0
	elseif magia.spell == "Super Sonic" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
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
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 32)

		doChangeSpeed(t, -( getCreatureSpeed(t)/3))
		doSendMagicEffect(getThingPos(t), 31)
		for i = 1, math.random(6,7) do
		addEvent(confd, 1000*i, {cid = cid, t = t})
		end
		addEvent(nonc, 7100, {cid - cid, t = t})
	return 0

elseif magia.spell == "Dizzy Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
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
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 32)

		doChangeSpeed(t, -( getCreatureSpeed(t)/3))
		doSendMagicEffect(getThingPos(t), 31)
		for i = 1, math.random(6,7) do
		addEvent(confd, 1000*i, {cid = cid, t = t})
		end
		addEvent(nonc, 7100, {cid - cid, t = t})
	return 0

elseif magia.spell == "Poison Sting" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 15)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 8)
		return 0
elseif magia.spell == "Vine Whip" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		if getCreatureLookDir((cid)) == 0 then
		area = vinen
		dano = whipn
		effect = 80
		elseif getCreatureLookDir((cid)) == 1 then
		area = vinee
		dano = whipe
		effect = 83
		elseif getCreatureLookDir((cid)) == 2 then
		area = vines
		dano = whips
		effect = 81
		elseif getCreatureLookDir((cid)) == 3 then
		area = vinew
		dano = whipw
		effect = 82
		end
		doAreaCombatHealth((cid), null, getThingPos((cid)), area, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), effect)
		doAreaCombatHealth((cid), element, getThingPos((cid)), dano, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 255)
	return 0

elseif magia.spell == "Raging Blast" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos((cid)), rageblast1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		local function damage(params)
		if isCreature(params.cid) then
		doAreaCombatHealth((cid), element, getThingPos((cid)), params.x, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 36)
		end
end

		addEvent(damage, 200, {cid = cid, x = rageblast2})
		addEvent(damage, 400, {cid = cid, x = rageblast3})
		addEvent(damage, 600, {cid = cid, x = rageblast4})
                

         
	return 0
elseif magia.spell == "Leech Seed" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 5)
		local alvo = getCreatureTarget(cid)
		local leecher = (cid)
		local function suck(params)
		if isCreature(params.cid) then
		if isCreature(params.alvo) then
		if (cid) == leecher then
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
		doAreaCombatHealth((cid), element, getThingPos((cid)), rageblast1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 79)
		local function damage(params)
		if isCreature(params.cid) then
		doAreaCombatHealth((cid), element, getThingPos((cid)), params.x, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 79)
		end
end

		addEvent(damage, 200, {cid = cid, x = rageblast2})
		addEvent(damage, 400, {cid = cid, x = rageblast3})
		addEvent(damage, 600, {cid = cid, x = rageblast4})
	return 0

elseif magia.spell == "Earthshock" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
	doAreaCombatHealth((cid), GROUNDDAMAGE, getThingPos((cid)), eshock, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
	local sps = getThingPos((cid))
	sps.x = sps.x+1
	sps.y = sps.y+1
	doSendMagicEffect(sps, 127)
	return 0
	
elseif magia.spell == "Thundershock" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 40)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
		return 0
elseif magia.spell == "Solar Beam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
	
		if getCreatureLookDir((cid)) == 0 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 94)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 95)
		elseif getCreatureLookDir((cid)) == 2 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 91)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 93)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 92)
		elseif getCreatureLookDir((cid)) == 1 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 86)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 87)
		elseif getCreatureLookDir((cid)) == 3 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 89)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 88)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 90)
		end
	
	return 0
elseif magia.spell == "Stun Spore" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

local d = getCreaturesInRange(getThingPos((cid)), 2, 2, 1, 0)
                        for _,pid in pairs(d) do

                                Paralize(pid)
                        end		
doAreaCombatHealth((cid), element, getThingPos((cid)), sleeparea, 0, 0, 85)
    	return 0

elseif magia.spell == "Whirlwind" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		posit = getThingPos((cid))
		local function gust(params)
		if isMonster(params.cid) then
		doAreaCombatHealth(params.cid, element, params.ar, params.br, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 42)
		else
		end
		end
		local posicao = getThingPos((cid))
		if getCreatureLookDir((cid)) == 0 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, br = whirl3})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, br = whirl5})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, br = whirl5})
		elseif getCreatureLookDir((cid)) == 2 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, br = whirl3})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, br = whirl5})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, br = whirl5})
		elseif getCreatureLookDir((cid)) == 1 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, br = whirl32})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, br = whirl52})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, br = whirl52})
		elseif getCreatureLookDir((cid)) == 3 then
		addEvent(gust, 0, {cid = cid, ar = {x=posicao.x-1, y=posicao.y, z=posicao.z}, br = sand1})
		addEvent(gust, 500, {cid = cid, ar = {x=posicao.x-2, y=posicao.y, z=posicao.z}, br = whirl32})
		addEvent(gust, 1000, {cid = cid, ar = {x=posicao.x-3, y=posicao.y, z=posicao.z}, br = whirl52})
		addEvent(gust, 1500, {cid = cid, ar = {x=posicao.x-4, y=posicao.y, z=posicao.z}, br = whirl52})
		end
	return 0

elseif magia.spell == "Sing" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

local d = getCreaturesInRange(getThingPos((cid)), 3, 3, 1, 0)
                        for _,pid in pairs(d) do
                                Sing(pid)
                        end		
doAreaCombatHealth(cid, element, getThingPos(cid), AREA_CIRCLE3X3, 0, 0, 22)
    	return 0

elseif magia.spell == "Stomp" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

local d = getCreaturesInRange(getThingPos((cid)), 2, 2, 1, 0)
                        for _,pid in pairs(d) do
                                Paralize(pid)
                        end		
doAreaCombatHealth((cid), element, getThingPos((cid)), sleeparea, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 118)
    	return 0
elseif magia.spell == "Sleep Powder" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
                        local d = getCreaturesInRange(getThingPos((cid)), 2, 2, 1, 0)
                        for _,pid in pairs(d) do
                                Sleep(pid)
                        end
doAreaCombatHealth((cid), element, getThingPos((cid)), sleeparea,0,0, 27)
	return 0

elseif magia.spell == "Hypnosis" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
                        local summons = getCreatureTarget(cid)
if isSummon(summons) then
                       
                                Hypnosis(summons)
end
                       
doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, 0, 0, 136)

                      
	return 0
elseif magia.spell == "Lick" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
                        local summons = getCreatureTarget(cid)
 if isSummon(summons) then                      
                                Lick(summons)
       end                
doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, 0, 0, 145)

                      
	return 0
elseif magia.spell == "Invisible" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
                        local summons = (cid)
doSendMagicEffect(getCreaturePosition(summons), 219)
local outfitx = {lookType = 0, lookHead = 0, lookBody = 0, lookLegs = 0, lookFeet = 0, lookTypeEx = 0, lookAddons = 0}
--doSetCreatureOutfit(summons, outfitx, 3000)
   doSetMonsterOutfit(summons, 'Tall Grass', 3000)                     
                              --  doAddCondition(summons , conditioninvi)
                       
                      
	return 0



elseif magia.spell == "Hypnosiss" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
local summons = getCreatureTarget(cid)
local mon = getCreatureName(summons)
local spd = getCreatureSpeed(summons)
local bspd = getCreatureBaseSpeed(summons)
p = getCreaturePosition(summons)


local function stopsleep(params)
if getCreaturePosition(summons) then
doChangeSpeed(summons, bspd)
setPlayerStorageValue(summons, 8, -1)
end

end

doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 24)
doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
addEvent(stopsleep, 5000)
setPlayerStorageValue(summons, 8, 1)

doChangeSpeed(summons, -spd)

for i = 1, 5 do
        if i == 1 then

if getCreaturePosition(summons) then
                doSendMagicEffect(p, 32)
end

        else

                addEvent(doSendMagicEffect, i * 1000,p, 32)
       end
end


                      
	return 0



elseif magia.spell == "Bug Bite" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		return 0

elseif magia.spell == "Crabhammer" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
		return 0

elseif magia.spell == "Guillotine" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
		local function guilo(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 156)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 156)
			end
			end
		addEvent(guilo, 300, {cid = cid})
		

		return 0
elseif magia.spell == "Horn Drill" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 159)
			end
			end
		local function damage2(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 25)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 146)
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage2, 600, {cid = cid})

	return 0

elseif magia.spell == "Leaf Storm" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
	
		
local function leaf1x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth((cid), element, getThingPos((cid)), leaf1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end
		
local function leaf2x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth((cid), element, getThingPos((cid)), leaf2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end
local function leaf3x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth((cid), element, getThingPos((cid)), leaf3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end

local function leaf4x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth((cid), element, getThingPos((cid)), leaf4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end
local function leaf5x(params)
		if isCreature(params.cid) then
				doAreaCombatHealth((cid), element, getThingPos((cid)), leaf5, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 79)
	end
end


	
	       addEvent(leaf1x, 100, {cid = cid})
               addEvent(leaf2x, 300, {cid = cid})
               addEvent(leaf3x, 600, {cid = cid})
               addEvent(leaf4x, 800, {cid = cid})
               addEvent(leaf5x, 900, {cid = cid})

	       addEvent(leaf1x, 1100, {cid = cid})
               addEvent(leaf2x, 1300, {cid = cid})
               addEvent(leaf3x, 1500, {cid = cid})
               addEvent(leaf4x, 1700, {cid = cid})
               addEvent(leaf5x, 1800, {cid = cid})
	return 0

elseif magia.spell == "Selfdestruct" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		local function death(params)
		if isCreature(params.cid) then
		doCreatureAddHealth(params.cid, -getCreatureHealth((cid)))
		end
		end
		addEvent(death, 250, {cid = cid})
		doAreaCombatHealth((cid), element, getThingPos((cid)), destruct1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
		addEvent(doAreaCombatHealth, 150, (cid), element, getThingPos((cid)), destruct2, -(((num1)+(lvpokemon*(num3)))*0.7), -(((num2)+(lvpokemon*(num3)))*0.8), 5)
		addEvent(doAreaCombatHealth, 250, (cid), element, getThingPos((cid)), destruct3, -(((num1)+(lvpokemon*(num3)))*0.4), -(((num2)+(lvpokemon*(num3)))*0.5), 5)
		setPlayerStorageValue((cid), 33, 1)
	return 0

elseif magia.spell == "Harden" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		local hardname = getCreatureName((cid))
		setPlayerStorageValue((cid), 4, 1)
		local oldpos = getThingPos((cid))
			local function efect(params)
			if isCreature(params.cid) then
			if getPlayerStorageValue(params.cid, 4) >= 1 then
			doSendMagicEffect(getThingPos(params.cid), 144)
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

		addEvent(efect, 100, {cid = cid, hardname = hardname})
		addEvent(efect, 1600, {cid = cid, hardname = hardname})
		addEvent(efect, 3100, {cid = cid, hardname = hardname})
		addEvent(efect, 4600, {cid = cid, hardname = hardname})
		addEvent(efect, 6100, {cid = cid, hardname = hardname})
		addEvent(efect, 7600, {cid = cid, hardname = hardname})
		addEvent(efect, 9100, {cid = cid, hardname = hardname})
		addEvent(efect, 10600, {cid = cid, hardname = hardname})
		addEvent(chard, 11000, {cid = cid})		
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
		if isCreature(getCreatureTarget(cid)) then
		if getCreatureTarget(params.cid) == params.boltalvo then
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 44)
		end
		end
		end
		end
		addEvent(bolt, 200, {cid = cid, boltalvo = boltalvo})
	return 0

elseif magia.spell == "Dragon Rush" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		

		
		

		doAreaCombatHealth((cid), element, getThingPos((cid)), psy1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 40)



		

local function go1(params)
if isMonster(params.cid) then
		doAreaCombatHealth((cid), element, getThingPos((cid)), psy1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
	end
end

		addEvent(go1, 500, {cid = cid})

		return 0

elseif magia.spell == "Flame Blast" then




doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		if math.random(1,3) == 1 then
		random = 17
		else
		if math.random(1,2) == 2 then
		random = 143
		else
		random = 44
		end
		end
local function go2(params)
		if isMonster(params.cid) then
doAreaCombatHealth((cid), element, getThingPos((cid)), combat_arr1, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 6)
end
end
	addEvent(go2, 600, {cid = cid})	
		if math.random(1,3) == 1 then
		random = 17
		else
		if math.random(1,2) == 2 then
		random = 143
		else
		random = 44
		end
		end
local function go(params)
		if isMonster(params.cid) then
		doAreaCombatHealth((cid), element, getThingPos((cid)), combat_arr2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
	end
end
		addEvent(go, 1000, {cid = cid})
		if math.random(1,3) == 1 then
		random = 17
		else
		if math.random(1,2) == 2 then
		random = 143
		else
		random = 44
		end
		end
local function go1(params)
		if isMonster(params.cid) then
doAreaCombatHealth((cid), element, getThingPos((cid)),combat_arr3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 15)
end
end
local function go3(params)
		if isMonster(params.cid) then
doAreaCombatHealth((cid), element, getThingPos((cid)),combat_arr4, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
end
end

	addEvent(go, 300, {cid = cid})
	addEvent(go1, 600, {cid = cid})
	addEvent(go2, 900, {cid = cid})
	addEvent(go3, 1200, {cid = cid})
		

return 0

elseif magia.spell == "Giga Impact" then



doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
	
local function go2(params)
		if isMonster(params.cid) then
doAreaCombatHealth((cid), element, getThingPos((cid)), combat_arr1g, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 127)
end
end
	
	
local function go(params)
		if isMonster(params.cid) then
		doAreaCombatHealth((cid), element, getThingPos((cid)), combat_arr2g, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 127)
	end
end
		
local function go1(params)
		if isMonster(params.cid) then
doAreaCombatHealth((cid), element, getThingPos((cid)),combat_arr3g, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 127)
end
end
local function go3(params)
		if isMonster(params.cid) then
doAreaCombatHealth((cid), element, getThingPos((cid)),combat_arr4g, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 127)
end
end

	addEvent(go, 000, {cid = cid})
	addEvent(go1, 700, {cid = cid})
	addEvent(go2, 1300, {cid = cid})
	addEvent(go3, 2000, {cid = cid})
		

return 0

elseif magia.spell == "Fire Sprint" then



doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
	


local function go(params)
		if isMonster(params.cid) then
		doAreaCombatHealth((cid), element, getThingPos((cid)), combat_arr2, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 5)
	end
end
		addEvent(go, 1000, {cid = cid})

local function go1(params)
		if isMonster(params.cid) then
doAreaCombatHealth((cid), element, getThingPos((cid)),combat_arr3, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 15)
end
end


	addEvent(go, 300, {cid = cid})
	addEvent(go1, 600, {cid = cid})
	
		

return 0

elseif magia.spell == "Hyper Beam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
	
		if getCreatureLookDir((cid)) == 0 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 152)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 158)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 156)

		elseif getCreatureLookDir((cid)) == 2 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 151)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 158)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 155)
		elseif getCreatureLookDir((cid)) == 1 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 149)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 157)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 153)
		elseif getCreatureLookDir((cid)) == 3 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 150)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 157)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 154)
		end
	
	return 0

elseif magia.spell == "Ice Beam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
	
		if getCreatureLookDir((cid)) == 0 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 99)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 105)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3n, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 103)
		elseif getCreatureLookDir((cid)) == 2 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 98)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 105)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3s, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 102)
		elseif getCreatureLookDir((cid)) == 1 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 96)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 104)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3e, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 100)
		elseif getCreatureLookDir((cid)) == 3 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg1w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 97)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg2w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 104)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wg3w, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 101)
		end
	
	return 0

elseif magia.spell == "Tri Flames" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
	
		if getCreatureLookDir((cid)) == 0 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), tri1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)

		elseif getCreatureLookDir((cid)) == 2 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), tri2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		elseif getCreatureLookDir((cid)) == 1 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), tri3, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		elseif getCreatureLookDir((cid)) == 3 then
		doAreaCombatHealth((cid), element, getThingPos((cid)), tri4, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 6)
		end
	
	return 0

elseif magia.spell == "Dragon Breath" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		posit = getThingPos((cid))
		local function gust(params)
		if isMonster(params.cid) then
		doAreaCombatHealth(params.cid, null, params.ar, sand1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), params.eee)
		doAreaCombatHealth(params.cid, element, params.ar, arr1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 40)

		else
		end
		end
		local posicao = getThingPos((cid))
		if getCreatureLookDir((cid)) == 0 then
		addEvent(gust, 0, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y-6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y-5, z=posicao.z}})
		elseif getCreatureLookDir((cid)) == 2 then
		addEvent(gust, 0, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+1, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+2, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+1, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+3, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+2, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+4, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+3, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+5, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+4, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 5, ar = {x=posicao.x, y=posicao.y+6, z=posicao.z}, arr = {x=posicao.x, y=posicao.y+5, z=posicao.z}})
		elseif getCreatureLookDir((cid)) == 1 then
		addEvent(gust, 0, {cid = cid, eee = 5, ar = {x=posicao.x+1, y=posicao.y, z=posicao.z}, arr = posicao})
		addEvent(gust, 300, {cid = cid, eee = 5, ar = {x=posicao.x+2, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+1, y=posicao.y, z=posicao.z}})
		addEvent(gust, 600, {cid = cid, eee = 5, ar = {x=posicao.x+3, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+2, y=posicao.y, z=posicao.z}})
		addEvent(gust, 900, {cid = cid, eee = 5, ar = {x=posicao.x+4, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+3, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1200, {cid = cid, eee = 5, ar = {x=posicao.x+5, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+4, y=posicao.y, z=posicao.z}})
		addEvent(gust, 1500, {cid = cid, eee = 5, ar = {x=posicao.x+6, y=posicao.y, z=posicao.z}, arr = {x=posicao.x+5, y=posicao.y, z=posicao.z}})
		elseif getCreatureLookDir((cid)) == 3 then
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
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)),24)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 24)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(damage, 600, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		addEvent(throw, 550, {cid = cid})
		return 0

elseif magia.spell == "Egg Bomb" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
			local function throw(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 3)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 3)
			end
			end
			local function damage(params)
			if isMonster(getCreatureTarget(params.cid)) then
			doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), egg, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
			elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(cid)), egg, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 5)
			end
			end
		addEvent(damage, 100, {cid = cid})
		addEvent(throw, 0, {cid = cid})
		return 0


	elseif magia.spell == "Acid" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 14)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 20)
			return 0
elseif magia.spell == "Poison Bomb" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		doSendDistanceShoot(getThingPos((cid)), getThingPos(getCreatureTarget(cid)), 14)
		doAreaCombatHealth((cid), element, getThingPos(getCreatureTarget(cid)), bomb, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
	return 0


elseif magia.spell == "Poison Gas" then

doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
local function gas(params)
	if isMonster(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos((cid)), confusionx, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 114)
	end
	end
addEvent(gas, 000, {cid = cid, cb = cb})
addEvent(gas, 500, {cid = cid, cb = cb})
addEvent(gas, 1000, {cid = cid, cb = cb})
addEvent(gas, 1500, {cid = cid, cb = cb})
addEvent(gas, 2200, {cid = cid, cb = cb})
addEvent(gas, 2700, {cid = cid, cb = cb})
addEvent(gas, 3200, {cid = cid, cb = cb})
addEvent(gas, 3900, {cid = cid, cb = cb})
addEvent(gas, 4400, {cid = cid, cb = cb})
addEvent(gas, 4900, {cid = cid, cb = cb})

	return 0
elseif magia.spell == "Psy Condition" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
local function psycon(params)
	if isMonster(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos((cid)), mew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 134)
	end
	end
local function psycon2(params)
	if isMonster(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos((cid)), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 136)
	end
	end
local function psycon3(params)
	if isMonster(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos((cid)), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 137)
	end
	end
addEvent(psycon, 000, {cid = cid, cb = cb})
addEvent(psycon2, 500, {cid = cid, cb = cb})
addEvent(psycon, 800, {cid = cid, cb = cb})
addEvent(psycon3, 1200, {cid = cid, cb = cb})
addEvent(psycon, 1600, {cid = cid, cb = cb})
addEvent(psycon2, 2000, {cid = cid, cb = cb})
addEvent(psycon, 2400, {cid = cid, cb = cb})
addEvent(psycon3, 2800, {cid = cid, cb = cb})
addEvent(psycon, 3200, {cid = cid, cb = cb})
addEvent(psycon2, 3500, {cid = cid, cb = cb})
addEvent(psycon, 4000, {cid = cid, cb = cb})
addEvent(psycon3,4400, {cid = cid, cb = cb})
addEvent(psycon, 4800, {cid = cid, cb = cb})
addEvent(psycon2,5200, {cid = cid, cb = cb})
addEvent(psycon, 5600, {cid = cid, cb = cb})
addEvent(psycon3,6000, {cid = cid, cb = cb})
addEvent(psycon, 6400, {cid = cid, cb = cb})
addEvent(psycon2, 6800, {cid = cid, cb = cb})
addEvent(psycon, 7200, {cid = cid, cb = cb})
addEvent(psycon3, 7500, {cid = cid, cb = cb})
addEvent(psycon, 8000, {cid = cid, cb = cb})

	return 0
elseif magia.spell == "Dark Condition" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
local function darkcon(params)
	if isMonster(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos((cid)), mew, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 140)
	end
	end
local function darkcon2(params)
	if isMonster(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos((cid)), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 139)
	end
	end
local function darkcon3(params)
	if isMonster(params.cid) then
	doAreaCombatHealth(params.cid, element, getThingPos((cid)), mew2, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 38)
	end
	end
addEvent(darkcon, 000, {cid = cid, cb = cb})
addEvent(darkcon2, 500, {cid = cid, cb = cb})
addEvent(darkcon, 800, {cid = cid, cb = cb})
addEvent(darkcon3, 1200, {cid = cid, cb = cb})
addEvent(darkcon, 1600, {cid = cid, cb = cb})
addEvent(darkcon2, 2000, {cid = cid, cb = cb})
addEvent(darkcon, 2400, {cid = cid, cb = cb})
addEvent(darkcon3, 2800, {cid = cid, cb = cb})
addEvent(darkcon, 3200, {cid = cid, cb = cb})
addEvent(darkcon2, 3500, {cid = cid, cb = cb})
addEvent(darkcon, 4000, {cid = cid, cb = cb})
addEvent(darkcon3,4400, {cid = cid, cb = cb})
addEvent(darkcon, 4800, {cid = cid, cb = cb})
addEvent(darkcon2,5200, {cid = cid, cb = cb})
addEvent(darkcon, 5600, {cid = cid, cb = cb})
addEvent(darkcon3,6000, {cid = cid, cb = cb})
addEvent(darkcon, 6400, {cid = cid, cb = cb})
addEvent(darkcon2, 6800, {cid = cid, cb = cb})
addEvent(darkcon, 7200, {cid = cid, cb = cb})
addEvent(darkcon3, 7500, {cid = cid, cb = cb})
addEvent(darkcon, 8000, {cid = cid, cb = cb})

	return 0



                elseif magia.spell == "Poison Powder" then
		doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
doAreaCombatHealth((cid), element, getThingPos((cid)), sleeparea, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 85)
                        local d = getCreaturesInRange(getThingPos((cid)), 2, 2, 1, 0)
                        for _,pid in pairs(d) do
                 
                                Poison(pid, 8, 10)
                        end
return 0

elseif magia.spell == "Wing Attack" then
		doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		if getCreatureLookDir((cid)) == 0 then
		doAreaCombatHealth((cid), COMBAT_PDAMAGE, getThingPos((cid)), wingn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wingdn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir((cid)) == 1 then
		doAreaCombatHealth((cid), COMBAT_PDAMAGE, getThingPos((cid)), winge, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wingde, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir((cid)) == 2 then
		doAreaCombatHealth((cid), COMBAT_PDAMAGE, getThingPos((cid)), wings, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wingds, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir((cid)) == 3 then
		doAreaCombatHealth((cid), COMBAT_PDAMAGE, getThingPos((cid)), wingw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wingdw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		end
		return 0

elseif magia.spell == "Fury Cutter" then
		doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		if getCreatureLookDir((cid)) == 0 then
		doAreaCombatHealth((cid), COMBAT_PDAMAGE, getThingPos((cid)), wingn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wingdn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir((cid)) == 1 then
		doAreaCombatHealth((cid), COMBAT_PDAMAGE, getThingPos((cid)), winge, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wingde, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir((cid)) == 2 then
		doAreaCombatHealth((cid), COMBAT_PDAMAGE, getThingPos((cid)), wings, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wingds, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir((cid)) == 3 then
		doAreaCombatHealth((cid), COMBAT_PDAMAGE, getThingPos((cid)), wingw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wingdw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		end

local function fury(params)
		if isMonster(cid) then
		if getCreatureLookDir((cid)) == 0 then
		doAreaCombatHealth((cid), COMBAT_PDAMAGE, getThingPos((cid)), wingn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 128)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wingdn, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir((cid)) == 1 then
		doAreaCombatHealth((cid), COMBAT_PDAMAGE, getThingPos((cid)), winge, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 129)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wingde, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir((cid)) == 2 then
		doAreaCombatHealth((cid), COMBAT_PDAMAGE, getThingPos((cid)), wings, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 131)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wingds, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		elseif getCreatureLookDir((cid)) == 3 then
		doAreaCombatHealth((cid), COMBAT_PDAMAGE, getThingPos((cid)), wingw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 130)
		doAreaCombatHealth((cid), element, getThingPos((cid)), wingdw, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), CONST_ME_NONE)
		end
		end
		end
		addEvent(fury, 500, cid)
		return 0

elseif magia.spell == "Twister" then
		doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		doAreaCombatHealth((cid), element, getThingPos((cid)), rageblast1, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 142)
		local function damage(params)
		if isMonster(params.cid) then
		doAreaCombatHealth((cid), element, getThingPos((cid)), params.x, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 42)
		end
		end
		addEvent(damage, 200, {cid = cid, x = rageblast2})
		addEvent(damage, 400, {cid = cid, x = rageblast3})
		addEvent(damage, 600, {cid = cid, x = rageblast4})
	return 0

	
	elseif magia.x.spell == "Dynamic Punch" then
	doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
		local function punch(params)
		if isMonster(getCreatureTarget(params.cid)) then
		if isMonster(params.cid) >= 1 then
		doAreaCombatHealth(cid, null, getThingPos(getCreatureTarget(cid)), params.ar, 0, 0, 17)
		elseif isPlayer(getCreatureTarget(params.cid)) then
doAreaCombatHealth(cid, null, getThingPos(getCreatureTarget(cid)), params.ar, 0, 0, 17)
		end
		else
		end
		end
		addEvent(punch, 50, {cid = cid, ar = dynpun1})
		addEvent(punch, 150, {cid = cid, ar = dynpun2})
		addEvent(punch, 450, {cid = cid, ar = dynpun3})
		addEvent(punch, 550, {cid = cid, ar = dynpun4})
		addEvent(punch, 750, {cid = cid, ar = dynpun5})
		return 0

	elseif magia.spell == "Fury Attackx" then
		doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
		local namezito = getCreatureName((cid))
		local namezin = getCreatureName(getCreatureTarget(cid))
		local function pee(params)
		if isMonster(params.cid) then
		if isCreature(getCreatureTarget(params.cid)) then
		if getCreatureName(params.cid) == namezito then
		if getCreatureName(getCreatureTarget(params.cid)) == namezin then
		doSendDistanceShoot(getThingPos(params.cid), getThingPos(getCreatureTarget(params.cid)), 15)
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
		end
		end
		end
		end
		end
		local delay = 200
		randnee = math.random(1,100)
		if randnee >= 1 and randnee <= 37 then
		a = 2
		elseif randnee >= 38 and randnee <= 74 then
		a = 3
		elseif randnee >= 75 and randnee <= 88 then
		a = 4
		else
		a = 5
		end
		local times = a
		for i = 1,a do
		addEvent(pee, delay, {cid = cid})
		delay = delay + 600
		end
		local function msg(params)
		if isMonster(params.cid) then
		doSendAnimatedText(getThingPos(params.cid), ""..times.." HITS", 35)
		end
		end
		addEvent(msg, 580*a, {cid = cid})
		


return true
end
end