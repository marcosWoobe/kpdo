local lugar = {
[1059] = {
pos = {x=1059, y=1047, z=7}},
[1066] = {
pos = {x=1060, y=904, z=7}},
[1201] = {
pos = {x=1204, y=1046, z=7}},
[1209] ={
pos = {x=1212, y=1325, z=7}},
[860] ={
pos = {x=862, y=1098, z=6}},
[701] ={
pos = {x=706, y=1089, z=7}},
[1067] ={
pos = {x=1073, y=1243, z=7}},
[714] ={
pos = {x=720, y=851, z=7}},
[669] ={
pos = {x=675, y=1216, z=6}},
[844] ={
pos = {x=847, y=1397, z=7}},
[1424] ={
pos = {x=1430, y=1601, z=6}},
[540] ={
pos = {x=540, y=676, z=5}},
[585] ={
pos = {x=588, y=415, z=7}},
[1119] ={
pos = {x=1124, y=541, z=7}},
[1241] ={
pos = {x=1244, y=299, z=7}},
[1144] ={
pos = {x=1139, y=234, z=5}},
[1463] ={
pos = {x=1456, y=63, z=5}},
[1682] ={
pos = {x=1682, y=60, z=6}},
[983] ={
pos = {x=988, y=129, z=7}},
[753] ={
pos = {x=748, y=223, z=7}},
[558] ={
pos = {x=558, y=292, z=7}},
}

function onStepIn(cid, item, position, fromPosition)
if not isCreature(cid) then
return true
end
if not isPlayer(cid) then
doTeleportThing(cid, fromPosition)
return true
end
local cp = lugar[getPlayerStorageValue(cid,7790)]



if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], cp.pos)
doSendMagicEffect(getThingPos(cid), 21)
end
doTeleportThing(cid, cp.pos)



end