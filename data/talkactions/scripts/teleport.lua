function getTime(s)
local n = math.floor(s / 60)
s = s - (60 * n)
return n, s
end

function onSay(cid, words, param)
local configs = {
needpa = TRUE,
needlvl = {TRUE, level = 50},
}


local cidades = {
["Saffron"] = {x=1054,y=1050,z=7, pokenames = {"Abra", "Alakazam", "Kadabra", "Drowzee", "Hypno", "Kadabra", "Mr Mime", "Porygon", "shiny abra" , "Mew","Mewtwo","Shiny Alakazam","Shiny Hypno"}, time = 1},
["cerulean"] = {x=1060,y=903,z=7, pokenames = {"Abra", "Alakazam", "Kadabra", "Drowzee", "Hypno", "Kadabra", "Mr Mime", "Porygon", "shiny abra", "Mew","Mewtwo","Shiny Alakazam","Shiny Hypno"}, time = 2},
["Lavender"] = {x=1204,y=1045,z=7, pokenames = {"Abra", "Alakazam", "Kadabra", "Drowzee", "Hypno", "Kadabra", "Mr Mime", "Porygon", "shiny abra", "Mew","Mewtwo","Shiny Alakazam","Shiny Hypno"}, time = 3},
["Fuchsia"] = {x=1213,y=1325,z=7, pokenames = {"Abra", "Alakazam", "Kadabra", "Drowzee", "Hypno", "Kadabra", "Mr Mime", "Porygon", "shiny abra", "Mew","Mewtwo","Shiny Alakazam","Shiny Hypno"}, time = 4},
["Celadon"] = {x=862,y=1035,z=6, pokenames = {"Abra", "Alakazam", "Kadabra", "Drowzee", "Hypno", "Kadabra", "Mr Mime", "Porygon", "shiny abra", "Mew","Mewtwo", "Shiny Alakazam","Shiny Hypno"}, time = 5},
}
teleport = FALSE

if configs.needpa and not isPremium(cid) then
return doPlayerSendCancel(cid, "You need to be a premmium account to use teleport.")
end

if configs.needlvl[1] and getPlayerLevel(cid) < configs.needlvl.level then
return doPlayerSendCancel(cid, "You need to be level "..configs.needlvl.level.." or higher to use teleport.")
end

if #getCreatureSummons(cid) <= 0 then
return doPlayerSendCancel(cid, "You need to have a monster summoned.")
end

for i,x in pairs(cidades) do
for _,z in pairs(getCreatureSummons(cid)) do
if isInArray(x.pokenames, getCreatureName(z)) then
if param:lower() == "\"" .. i:lower() then
if os.time()-getPlayerStorageValue(cid, 64231) <= x.time*60 then
minutes,seconds = getTime(x.time*60-(os.time()-getPlayerStorageValue(cid, 64231)))
return doPlayerSendCancel(cid, "You need wait " .. minutes .. " minutes and " .. seconds .. " seconds.")
else
doTeleportThing(cid, x)
doTeleportThing(z, x)
setPlayerStorageValue(cid, 64231, os.time())
teleport = TRUE
break
end
end
end
end
end