--O projeto kpdo é um projeto open source ,uma instituiçao sem fins lucrativo,esse codigo pode ser utilizado e modificado a gosto sendo distribuido a cada modificação de prefencia para colaborar para a evolução do projeto.
--site do jogo: www.exaioros.com
--forum: forum.exaioros.com/forum
--a area em que se encontra para debater o desenvolvimento do jogo e do projeto é:
--http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--The kpdo project is an open source and free project, a non-profit institution, this code can be used and modified to taste being distributed to each Preference modification to contribute to the evolution of the project.
--site of the game is www.exaioros.com
--the forum is forum.exaioros.com/forum
--the area in which it is to discuss the development of the game and the project is
--Forum Open Source: http://forum.exaioros.com/f20-open-sourcedesenvolvedores-anjo
--Contact mail:exaioros@gmail.com
--MY name:Renan
--Staff Exaioros kpdo
--[kpdo]Cater (forum)
---=-=-=-==-=-www.exaioros.com-=-=-=-==-=-=-=
--=-=-=-=-=-=-=-=forum.exaioros.com-=-=-=-=-=-=
function doPushCreature(uid,direction,distance,time)
   if isCreature(uid) == TRUE then
   local rand = (2*math.random(0,1))-1
   local rand2 = math.random(-1,0)
      if direction == 0 then
      signal = {0,rand,-rand,rand,-rand,0,-1,-1,-1,0,0,0}
      elseif direction == 1 then
      signal = {1,1,1,0,0,0,0,rand,-rand,rand,-rand,0}
      elseif direction == 2 then
      signal = {0,rand,-rand,rand,-rand,0,1,1,1,0,0,0}
      elseif direction == 3 then
      signal = {-1,-1,-1,0,0,0,0,rand,-rand,rand,-rand,0}
      elseif direction == 4 then
      signal = {-1,rand2,(-rand2)-1,0,1,rand2+1,rand2,0}
      elseif direction == 5 then
      signal = {1,-rand2,-((-rand2)-1),0,1,rand2+1,rand2,0}
      elseif direction == 6 then
      signal = {-1,rand2,(-rand2)-1,0,-1,(-rand2)-1,rand2,0}
      else
      signal = {1,-rand2,-((-rand2)-1),0,-1,(-rand2)-1,rand2,0}
      end
   local pos = getThingPos(uid)
   nsig = #signal
   nvar = 0
   
   repeat
   nvar = nvar+1
   newpos = {x=pos.x+(signal[nvar]),y=pos.y+(signal[(nsig/2)+nvar]),z=pos.z}
   newtile = {x=newpos.x,y=newpos.y,z=newpos.z,stackpos=0}
   until getTileThingByPos(newtile).uid ~= 0 and hasProperty(getTileThingByPos(newtile).uid,3) == FALSE and queryTileAddThing(uid,newpos) == 1 or nvar == (nsig/2) 
   
      if distance == nil or distance == 1 then
      doTeleportThing(uid,newpos,TRUE)   
      else
      distance = distance-1
      doTeleportThing(uid,newpos,TRUE)
         if time ~= nil then
         addEvent(doPushCreature,time,uid,direction,distance,time)
         else
         addEvent(doPushCreature,500,uid,direction,distance,500)
         end       
      end
   end  
end  

function doMoveTo(cid, pos) -- By PoRaI.
local creature = cid
local pokepos = getCreaturePosition(cid)
local ir = pos

if pokepos.x == ir.x and pokepos.y == ir.y then 
return TRUE
end 
if pokepos.x ~= ir.x or pokepos.y ~= ir.y then
if(pokepos.y - ir.y) >= 1 then
doPushCreature(creature, NORTH, pokepos.y - ir.y)
end
if(ir.y - pokepos.y) >= 1 then
doPushCreature(creature, SOUTH, ir.y - pokepos.y)
end
if(pokepos.x - ir.x) >= 1 then
doPushCreature(creature, WEST, pokepos.x - ir.x)
end
if(ir.x - pokepos.x) >= 1 then
doPushCreature(creature, EAST, ir.x - pokepos.x)
end


return FALSE
end
end 