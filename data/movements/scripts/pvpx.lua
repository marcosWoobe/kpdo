function onStepIn(cid, item, pos)
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=975,y=1032,z=0})
end
doTeleportThing(cid, {x=975,y=1032,z=0})
end