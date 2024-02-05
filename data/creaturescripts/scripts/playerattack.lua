function onAttack(cid, target)

if getPlayerStorageValue(target, 17) == 4 then
setPlayerStorageValue(target, 17, 5)
if getPlayerStorageValue(target, 200) == -1 then
setPlayerStorageValue(target, 200, "!, ")
end

setPlayerStorageValue(target, 200, getPlayerStorageValue(target, 200)..""..getCreatureName(cid)..", ")

if #getCreatureSummons(cid) >= 1 then
doMonsterSetTarget(target, getCreatureSummons(cid)[1])
else
doMonsterSetTarget(target, cid)  
end

end
return TRUE
end