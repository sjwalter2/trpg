var actions = argument0
var xx = argument1
var yy = argument2
var rangeType = argument3
var useTerrain = argument4
var pathX = argument5
var pathY = argument6

var w = global.tileWidth
var h = global.tileHeight
var i = 0; 
var checkX = 0;
var checkY = 0;

var xMod = 0
var yMod = 0
var tile = -1



for(var rotate = 0; rotate <= 3; rotate++)
{
	i = 0
	switch(rotate)
	{
		case 0:
			checkX = 1
			xMod = 1
		break;
		case 1:
			checkX = -1
			xMod = -1
		break;
		case 2:
			checkX = 0
			xMod = 0
			checkY = 1
			yMod = 1
		break;
		case 3:
			checkY = -1
			yMod = -1
		break;	
	}
	
	while(i <= actions)
	{
		if(position_meeting(xx+w*checkX,yy+h*checkY,obj_tiles))
			tile = instance_position(xx+w*checkX,yy+h*checkY,obj_tiles)
		else
			break;
		
		if(rangeType = 1 && (position_meeting(xx+w*checkX,yy+h*checkY,obj_character) && instance_position(xx+w*checkX,yy+h*checkY,obj_character).levelLayer == global.gameLayer) && tile.vision[global.gameLayer]){
			break;
			tile.inRange = 0
			}
		if(tile.moveCost*useTerrain + i <= actions && (!tile.impassable || !useTerrain))
		{
			i += tile.moveCost*useTerrain + !useTerrain
				
			if(tile.inRange != rangeType || tile.checkAmount < actions - i)
			{
				tile.inRange = rangeType
				tile.checkAmount = actions - i
				var currentTile = instance_position(xx,yy,obj_tiles)
				
				if(array_length_1d(pathX) = 0 || !(pathX[array_length_1d(pathX)-1] = currentTile.positionX && pathY[array_length_1d(pathY)-1] = currentTile.positionY))
				{
					pathX[array_length_1d(pathX)] = currentTile.positionX
					pathY[array_length_1d(pathY)] = currentTile.positionY
				}
				tile.pathX = pathX
				tile.pathY = pathY
				tile.pathSet = 0
				check_range(actions-i,tile.x,tile.y, rangeType, useTerrain, pathX, pathY)
				checkX += xMod
				checkY += yMod
			}
		}
		else
			break;
	}
	
}
