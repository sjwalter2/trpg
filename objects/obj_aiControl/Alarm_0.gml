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
			if(global.gameLayer = levelLayer && team = 0 && (dist = -1 || point_distance(other.x,other.y,x,y) < dist) && getPersonAt(other.positionX,other.positionY,global.gameLayer) == noone)	
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
for(var i = currentAi.attackRange; i > currentAi.minRange; i--)
	{
		with(obj_tiles)
		{
			if(currentTarget != noone 
			&& moveTile = noone
			&& inRange = 1 
			&& (!position_meeting(x,y,obj_character) 
			|| instance_position(x,y,obj_character).id = other.currentAi 
			|| instance_position(x,y,obj_character).levelLayer != global.gameLayer) 
			&& (getPersonAt(positionX,positionY,global.gameLayer) == noone || getPersonAt(positionX,positionY,global.gameLayer) == other.currentAi)
			&&((positionX - i = tile.positionX && positionY = tile.positionY) 
			|| (positionY - i = tile.positionY && positionX = tile.positionX) 
			|| (positionX + i = tile.positionX && positionY = tile.positionY)  
			|| (positionY + i = tile.positionY && positionX = tile.positionX) 
			|| (positionY + (i - 1) = tile.positionY && positionX = tile.positionX + (i - 1)) 
			|| (positionY - (i - 1) = tile.positionY && positionX = tile.positionX + (i - 1)) 
			|| (positionY + (i - 1) = tile.positionY && positionX = tile.positionX - (i - 1)) 
			|| (positionY - (i - 1) = tile.positionY && positionX = tile.positionX - (i - 1))))
			{
				moveTile = id
				other.fire = 1
				breakNow = 1
				break;				
			}
		}
		if(breakNow)
			break;
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