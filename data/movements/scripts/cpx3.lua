function onStepIn(cid, item, pos)
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=931,y=1066,z=7})
end
doTeleportThing(cid, {x=931,y=1066,z=7})
end