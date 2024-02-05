function onTextEdit(cid, item, newText) 

doPlayerSendTextMessage(cid, MESSAGE_INFO_DESCR, "essa mensagem é "..newText..".")
return TRUE 
end  