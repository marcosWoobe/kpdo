





function onKill(cid, corpse)
if getPlayerStorageValue(cid, 8888) == 1 then
if getPlayerStorageValue(corpse, 4555) == 1 then
local npc = getPlayerStorageValue(cid, 9999)
--doSendMagicEffect(getCreaturePosition(corpse), 10)

--doTeleportThing(corpse, {x = 986, y = 1025, z = 3},true) 
local function execute(params)
local monster = monsters["Laysa"]
if getPlayerStorageValue(cid, 4578) == 1 then
gopoke = monster.moves.poke2
elseif getPlayerStorageValue(cid, 4578) == 2 then
gopoke = monster.moves.poke3
elseif getPlayerStorageValue(cid, 4578) == 3 then
gopoke = monster.moves.poke4
elseif getPlayerStorageValue(cid, 4578) == 4 then
gopoke = monster.moves.poke5
elseif getPlayerStorageValue(cid, 4578) == 5 then
gopoke = monster.moves.poke6
end
doCreatureSay(npc,  "Go "..gopoke.." I need your help", 1)

local k = doCreateMonster(gopoke, getCreaturePosition(cid))
	doMonsterSetTarget(k, getCreatureSummons(cid)[1])

registerCreatureEvent(k, "Summonkill")
registerCreatureEvent(k, "Summondeath")

doSendMagicEffect(getCreaturePosition(k), 10)
setPlayerStorageValue(k, 4555, 1)
setPlayerStorageValue(k, 4655, npc)
setPlayerStorageValue(cid, 6569, k)




end


local cont = getPlayerStorageValue(cid, 4578)
setPlayerStorageValue(cid, 4578, cont+1)
if getPlayerStorageValue(cid, 4578) == 6 then
setPlayerStorageValue(cid, 9999, 0)
setPlayerStorageValue(cid, 8888, 0)
setPlayerStorageValue(npc, 5000, 0)
setPlayerStorageValue(cid, 4578, 0)
local nome = getCreatureName(cid) 
doCreatureSay(npc,  "Hey "..nome.." Congratulations you are a true Pokemon Trainer", 1)
return True
end
doCreatureSay(npc,  "Hey hum.. i chose...", 1)
addEvent(execute,1000, cid)








 


       
         
  

 

end
end 
return TRUE      

end