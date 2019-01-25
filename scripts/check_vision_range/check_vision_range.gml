var actions = argument0
var xx = argument1
var yy = argument2
var rangeType = 1

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
		
		if(i <= actions)
		{
			i += 1				
			tile.vision[levelLayer] = rangeType
			check_vision_range(actions-i,tile.x,tile.y)
			checkX += xMod
			checkY += yMod
		}
		else
			break;
	}
	
}
