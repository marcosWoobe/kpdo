function onCombat(cid, target)

if getPlayerStorageValue(getCreatureMaster(cid), 1333) >= 1 then
      doPlayerSendCancel(cid, "Wait Start duel to Target attack")
return false
end

return true
end