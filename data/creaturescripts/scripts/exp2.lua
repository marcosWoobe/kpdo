local expcond = createConditionObject(CONDITION_INFIGHT)
setConditionParam(expcond, CONDITION_PARAM_TICKS, 4500)

function isPlayerInParty(uid1, uid2)
        if getPlayerParty(uid1) then
                if getPlayerParty(uid1) == getPlayerParty(uid2) then
                        return true
                end
        end
        return false
end

function isPlayerSummon(cid, uid)
    if getCreatureMaster(uid) == cid then
        return TRUE
    end
return FALSE
end


function onStatsChange(cid, attacker, enps, combatee, value)
if enps == STATSCHANGE_HEALTHGAIN then
if isCreature(attacker) then
local curar = getCreatureMaxHealth(cid)-getCreatureHealth(cid)
if value >= curar then
doSendAnimatedText(getThingPos(cid), "+"..curar.."", 35)
else
doSendAnimatedText(getThingPos(cid), "+"..value.."", 35)
end
end
doPlayerAddMana(getCreatureMaster(cid), value)
return true
end
if not isCreature(attacker) then
return true
end
if enps == STATSCHANGE_HEALTHLOSS then
if getPlayerStorageValue(attacker, 8) >= 1 and combatee == COMBAT_PHYSICALDAMAGE then
return false
end
if isSummon(attacker) then
local xxer = 0
verplayer = getCreatureMaster(attacker)
vereuplayer = getCreatureMaster(cid)
--if isPlayerInParty(verplayer,vereuplayer) then
--if getPlayerStorageValue(vereuplayer, 3333) >= 1 then
--xxer = 0
--else
--xxer = 1
--end
--end
if getTileInfo(getThingPos(cid)).pvp and getTileInfo(getThingPos(attacker)).pvp then
if getCreatureOutfit(getCreatureMaster(cid)).lookFeet == getCreatureOutfit(getCreatureMaster(attacker)).lookFeet then
return false
end
xxer = 1
end
if xxer == 0 then
if getPlayerStorageValue(vereuplayer, 1333) >= 1 then
xxer = 0
else
return false
end
if getPlayerStorageValue(verplayer, 1333) >= 1 then
xxer = 0
else
return false
end
if getPlayerStorageValue(vereuplayer, 6333) == verplayer then
xxer = 1
else
return false
end
end
end
if getPlayerStorageValue(cid, 34) >= 1 then
if combatee ~= COMBAT_PHYSICALDAMAGE then
if isCreature(attacker) then
doSendMagicEffect(getThingPos(cid), 135)
doSendMagicEffect(getThingPos(attacker), 3)
doSendAnimatedText(getThingPos(cid), "REFLECT", 215)
doSendAnimatedText(getThingPos(attacker), -value, 191)
doCreatureAddHealth(attacker, -value)
setPlayerStorageValue(cid, 34, 0)
return false
end
end
end
doAddCondition(getCreatureMaster(cid), expcond)

local x = getCombatByType(getCreatureName(cid),combatee)
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
local damage = value
local modeFight = getModeFight(getCreatureMaster(cid))
if modeFight  == 1 then
damage = (value * 1.2)+10
elseif modeFight == 3 then
damage = (value * 0.8)+10
end
if isSummon(attacker) then
local fisico = getPlayerStorageValue(attacker, 3499)

local finalista = math.floor(damage*x)+fisico

if getPlayerStorageValue(cid, 4) >= 1 then
finalista = math.floor((damage/2)*x)+fisico
end
if getPlayerStorageValue(cid, 5) >= 1 then
finalista = math.floor((damage/2)*x)+fisico
end
if getPlayerStorageValue(cid, 5) >= 1 and getPlayerStorageValue(cid, 4) >= 1 then
finalista = math.floor((damage/4)*x)+fisico
end

local doido = getCreatureMaster(cid)
doPlayerAddMana(doido, -finalista)
doSendAnimatedText(getThingPos(cid),finalista,cor)
doMoveHealth(attacker,finalista,cid)
return false

end
if isMonster(attacker) then
local finalista = math.floor(damage*x)+10

if getPlayerStorageValue(cid, 4) >= 1 then
finalista = math.floor((damage/2)*x)+10
end
if getPlayerStorageValue(cid, 5) >= 1 then
finalista = math.floor((damage/2)*x)+10
doSendMagicEffect(getThingPos(cid), 227)
end
if getPlayerStorageValue(cid, 5) >= 1 and getPlayerStorageValue(cid, 4) >= 1 then
finalista = math.floor((damage/4)*x)+10
end


local doido = getCreatureMaster(cid)
doPlayerAddMana(doido, -finalista)
doSendAnimatedText(getThingPos(cid),finalista,cor)
doMoveHealth(attacker,finalista,cid)

return false
end
end
end