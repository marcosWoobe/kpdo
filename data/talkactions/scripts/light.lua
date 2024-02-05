local light = {'Abra', 'Wobbuffet','Mareep','Unown','Espeon','Ampharos','Flaaffy','Kadabra', 'Alakazam','Shiny Alakazam', 'Magnemite', 'Magneton', 'Drowzee', 'Hypno', 'Voltorb', 'Electrode', 'Mr Mime', 'Electabuzz', 'Jolteon', 'Porygon', 'Pikachu', 'Raichu',"Shiny Hypno","Shiny Abra","Girafarig",'Solrock','Electrike','Manectric','Plusle','Minun','Volbeat','Spoink','Grumpig','Magnezone','Electivire'}
local exhautStorage = 36222
local time = 3000
local cd = 10

function onSay(cid, words, param, channel)
local summons = getCreatureSummons(cid)
if #summons == 0 then
doPlayerSendCancel(cid,"You don't have any summoned pokemons!.")
return true
end

if not isInArray(light, getCreatureName(summons[1])) then
doPlayerSendCancel(cid,"This pokemon is not able to use light.")
return true
end

if exhaustion.get(cid, exhautStorage) then
doPlayerSendCancel(cid,"You have to wait a few seconds to use light again!")
return true
end

exhaustion.set(cid, exhautStorage, cd)
doPlayerSay(cid, ""..getCreatureName(getCreatureSummons(cid)[1])..", use light!", 1)
doCreatureSay(getCreatureSummons(cid)[1], "LIGHT!", TALKTYPE_MONSTER)
doSendMagicEffect(getThingPos(getCreatureSummons(cid)[1]), 28)
doSetCreatureLight(getCreatureSummons(cid)[1], 9, 210, time*1000)
return true
end