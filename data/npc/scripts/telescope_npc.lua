---Script by moc kthe bear (MTB)
local first = false
local xVisualCamp = 6 --config
local yVisualCamp = 4 --config
local FPM = 20  --frames por minuto
local salapos = {x=1036,y=973,z=4} --Centro da pos da sala
local showEffecr = false -- Efet na sala
local showEffece = false -- efect no campo de visao
local showEffeca = true -- efect na camera
local printTime = true   --- se quiser ver o tempo
local creatArr = {}
function onCreatureAppear(cid)
end

function onCreatureDisappear(cid)
end

function onCreatureSay(cid, type, msg)
  if msg == 'go' then
     run_npc() 
  elseif msg == 'end' then
     setGlobalStorageValue(5022, 1)
     doCreateItem(2584,1, pos)
     doRemoveCreature(getNpcCid())
  else
       local posCreat = getCreaturePosition(cid)
       local posNpc = getCreaturePosition(getNpcCid())
       doCreatureSay(cid, msg, type,{x= salapos.x + (posCreat.x-posNpc.x), y= salapos.y + (posCreat.y - posNpc.y),z=salapos.z,stackpos = 255})
  end
end

function onPlayerCloseChannel(cid)
end

function onPlayerEndTrade(cid)
end

function onThink()
   if first == false then
      pncid = getNpcCid()
      pos = getCreaturePosition(pncid)
      first = true
      addEvent(function() run_npc() end,100)
   else
   local p1 = getCreaturePosition(getNpcCid())
   if p1.x ~= pos.x or p1.y ~= pos.y then
      doTeleportThing(getNpcCid(), pos)
   end
   end
end
function getTileItems(loca)
   local finded = {}
   for i=0,254 do
      loca.stackpos = i
      q = getThingfromPos(loca)
      if q.itemid >= 100 and isCreature(q.uid) == FALSE then
            table.insert(finded,i,{q.itemid,q.type})
      end
   end
   loca.stackpos = 255
   q = getThingfromPos(loca)
   if isCreature(q.uid) == TRUE then
      finded[255] = {'Creature',getCreatureName(q.uid),getCreatureOutfit(q.uid),loca}
   end
   return finded
end
local function getMap2(pos_,pos2)
 local g = {}
 local matrix_ret = {}
 local ne = 0
 for x=-xVisualCamp,xVisualCamp do
    for y=-yVisualCamp,yVisualCamp do
        ne = ne+1
        local g = {x=pos_.x+x,y=pos_.y+y,z=pos_.z}
        if showEffece == true then
           doSendMagicEffect(g, 12)
        end
        if showEffecr == true then
           doSendMagicEffect({x=pos2.x+x,y=pos2.y+y,z=pos2.z,stackpos=stack}, 12)
        end
        local  find = getTileItems(g)
        local old = ""
        for stack,item in pairs(find) do
        if type(item[1]) == 'string' then                   
            createCreature(item[2],item[3],{x=pos2.x+x,y=pos2.y+y,z=pos2.z,stackpos=stack})     
        else
        if item[2] ~= 0 then
           if old ~= x..y..stack then
               old = x..y..stack
               if x ~= 1 and y ~= 1 and x ~= -1 and y ~= -1 then
                  local items23 = doCreateItem(item[1],item[2],{x=pos2.x+x,y=pos2.y+y,z=pos2.z,stackpos=stack})
                  doSetItemActionId(items23,5021)
                  if items23 then
                     doSetItemActionId(items23,5021)
                  end
               end
           else
               print('Duplicated',x..find[1][2]..stack)
           end
         else
             local items23 = doCreateItem(item[1],item[2],{x=pos2.x+x,y=pos2.y+y,z=pos2.z,stackpos=stack})
             if items23 then
                doSetItemActionId(items23,5021)
             end
             end
         end
        end
    end
 end
 return doCreateItem(9800, 1,pos2)
end
function cleanTile(p)
       local unfreeze = 0
       p.stackpos = 1
       repeat
             for stackpos=1,255 do
                 p.stackpos = stackpos
                 local fe = getThingfromPos(p)
                 if fe.itemid > 0 and isCreature(fe.uid) == FALSE then
                    doRemoveItem(fe.uid,-1)
                 end
                 if isNpc(fe.uid) == TRUE then
                    doRemoveCreature(fe.uid)
                 end
             end
             p.stackpos = 0xff
             local fae = getThingfromPos(p)
             unfreeze = unfreeze+1
             if fae.itemid == 0 or unfreeze >= 100 then break end;
        until false
        
end                    

function clean(pos_)
   for x=-xVisualCamp,xVisualCamp do
    for y=-yVisualCamp,yVisualCamp do
        n = 0
        doCreateItem(460, 1, {x=pos_.x+x,y=pos_.y+y,z=pos_.z,stackpos=0}) 
        local g = {x=pos_.x+x,y=pos_.y+y,z=pos_.z,stackpos=0}
        cleanTile(g)       
    end
   end
end
function createCreature(name,outfit,pos)

  local file = io.open('data/npc/'..name..'.xml','r')
  if not file then
     file = io.open('data/npc/'..name..'.xml','w')
     if not file then
        oCreateNpc(name, pos)
        return nil
     end
     file:write(string.format([[<?xml version="1.0"?>
<npc name="%s" floorchange="0" walkinterval="0" speed="900">
	<health now="150" max="150"/>
	<look type="%d" head="%d" body="%d" legs="%d" feet="%d" addons="%d"/>
</npc>]],name,outfit.lookType,outfit.lookHead,outfit.lookBody,outfit.lookLegs,outfit.lookFeet,outfit.lookAddons))
  file:close()
  addEvent(function(name,pos)
  doCreateNpc(name, pos)
  os.remove('data//npc//'..name..'.xml')
  end,100,name,pos)
  else
     file:close() 
     return nil
  end
end
function run_npc()
  starte = os.clock()
  if getGlobalStorageValue(5022) ~= -1 then
     setGlobalStorageValue(5022,-1)
     return TRUE
  end
  setGlobalStorageValue(5012,1)
  if showEffeca == true then
     doSendMagicEffect(pos, 12)
  end
  clean(salapos)
  --createMap(salapos,find)
  cleanTile(salapos)
  find = getMap2(pos,salapos)
  setGlobalStorageValue(5012,-1)
  addEvent(run_npc,60000/FPM)
  if printTime == true then
     animatedTextBig(pos,'Refresh: '..(math.floor((os.clock()-starte)*100)/100)..' sec ('..FPM..' fpm)',65)
     animatedTextBig(salapos,'Refresh: '..(math.floor((os.clock()-starte)*100)/100)..' sec ('..FPM..' fpm)',65)
  end
end