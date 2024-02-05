function onUse(cid, item, fromPosition, item2, toPosition)



if getPlayerStorageValue(cid,190207) <= 0 then
doCreatureSay(cid,"You have found the secret swich, beware!",TALKTYPE_ORANGE_1) 
setPlayerStorageValue(cid,190207,1)
end

return true

end