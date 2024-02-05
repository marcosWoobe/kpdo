function onSay(cid, words, param) 

config = { 
level1= 10, -- level necessario do player 1 pra usar o fight system. 
level2= 10, -- level necessario do player 2 pra usar o fight system. 
pid=getPlayerGUID(cid), -- não mecha 
premium = "no", -- se precisa ser premium account ("yes" or "no") 
redskull="yes", -- players com red skull podem usar o fight system? ("yes" or "no"). 
prot="no", -- players precisam estar em protection zone pra usar o fight system? ("yes" or "no"). 
bat="no", --players precisam estar sem fight pra huntar? ("yes" or "no"). 
Posplayer1 = {x=998, y=1060, z=6}, -- para onde o jogador que deu fight sera levado 
Posplayer2 = {x=997, y=1060, z=6}, -- para onde o jogador que aceitou fight sera levado 
RemoveItem = "yes", -- se ira remover o item ("yes" or "no") 
item = 2160, -- id do item 
storage = 9111, 
} 


	



if isInArray({"!fight"}, words)  then 
local t = string.explode(param, ",")
--if not (t[2])   then
--doPlayerPopupFYI(cid, "Need params, Example '!fight Kpdo,6' NOTE !fight <player>,<number rounds>.") 
---return true
--end
--if(not tonumber(t[2])) then
--doPlayerPopupFYI(cid, "Need params, numbers rounds example, !fight kpdo,1.") 
--return true
--end

--if tonumber(t[2]) <= 0 then
--doPlayerPopupFYI(cid, "Minime Rounds 1.") 
--return true
--end
 
local pid = getPlayerByNameWildcard(t[1]) 
if(not pid or (isPlayerGhost(pid) and getPlayerGhostAccess(pid) > getPlayerGhostAccess(cid))) then 
doPlayerPopupFYI(cid, "This player nots avaible.") 
return true 
end 

local player = getPlayerByName(t[1])



if isPlayer(player) then 
local nick = getCreatureName(player)
if nick == getCreatureName(cid) then
doPlayerPopupFYI(cid, "You can't invite you for battle LOL --'")
return true
end
if getPlayerStorageValue(cid, 5333) >= 1 then 
doPlayerPopupFYI(cid, "You can't fight in battle, end battle for other")
return true
end
if getPlayerStorageValue(player, 5333) >= 1 then 
doPlayerPopupFYI(cid, "You can't fight this player in battle, wait this player end battle for other")
return true
end
--local rounds = tonumber(t[2])
--setPlayerStorageValue(player, config.storage, cid)
setPlayerStorageValue(cid, config.storage+2, nick)
doCamsystem(cid)
--setPlayerStorageValue(player, config.storage+1, rounds)
--local nome = getCreatureName(cid)
--doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You Invite "..nick.." for duel ,"..rounds.." Round's,If you revoke duel say !revoke")
--doPlayerSendTextMessage(player, MESSAGE_STATUS_CONSOLE_BLUE, ""..nome.." Invite you for duel ,"..rounds.." Round's,If you accept say !accept else say !recuse")
--doCreatureSetSkullType(cid, 2) 
end 
return true 
end 


if isInArray({"!accept"}, words) then 


if getPlayerStorageValue(cid,config.storage) >= 1 then 
local enemy = getPlayerStorageValue(cid,config.storage) 
if isPlayer(enemy) then
if getPlayerStorageValue(cid, 5333) >= 1 then 
doPlayerPopupFYI(cid, "You can't fight in battle, end battle for other")
return true
end
if getPlayerStorageValue(enemy, 5333) >= 1 then 
doPlayerPopupFYI(cid, "You can't fight in battle, this player need end battle for other")
return true
end
if #getCreatureSummons(cid) >= 1 then
if getTileInfo(getCreaturePosition(getCreatureSummons(cid)[1])).protection or getTileInfo(getCreaturePosition(cid)).protection  then

	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cant duel in protection zone")

return true
end
else
if getTileInfo(getCreaturePosition(cid)).protection  then
	doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You cant duel in protection zone")

	return true
end
end

if #getCreatureSummons(enemy) >= 1 then
if getTileInfo(getCreaturePosition(getCreatureSummons(enemy)[1])).protection or getTileInfo(getCreaturePosition(enemy)).protection  then
	doPlayerSendTextMessage(enemy, MESSAGE_STATUS_CONSOLE_BLUE, "You cant duel in protection zone")
return true
end
else
if getTileInfo(getCreaturePosition(enemy)).protection  then
	doPlayerSendTextMessage(enemy, MESSAGE_STATUS_CONSOLE_BLUE, "You cant duel in protection zone")
return true
end
end

local function start(params)
if isCreature(cid) and isCreature(enemy) then
if getPlayerStorageValue(cid, 5333) >= 1 and getPlayerStorageValue(enemy, 5333) >= 1 then
if #getCreatureSummons(cid) == 0 then
doPlayerAddSkillTry(cid,5,getPlayerRequiredSkillTries(cid, 5, getPlayerSkill(cid,5)+1)) 
doPlayerAddSkillTry(enemy,4,getPlayerRequiredSkillTries(enemy, 4, getPlayerSkill(enemy,4)+1))

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You have lose duel")
doPlayerSendTextMessage(enemy, MESSAGE_STATUS_CONSOLE_RED, "You Win duel")




setPlayerStorageValue(enemy, 5333, 0)
setPlayerStorageValue(cid, 5333, 0)
setPlayerStorageValue(enemy, 1333, 0)
setPlayerStorageValue(cid, 1333, 0)
setPlayerStorageValue(enemy, 3333, 0)
setPlayerStorageValue(cid, 6333, 0)
setPlayerStorageValue(enemy, 6333, 0)
setPlayerStorageValue(cid, 3333, 0)
setPlayerStorageValue(enemy, 2333, 0)
setPlayerStorageValue(cid, 2333, 0)
setPlayerStorageValue(enemy, 4445, 0)
setPlayerStorageValue(cid, 4445, 0)
--doCreatureSetNoMove(enemy, 0)
--doCreatureSetNoMove(cid, 0)




doSendAnimatedText(getCreaturePosition(cid), "Loser", 144)
doSendAnimatedText(getCreaturePosition(enemy), "Wins", 210)
doPlayerLeaveParty(cid)
doPlayerSetDuel(cid,false)
return true
end
if #getCreatureSummons(enemy) == 0 then
doPlayerAddSkillTry(cid,4,getPlayerRequiredSkillTries(cid, 4, getPlayerSkill(cid,4)+1)) 
doPlayerAddSkillTry(enemy,5,getPlayerRequiredSkillTries(enemy, 5, getPlayerSkill(enemy,5)+1))

doPlayerSendTextMessage(enemy, MESSAGE_STATUS_CONSOLE_RED, "You have lose duel")
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You Win duel")




setPlayerStorageValue(enemy, 5333, 0)
setPlayerStorageValue(cid, 5333, 0)
setPlayerStorageValue(enemy, 1333, 0)
setPlayerStorageValue(cid, 1333, 0)
setPlayerStorageValue(enemy, 3333, 0)
setPlayerStorageValue(cid, 3333, 0)
setPlayerStorageValue(cid, 6333, 0)
setPlayerStorageValue(enemy, 6333, 0)
setPlayerStorageValue(enemy, 2333, 0)
setPlayerStorageValue(cid, 2333, 0)
setPlayerStorageValue(enemy, 4445, 0)
setPlayerStorageValue(cid, 4445, 0)
--doCreatureSetNoMove(enemy, 0)
--doCreatureSetNoMove(cid, 0)




doSendAnimatedText(getCreaturePosition(enemy), "Loser", 144)
doSendAnimatedText(getCreaturePosition(cid), "Wins", 210)
doPlayerLeaveParty(enemy)
doPlayerSetDuel(enemy,false)
return true
end
setPlayerStorageValue(enemy, 1333, 1)
setPlayerStorageValue(cid, 1333, 1)
doSendAnimatedText(getCreaturePosition(cid), "Start", 210)
doSendAnimatedText(getCreaturePosition(enemy), "Start", 210)
--local posit = getCreaturePosition(enemy)
--setPlayerStorageValue(cid, 35123, enemy)
--setPlayerStorageValue(cid, 35124, posit.x)
--setPlayerStorageValue(cid, 35125, posit.y)
--setPlayerStorageValue(cid, 35126, posit.z)
	end		
			end
end
local function contagem5(params)
if isCreature(cid) and isCreature(enemy) then
if getPlayerStorageValue(cid, 5333) >= 1 and getPlayerStorageValue(enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(cid), "1", 210)
doSendAnimatedText(getCreaturePosition(enemy), "1", 210)
addEvent(start,1000, cid)
end
	end		
			end
local function contagem4(params)
if isCreature(cid) and isCreature(enemy) then
if getPlayerStorageValue(cid, 5333) >= 1 and getPlayerStorageValue(enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(cid), "2", 210)
doSendAnimatedText(getCreaturePosition(enemy), "2", 210)
addEvent(contagem5,1000, cid)
end
			end
			end

local function contagem3(params)
if isCreature(cid) and isCreature(enemy) then
if getPlayerStorageValue(cid, 5333) >= 1 and getPlayerStorageValue(enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(cid), "3", 210)
doSendAnimatedText(getCreaturePosition(enemy), "3", 210)
addEvent(contagem4,1000, cid)
end
	end		
			end
local function contagem2(params)
if isCreature(cid) and isCreature(enemy) then
if getPlayerStorageValue(cid, 5333) >= 1 and getPlayerStorageValue(enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(cid), "4", 210)
doSendAnimatedText(getCreaturePosition(enemy), "4", 210)
addEvent(contagem3,1000, cid)
end
end			
			end
local function contagem(params)
if isCreature(cid) and isCreature(enemy) then
if getPlayerStorageValue(cid, 5333) >= 1 and getPlayerStorageValue(enemy, 5333) >= 1 then
doSendAnimatedText(getCreaturePosition(cid), "5", 210)
doSendAnimatedText(getCreaturePosition(enemy), "5", 210)
addEvent(contagem2,1000, cid)
end
end
end
			
			

local rounds = getPlayerStorageValue(cid,config.storage+1) 
--setPlayerStorageValue(enemy, 2333, 1)
setPlayerStorageValue(enemy, config.storage, -1)
setPlayerStorageValue(enemy, config.storage+2, -1) 
setPlayerStorageValue(cid, config.storage+2, -1)   
setPlayerStorageValue(cid, config.storage, -1) 
setPlayerStorageValue(enemy, 5333, rounds)
setPlayerStorageValue(cid, 5333, rounds)
setPlayerStorageValue(enemy, 1333, 0)
setPlayerStorageValue(cid, 1333, 0)
setPlayerStorageValue(enemy, 3333, 1)
setPlayerStorageValue(cid, 3333, 1)
setPlayerStorageValue(cid, 6333, enemy)
setPlayerStorageValue(enemy, 6333, cid)
 
if #getCreatureSummons(cid) >= 1 then
setPlayerStorageValue(cid, 2333, 1)
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 5 seconds to go you pokemon or lose duel")
end
if #getCreatureSummons(enemy) >= 1 then
setPlayerStorageValue(enemy, 2333, 1)
else
doPlayerSendTextMessage(enemy, MESSAGE_STATUS_CONSOLE_BLUE, "You have 5 seconds to go you pokemon or lose duel")
end
addEvent(contagem,100, {cid = cid,enemy = enemy})

--else
--doPlayerPopupFYI(cid, "Sorry , You don't invited for duel") 
end

--else 
--doPlayerPopupFYI(cid, "Sorry , You don't invited for duel") 
end 
return true
end 

if isInArray({"!recuse"}, words)  then
if getPlayerStorageValue(cid,config.storage) >= 1 then
local enemy = getPlayerStorageValue(cid,config.storage) 
if isPlayer(enemy) then
local name = getCreatureName(enemy) 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You recuse battle player; "..name..".") 
doPlayerSendTextMessage(enemy, MESSAGE_STATUS_CONSOLE_BLUE, ""..getCreatureName(cid).." recuse battle.") 
--setPlayerStorageValue(enemy, config.storage, -1) 
setPlayerStorageValue(cid, config.storage, -1) 
setPlayerStorageValue(enemy, config.storage+2, -1) 
end
else 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You dont invited for duel.") 
end 
return true 
end 

if isInArray({"!revoke"}, words)  then
local enemy = getPlayerByName(getPlayerStorageValue(cid,config.storage+2)) 
if isPlayer(enemy) then
local name = getCreatureName(enemy) 
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You revoke battle player; "..name..".") 
doPlayerSendTextMessage(enemy, MESSAGE_STATUS_CONSOLE_BLUE, ""..getCreatureName(cid).." revoke battle.") 
setPlayerStorageValue(enemy, config.storage, -1) 
setPlayerStorageValue(cid, config.storage+2, -1)

end
elseif getPlayerStorageValue(cid, 5333) >= 1 then
local enemy = getPlayerStorageValue(cid,6333) 
doPlayerAddSkillTry(cid,5,getPlayerRequiredSkillTries(cid, 5, getPlayerSkill(cid,5)+1)) 
doPlayerAddSkillTry(enemy,4,getPlayerRequiredSkillTries(enemy, 4, getPlayerSkill(enemy,4)+1))

doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_RED, "You have lose duel")
doPlayerSendTextMessage(enemy, MESSAGE_STATUS_CONSOLE_RED, "You Win duel")




setPlayerStorageValue(enemy, 5333, 0)
setPlayerStorageValue(cid, 5333, 0)
setPlayerStorageValue(enemy, 1333, 0)
setPlayerStorageValue(cid, 1333, 0)
setPlayerStorageValue(cid, 6333, 0)
setPlayerStorageValue(enemy, 6333, 0)
setPlayerStorageValue(enemy, 3333, 0)
setPlayerStorageValue(cid, 3333, 0)
setPlayerStorageValue(enemy, 2333, 0)
setPlayerStorageValue(cid, 2333, 0)
setPlayerStorageValue(enemy, 4445, 0)
setPlayerStorageValue(cid, 4445, 0)




doSendAnimatedText(getCreaturePosition(cid), "Loser", 144)
doSendAnimatedText(getCreaturePosition(enemy), "Wins", 210)
doPlayerSetDuel(enemy,false)
doPlayerSetDuel(cid,false)
return true


end 



return true
end