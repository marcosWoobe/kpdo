local box1 = '11221'
local box2 = '11222'
local box1item =
{
[1] = {name = "Diamond",itemid = 2145,chance = 70,mx = 1,mn = 3},
[2] = {name = "Hyper Ball",itemid = 192,chance = 60,mx = 50,mn = 100},
[3] = {name = "X - Attack",itemid = 202,chance = 50,mx = 20,mn = 50},
[4] = {name = "X - Defend",itemid = 9555,chance = 45,mx = 20,mn = 50},
[5] = {name = "Rare Candy",itemid = 2235,chance = 35,mx=1,mn = 3},
[6] = {name = "Golden Candy",itemid = 9516,chance = 25,mx=1, mn = 3},
[7] = {name = "Tm Remover",itemid =9556,chance = 20,mx=1,mn=1},
[8] = {name = "Hourglass of Stamina",itemid = 9581,chance = 15,mx=1,mn=1},

}

local box2item =
{
[1] = {name = "Diamond",itemid = 2145,chance = 70,mx = 1,mn = 3},
[2] = {name = "Hyper Ball",itemid = 192,chance = 60,mx = 50,mn = 100},
[3] = {name = "X - Attack",itemid = 202,chance = 50,mx = 20,mn = 50},
[4] = {name = "X - Defend",itemid = 9555,chance = 45,mx = 20,mn = 50},
[5]=  {name = "Rare Candy",itemid = 2235,chance = 35,mx=1,mn = 3},
[6] = {name= "Golden Candy",itemid = 9516,chance = 25,mx=1, mn = 3},
[7] = {name = "Tm Remover",itemid =9556,chance = 20,mx=1,mn=1},
[8] = {name = "Hourglass of Stamina",itemid = 9581,chance = 15,mx=1,mn=1},
[9] = {name = "Big Diamond",itemid = 11216,chance = 20,mx=1,mn=3},
[10] = {name = "Giant Ball",itemid = 11212,chance = 55,mx=30,mn=100},

}



function onUse(cid, item, frompos, item2, topos)

if isCreature(item2.uid) then
return doPlayerSendCancel(cid, "You can only use key in present box!")
end



      local itemfrase = "You Open A presente box 1 , Present: "
	    local santaclausbag = doPlayerAddItem(cid,  11224, 1)
        if item2.id == box1 then
      for i = 1, 8 do
	  local e = box1item[i]
	  if math.random(1,100) <= e.chance then
	  local quantidade = math.random(e.mx,e.mn)
	doAddContainerItem(santaclausbag, e.itemid,quantidade )
	 itemfrase = itemfrase..quantidade.." "..e.name..","
	  	  end
		  
		  end
		  doPlayerSendTextMessage(cid,22,itemfrase)
	  
        doRemoveItem(item.uid, 1)
		doRemoveItem(item2.uid, 1)
		
		return true
		end
      local itemfrase = "You Open A presente box 2 , Present: "
       if item2.id == box2 then
      
	        for i = 1, 10 do
	  local e = box2item[i]
	  if math.random(1,100) <= e.chance then
	  local quantidade = math.random(e.mx,e.mn)
	doAddContainerItem(santaclausbag, e.itemid,quantidade )
	 itemfrase = itemfrase..quantidade.." "..e.name..","
	  	  end
		  
		  end
		  doPlayerSendTextMessage(cid,22,itemfrase)
		  
		  
        doRemoveItem(item.uid, 1)
		doRemoveItem(item2.uid, 1)
		
		return true
		end
end