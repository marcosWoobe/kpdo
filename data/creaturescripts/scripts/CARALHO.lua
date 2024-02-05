
function isPlayerInParty(uid1, uid2)
        if getPlayerParty(uid1) then
                if getPlayerParty(uid1) == getPlayerParty(uid2) then
                        return true
                end
        end
        return false
end
function onAttack(cid, target)



if isSummon(target) then
if (hasCondition(target, CONDITION_INVISIBLE)) then
cancelTarget(cid)
doPlayerSendCancel(cid,"Target lost")
return false 
end
if getTileInfo(getThingPos(cid)).pvp and getTileInfo(getThingPos(target)).pvp then 
if getCreatureOutfit(cid).lookFeet == getCreatureOutfit(getCreatureMaster(target)).lookFeet then
cancelTarget(cid)
doPlayerSendCancel(cid,"You cannot attack this pokemon")
return false 
else
return true
end
elseif getPlayerStorageValue(cid, 1333) >= 1 then
if getPlayerStorageValue(cid, 6333) == getCreatureMaster(target) then
return true
else
cancelTarget(cid)
doPlayerSendCancel(cid,"You cannot attack this pokemon")
return false 
end
--elseif isPlayerInParty(getCreatureMaster(target),cid) then
--if getPlayerStorageValue(cid, 3333) >= 1 then
--cancelTarget(cid)
--doPlayerSendCancel(cid,"You cannot attack this pokemon")
--return false
--end
--return true
else
cancelTarget(cid)
doPlayerSendCancel(cid,"You cannot attack this pokemon")
return false
end  
elseif  isMonster(target) then
if (hasCondition(target, CONDITION_INVISIBLE)) then
cancelTarget(cid)
doPlayerSendCancel(cid,"Target lost")
return false 
end
if getPlayerStorageValue(target, 17) >= 4 then
setPlayerStorageValue(target, 17, 5)
if getPlayerStorageValue(target, 200) == -1 then
setPlayerStorageValue(target, 200, "!, ")
end
if not string.find(getPlayerStorageValue(target,200), getCreatureName(cid)) then
setPlayerStorageValue(target, 200, getPlayerStorageValue(target, 200)..""..getCreatureName(cid)..", ")
end
if #getCreatureSummons(cid) >= 1 then
doMonsterSetTarget(target, getCreatureSummons(cid)[1])
else
doMonsterSetTarget(target, cid)  
end
return true
end 
elseif  isPlayer(target) then 
if getCreatureOutfit(cid).lookFeet == getCreatureOutfit(target).lookFeet then
cancelTarget(cid)
doPlayerSendCancel(cid,"You cannot attack this pokemon")
return false 
else
return true
end
else

cancelTarget(cid)
doPlayerSendCancel(cid,"You cannot attack this player")
return false 
end





return true
end