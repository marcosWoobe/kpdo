local arenas = {
	[9233] = {
		fromPos ={
			{x = 980, y = 1040, z = 2},	--player 1 start pos
			{x = 980, y = 1043, z = 2} --player 2 start pos
											--you can add how much you want, there are no limits
		},
		toPos = {
			{x = 973, y = 1040, z = 3},	--player 1 teleport position
			{x = 970, y = 1040, z = 3} --player 2 teleport position
											--you can add how much you want, there are no limits
		}
	}
}
 

 function onUse(cid, item, fromPosition, item2, toPosition)


alavanca2pos = {x=985, y=1043, z=2, stackpos=1}
alavanca1pos = {x=985, y=1040, z=2, stackpos=1}
player1pos = {x = 986, y = 1040, z = 2, stackpos=253}
player1 = getThingfromPos(player1pos)

player2pos = {x = 986, y = 1043, z = 2, stackpos=253}
player2 = getThingfromPos(player2pos)
if player1.itemid > 0 and player2.itemid > 0 then
if isPlayer(player1.uid) and isPlayer(player2.uid) then
if  getPlayerStorageValue(player1.uid, 17001) <= 0 and getPlayerStorageValue(player1.uid, 17000) <= 0 and getPlayerStorageValue(player1.uid, 91859) <= 0 and getPlayerStorageValue(player2.uid, 17001) <= 0 and getPlayerStorageValue(player2.uid, 17000) <= 0 and getPlayerStorageValue(player2.uid, 91859) <= 0 then
if item.itemid == 1485 then
if item2.actionid == 9237 then




doTransformItem(item.uid,1484)
elseif item2.actionid == 9238 then




doTransformItem(item.uid,1484)
end

elseif item.itemid == 1484 then
doTransformItem(item.uid,1485)
elseif item.itemid == 1483 then
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Have members ,u need wait end duel")

end


local alavanca1 = getThingfromPos(alavanca1pos)
local alavanca2 = getThingfromPos(alavanca2pos)

if alavanca1.itemid == 1484 and alavanca2.itemid == 1484 then
doSendMagicEffect(getThingPos(player1.uid), 28)
doSendMagicEffect(getThingPos(player2.uid), 28)
doTransformItem(alavanca1.uid,1483)
doTransformItem(alavanca2.uid,1483)
else
return True
end
if #getCreatureSummons(player1.uid) >= 1 then
doTeleportThing(getCreatureSummons(player1.uid)[1], {x = 986, y = 1039, z = 3})
setPlayerStorageValue(player1.uid, 2333, 1)
else
doPlayerSendTextMessage(player1.uid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 15 seconds to go you pokemon or lose duel")
end
if #getCreatureSummons(player2.uid) >= 1 then
doTeleportThing(getCreatureSummons(player2.uid)[1], {x = 986, y = 1041, z = 3})
setPlayerStorageValue(player2.uid, 2333, 1)
else

doPlayerSendTextMessage(player2.uid, MESSAGE_STATUS_CONSOLE_BLUE, "You have 15 seconds to go you pokemon or lose duel")
end
setPlayerStorageValue(player1.uid, 6333, player2.uid)
setPlayerStorageValue(player2.uid, 6333, player1.uid)
setPlayerStorageValue(player1.uid, 5333, 3)
setPlayerStorageValue(player2.uid, 5333, 3)
setPlayerStorageValue(player1.uid, 1333, 1)
setPlayerStorageValue(player2.uid, 1333, 1)
setPlayerStorageValue(player1.uid, 3333, 1)
setPlayerStorageValue(player2.uid, 3333, 1)
doCreatureSetNoMove(player1.uid, 1)
doCreatureSetNoMove(player2.uid, 1)
doTeleportThing(player1.uid, {x = 986, y = 1039, z = 3})
doTeleportThing(player2.uid, {x = 986, y = 1041, z = 3})



			local function start(params)
if getPlayerStorageValue(cid, 3333) >= 1 then

setPlayerStorageValue(player1.uid, 1333, 0)
setPlayerStorageValue(player2.uid, 1333, 0)
if #getCreatureSummons(player1.uid) >= 1 then
doSendAnimatedText(getCreaturePosition(player1.uid), "Start", 210)
else
doPlayerAddSkillTry(player1.uid,4,50) 
doPlayerAddSkillTry(player2.uid,3,50) 
doPlayerSendTextMessage(player1.uid, MESSAGE_STATUS_CONSOLE_RED, "You have lose duel")
doPlayerSendTextMessage(player2.uid, MESSAGE_STATUS_CONSOLE_RED, "You Win duel")
if #getCreatureSummons(player1.uid) >= 1 then
doTeleportThing(getCreatureSummons(player1.uid)[1], {x=975,y=1032,z=0})
end
if #getCreatureSummons(player2.uid) >= 1 then
doTeleportThing(getCreatureSummons(player2.uid)[1], {x=975,y=1031,z=0})
end
setPlayerStorageValue(player1.uid, 4445, 0)
setPlayerStorageValue(player2.uid, 4445, 0)
setPlayerStorageValue(player1.uid, 5333, 0)
setPlayerStorageValue(player2.uid, 5333, 0)
setPlayerStorageValue(player1.uid, 1333, 0)

setPlayerStorageValue(player2.uid, 1333, 0)
setPlayerStorageValue(player1.uid, 3333, 0)
setPlayerStorageValue(player2.uid, 3333, 0)
setPlayerStorageValue(player2.uid, 2333, 0)
setPlayerStorageValue(player1.uid, 2333, 0)
doCreatureSetNoMove(player1.uid, 0)
doCreatureSetNoMove(player2.uid, 0)
doTeleportThing(player1.uid, {x=974,y=1031,z=0})
doTeleportThing(player2.uid, {x=974,y=1032,z=0})
doSendAnimatedText(getCreaturePosition(player1.uid), "Loser", 144)
doSendAnimatedText(getCreaturePosition(player2.uid), "Wins", 210)
alavanca2pos = {x=985, y=1043, z=2, stackpos=1}
alavanca1pos = {x=985, y=1040, z=2, stackpos=1}

alavanca1 = getThingfromPos(alavanca1pos)
alavanca2 = getThingfromPos(alavanca2pos)
doTransformItem(alavanca1.uid,1485)
doTransformItem(alavanca2.uid,1485)
return true
end
if #getCreatureSummons(player2.uid) >= 1 then
doSendAnimatedText(getCreaturePosition(player2.uid), "Start", 210)
else
doPlayerAddSkillTry(player2.uid,4,50) 
doPlayerAddSkillTry(player1.uid,3,50) 
doPlayerSendTextMessage(player2.uid, MESSAGE_STATUS_CONSOLE_RED, "You have lose duel")
doPlayerSendTextMessage(player1.uid, MESSAGE_STATUS_CONSOLE_RED, "You Win duel")
if #getCreatureSummons(player1.uid) >= 1 then
doTeleportThing(getCreatureSummons(player1.uid)[1], {x=975,y=1032,z=0})
end
if #getCreatureSummons(player2.uid) >= 1 then
doTeleportThing(getCreatureSummons(player2.uid)[1], {x=975,y=1031,z=0})
end
setPlayerStorageValue(player1.uid, 4445, 0)
setPlayerStorageValue(player2.uid, 4445, 0)
setPlayerStorageValue(player1.uid, 1333, 0)
setPlayerStorageValue(player2.uid, 1333, 0)
setPlayerStorageValue(player1.uid, 3333, 0)
setPlayerStorageValue(player2.uid, 3333, 0)
setPlayerStorageValue(player2.uid, 2333, 0)
setPlayerStorageValue(player1.uid, 2333, 0)
doCreatureSetNoMove(player1.uid, 0)
doCreatureSetNoMove(player2.uid, 0)
doTeleportThing(player1.uid, {x=974,y=1031,z=0})
doTeleportThing(player2.uid, {x=974,y=1032,z=0})
doSendAnimatedText(getCreaturePosition(player2.uid), "Loser", 144)
doSendAnimatedText(getCreaturePosition(player1.uid), "Wins", 210)
alavanca2pos = {x=985, y=1043, z=2, stackpos=1}
alavanca1pos = {x=985, y=1040, z=2, stackpos=1}

alavanca1 = getThingfromPos(alavanca1pos)
alavanca2 = getThingfromPos(alavanca2pos)
doTransformItem(alavanca1.uid,1485)
doTransformItem(alavanca2.uid,1485)
end


end

			end
local function contagem5(params)
if getPlayerStorageValue(player1.uid, 3333) >= 1 and getPlayerStorageValue(player2.uid, 3333) >= 1 then
doSendAnimatedText(getCreaturePosition(player1.uid), "1", 210)
doSendAnimatedText(getCreaturePosition(player2.uid), "1", 210)
addEvent(start,1000, cid)
end
			
			end
local function contagem4(params)
if getPlayerStorageValue(player1.uid, 3333) >= 1 and getPlayerStorageValue(player2.uid, 3333) >= 1 then
doSendAnimatedText(getCreaturePosition(player1.uid), "2", 210)
doSendAnimatedText(getCreaturePosition(player2.uid), "2", 210)
		addEvent(contagem5,1000, cid)	
end
			end

local function contagem3(params)
if getPlayerStorageValue(player1.uid, 3333) >= 1 and getPlayerStorageValue(player2.uid, 3333) >= 1 then
doSendAnimatedText(getCreaturePosition(player1.uid), "3", 210)
doSendAnimatedText(getCreaturePosition(player2.uid), "3", 210)
		addEvent(contagem4,1000, cid)	
end	
			end
local function contagem2(params)
if getPlayerStorageValue(player1.uid, 3333) >= 1 and getPlayerStorageValue(player2.uid, 3333) >= 1 then
doSendAnimatedText(getCreaturePosition(player1.uid), "4", 210)
doSendAnimatedText(getCreaturePosition(player2.uid), "4", 210)
	  addEvent(contagem3,1000, cid)	
end	
			end
local function contagem(params)
if getPlayerStorageValue(player1.uid, 3333) >= 1 and getPlayerStorageValue(player2.uid, 3333) >= 1 then
doSendAnimatedText(getCreaturePosition(player1.uid), "5", 210)
doSendAnimatedText(getCreaturePosition(player2.uid), "5", 210)
	    addEvent(contagem2,1000, cid)
end		
			end




		addEvent(contagem,1000, cid)




else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You Need 1 player and not possible duel members fly/ride/bike")
end
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You Need 1 player and not possible duel members fly/ride/bike")


end
else
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "You Need 1 player and not possible duel members fly/ride/bike")
end



	
 
end