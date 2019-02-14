/// @description Insert description here
// You can write your code in this editor
if(finish)
{
if(unlocked && creator.zoom = 0 && mouse_x >= creator.startX + posX*gridW && mouse_y >= creator.startY +posY*gridH && mouse_x <= creator.startX + (posX+1)*gridW-1 && mouse_y <= creator.startY +(posY+1)*gridH-1)
{
	with(obj_tileMap)
	{
		hover = 0
	}

	with(obj_tileMap)
	{
		if(gridNum == other.gridNum )
		{
			
			
			if(capital = 0)
			{
			hover = 1
			depth = -4
			}
			if(edge)
				sparkle = 10
		}
		else if !(gridNum == other.gridNum )
		{
			if(capital = 0)
				depth = -2
			if(edge)
				depth = -3
			hover = 0
		}
	}
}


if(hover && mouse_check_button_released(mb_left) && finish && creator.zoom = 0)
{

	with(obj_progressBar)
		instance_destroy()
	var leftX = room_width
	var rightX = 0
	var topY = room_width
	var botY = 0
	
	with(obj_tileMap)
	{
		if(gridNum != other.gridNum)
		{
			instance_deactivate_object(id)
			if(light!= noone)	
				instance_deactivate_object(light)
		}
			
		else if(gridNum == other.gridNum)
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
			sparkle = 30 
			
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
	
	//with(obj_lightTile)
	//{
	//	if(gridNum = other.gridNum && creator = other.creator)
	//	{
	//		x = creator.startX+other.gridW*(l+r)/2
	//		y = creator.startY+other.gridH*(u+d)/2
	//		size = 2*size
	//	}
	//}
}
if(returnTrigger)
{
	returnTrigger = 0
	instance_activate_all()			
	creator.zoom = 0
	creator.startX = creator.prevStartX
	creator.startY = creator.prevStartY
	with(obj_tileMap)
		if(gridNum == other.gridNum)
		{
			gridH = .5*gridH
			gridW = .5*gridW
		}
	creator.gridW = gridW
	creator.gridH = gridH
	
	if(unlockNeighbor)
	{
		alarm_set(4,10)
		unlockNeighbor = 0	
	}
	
}


if(creator.zoom != 0 && capital > 0 && unlocked && mouse_x >= creator.startX + posX*gridW && mouse_y >= creator.startY +posY*gridH && mouse_x <= creator.startX + (posX+1)*gridW-1 && mouse_y <= creator.startY +(posY+1)*gridH-1)
{
	var capFinished = 0
	with(obj_capitals)
		if(capitalFinished[other.capitalGroup])
			capFinished = 1
	
	if(!capFinished)
	{
	capitalHover = 1
	with(obj_tileMap)
		if(capitalGroup = other.capitalGroup)
			capitalHover = 1
	}
}

if(capitalHover = 1 && mouse_check_button_released(mb_left))
{
	room_goto_next()
	with(obj_capitals)
		capitalFinished[other.capitalGroup] = 1
	
	var capFin = 1	
	with(obj_tileMap)
	{
		if(capital > 0 && gridNum == other.gridNum && creator == other.creator)	
		{
			with(obj_capitals)
				if(!capitalFinished[other.capitalGroup])
					capFin = 0
			
		}
	}
	if(capFin)
	{
		returnTrigger = 1
		unlockNeighbor = 1
		with(obj_countries)
			countriesFinished[other.gridNum] = 1
	}
}
if(creator.zoom = 0 && unlockable && mouse_x >= creator.startX + posX*gridW && mouse_y >= creator.startY +posY*gridH && mouse_x <= creator.startX + (posX+1)*gridW-1 && mouse_y <= creator.startY +(posY+1)*gridH-1)
{
	with(obj_tileMap)
		if(gridNum = other.gridNum)
			unlockableHover = 1
	
}
if(unlockableHover && unlockable = 1 && mouse_check_button_released(mb_left))
{
	alarm_set(2,15)
	with(obj_tileMap)
	{
		unlockable = 0
		unlockableHover = 0
		fadeIn = 0
		fadeDir = 1
		if(gridNum = other.gridNum)
		{
			unlocked = 1
			sparkle = 30 
			
		}
	}
	with(obj_countries)
		countriesUnlocked[other.gridNum] = 1
		
		
	with(obj_progressBar)
		instance_destroy()
	var leftX = room_width
	var rightX = 0
	var topY = room_width
	var botY = 0
	
	with(obj_tileMap)
	{
		if(gridNum != other.gridNum)	
		{
			instance_deactivate_object(id)
			if(light!= noone)	
				instance_deactivate_object(light)
		}
		else if(gridNum == other.gridNum)
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

}

