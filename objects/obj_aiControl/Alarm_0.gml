with(currentAi)
{
	characterRange()
	var standing = instance_position(x,y,obj_tiles)
	standing.inRange = 1
}

targets = noone
fire = 0
var dist = -1
var currentTarget = noone
var tile = noone
var moveTile = noone
var possibleTile = noone
var aiControl = id
with(obj_tiles)
{
	if(inRange = 1)
	{
		with(obj_character)	
		{
			if(global.gameLayer = levelLayer && team = 0 && (dist = -1 || point_distance(other.x,other.y,x,y) < dist) && (getPersonAt(other.positionX,other.positionY,global.gameLayer) == noone || getPersonAt(other.positionX,other.positionY,global.gameLayer) == aiControl.currentAi))
			{
				dist = point_distance(other.x,other.y,x,y)
				currentTarget = id
				tile = instance_position(x,y,obj_tiles)
				possibleTile = other.id
				
			}
		}
	}
}


var breakNow = 0

with(obj_tiles)
{
	if(currentTarget != noone 
	&& inRange = 1 
	&& (getPersonAt(positionX,positionY,global.gameLayer) == noone 
	|| getPersonAt(positionX,positionY,global.gameLayer) == other.currentAi)
	&& abs(tile.positionX - positionX) + abs(tile.positionY - positionY) <= other.currentAi.attackRange)
	{
		moveTile = id
		other.fire = 1
		break;
	}
}

if(fire = 0)	
	moveTile = possibleTile


	
if(moveTile != noone)
{
	with(obj_tiles)
		target = 0
	with(currentAi)
	{
		arrow.pathX = moveTile.pathX	
		arrow.pathY = moveTile.pathY		
		arrow.pathX[array_length_1d(arrow.pathX)] = moveTile.positionX
		arrow.pathY[array_length_1d(arrow.pathY)] = moveTile.positionY			
		arrow.count = array_length_1d(arrow.pathX) -1 
		currentMove = (actionMax - actionCurrent) - moveTile.checkAmount	
		moving = 1
		aiMoved = 1
	}
}
else
{
	currentAi.aiMoved = 1
}

alarm_set(1,10)
targets = currentTarget