function onCombat(cid, target)

  if isPlayer(target) and getCreatureOutfit(cid) == getCreatureOutfit(getCreatureTarget(cid)) then
      doPlayerSendCancel(cid, "N�o pode atacar players da mesma guild.")
      doCreatureSetSkullType(cid, 0) 
      return false
  end
return true
end