function onUse(cid, item, frompos, item2, topos)
if item.actionid == 20000 then
 if getPlayerLevel(cid) >= 35 then
if getPlayerStorageValue(cid, 9361) <= 0 then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], getTownTemplePosition(getPlayerTown(cid)))
doSendMagicEffect(getThingPos(cid), 21)
end
	
setPlayerStorageValue(cid, 9361,1)	
local container = doPlayerAddItem(cid, 1992, 1)
doAddContainerItem(container, 2160, 60)
doAddContainerItem(container, 2280, 1)
doAddContainerItem(container, 192, 5)
doAddContainerItem(container, 2146, 10)
doAddContainerItem(container, 2144, 20)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
doPlayerSendTextMessage(cid, 27, "Congratulations owned rock quest")
else
doPlayerSendTextMessage(cid, 27, "You have this quests")
end
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 35")
end
elseif item.actionid == 20001 then
 if getPlayerLevel(cid) >= 40 then
if getPlayerStorageValue(cid, 9362) <= 0 then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], getTownTemplePosition(getPlayerTown(cid)))
doSendMagicEffect(getThingPos(cid), 21)
end
	
setPlayerStorageValue(cid, 9362,1)	
local container = doPlayerAddItem(cid, 1992, 1)
doAddContainerItem(container, 2160, 60)
doAddContainerItem(container, 2290, 1)
doAddContainerItem(container, 192, 5)
doAddContainerItem(container, 2146, 10)
doAddContainerItem(container, 2144, 20)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
doPlayerSendTextMessage(cid, 27, "Congratulations owned ice quest")
else
doPlayerSendTextMessage(cid, 27, "You have this quests")
end
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 40")
end
elseif item.actionid == 20002 then
 if getPlayerLevel(cid) >= 50 then
if getPlayerStorageValue(cid, 9363) <= 0 then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], getTownTemplePosition(getPlayerTown(cid)))
doSendMagicEffect(getThingPos(cid), 21)
end
	
setPlayerStorageValue(cid, 9363,1)	
local container = doPlayerAddItem(cid, 1992, 1)
doAddContainerItem(container, 2160, 100)
doAddContainerItem(container, 2288, 1)
doAddContainerItem(container, 192, 10)
doAddContainerItem(container, 2146, 20)
doAddContainerItem(container, 2144, 30)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
doPlayerSendTextMessage(cid, 27, "Congratulations owned psychic quest")

else
doPlayerSendTextMessage(cid, 27, "You have this quests")
end
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 50")
end
elseif item.actionid == 20005 then
 if getPlayerLevel(cid) >= 60 then
if getPlayerStorageValue(cid, 9366) <= 0 then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], getTownTemplePosition(getPlayerTown(cid)))
doSendMagicEffect(getThingPos(cid), 21)
end
	
setPlayerStorageValue(cid, 9366,1)	
local container = doPlayerAddItem(cid, 1992, 1)
doAddContainerItem(container, 2160, 100)
doAddContainerItem(container, 2286, 1)
doAddContainerItem(container, 192, 10)
doAddContainerItem(container, 2146, 20)
doAddContainerItem(container, 2144, 30)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
doPlayerSendTextMessage(cid, 27, "Congratulations owned ghost quest")

else
doPlayerSendTextMessage(cid, 27, "You have this quests")
end
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 60")
end
elseif item.actionid == 20004 then
 if getPlayerLevel(cid) >= 70 then
if getPlayerStorageValue(cid, 9364) <= 0 then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], getTownTemplePosition(getPlayerTown(cid)))
doSendMagicEffect(getThingPos(cid), 21)
end
	
setPlayerStorageValue(cid, 9364,1)	
local container = doPlayerAddItem(cid, 1992, 1)
doAddContainerItem(container, 2160, 100)
doAddContainerItem(container,192, 20)
doAddContainerItem(container, 2283, 1)
doAddContainerItem(container, 202, 1)
doAddContainerItem(container, 2146, 20)
doAddContainerItem(container, 2144, 30)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
doPlayerSendTextMessage(cid, 27, "Congratulations owned Valley quest")

else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 70.")
end
elseif item.actionid == 20003 then
 if getPlayerLevel(cid) >= 50 then
if getPlayerStorageValue(cid, 9365) <= 0 then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], getTownTemplePosition(getPlayerTown(cid)))
doSendMagicEffect(getThingPos(cid), 21)
end
	
setPlayerStorageValue(cid, 9365,1)	
local container = doPlayerAddItem(cid, 1992, 1)
doAddContainerItem(container, 2160, 100)
doAddContainerItem(container,192, 10)
doAddContainerItem(container, 2278, 1)
doAddContainerItem(container, 202, 1)
doAddContainerItem(container, 2146, 20)
doAddContainerItem(container, 2144, 30)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
doPlayerSendTextMessage(cid, 27, "Congratulations owned Venom quest")

else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 50.")
end
elseif item.actionid == 20006 then
 if getPlayerLevel(cid) >= 15 then
if getPlayerStorageValue(cid, 9367) <= 0 then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], getTownTemplePosition(getPlayerTown(cid)))
doSendMagicEffect(getThingPos(cid), 21)
end
	
setPlayerStorageValue(cid, 9367,1)	
doPlayerAddItem(cid, 7884, 1)

doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
doPlayerSendTextMessage(cid, 27, "Congratulations owned Box 1 quest")

else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 15.")
end
elseif item.actionid == 20007 then
 if getPlayerLevel(cid) >= 70 then
if getPlayerStorageValue(cid, 9368) <= 0 then
if #getCreatureSummons(cid) >= 1 then
doTeleportThing(getCreatureSummons(cid)[1], getTownTemplePosition(getPlayerTown(cid)))
doSendMagicEffect(getThingPos(cid), 21)
end
	
setPlayerStorageValue(cid, 9368,1)

	
doPlayerAddItem(cid, 7886, 1)

doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
doPlayerSendTextMessage(cid, 27, "Congratulations owned Box 3 quest")

else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 70.")
end
elseif item.actionid == 20008 then
 if getPlayerLevel(cid) >= 50 then
if getPlayerStorageValue(cid, 223298) >= 1 then
if getPlayerStorageValue(cid, 223298) <= 2 then
setPlayerStorageValue(cid, 223298,3)
doPlayerSendTextMessage(cid, 27, "Congratulations You are a nice trainer, take this")
doPlayerAddItem(cid, 7885, 1)
doPlayerAddItem(cid, 202, 1)
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end

else
doPlayerSendTextMessage(cid, 27, "You dont have a secret code.")
end

else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 50.")

end
elseif item.actionid == 20009 then
if getPlayerStorageValue(cid, 9369) <= 0 then
if getPlayerLevel(cid) >= 80 then
setPlayerStorageValue(cid, 9369,1)
doPlayerAddItem(cid, 202, 1)
doPlayerAddItem(cid, 2159, 1)
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 80.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20010 then
if getPlayerStorageValue(cid, 9370) <= 0 then
if getPlayerLevel(cid) >= 100 then
setPlayerStorageValue(cid, 9370,1)
doPlayerAddItem(cid, 2235, 1)
doPlayerAddItem(cid, 2159, 10)
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 100.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20011 then
if getPlayerStorageValue(cid, 9371) <= 0 then
if getPlayerLevel(cid) >= 200 then
setPlayerStorageValue(cid, 9371,1)

local container = doPlayerAddItem(cid, 9523, 1)

doAddContainerItem(container, 2235, 2)
doAddContainerItem(container, 9555, 2)
doAddContainerItem(container, 2145, 5)
doAddContainerItem(container, 7764, 1)
doAddContainerItem(container, 2159, 100)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 200.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20012 then
if getPlayerStorageValue(cid, 9372) <= 0 then
if getPlayerLevel(cid) >= 200 then
setPlayerStorageValue(cid, 9372,1)

local container = doPlayerAddItem(cid, 9523, 1)

doAddContainerItem(container, 9516, 1)
doAddContainerItem(container, 9555, 2)
doAddContainerItem(container, 9581, 1)
doAddContainerItem(container, 7770, 1)
doAddContainerItem(container, 2159, 50)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 200.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20013 then
if getPlayerStorageValue(cid, 9373) <= 0 then
if getPlayerLevel(cid) >= 200 then
setPlayerStorageValue(cid, 9373,1)

local container = doPlayerAddItem(cid, 9523, 1)

doAddContainerItem(container, 192, 100)
doAddContainerItem(container, 2145, 3)
doAddContainerItem(container, 202, 5)
doAddContainerItem(container, 7765, 1)
doAddContainerItem(container, 2159, 50)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 200.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20014 then
if getPlayerStorageValue(cid, 9374) <= 0 then
if getPlayerLevel(cid) >= 200 then
setPlayerStorageValue(cid, 9374,1)

local container = doPlayerAddItem(cid, 9523, 1)

doAddContainerItem(container, 9516, 3)
doAddContainerItem(container, 2145, 2)
doAddContainerItem(container, 2235, 5)
doAddContainerItem(container, 7757, 1)
doAddContainerItem(container, 2159, 100)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 200.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20015 then
if getPlayerStorageValue(cid, 9375) <= 0 then
if getPlayerLevel(cid) >= 150 then
setPlayerStorageValue(cid, 9375,1)

local container = doPlayerAddItem(cid, 9523, 1)

doAddContainerItem(container, 7757, 1)

doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 150.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20016 then
if getPlayerStorageValue(cid, 9376) <= 0 then
if getPlayerLevel(cid) >= 150 then
setPlayerStorageValue(cid, 9376,1)

local container = doPlayerAddItem(cid, 9523, 1)

doAddContainerItem(container, 7763, 1)

doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 150.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20017 then
if getPlayerStorageValue(cid, 9377) <= 0 then
if getPlayerLevel(cid) >= 200 then
setPlayerStorageValue(cid, 9377,1)

local container = doPlayerAddItem(cid, 9523, 1)

doAddContainerItem(container, 9516, 5)
doAddContainerItem(container, 11212, 100)
doAddContainerItem(container, 7759, 1)
doAddContainerItem(container, 2159, 100)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 200.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20018 then
if getPlayerStorageValue(cid, 9378) <= 0 then
if getPlayerLevel(cid) >= 200 then
setPlayerStorageValue(cid, 9378,1)

local container = doPlayerAddItem(cid, 9523, 1)

doAddContainerItem(container, 2145, 2)
doAddContainerItem(container, 11212, 100)
doAddContainerItem(container, 7760, 1)
doAddContainerItem(container, 2159, 100)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 200.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20019 then
if getPlayerStorageValue(cid, 9379) <= 0 then
if getPlayerLevel(cid) >= 200 then
setPlayerStorageValue(cid, 9379,1)

local container = doPlayerAddItem(cid, 9523, 1)

doAddContainerItem(container, 2235, 5)
doAddContainerItem(container, 11212, 100)
doAddContainerItem(container, 7766, 1)
doAddContainerItem(container, 2159, 100)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 200.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20020 then
if getPlayerStorageValue(cid, 9380) <= 0 then
if getPlayerLevel(cid) >= 200 then
setPlayerStorageValue(cid, 9380,1)

local container = doPlayerAddItem(cid, 9523, 1)

doAddContainerItem(container, 2235, 5)
doAddContainerItem(container, 11212, 100)
doAddContainerItem(container, 7772, 1)
doAddContainerItem(container, 2159, 100)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 200.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20021 then
if getPlayerStorageValue(cid, 9381) <= 0 then
if getPlayerLevel(cid) >= 100 then
setPlayerStorageValue(cid, 9381,1)

local container = doPlayerAddItem(cid, 9523, 1)
doAddContainerItem(container, 2159, 20)
doAddContainerItem(container, 7775, 1)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 100.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20022 then
if getPlayerStorageValue(cid, 9382) <= 0 then
if getPlayerLevel(cid) >= 120 then
setPlayerStorageValue(cid, 9382,1)

local container = doPlayerAddItem(cid, 9523, 1)
doAddContainerItem(container, 2159, 20)
doAddContainerItem(container, 7768, 1)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 120.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20023 then--torterra
if getPlayerStorageValue(cid, 9383) <= 0 then
if getPlayerLevel(cid) >= 200 then
setPlayerStorageValue(cid, 9383,1)

local container = doPlayerAddItem(cid, 9523, 1)
doAddContainerItem(container, 2159, 20)
doAddContainerItem(container, 10596, 2)
doAddContainerItem(container, 9538, 10)
setPlayerStorageValue(cid, 61223, nil)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 200.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20024 then--infernape
if getPlayerStorageValue(cid, 9384) <= 0 then
if getPlayerLevel(cid) >= 200 then
setPlayerStorageValue(cid, 9384,1)

local container = doPlayerAddItem(cid, 9523, 1)
doAddContainerItem(container, 2159, 20)
doAddContainerItem(container, 10596, 2)
doAddContainerItem(container, 9537, 10)
setPlayerStorageValue(cid, 61223, nil)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 200.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20025 then--empoleon
if getPlayerStorageValue(cid, 9385) <= 0 then
if getPlayerLevel(cid) >= 200 then
setPlayerStorageValue(cid, 9385,1)

local container = doPlayerAddItem(cid, 9523, 1)
doAddContainerItem(container, 2159, 20)
doAddContainerItem(container, 10596, 2)
doAddContainerItem(container, 9546, 10)
setPlayerStorageValue(cid, 61223, nil)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 200.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end
elseif item.actionid == 20026 then--staraptor
if getPlayerStorageValue(cid, 9386) <= 0 then
if getPlayerLevel(cid) >= 200 then
setPlayerStorageValue(cid, 9386,1)
setPlayerStorageValue(cid, 61223, nil)
local container = doPlayerAddItem(cid, 9523, 1)
doAddContainerItem(container, 2159, 20)
doAddContainerItem(container, 10596, 2)
doAddContainerItem(container, 9541, 10)
doTeleportThing(cid, getTownTemplePosition(getPlayerTown(cid)))
else
doPlayerSendTextMessage(cid, 27, "You dont have level, need 200.")
end
else
doPlayerSendTextMessage(cid, 27, "You have this quests.")
end

end


return true

end