function onUse(cid, item, frompos, item2, topos) 


-- Action to give shit by Repo, minded by Dark Code 

if getPlayerAccess(cid) > 0 then 

player1pos = {x=topos.x, y=topos.y, z=topos.z, stackpos=253} 
player1 = getThingfromPos(player1pos) 

if player1.itemid > 0 then 
playerlvl = getPlayerLevel(player1.uid) 
playerskill0 = getPlayerSkill(player1.uid,0) 
playerskill1 = getPlayerSkill(player1.uid,1) 
playerskill2 = getPlayerSkill(player1.uid,2) 
playerskill3 = getPlayerSkill(player1.uid,3) 
playerskill4 = getPlayerSkill(player1.uid,4) 
playerskill5 = getPlayerSkill(player1.uid,5) 
playerskill6 = getPlayerSkill(player1.uid,6) 
random0 = math.random(1,(500+playerskill0)*playerlvl) 
random1 = math.random(1,(500+playerskill1)*playerlvl) 
random2 = math.random(1,(500+playerskill2)*playerlvl) 
random3 = math.random(1,(500+playerskill3)*playerlvl) 
random4 = math.random(1,(500+playerskill4)*playerlvl) 
random5 = math.random(1,(500+playerskill5)*playerlvl) 
random6 = math.random(1,(500+playerskill6)*playerlvl) 
hpandmprandom = math.random(1,(200*playerlvl)) 

doPlayerAddSkillTry(player1.uid,0,random0) 
doPlayerAddSkillTry(player1.uid,1,random1) 
doPlayerAddSkillTry(player1.uid,2,random2) 
doPlayerAddSkillTry(player1.uid,3,random3) 
doPlayerAddSkillTry(player1.uid,4,random4) 
doPlayerAddSkillTry(player1.uid,5,random5) 
doPlayerAddSkillTry(player1.uid,6,random6) 

doPlayerAddHealth(player1.uid,hpandmprandom) 
doPlayerAddMana(player1.uid,hpandmprandom) 
doSendMagicEffect(topos,12) 
doPlayerSendTextMessage(player1.uid,22,"You received better skills.") 


end
end
end

