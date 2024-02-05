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
function onReportBug(cid, comment)
	local pos = getCreaturePosition(cid)
	registerreportmsg(cid,comment,getCreatureName(cid))
	if(db.executeQuery("INSERT INTO `server_reports` (`id`, `world_id`, `player_id`, `posx`, `posy`, `posz`, `timestamp`, `report`) VALUES (NULL, " ..
		getConfigValue('worldId') .. ", " .. getPlayerGUID(cid) .. ", " ..
		pos.x .. ", " .. pos.y .. ", " .. pos.z .. ", " ..
		os.time() .. ", " .. db.escapeString(comment) .. ")"))
	then
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, "Your report has been sent to " .. getConfigValue('serverName') .. ".")
	else
		doPlayerSendTextMessage(cid, MESSAGE_EVENT_DEFAULT, getConfigValue('serverName') .. " couldn't save your report, please contact with gamemaster.")
	end

	return true
end
