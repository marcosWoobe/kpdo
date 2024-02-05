local expcond = createConditionObject(CONDITION_INFIGHT)
setConditionParam(expcond, CONDITION_PARAM_TICKS, 4500)


function isPlayerSummon(cid, uid)
    if getCreatureMaster(uid) == cid then
        return TRUE
    end
return FALSE
end


function onStatsChange(cid, attacker, enps, combatee, value)
if enps == STATSCHANGE_HEALTHGAIN then
if isCreature(attacker) then
return false
end
return true
end
if not isCreature(attacker) then
return true
end
if enps == STATSCHANGE_HEALTHLOSS then
if getPlayerStorageValue(cid, 34) >= 1 then
if combatee ~= COMBAT_PHYSICALDAMAGE then
if isCreature(attacker) then
doSendMagicEffect(getThingPos(cid), 135)
doSendMagicEffect(getThingPos(attacker), 3)
doSendAnimatedText(getThingPos(cid), "REFLECT", 215)
setPlayerStorageValue(cid, 34, 0)
doSendAnimatedText(getThingPos(attacker), -value, 191)
doCreatureAddHealth(attacker, -value)
return false
end
end
end
if not isSummon(attacker) then
return false
end
if getPlayerStorageValue(cid, 17) >= 4 then
local dono = getCreatureMaster(attacker)
if not string.find(getPlayerStorageValue(cid,200), getCreatureName(dono)) then
setPlayerStorageValue(cid, 200, getPlayerStorageValue(cid, 200)..""..getCreatureName(dono)..", ")
end
doMonsterSetTarget(cid, attacker)
end
if getPlayerStorageValue(attacker, 8) >= 1 and combatee == COMBAT_PHYSICALDAMAGE then
return false
end
local nickshiny = getCreatureName(cid)
if isShiny(nickshiny) then
nickshiny = nickshiny:gsub("Shiny ", "")
end
if isStrong(nickshiny) then
nickshiny = nickshiny:gsub("Strong ", "")
end
local x = getCombatByType(nickshiny,combatee)
if not x then
return false
end
local cor = COLOR_PSYCHIC
if combatee == PSYCHICDAMAGE then
cor = COLOR_PSYCHIC
elseif combatee == GRASSDAMAGE then
cor = COLOR_GRASS
elseif combatee == FIREDAMAGE then
cor = COLOR_FIRE2
elseif combatee == WATERDAMAGE then
cor = COLOR_WATER
elseif combatee == ICEDAMAGE then
cor = COLOR_ICE
elseif combatee == NORMALDAMAGE then
cor = COLOR_NORMAL
elseif combatee == FLYDAMAGE then
cor = COLOR_FLYING
elseif combatee == GHOSTDAMAGE then
cor = COLOR_GHOST
elseif combatee == GROUNDDAMAGE then
cor = COLOR_GROUND
elseif combatee == ELECTRICDAMAGE then
cor = COLOR_ELECTRIC
elseif combatee == ROCKDAMAGE then
cor = COLOR_ROCK
elseif combatee == BUGDAMAGE then
cor = COLOR_BUG
elseif combatee == FIGHTDAMAGE then
cor = COLOR_FIGHTING
elseif combatee == DRAGONDAMAGE then
cor = COLOR_DRAGON
elseif combatee == POISONDAMAGE then
cor = COLOR_POISON
elseif combatee == DARKDAMAGE then
cor = COLOR_DARK
elseif combatee == STEELDAMAGE then
cor = COLOR_STEEL
else
cor = getPokemonRace(cid)
end
if isSummon(attacker) then
local fisico = getPlayerStorageValue(attacker,3499)
if getPlayerStorageValue(cid, 4) >= 1 or isStrong(getCreatureName(cid)) then
local finalista = math.floor((value/2)*x)+fisico
doSendAnimatedText(getThingPos(cid),finalista,cor)
doMoveHealth(getCreatureMaster(attacker),finalista,cid)
return false
else
local finalista = math.floor(value*x)+fisico
doSendAnimatedText(getThingPos(cid),finalista,cor)
doMoveHealth(getCreatureMaster(attacker),finalista,cid)
return false
end
end
end
end