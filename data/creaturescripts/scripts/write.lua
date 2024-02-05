
function registermsg(cid,text,name)
local worldid = getConfigValue('worldId')
local worldname = "";
if worldid == 0 then
worldname = "Nibiru"
elseif worldid == 1 then
worldname = "Pandora"
elseif worldid == 2 then
worldname = "Fusion"
elseif worldid == 3 then
worldname = "Maya"
end
db.executeQuery("INSERT INTO `global_message` (`message_id` ,`WorldId` ,`Player` ,`Mensagem` ,`"..worldname.."`)VALUES (NULL , '"..worldid.."',  '"..name.."', '"..text.."',  '1');")
return true
end
function registerreportmsg(cid,text,name)
local worldid = getConfigValue('worldId')
local worldname = "";
if worldid == 0 then
worldname = "Nibiru"
elseif worldid == 1 then
worldname = "Pandora"
elseif worldid == 2 then
worldname = "Fusion"
elseif worldid == 3 then
worldname = "Maya"
end
db.executeQuery("INSERT INTO `report_message` (`message_id` ,`WorldId` ,`Player` ,`Mensagem` ,`"..worldname.."`)VALUES (NULL , '"..worldid.."',  '"..name.."', '"..text.."',  '1');")
return true
end
function onWriteToChannel(cid, channelId, text)
if(channelId == 7) then
registermsg(cid,text,getCreatureName(cid))
return true
end
return true
end