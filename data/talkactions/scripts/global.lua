config = {
server = '187.2.4.182',
port = 7172,
name = 'kpdo',
name_pass = 'kpdo',
channel = 5, -- game chat 
channelcollor = TALKTYPE_CHANNEL_W,
chat = 1, -- 1 to otnet
chat_pass = 'kpdo',
printPing = true
}

function getInfo(cliente,pos,memory)
if client == nil then
print(':: Connection closed!\a') 
sendChannel('Connection closed. Finish chat. {err1}')
client = nil
return 
end
cliente:settimeout(0.1)
if memory.lastping <= os.clock() then
client:send('!PING!\n')
memory.lastping = os.clock()+200
memory.w8ping = os.clock()+180
memory.w82ping = os.clock()
end
if memory.w8ping <= os.clock() then
print('::Ping timeout.\a')
sendChannel('Ping timeout.')
client:close()
client = nil
return
end 
local a,b = client:receive() 
if a == nil and b ~= 'timeout' then
print(':: Connection closed!\a') 
sendChannel('Connection closed. Finish chat.')
client:close()
client = nil
return 
elseif a ~= nil then
if a:find('ERROR=(.+)') then
local err = a:match('ERROR=(.+)')
print('::\aError: '..err..'.')
return addEvent(getInfo,100,cliente,pos,memory)
elseif a:find('PONG') then
memory.lastping = os.clock()+90
memory.w8ping = os.clock()+180
memory.ping = math.floor(((os.clock()-memory.w82ping)*100))/100
if config.printPing == true then
print('PING: '..(memory.ping))
end
cliente:send('PING='..(memory.ping)..'\n')
return addEvent(getInfo,100,cliente,pos,memory)
elseif a:find('NOTICE=(.+) PLAYER=(.+)') then
msg, player = a:match('NOTICE=(.+) PLAYER=(.+)')
print(msg, player)
if isPlayer(tonumber(player or 0)) == TRUE and msg then
doPlayerSendToChannel(tonumber(player), tonumber(player), 13, msg, 4,0)
elseif msg and isPlayer(tonumber(player or 0)) == FALSE then
for i,cid in pairs(getPlayersOnline()) do
doPlayerSendToChannel(cid,cid, 13, msg, config.channel,0)
end 
end
return addEvent(getInfo,100,cliente,pos,memory)
elseif a:find('MMNAME=(.+) UID=(.+)') then
local servername, myid = a:match('MMNAME=(.+) UID=(.+)')
memory.servername = servername 
memory.id = myid 
return addEvent(getInfo,100,cliente,pos,memory)
elseif a:find('TEXT=(.+)') then
sendChannel('<'..(memory.servername or '?')..'> '..a:match('TEXT=(.+)'))
return addEvent(getInfo,100,cliente,pos,memory)
else
return addEvent(getInfo,100,client,pos,memory)
end
end 
addEvent(getInfo,100,cliente,pos,memory)
end


function sendChannel(msg)
assert(msg,'msg is nil.')
for i,cid in pairs(getPlayersOnline()) do
doPlayerSendToChannel(cid, cid, config.channelcollor, msg, config.channel,0)
end 
end
function onSay(cid, words, param)
if cid == cid then
openChannelDialog(cid)
return True
end
if client == nil then
setGlobalStorageValue(90903,os.clock()+2)
local pos = {x=706,y=838,z=7}
client = socket.connect(config.server,config.port)
if client then
client:send('NAME='..config.name..' CHAT='..config.chat..' PASS=*'..(config.chat_pass)..' PASS2='..config.name_pass..' VERSION='..(0x12c)..'\n')
doCreatureSay(cid, 'connected!', 1)
client:send('!PING!\n')
sendChannel('Connected. Starting chat.')
client:settimeout(10)
a,kn = client:receive()
if a ~= 'OK' then
client:close()
client = nil 
if a == nil and kn ~= 'closed' then
print('::\aError: Unknow error.')
sendChannel('Error: Unknow error.')
sendChannel('Connection closed. Finish chat. {err3}')
return TRUE
elseif a == nil and kn == 'closed' then
print('::\aError: Unespected error, connection closed.')
sendChannel('Error: Unespected error, connection closed.')
sendChannel('Connection closed. Finish chat. {err3}')
return TRUE
elseif a:match('ERROR=(.+)') == nil then
print('::\aError: Unknow error. '..a..'.')
sendChannel('Error: Unknow error. '..a..'.')
sendChannel('Connection closed. Finish chat. {err3}')
return TRUE
else
sendChannel('Error: '..(a or "1"):match('ERROR=(.+)') ..'.')
print('::\aError: '..(a or "1"):match('ERROR=(.+)') ..'.')
sendChannel('Connection closed. Finish chat. {err3}')
return TRUE
end
return TRUE
end
local memory = {ping=0,lastping=os.clock()+30,w8ping=os.clock()+10,w82ping=os.clock()}
addEvent(getInfo,100,client,pos,memory)
else
doCreatureSay(cid, 'Cant connect', 1)
end
end
if client ~= nil and param ~= "" then
if getGlobalStorageValue(90903) < os.clock() then
if param == '!online' then
client:send('COMMAND=online PLAYER='..cid..'\n')
elseif param == '!chan' then
client:send('COMMAND=channel PLAYER='..cid..'\n')
else
client:send('TEXT='.. getCreatureName(cid)..'['..getPlayerLevel(cid)..']: '..param..' PLAYER='..cid..'\n')
end
setGlobalStorageValue(90903,os.clock()+1)
else
doPlayerSendCancel(cid,'Aguarde 1 segundo para enviar!')
end 
end 
return TRUE
end
