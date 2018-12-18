/// @description Insert description here
// You can write your code in this editor
var dist = -1
var targetTile = 0
var target = noone
readyMove = 0
with(obj_character)
{
	if(team != other.currentAi.team && (dist = -1 || dist > point_distance(other.currentAi.x,other.currentAi.y,x,y)))
	{
		dist = point_distance(other.currentAi.x,other.currentAi.y,x,y)	
		target = id
	}
}


var tile = 0
var w = global.tileWidth
var h = global.tileHeight
if((position_meeting(currentAi.x + w, currentAi.y, obj_character) || !position_meeting(currentAi.x + w, currentAi.y, obj_tiles) || instance_position(currentAi.x + w, currentAi.y, obj_tiles).impassable  || instance_position(currentAi.x + w, currentAi.y, obj_tiles).moveCost >  currentAi.actionMax - currentAi.actionCurrent) &&
	(position_meeting(currentAi.x - w, currentAi.y, obj_character) || !position_meeting(currentAi.x - w, currentAi.y, obj_tiles) || instance_position(currentAi.x - w, currentAi.y,  obj_tiles).impassable|| instance_position(currentAi.x - w, currentAi.y, obj_tiles).moveCost > currentAi.actionMax - currentAi.actionCurrent) &&
	(position_meeting(currentAi.x, currentAi.y + h, obj_character) || !position_meeting(currentAi.x, currentAi.y + h, obj_tiles) || instance_position(currentAi.x, currentAi.y + h,obj_tiles).impassable || instance_position(currentAi.x, currentAi.y + h, obj_tiles).moveCost > currentAi.actionMax - currentAi.actionCurrent) && 
	(position_meeting(currentAi.x, currentAi.y - h, obj_character) || !position_meeting(currentAi.x, currentAi.y - h,  obj_tiles) || instance_position(currentAi.x, currentAi.y - h,  obj_tiles).impassable || instance_position(currentAi.x, currentAi.y - h, obj_tiles).moveCost > currentAi.actionMax - currentAi.actionCurrent))
	currentAi.noMove = 1

if(target != noone)
if(instance_position(target.x,target.y,obj_tiles).inRange = 1 || instance_position(target.x,target.y,obj_tiles).inRange = 2)
{
	tile = instance_position(target.x,target.y,obj_tiles)
	for(var i = currentAi.attackRange; i > currentAi.minRange - 1; i--)
	{
		with(obj_tiles)
		{
			if(inRange = 1 && !position_meeting(x,y,obj_character) &&
			((positionX - i = tile.positionX && positionY = tile.positionY) 
			|| (positionY - i = tile.positionY && positionX = tile.positionX) 
			|| (positionX + i = tile.positionX && positionY = tile.positionY)  
			|| (positionY + i = tile.positionY && positionX = tile.positionX) 
			|| (positionY + (i - 1) = tile.positionY && positionX = tile.positionX + (i - 1)) 
			|| (positionY - (i - 1) = tile.positionY && positionX = tile.positionX + (i - 1)) 
			|| (positionY + (i - 1) = tile.positionY && positionX = tile.positionX - (i - 1)) 
			|| (positionY - (i - 1) = tile.positionY && positionX = tile.positionX - (i - 1))))
			{
				targetTile = id
				i = 0
				other.fire = 1
			}
		}
	}
	if(targetTile = 0)
	{
		currentAi.noMove = 1
	}
}
else
{
	dist = -1
	with(obj_tiles)
	{
		if(target != noone && inRange = 1 && (dist = -1 || dist > point_distance(x,y,target.x,target.y)))
		{
			dist =  point_distance(x,y,target.x,target.y)
			targetTile = id	
		}
		
	}
	if(point_distance(currentAi.x,currentAi.y,target.x,target.y) < dist)
	{
		currentAi.noMove = 1
	}
}
if(target = noone && currentAi != noone)
	currentAi.noMove = 1
with(currentAi)
{
	if(!noMove && array_length_1d(targetTile.pathX) > 0)
	{
		if((targetTile.pathX[0] = positionX && targetTile.pathY[0] = positionY + 1) ||
		(targetTile.pathX[0] = positionX && targetTile.pathY[0] = positionY - 1) ||
		(targetTile.pathX[0] = positionX + 1 && targetTile.pathY[0] = positionY ) ||
		(targetTile.pathX[0] = positionX - 1 && targetTile.pathY[0] = positionY )||
		(targetTile.pathX[0] = positionX && targetTile.pathY[0] = positionY )
		)
		{
			var i =0
		}
		else
			noMove = 1
	}
	else
		noMove = 1
	if(!noMove)
	{
		arrow.pathX = targetTile.pathX	
		arrow.pathY = targetTile.pathY
			
		arrow.pathX[array_length_1d(arrow.pathX)] = targetTile.positionX
		arrow.pathY[array_length_1d(arrow.pathY)] = targetTile.positionY			
		arrow.count = array_length_1d(arrow.pathX) -1 
		currentMove = (actionMax - actionCurrent) - targetTile.checkAmount
		
		other.readyMove = 1

	}
	else
	{
		moving = 0
		movingCount = 0	
		arrow.count = 0
		arrow.minArrow = 1
		currentMove = 0
		rangeFound = 0	
	}
}
alarm_set(1,20)
targets = target