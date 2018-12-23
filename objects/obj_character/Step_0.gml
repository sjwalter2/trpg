/// @description Insert description here
// You can write your code in this editor
arrow.pathX[0] = positionX
arrow.pathY[0] = positionY

if(moving)
{
	var pathBlank = []
	var startX = positionX
	var startY = positionY
	with(obj_tiles)
	{
		inRange = 0
		rangeOf = 0
		pathX = pathBlank
		pathY = pathBlank
	}
	if(array_length_1d(arrow.pathX) >= movingCount + 1 )
	{
		startX = arrow.pathX[movingCount]
		startY = arrow.pathY[movingCount]
	}
	
	arrow.minArrow = movingCount
	if(arrow.minArrow < 1)
		arrow.minArrow = 1
	if(point_distance(x,y,global.offsetX  + startX*global.tileWidth, global.offsetY + startY*global.tileHeight) <= moveSpeed)
	{
		movingCount++
		
		var tile = instance_position( global.offsetX  + startX*global.tileWidth, global.offsetY + startY*global.tileHeight,obj_tiles)
		if(currentTile != tile)
			actionCurrent += tile.moveCost
		currentTile = tile
		if(movingCount > arrow.count)
		{
			
			moving = 0
			movingCount = 0	
			speed = 0
			x = global.offsetX + startX*global.tileWidth
			y = global.offsetY + startY*global.tileHeight
			positionX = startX
			positionY = startY
			arrow.count = 0
			arrow.minArrow = 1
			currentMove = actionCurrent
			rangeFound = 0
		}
	}
	else
		move_towards_point(global.offsetX + startX*global.tileWidth, global.offsetY + startY*global.tileHeight,moveSpeed)
	
}
if(!selected)
	rangeFound = 0


if(currentHealth <= 0)
{
	instance_destroy()	
}

if(currentHealth > baseHealth)
	currentHealth = baseHealth