---Script by mock the bear
local storeige = 18316
local function msg(cid,m)
    doCreatureSay(cid,m,TALKTYPE_ORANGE_1)
    doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, m)
end
function onSay(cid, words, param, channel) ---Script by mock the bear
doPlayerSetTown(cid, param)

doTeleportThing(cid,getTownTemplePosition(getPlayerTown(cid)))




return true

end
