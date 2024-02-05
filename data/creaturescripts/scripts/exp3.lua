local expcond = createConditionObject(CONDITION_INFIGHT)
setConditionParam(expcond, CONDITION_PARAM_TICKS, 4500)
local lugar = {
[1059] = {
pos = {x=1054, y=1050, z=7}},
[1065] = {
pos = {x=1060, y=903, z=7}},
[1209] = {
pos = {x=1213, y=1325, z=7}},
[701] ={
pos = {x=708, y=1089, z=7}},
[1067] ={
pos = {x=1070, y=1236, z=7}},
[724] ={
pos = {x=719, y=849, z=7}},
[860] ={
pos = {x=864, y=1102, z=6}},
[1201] ={
pos = {x=1205, y=1047, z=7}},
[735] ={
pos = {x=732, y=1195, z=6}},
[844] ={
pos = {x=850, y=1405, z=7}},
[1424] ={
pos = {x=1430, y=1601, z=6}},
}


function isPlayerSummon(cid, uid)
    if getCreatureMaster(uid) == cid then
        return TRUE
    end
return FALSE
end


function onStatsChange(cid, attacker, enps, combatee, value)
if enps == STATSCHANGE_HEALTHGAIN then
return true
end
if not isCreature(attacker) then
return true
end
if enps == STATSCHANGE_HEALTHLOSS then
if isPlayer(attacker) then
return false
end
if getPlayerStorageValue(cid, 91911) >= 1 then
return false
end
if getPlayerStorageValue(attacker, 8) >= 1 and combatee == COMBAT_PHYSICALDAMAGE then
return false
end
if getPlayerStorageValue(cid, 8888) >= 1 then
return false
end
if #getCreatureSummons(cid) >= 1 then
return false
end
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
cor = 101
end
modeFight = getModeFight(getCreatureMaster(cid))
if modeFight  == 1 then
damage = (value * 1.2)
elseif modeFight == 3 then
damage = (value * 0.8)+10
else
damage = value+10
end
damage = (damage/2)+10
if getCreatureHealth(cid) <= damage then
if getPlayerStorageValue(cid, 61222) >= 1 then
setPlayerStorageValue(cid, 61222,nil)
end
if getPlayerStorageValue(cid, 61223) >= 1 then
setPlayerStorageValue(cid, 61223,nil)
end

     if getPlayerStorageValue(cid, 122545) == 1 then
         if getGlobalStorageValue(122550) == 1 then
					 if getGlobalStorageValue(122552) == categorie50 then
            doPlayerSendTextMessage(cid, 20, "You are the last survivor of the bronze arena! Take your reward!")
            doPlayerAddItem(cid, 2159, 5)
end			
			 if getGlobalStorageValue(122552) == categorie100 then
            doPlayerSendTextMessage(cid, 20, "You are the last survivor of the silver arena! Take your reward!")
            doPlayerAddItem(cid, 2159, 10)
end
			 if getGlobalStorageValue(122552) == categorie200 then
            doPlayerSendTextMessage(cid, 20, "You are the last survivor of the golden arena! Take your reward!")
            doPlayerAddItem(cid, 2159, 20)
end 
            setPlayerStorageValue(cid, 122545, -1)
            doTeleportThing(cid, getClosestFreeTile(cid, getClosestFreeTile(cid, posBackGolden)), false)  
            doCreatureAddHealth(cid, getCreatureMaxHealth(cid)-getCreatureHealth(cid))
            --setPlayerRecordWaves(cid)     
            endGoldenArena()
            return false           
         else
             setGlobalStorageValue(122550, getGlobalStorageValue(122550)-1)
             setPlayerStorageValue(cid, 122545, -1)
             doTeleportThing(cid, getClosestFreeTile(cid, posBackGolden), false)    
             doCreatureAddHealth(cid, getCreatureMaxHealth(cid)-getCreatureHealth(cid))
             --setPlayerRecordWaves(cid)     
             return false
         end 
      end
if isSummon(attacker)  then
if getTileInfo(getThingPos(cid)).pvp then
if getCreatureOutfit(cid).lookFeet == getCreatureOutfit(getCreatureMaster(attacker)).lookFeet then
return false
end
doSendAnimatedText(getThingPos(cid), damage, cor)
if getPlayerStorageValue(cid, 63215) >= 1 then
setPlayerStorageValue(cid, 63215, nil)
doRemoveCondition(cid, CONDITION_OUTFIT)
doChangeSpeed(cid, -(getCreatureSpeed(cid)))
doChangeSpeed(cid, 250)
end
if getPlayerStorageValue(cid, 68972) >= 1 then
setPlayerStorageValue(cid, 68972, nil)
doRemoveCondition(cid, CONDITION_OUTFIT)
doChangeSpeed(cid, -(getCreatureSpeed(cid)))
doChangeSpeed(cid, 250)
end
if getPlayerStorageValue(cid, 17001) >= 1 then
setPlayerStorageValue(cid, 17001, nil)
doRemoveCondition(cid, CONDITION_OUTFIT)
doChangeSpeed(cid, -(getCreatureSpeed(cid)))
doChangeSpeed(cid, 250)
end
if getPlayerStorageValue(cid, 17000) >= 1 then
setPlayerStorageValue(cid, 17000, nil)
doRemoveCondition(cid, CONDITION_OUTFIT)
doChangeSpeed(cid, -(getCreatureSpeed(cid)))
doChangeSpeed(cid, 250)
end
local cp = lugar[getPlayerStorageValue(cid,7790)]
if isTorunament(true) and getPlayerStorageValue(cid,169753) >= 1 then
getTorunament(getGlobalStorageValue(169753),cid,getCreatureMaster(attacker))
doPlayerSendTextMessage(getCreatureMaster(attacker), MESSAGE_STATUS_CONSOLE_RED, "You Are a defeated "..getPlayerName(cid)..".")
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You Are Defeated BY "..getPlayerName(getCreatureMaster(attacker))..".")
setTorunament(false)
end
if not cp then
doCreatureAddHealth(cid, -damage)
return false
end

if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], cp.pos)
doSendMagicEffect(getThingPos(cid), 21)
end
doTeleportThing(cid, cp.pos)
doCreatureAddHealth(cid, getCreatureMaxHealth(cid)-getCreatureHealth(cid))
return false
else
return false
end
end
if getPlayerStorageValue(cid, 63215) >= 1 then
setPlayerStorageValue(cid, 63215, nil)
doRemoveCondition(cid, CONDITION_OUTFIT)
end
if getPlayerStorageValue(cid, 68972) >= 1 then
setPlayerStorageValue(cid, 68972, nil)
doRemoveCondition(cid, CONDITION_OUTFIT)
end
if getPlayerStorageValue(cid, 17001) >= 1 then
setPlayerStorageValue(cid, 17001, nil)
doRemoveCondition(cid, CONDITION_OUTFIT)
end
if getPlayerStorageValue(cid, 17000) >= 1 then
setPlayerStorageValue(cid, 17000, nil)
doRemoveCondition(cid, CONDITION_OUTFIT)
end
doSendAnimatedText(getThingPos(cid), damage, cor)

doCreatureAddHealth(cid, -damage)
return false
end
if not isSummon(attacker) then
doSendAnimatedText(getThingPos(cid), damage, cor)
doCreatureAddHealth(cid, -damage)
return false
end
if isSummon(attacker) and getTileInfo(getThingPos(cid)).pvp then
doSendAnimatedText(getThingPos(cid), damage, cor)
doCreatureAddHealth(cid, -damage)
return false
end
return false
end
end