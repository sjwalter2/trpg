/// @description Insert description here
// You can write your code in this editor
if(capital = 0 && !sparkle && irandom(sqr(.8*point_distance(creator.startX + posX*gridW,creator.startY +posY*gridH,mouse_x,mouse_y))) = 0)
		sparkle = irandom_range(12,20)
if(finish)
{
if(creator.zoom = 0 && mouse_x >= creator.startX + posX*gridW && mouse_y >= creator.startY +posY*gridH && mouse_x <= creator.startX + (posX+1)*gridW-1 && mouse_y <= creator.startY +(posY+1)*gridH-1)
{
	with(obj_tileMap)
	{
		hover = 0
	}

	with(obj_tileMap)
	{
		if(gridNum == other.gridNum && creator == other.creator)
		{
			
			
			if(capital = 0)
			{
			hover = 1
			depth = -4
			}
			if(edge)
				sparkle = 10
		}
		else if !(gridNum == other.gridNum && creator == other.creator)
		{
			if(capital = 0)
				depth = -2
			hover = 0
			depth = -1
		}
	}
}


if(hover && mouse_check_button(mb_left) && finish && creator.zoom = 0)
{
	with(obj_progressBar)
		instance_destroy()
	var leftX = room_width
	var rightX = 0
	var topY = room_width
	var botY = 0
	
	with(obj_tileMap)
	{
		if(gridNum != other.gridNum || creator != other.creator)	
			instance_deactivate_object(id)
		else if(gridNum == other.gridNum && creator == other.creator)
		{
			hover = 0
			if(posX < leftX)	
				leftX = posX
			if(posX > rightX)
				rightX = posX
			if(posY < topY)	
				topY = posY
			if(posY > botY)
				botY = posY
			
			gridH = 2*gridH
			gridW = 2*gridW
		}
	}
	with(obj_tileMapSpawner)
		if(id != other.creator)
			instance_deactivate_object(id)
			
	creator.zoom = gridNum
	creator.prevStartX = creator.startX
	creator.prevStartY = creator.startY
	creator.gridW = gridW
	creator.gridH = gridH
	var midX = floor((leftX + rightX)/2)
	var dir = 1
	if (creator.startX + midX*gridW > room_width/2)
		dir = -1
	while (creator.startX + midX*gridW > room_width/2 + 1 || creator.startX + midX*gridW < room_width/2 - 1)
		creator.startX += dir
		
	var midY = floor((topY + botY)/2)
	var dir = 1
	if (creator.startY + midY*gridH > room_height/2)
		dir = -1
	while (creator.startY + midY*gridH > room_height/2 + 1 || creator.startY + midY*gridH < room_height/2 - 1)
		creator.startY += dir	
	
}
if(returnTrigger)
{
	returnTrigger = 0
	instance_activate_all()			
	creator.zoom = 0
	creator.startX = creator.prevStartX
	creator.startY = creator.prevStartY
	with(obj_tileMap)
		if(gridNum == other.gridNum && creator == other.creator)
		{
			gridH = .5*gridH
			gridW = .5*gridW
		}
	creator.gridW = gridW
	creator.gridH = gridH
}
}