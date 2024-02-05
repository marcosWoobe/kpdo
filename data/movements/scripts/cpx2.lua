function onStepIn(cid, item, pos)
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], {x=1100,y=1121,z=7})
end
doTeleportThing(cid, {x=1100,y=1121,z=7})
end