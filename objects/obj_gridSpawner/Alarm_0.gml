/// @description Insert description here
// You can write your code in this editor
var tileType = obj_grassTile
var playerSpawned = 0
for(var i = 0; i < width; i++)
{
	for(var j = 0; j < height; j++)
	{	
		for(var typeIter = 0; typeIter < array_length_1d(tileTypes); typeIter++)
		{
			if(irandom(100) < tileWeight[typeIter])
			{
				tileType = tileTypes[typeIter]
			}
		}
		
		var newTile = instance_create_depth(offsetX + i*tileWidth, offsetY + j*tileHeight,tileDepth,tileType)
		newTile.positionX = i
		newTile.positionY = j
		
	}
}

while(playerSpawned < 10)
{
	var spotFound = 0
	while(!spotFound)
	{
		var xx = irandom(width)
		var yy = irandom(height)
		var newLayer = irandom(1)
		spotFound = 1
		if(!position_meeting(offsetX + xx*tileWidth, offsetY + yy*tileHeight, obj_tiles) ||
		getPersonAt(xx,yy,newLayer) ||
		instance_position(offsetX + xx*tileWidth, offsetY + yy*tileHeight, obj_tiles).impassable)
		{
			spotFound = 0
		}
	}
	if(playerSpawned < 3){
		var class = irandom_range(0,1);
		switch class{
			case 0:
				var newPlayer = instance_create_depth(offsetX + xx*tileWidth, offsetY + yy*tileHeight, playerDepth, obj_bard)	
				break;
			case 1:
				var newPlayer = instance_create_depth(offsetX + xx*tileWidth, offsetY + yy*tileHeight, playerDepth, obj_ragandbones)	
				break;
		}
	}
	else
		var newPlayer = instance_create_depth(offsetX + xx*tileWidth, offsetY + yy*tileHeight, playerDepth, obj_soldier)	
	newPlayer.positionX = xx
	newPlayer.positionY = yy
	newPlayer.team = playerSpawned
	newPlayer.levelLayer = newLayer
	if(playerSpawned >= 3)
	{
		newPlayer.team = 1
		newPlayer.ai = 1
	}
	else
		newPlayer.team = 0
	playerSpawned++
}