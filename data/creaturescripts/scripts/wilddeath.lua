


function onDeath(cid, deathList)


if getPlayerStorageValue(cid, 122546) == 1 then
       setGlobalStorageValue(122548, getGlobalStorageValue(122548)-1)
      --if corpse.itemid ~= 0 then doItemSetAttribute(corpse.uid, "golden", 1) end  --alterado v1.8    
     
    if getPlayerStorageValue(cid, 122546) == 1 and getGlobalStorageValue(122548) == 0 then
       local wave = getGlobalStorageValue(122547)
       for _, sid in ipairs(getPlayersOnline()) do
           if isPlayer(sid) and getPlayerStorageValue(sid, 122545) == 1 then
              if getGlobalStorageValue(122547) < #wavesGolden+1 then
                 doPlayerSendTextMessage(sid, 20, "Wave "..wave.." will begin in "..timeToWaves.."seconds!")   
                 doPlayerSendTextMessage(sid, 28, "Wave "..wave.." will begin in "..timeToWaves.."seconds!") 
                 addEvent(creaturesInGolden, 100, GoldenUpper, GoldenLower, false, true, true)
                 addEvent(doWave, timeToWaves*1000)
              elseif getGlobalStorageValue(122547) == #wavesGolden+1 then
			  
			  local arena = getGlobalStorageValue(122550)
			  if getGlobalStorageValue(122552) == categorie50 then
			  					    local trofeu = doPlayerAddItem(sid, 7747,1)
						  local numerodoevento = getGlobalStorageValue(122553)
local descri = "Reward #"..numerodoevento.." Event ,Bronze Arena("..getCreatureName(sid)..")."
doItemSetAttribute(trofeu, "description", descri)
                 doPlayerSendTextMessage(sid, 20, "You have win the bronze arena! Take your reward!")
                 doPlayerAddItem(sid, 2159,15/arena)    --premio
				 setPlayerStorageValue(sid,222550,1)
				 end
				 	  if getGlobalStorageValue(122552) == categorie100 then
					    local trofeu = doPlayerAddItem(sid, 7748,1)
						  local numerodoevento = getGlobalStorageValue(122554)
local descri = "Reward #"..numerodoevento.." Event ,Silver Arena("..getCreatureName(sid)..")."
doItemSetAttribute(trofeu, "description", descri)
                 doPlayerSendTextMessage(sid, 20, "You have win the silver arena! Take your reward!")
                 doPlayerAddItem(sid, 2159,50/arena)    --premio
				  setPlayerStorageValue(sid,222550,2)
				 end
				 	 	  if getGlobalStorageValue(122552) == categorie200 then
						  local trofeu = doPlayerAddItem(sid, 7749,1)
						  local numerodoevento = getGlobalStorageValue(122555)
local descri = "Reward #"..numerodoevento.." Event ,Golden Arena("..getCreatureName(sid)..")."
doItemSetAttribute(trofeu, "description", descri)
                 doPlayerSendTextMessage(sid, 20, "You have win the golden arena! Take your reward!")
                 doPlayerAddItem(sid, 2159,100/arena)    --premio
				  setPlayerStorageValue(sid,222550,3)
				 end
				       setPlayerStorageValue(sid, 122545, -1)
					   	   	if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], getClosestFreeTile(getCreatureSummons(cid)[1], posBackGolden))
end	
                 doTeleportThing(sid, getClosestFreeTile(sid, posBackGolden), false) 
                 --setPlayerRecordWaves(sid)
              end
           end
       end
       if getGlobalStorageValue(122547) == #wavesGolden+1 then
          endGoldenArena()
       end
    end
	doRemoveCreature(cid)
return false
	end
local gymver = false
local positgym = {x= 539,y = 997,z =6}
doSendMagicEffect(getCreaturePosition(cid), 10)

local killer = getPlayerStorageValue(cid, 9548)

local npc = getPlayerStorageValue(killer, 9999)

doRemoveCreature(cid)


local numeromonstro = getPlayerStorageValue(killer, 7787)
local cont = getPlayerStorageValue(killer, 4578)
setPlayerStorageValue(killer, 4578, cont+1)
local npcnome = getPlayerStorageValue(killer, 6578)
if getPlayerStorageValue(killer, 4578) >= numeromonstro then
local bp = getPlayerSlotItem(killer, 5)
if npcnome == "Brock" then
local items = getItemsInContainerById(bp.uid, 2307)
for _, uid in pairs(items) do
doTransformItem(uid, 320)
end
setPlayerStorageValue(killer, 9353, 1)
doPlayerAddItem(killer, 7773, 1)
elseif npcnome == "Blaine" then
local items = getItemsInContainerById(bp.uid, 2313)
for _, uid in pairs(items) do
doTransformItem(uid, 326)
end
setPlayerStorageValue(killer, 9354, 1)
doPlayerAddItem(killer, 7777, 1)
elseif npcnome == "Misty" then
local items = getItemsInContainerById(bp.uid, 2308)
for _, uid in pairs(items) do
doTransformItem(uid, 321)
end

setPlayerStorageValue(killer, 9355, 1)
doPlayerAddItem(killer, 7774, 1)
elseif npcnome == "Koga" then
local items = getItemsInContainerById(bp.uid, 2311)
for _, uid in pairs(items) do
doTransformItem(uid, 327)
end
setPlayerStorageValue(killer, 9356, 1)
doPlayerAddItem(killer, 7771, 1)
elseif npcnome == "Sabrina" then
local items = getItemsInContainerById(bp.uid, 2314)
for _, uid in pairs(items) do
doTransformItem(uid, 324)
end
setPlayerStorageValue(killer, 9357, 1)
doPlayerAddItem(killer, 7776, 1)
elseif npcnome == "Erika" then
local items = getItemsInContainerById(bp.uid, 2310)
for _, uid in pairs(items) do
doTransformItem(uid, 323)
end
setPlayerStorageValue(killer, 9358, 1)
doPlayerAddItem(killer, 7769, 1)
elseif npcnome == "Surge" then
local items = getItemsInContainerById(bp.uid, 2309)
for _, uid in pairs(items) do
doTransformItem(uid, 322)
end
setPlayerStorageValue(killer, 9359, 1)
doPlayerAddItem(killer, 7758, 1)
elseif npcnome == "Giovanni" then
local items = getItemsInContainerById(bp.uid, 2312)
for _, uid in pairs(items) do
doTransformItem(uid, 325)
end
setPlayerStorageValue(killer, 9360, 1)
doPlayerAddItem(killer, 7756, 1)
elseif npcnome == "Falkner" then
local items = getItemsInContainerById(bp.uid, 10045)
for _, uid in pairs(items) do
doTransformItem(uid, 10046)
end
setPlayerStorageValue(killer, 9337, 1)
elseif npcnome == "Bugsy" then
local items = getItemsInContainerById(bp.uid, 10047)
for _, uid in pairs(items) do
doTransformItem(uid, 10048)
end
setPlayerStorageValue(killer, 9336, 1)
elseif npcnome == "Whitney" then
local items = getItemsInContainerById(bp.uid, 10049)
for _, uid in pairs(items) do
doTransformItem(uid, 10050)
end
setPlayerStorageValue(killer, 9335, 1)
elseif npcnome == "Morty" then
local items = getItemsInContainerById(bp.uid, 10051)
for _, uid in pairs(items) do
doTransformItem(uid, 10052)
end
setPlayerStorageValue(killer, 9334, 1)
elseif npcnome == "Chuck" then
local items = getItemsInContainerById(bp.uid, 10053)
for _, uid in pairs(items) do
doTransformItem(uid, 10054)
end
setPlayerStorageValue(killer, 9333, 1)
elseif npcnome == "Jasmine" then
local items = getItemsInContainerById(bp.uid, 10055)
for _, uid in pairs(items) do
doTransformItem(uid, 10056)
end
setPlayerStorageValue(killer, 9332, 1)
elseif npcnome == "Pryce" then
local items = getItemsInContainerById(bp.uid, 10057)
for _, uid in pairs(items) do
doTransformItem(uid, 10058)
end
setPlayerStorageValue(killer, 9331, 1)
elseif npcnome == "Clair" then
local items = getItemsInContainerById(bp.uid, 10059)
for _, uid in pairs(items) do
doTransformItem(uid, 10060)
end
setPlayerStorageValue(killer, 9330, 1)
elseif npcnome == "Lorelei" then
positgym = {x= 539,y = 997,z =6}
gymver = true 
elseif npcnome == "Bruno" then
positgym = {x= 538,y = 996,z =7}
gymver = true 
elseif npcnome == "Agatha" then
positgym = {x= 538,y = 996,z =8}
gymver = true 
elseif npcnome == "Lance" then
positgym = {x= 537,y = 996,z =9}
gymver = true 
elseif npcnome == "Ash" then
positgym = {x= 538,y = 997,z =3}
setPlayerStorageValue(killer, 9338,1)
setPlayerStorageValue(killer, 8334, 0)
local container = doPlayerAddItem(killer, 9523, 1)
doPlayerAddPremiumDays(killer, 30)
--doAddContainerItem(container, 2145, 10)
doAddContainerItem(container, 2159, 100)
gymver = true 
end
if gymver then

local pos = getCreaturePosition(killer)


local xnpc = getPlayerStorageValue(npc, 4982)
local ynpc = getPlayerStorageValue(npc, 4983)
local znpc = getPlayerStorageValue(npc, 4984)



	pos.stackpos = 0
	
	pos.z = znpc
	pos.x = xnpc
	pos.y = ynpc
	


if #getCreatureSummons(killer) >= 1 then
doTeleportThing(getCreatureSummons(killer)[1],positgym)
end
if npcnome == "Lorelei" then
doTeleportThing(npc, pos)
end
doTeleportThing(killer, positgym)
else
local posx = getPlayerStorageValue(killer, 4982)
local posy = getPlayerStorageValue(killer, 4983)
local posz = getPlayerStorageValue(killer, 4984)
local pos = getCreaturePosition(killer)

	pos.stackpos = 0
	
	pos.z = posz
	pos.x = posx
	pos.y = posy

local pos2 = getCreaturePosition(killer)
	pos2.stackpos = 0
	
	pos2.z = posz
	pos2.x = posx
	pos2.y = posy+2

if #getCreatureSummons(killer) >= 1 then
doTeleportThing(getCreatureSummons(killer)[1], pos2)
end
doTeleportThing(npc, pos)
doTeleportThing(killer, pos2)
end

setPlayerStorageValue(killer, 9999, 0)
setPlayerStorageValue(killer, 8888, 0)
setPlayerStorageValue(killer, 8334, 0)
setPlayerStorageValue(npc, 5000, 0)
setPlayerStorageValue(killer, 4578, 0)
setPlayerStorageValue(killer, 7787, 0)
setPlayerStorageValue(killer, 19987,0)
local nome = getCreatureName(killer) 

doCreatureSay(npc,  "Hey "..nome.." Congratulations you are a true Pokemon Trainer", 1)
--doCreatureSetNoMove(killer, 0)

if getPlayerGroupId(killer) == 7 then
setPlayerGroupId(killer, 1)
end

return True
end
local function execute(params)


local rand = ginasio[npcnome]["poke"]
local randomico = math.random(1,rand.poke)
local monster = ginasio[npcnome][randomico]

gopoke = monster.poke
power = monster.level

doCreatureSay(npc,  "Go "..gopoke.." I need your help", 1)

local k = doCreateMonster(gopoke, getCreaturePosition(killer))
local vids = (getCreatureHealth(k) - 2)
doCreatureAddHealth(k, -vids)
setCreatureMaxHealth(k, monster.Health)
doCreatureAddHealth(k, monster.Health)
registerCreatureEvent(k, "Summonkill")
registerCreatureEvent(k, "Summondeath")
registerCreatureEvent(k, "Summonthink")

doSendMagicEffect(getCreaturePosition(k), 10)
setPlayerStorageValue(k, 4555, 1)
setPlayerStorageValue(k, 4559, power)
setPlayerStorageValue(k, 4655, npc)
setPlayerStorageValue(k, 9548, killer)
setPlayerStorageValue(killer, 6569, k)




end
doCreatureSay(npc,  "Hey hum.. i chose...", 1)
addEvent(execute,1000,cid)








 


       
         
  

 



    

return True
end

