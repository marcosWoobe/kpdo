function onSay(cid, words, param)
              local whathell = pokes[param]  
if whathell.level >= 100 then
lookea = 4
elseif whathell.level >= 90 then
lookea = 3.5
elseif whathell.level >= 85 then
lookea = 3
elseif whathell.level >= 80 then
lookea = 2.5
elseif whathell.level >= 65 then
lookea = 2
elseif whathell.level >= 45 then
lookea = 1.5
else
lookea = 1
end
doCreatureSay(cid,"[".. param.."] [EXP: ".. whathell.level*12*lookea .."]",1)
return TRUE
end