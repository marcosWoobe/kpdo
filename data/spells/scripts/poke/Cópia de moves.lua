



		
	local cdtec = {
["cold"] = {
		["m1"] = { cd= 31000},
		["m2"]= { cd= 31001},
		["m3"]= { cd= 31002},
		["m4"]= { cd= 31003},
		["m5"]={ cd=  31004},
                ["m6"]={ cd=  31005},
		["m7"]={ cd=  31006},
		["m8"]={  cd= 31007},
		["m9"]= {  cd= 31008},
		["m10"]={ cd=  31009}, 
                ["m11"]={ cd=  31010},
		["m12"]={ cd=  31011},
}
	}		




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

               -- if ((getTopCreature(newPos).uid == 0) and doTileQueryAdd(cid, newPos) ~= 1) then return false end
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

               -- if ((getTopCreature(newPos).uid == 0) and doTileQueryAdd(cid, newPos) ~= 1) then return false end
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



local pokemon2 = cp[getCreatureName(cid)]
if not pokemon2 then
local nick = getCreatureName(cid):gsub("Shiny ", "")
pokemon2 = cp[nick]
if not pokemon2 then
--doBroadcastMessage("Houve erro no pokemon "..getCreatureName(cid).."")
return true
end

end
local pokemon = pokemon2["!cd"]
if not pokemon then
--doBroadcastMessage("Houve erro no pokemon "..getCreatureName(cid).."")
return true
end

local moveatack = math.random(1,pokemon.nmoves)

local fala = "m"..moveatack..""
local magia = cp[getCreatureName(cid)][fala]
if not magia then
return true
end
local exaustcd = cdtec["cold"][fala]
if not exaustcd then
return true
end
	if exhaustion.get(cid, exaustcd.cd) then
return true
end

if not magia then
--doBroadcastMessage("Houve erro no pokemon "..getCreatureName(cid)..",na sequencia "..fala.."")
return true
end
if getPlayerStorageValue(cid, 4555) == 1 then
local npc = getPlayerStorageValue(cid, 4655)
local nomedopoke = pokemon.pokenome
local nomedamagia = magia
doCreatureSay(npc,  ""..nomedopoke.." ,  "..magia.spell..".", 1)
getPlayerStorageValue(cid, 4559)
end

if (hasCondition(cid, CONDITION_HASTE)) then
if math.random(1,100) <= 33 then
	doSendAnimatedText(getThingPos(cid), "MISS", 215)
return true
	end	

end
	
if (hasCondition(cid, CONDITION_DRUNK)) then	
		
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

local leveldoplayer = pokes[getCreatureName(cid)].level
local lvpokemon = leveldoplayer
if getPlayerStorageValue(cid, 4559) >= 1 then
lvpokemon = getPlayerStorageValue(cid, 4559)+leveldoplayer
end




exhaustion.set(cid, exaustcd.cd, magia.cd/2)
  local soundenabled = soundskpdo[string.lower(magia.spell)]
if soundenabled then
local d = getCreaturesInRange(getThingPos(cid), 5, 5, 0, 1)

                        for _,pid in pairs(d) do
if isSound(pid) then
doPlayerSendCancel(pid,"sounds/"..soundenabled.file)
end
end

end        
	if getPlayerStorageValue(cid, 254) >= 1 then
	num3 = num3 * 1.8
	setPlayerStorageValue(cid, 254, 0)
	end
	
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
elseif  magia.spell == "Iron Head" then


local sumomdonego = cid		
local target = getCreatureTarget(cid)
local monsterpos = getCreatureLookDir(target)
local monstertp = getCreaturePosition(target)
local evasiontp = getCreaturePosition(sumomdonego)
if monsterpos == 0 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y+1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)
	
 
end
elseif monsterpos == 2 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x
monstertp.y = monstertp.y-1
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 1 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x-1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)

 
end
elseif monsterpos == 3 then

monstertp.z = monstertp.z 
monstertp.x = monstertp.x+1
monstertp.y = monstertp.y
if isWalkable(monstertp,true,true,cid) then
doSendMagicEffect(evasiontp, 211)
doTeleportThing(sumomdonego,monstertp)
setPlayerStorageValue(target, 9,1)

 
end

end
		doAreaCombatHealth(sumomdonego, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 160)
		return 0
elseif  magia.spell == "Fury Splinter" then
		


		local sumomdonego = cid
				local function spark(params)
				if isCreature(params.cid) then
				if isCreature(getCreatureSummons(params.cid)[1]) then
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), params.cidpos, 13)
				doAreaCombatHealth(sumomdonego, element, params.cidpos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
				end
				end
				end
		for a = -5, 5 do
			for b = -5, 5 do
			cidpos = getThingPos(sumomdonego)
			cidpos.x = cidpos.x+a
			cidpos.y = cidpos.y+b
			addEvent(spark, math.abs(a)*350 + math.abs(b)*650, {cid = cid, cidpos = cidpos})
			end
		end		
		return 0
elseif magia.spell == "Metal Claw" then


		
doSetCreatureOutfit(cid, {lookType = 660}, 1000)

		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 160)
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
elseif magia.spell == "Thunder Spoof" then
		

local sumomdonego = cid
		
				local function spark(params)
				if isCreature(params.cid) then
				if isCreature(getCreatureSummons(params.cid)[1]) then
				doSendDistanceShoot(getThingPos(getCreatureSummons(params.cid)[1]), params.cidpos, 40)
				doAreaCombatHealth(sumomdonego, element, params.cidpos, 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 48)
				end
				end
				end
		for a = -5, 5 do
			for b = -5, 5 do
			cidpos = getThingPos(sumomdonego)
			cidpos.x = cidpos.x+a
			cidpos.y = cidpos.y+b
			addEvent(spark, math.abs(a)*350 + math.abs(b)*650, {cid = cid, cidpos = cidpos})
			end
		end		
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
doSetCreatureOutfit(cid, {lookType = 436}, 500)

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
doSetCreatureOutfit(cid, {lookType = 436}, 500)

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
doSetCreatureOutfit(cid, {lookType = 436}, 800)

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
elseif magia.spell == "Earth Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

local function slap(params)
					if isCreature(params.cid) then
                        if isCreature(getCreatureTarget(params.cid)) then
		doAreaCombatHealth(params.cid, element, getThingPos(getCreatureTarget(params.cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 112)
	end
end
		end
		addEvent(slap, 200, {cid = cid})
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, 0, 0 ,161)
doSendMagicEffect(getThingPos(getCreatureTarget(cid)), 180)
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
	elseif magia.spell == "Leech Life" then
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

		

	
local target = getCreatureTarget(cid)
if isMonster(target) then
Paralize(target)
end
		
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 1)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 34)
	return 0

elseif magia.spell == "Mud Slap" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
	
local target = getCreatureTarget(cid)
if isMonster(target) then
Paralize(target)
end
		doSendDistanceShoot(getThingPos(cid), getThingPos(getCreatureTarget(cid)), 1)
		doAreaCombatHealth(cid, element, getThingPos(getCreatureTarget(cid)), 0, -((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 3)
	return 0

elseif magia.spell == "Lovey Kiss" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		
local target = getCreatureTarget(cid)
if isMonster(target) then
Paralize(target)
end
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
	
local target = getCreatureTarget(cid)
if isMonster(target) then
Paralize(target)
end

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
	
local target = getCreatureTarget(cid)
if isMonster(target) then
Paralize(target)
end

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

		

sendstorm(cid,11,183,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))

	return 0
elseif magia.spell == "Team Slice" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
if isInArray({"Shiny Scyther"}, getCreatureName(cid)) then		
sendstorm(cid,20,129,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
else
sendstorm(cid,19,129,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
end	
		


	return 0

elseif magia.spell == "Pay Day" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

sendstorm(cid,6,9,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))

	return 0
elseif magia.spell == "Metronome" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)
local metronomerandom = math.random(1,6)

if metronomerandom == 1 then 	
sendstorm(cid,3,181,DRAGONDAMAGE,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))	
elseif metronomerandom == 2 then 
sendstorm(cid,18,140,GHOSTDAMAGE,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))		
elseif metronomerandom == 3 then 		
sendstorm(cid,2,53,WATERDAMAGE,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
elseif metronomerandom == 4 then 		
sendstorm(cid,28,52,ICEDAMAGE,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
elseif metronomerandom == 5 then 		
sendstorm(cid,11,44,ROCKDAMAGE,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
elseif metronomerandom == 6 then 		
sendstorm(cid,40,11,ELECTRICDAMAGE,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
end
		return 0
elseif magia.spell == "Electric Storm" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
	
sendstorm(cid,40,48,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))		


	return 0
elseif magia.spell == "Blizzard" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

	sendstorm(cid,28,52,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))	

	return 0

elseif magia.spell == "Hydro Rain" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
	sendstorm(cid,2,53,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))	


	return 0
elseif magia.spell == "Bone Rain" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		sendstorm(cid,7,242,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))	


	return 0

elseif magia.spell == "Sludge Rain" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		sendstorm(cid,38,254,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))	


	return 0
elseif magia.spell == "Mortal Gas" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
	sendstorm(cid,23,114,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))


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

		
			sendstorm(cid,25,29,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))
	return 0

elseif magia.spell == "Shadow Storm" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
		sendstorm(cid,18,140,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))

	return 0
elseif magia.spell == "Magma Meteor" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
	sendstorm(cid,3,181,element,-((num1)+(lvpokemon*(num3))),-((num2)+(lvpokemon*(num3))))

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

elseif magia.spell == "Ancient Power" then
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

	elseif getCreatureName(cid) == "Shiny Sandshrew" then
		doSetCreatureOutfit(cid, {lookType = 690}, 8300)

		


elseif getCreatureName(cid) == "Shiny Sandslash" then
doSetCreatureOutfit(cid, {lookType = 673}, 8300)
elseif getCreatureName(cid) == "Shiny Golem" then
doSetCreatureOutfit(cid, {lookType = 702}, 8300)
elseif getCreatureName(cid) == "Miltank" then
doSetCreatureOutfit(cid, {lookType = 654}, 8300)

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

elseif magia.spell == "Ancient Fury" then
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
		pos.x = pos.x + 1
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

		

local pid = getCreatureTarget(cid)
if isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(cid)
else
Confunso(pid)
end
else
Confunso(pid)
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

		

local pid = getCreatureTarget(cid)
if isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(cid)
else
Confunso(pid)
end
else
Confunso(pid)
end
		
		return 0

elseif magia.spell == "Dizzy Punch" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		

		

local pid = getCreatureTarget(cid)
if isMonster(pid) then
                    if getPlayerStorageValue(pid, 34) >= 1 then
setPlayerStorageValue(pid, 34, 0)
doSendMagicEffect(getThingPos(pid), 135)
doSendAnimatedText(getThingPos(pid), "REFLECT", 215)   
           
Confunso(cid)
else
Confunso(pid)
end
else
Confunso(pid)
end
	return 0
elseif magia.spell == "Acrobatics" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
local function blast1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.ar, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), params.ef)
end
end
local function blast2(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.ar, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), params.ef)
end
end		


		
		

local sumonado = cid
addEvent(blast1, 0, {cid = sumonado,ar = AREA_BLAST1,ef = 232})	
addEvent(blast1, 500, {cid = sumonado,ar = AREA_BLAST2,ef = 232})
addEvent(blast1, 800, {cid = sumonado,ar = AREA_BLAST3,ef = 232})
addEvent(blast2, 300, {cid = sumonado,ar = AREA_BLAST1,ef = 42})
addEvent(blast2, 800, {cid = sumonado,ar = AREA_BLAST2,ef = 42})
addEvent(blast2, 1100, {cid = sumonado,ar = AREA_BLAST3,ef = 42})
addEvent(blast1, 1500, {cid = sumonado,ar = AREA_BLAST1,ef = 232})	
addEvent(blast1, 1200, {cid = sumonado,ar = AREA_BLAST2,ef = 232})
addEvent(blast1, 1000, {cid = sumonado,ar = AREA_BLAST3,ef = 232})
addEvent(blast2, 1600, {cid = sumonado,ar = AREA_BLAST1,ef = 42})
addEvent(blast2, 1300, {cid = sumonado,ar = AREA_BLAST2,ef = 42})
addEvent(blast2, 1100, {cid = sumonado,ar = AREA_BLAST3,ef = 42})
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

	local sumomdonego = cid
	if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolard1 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar, 0, 0, 95)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar2, 0, 0, 163)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar3, 0, 0, 164)
		elseif getCreatureLookDir(sumomdonego) == 2 then
				doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard2 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar4 , 0, 0, 88)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar5, 0, 0, 89)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar6, 0, 0, 90)
		elseif getCreatureLookDir(sumomdonego) == 1 then
						doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard4 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolakd, 0, 0, 87)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolapd, 0, 0, 91)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolatd, 0, 0, 92)
		elseif getCreatureLookDir(sumomdonego) == 3 then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard3 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
						doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolak , 0, 0, 93)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolap, 0, 0, 91)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolat, 0, 0, 94)
		end
		
	return 0
elseif magia.spell == "Charge Beam" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

	
			local sumomdonego = cid
	if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolard1 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar, 0, 0, 95)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar2, 0, 0, 163)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar3, 0, 0, 164)
		elseif getCreatureLookDir(sumomdonego) == 2 then
				doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard2 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar4 , 0, 0, 88)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar5, 0, 0, 89)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar6, 0, 0, 90)
		elseif getCreatureLookDir(sumomdonego) == 1 then
						doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard4 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolakd, 0, 0, 87)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolapd, 0, 0, 91)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolatd, 0, 0, 92)
		elseif getCreatureLookDir(sumomdonego) == 3 then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard3 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
						doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolak , 0, 0, 93)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolap, 0, 0, 91)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolat, 0, 0, 94)
		end
		
	return 0
elseif magia.spell == "Zap Cannon" then
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

	
			local sumomdonego = cid
	if getCreatureLookDir(sumomdonego) == 0 then
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolard1 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar, 0, 0, 95)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar2, 0, 0, 163)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar3, 0, 0, 164)
		elseif getCreatureLookDir(sumomdonego) == 2 then
				doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard2 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar4 , 0, 0, 88)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar5, 0, 0, 89)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolar6, 0, 0, 90)
		elseif getCreatureLookDir(sumomdonego) == 1 then
						doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard4 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolakd, 0, 0, 87)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolapd, 0, 0, 91)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolatd, 0, 0, 92)
		elseif getCreatureLookDir(sumomdonego) == 3 then
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), wsolard3 ,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 255)
						doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolak , 0, 0, 93)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolap, 0, 0, 91)
		doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego),wsolat, 0, 0, 94)
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
elseif magia.spell == "Spider Web" then
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
local sumomdonego = cid
doAreaCombatHealth(sumomdonego, element, getThingPos(sumomdonego), sleeparea,-((num1)+(lvpokemon*(num3))), -((num2)+(lvpokemon*(num3))), 27)
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
if getPlayerStorageValue(cid, 4555) == 1 then
return true
end
doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)


		

	local function explode(params)
		if isCreature(params.cid) then
		doSendMagicEffect(getThingPos(params.cid),29)
end
		end
local function death(params)
		if isCreature(params.cid) then
local damage = getCreatureHealth(params.cid)
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), AREA_CIRCLE3X3, -damage, -damage, 181)
		doCreatureAddHealth(params.cid, -getCreatureHealth(params.cid))
end
end
local sumomdonego = cid
	addEvent(explode, 450, {cid = sumomdonego})
	addEvent(explode, 1050, {cid = sumomdonego})
	addEvent(explode, 2050, {cid = sumomdonego})
	addEvent(explode, 3050, {cid = sumomdonego})
addEvent(explode, 3550, {cid = sumomdonego})
addEvent(explode, 4050, {cid = sumomdonego})
addEvent(explode, 4550, {cid = sumomdonego})
addEvent(death, 4900, {cid = sumomdonego})




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

		
	





local function blast1(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.ar, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), params.ef)
end
end
local function blast2(params)
		if isCreature(params.cid) then
doAreaCombatHealth(params.cid, element, getThingPos(params.cid), params.ar, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), params.ef)
end
end		


		
		

local sumonado = cid
addEvent(blast1, 0, {cid = sumonado,ar = AREA_BLAST1,ef = 181})	
addEvent(blast1, 500, {cid = sumonado,ar = AREA_BLAST2,ef = 181})
addEvent(blast1, 800, {cid = sumonado,ar = AREA_BLAST3,ef = 181})
addEvent(blast2, 300, {cid = sumonado,ar = AREA_BLAST1,ef = 179})
addEvent(blast2, 800, {cid = sumonado,ar = AREA_BLAST2,ef = 179})
addEvent(blast2, 1100, {cid = sumonado,ar = AREA_BLAST3,ef = 179})
addEvent(blast1, 1500, {cid = sumonado,ar = AREA_BLAST1,ef = 181})	
addEvent(blast1, 1200, {cid = sumonado,ar = AREA_BLAST2,ef = 181})
addEvent(blast1, 1000, {cid = sumonado,ar = AREA_BLAST3,ef = 181})
addEvent(blast2, 1600, {cid = sumonado,ar = AREA_BLAST1,ef = 179})
addEvent(blast2, 1300, {cid = sumonado,ar = AREA_BLAST2,ef = 179})
addEvent(blast2, 1100, {cid = sumonado,ar = AREA_BLAST3,ef = 179})


		

return 0

elseif magia.spell == "Giga Impact" then



doCreatureSay(cid,  ""..magia.spell.."!!", TALKTYPE_MONSTER)

		
	
	
doAreaCombatHealth(cid, element, getThingPos(cid), AREA_GIGAEF, 0, 0, 127)	
doAreaCombatHealth(cid, element, getThingPos(cid), AREA_GIGA, -((num1)+(lvpokemon*(num3))), -((num1)+(lvpokemon*(num3))), 255)		

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