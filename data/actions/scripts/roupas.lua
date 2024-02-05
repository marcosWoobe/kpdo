function onUse(cid, item, frompos, item2, topos)   
if getPlayerStorageValue(cid, 17000) >= 1 or getPlayerStorageValue(cid, 17001) >= 1 or  getPlayerStorageValue(cid, 91859) >= 1  then
return true
end

if (hasCondition(cid, CONDITION_OUTFIT)) then
doRemoveCondition(cid, CONDITION_OUTFIT)
end
local outfitm = {lookType = 263, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
local let = {lookType = 264, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
local namem = "Elite Trainer"
local namef = "Elite Trainer"
if getPlayerStorageValue(cid, 50) <= 0 then
setPlayerStorageValue(cid, 50, 1)
elseif getPlayerStorageValue(cid, 50) == 1 then
setPlayerStorageValue(cid, 50, 2)
outfitm = {lookType = 163, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 162, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Bussiness"
namef = "Bussiness"
elseif getPlayerStorageValue(cid, 50) == 2 then
setPlayerStorageValue(cid, 50, 3)
outfitm = {lookType = 165, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 166, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Athlete"
namef = "Athlete"
elseif getPlayerStorageValue(cid, 50) == 3 then
setPlayerStorageValue(cid, 50, 4)
outfitm = {lookType = 167, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 168, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Punk"
namef = "Punk"
elseif getPlayerStorageValue(cid, 50) == 4 then
setPlayerStorageValue(cid, 50, 5)
outfitm = {lookType = 169, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 170, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Fisherman"
namef = "Fisherwoman"
elseif getPlayerStorageValue(cid, 50) == 5 then
setPlayerStorageValue(cid, 50, 6)
outfitm = {lookType = 171, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 173, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Research"
namef = "Researcher"
elseif getPlayerStorageValue(cid, 50) == 6 then
setPlayerStorageValue(cid, 50, 7)
outfitm = {lookType = 172, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 174, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Snow"
namef = "Snow"
elseif getPlayerStorageValue(cid, 50) == 7 then
setPlayerStorageValue(cid, 50, 8)
outfitm = {lookType = 253, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 254, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Rocket"
namef = "Rocket"
elseif getPlayerStorageValue(cid, 50) == 8 then
setPlayerStorageValue(cid, 50, 9)
outfitm = {lookType = 143, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 144, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Adventurer"
namef = "Adventurer"
elseif getPlayerStorageValue(cid, 50) == 9 then
setPlayerStorageValue(cid, 50, 10)
outfitm = {lookType = 234, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 235, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Kung-Fu"
namef = "Kung-Fu"
elseif getPlayerStorageValue(cid, 50) == 10 then
setPlayerStorageValue(cid, 50, 11)
outfitm = {lookType = 236, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 237, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Reggae"
namef = "Reggae"
elseif getPlayerStorageValue(cid, 50) == 11 then
setPlayerStorageValue(cid, 50, 12)
outfitm = {lookType = 194, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 161, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Reapper"
namef = "Reapper"
elseif getPlayerStorageValue(cid, 50) == 12 then
setPlayerStorageValue(cid, 50, 13)
outfitm = {lookType = 766, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 770, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Scary"
namef = "Scary"
elseif getPlayerStorageValue(cid, 50) == 13 then
setPlayerStorageValue(cid, 50, 14)
outfitm = {lookType = 765, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 768, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Dragon"
namef = "Dragon"
elseif getPlayerStorageValue(cid, 50) == 14 then
setPlayerStorageValue(cid, 50, 15)
outfitm = {lookType = 767, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 796, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Beach"
namef = "Beach"
elseif getPlayerStorageValue(cid, 50) == 15 then
setPlayerStorageValue(cid, 50, 16)
outfitm = {lookType = 769, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 785, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Twister"
namef = "Twister"
elseif getPlayerStorageValue(cid, 50) == 16 then
setPlayerStorageValue(cid, 50, 17)
outfitm = {lookType = 771, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 772, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Venom"
namef = "Venom"
elseif getPlayerStorageValue(cid, 50) == 17 then
setPlayerStorageValue(cid, 50, 18)
outfitm = {lookType = 774, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 773, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Norman"
namef = "Norman"
elseif getPlayerStorageValue(cid, 50) == 18 then
setPlayerStorageValue(cid, 50, 19)
outfitm = {lookType = 777, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 775, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Flame"
namef = "Flame"
elseif getPlayerStorageValue(cid, 50) == 19 then
setPlayerStorageValue(cid, 50, 20)
outfitm = {lookType = 778, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 786, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Garden"
namef = "Garden"
elseif getPlayerStorageValue(cid, 50) == 20 then
setPlayerStorageValue(cid, 50, 21)
outfitm = {lookType = 780, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 784, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Gorten"
namef = "Gorten"
elseif getPlayerStorageValue(cid, 50) == 21 then
setPlayerStorageValue(cid, 50, 22)
outfitm = {lookType = 776, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 787, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Ninja"
namef = "Ninja"
elseif getPlayerStorageValue(cid, 50) == 22 then
setPlayerStorageValue(cid, 50, 23)
outfitm = {lookType = 781, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 782, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Model"
namef = "Model"
elseif getPlayerStorageValue(cid, 50) == 23 then
setPlayerStorageValue(cid, 50, 24)
outfitm = {lookType = 790, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 783, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Blizzard"
namef = "Blizzard"
elseif getPlayerStorageValue(cid, 50) == 24 then
setPlayerStorageValue(cid, 50, 25)
outfitm = {lookType = 788, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 794, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Dark"
namef = "Dark"
elseif getPlayerStorageValue(cid, 50) == 25 then
setPlayerStorageValue(cid, 50, 26)
outfitm = {lookType = 789, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 793, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Sea"
namef = "Sea"
elseif getPlayerStorageValue(cid, 50) == 26 then
setPlayerStorageValue(cid, 50, 27)
outfitm = {lookType = 779, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 792, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Leaf"
namef = "Leaf"
elseif getPlayerStorageValue(cid, 50) == 27 then
setPlayerStorageValue(cid, 50, 28)
outfitm = {lookType = 798 ,lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 797, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Wizzard"
namef = "Wizzard"
elseif getPlayerStorageValue(cid, 50) == 28 then
setPlayerStorageValue(cid, 50, nil)
outfitm = {lookType = 799 ,lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
let = {lookType = 795, lookHead = getCreatureOutfit(cid).lookHead, lookBody = getCreatureOutfit(cid).lookBody, lookLegs = getCreatureOutfit(cid).lookLegs, lookFeet = getCreatureOutfit(cid).lookFeet}
namem = "Ancient"
namef = "Ancient"

end
if getPlayerSex(cid) == 1 then
doPlayerSendTextMessage(cid, 27, "You are trying on the "..namem.." outfit.")
doSetCreatureOutfit(cid, outfitm, 5000)

elseif getPlayerSex(cid) == 0 then
doPlayerSendTextMessage(cid, 27, "You are trying on the "..namef.." outfit.")
doSetCreatureOutfit(cid, let, 5000)

end
return true
end