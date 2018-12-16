/// @description Insert description here
// You can write your code in this editor
arrow.pathX[0] = positionX
arrow.pathY[0] = positionY

if(moving)
{
	with(obj_tiles)
	{
		inRange = 0
		checkAmount = 0
		pathTo = []
		rangeChar = 0
	}
	var startX = arrow.pathX[movingCount]
	var startY = arrow.pathY[movingCount]
	
	
	arrow.minArrow = movingCount
	if(arrow.minArrow < 1)
		arrow.minArrow = 1
	if(point_distance(x,y,global.tileWidth/2 + startX*global.tileWidth, global.tileHeight/2 + startY*global.tileHeight) <= moveSpeed)
	{
		movingCount++
		
		var tile = instance_position(global.tileWidth/2 + startX*global.tileWidth, global.tileHeight/2 + startY*global.tileHeight,obj_tiles)
		if(currentTile != tile)
			actionCurrent += tile.moveCost
		currentTile = tile
		if(movingCount > arrow.count)
		{
			
			moving = 0
			movingCount = 0	
			speed = 0
			x = global.tileWidth/2 + startX*global.tileWidth
			y = global.tileHeight/2 + startY*global.tileHeight
			positionX = startX
			positionY = startY
			arrow.count = 0
			arrow.minArrow = 1
			currentMove = actionCurrent
			rangeFound = 0
		}
	}
	else
		move_towards_point(global.tileWidth/2 + startX*global.tileWidth, global.tileHeight/2 + startY*global.tileHeight,moveSpeed)
	
}
if(!selected)
	rangeFound = 0


if(currentHealth <= 0)
{
	instance_destroy()	
}