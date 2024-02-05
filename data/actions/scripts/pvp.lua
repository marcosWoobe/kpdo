function onUse(cid, item, frompos, item2, topos)
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=975,y=1039,z=13})
doSendMagicEffect(getThingPos(cid), 21)
end
doTeleportThing(cid, {x=975,y=1039,z=13})

end




