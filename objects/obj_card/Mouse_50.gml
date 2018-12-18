/// @description Insert description here
// You can write your code in this editor
if(selected)
{
	x = mouse_x
	y = mouse_y
	
	if((touching = -1 && place_meeting(x,y,obj_character)) || place_meeting(x,y,touching))
	{
		alarm_set(0,-1)	
		if(touching = -1)
		{
			with(obj_character)
			{
				hover = 0
				if(place_meeting(x,y,other) && team = 0 && !attack)	
				{
					other.touching = id
				}
			}
		}
		
		
		if(attack && touching != -1)
		{
		xSize = .5
		ySize = .5
		with(touching)
			{
					var pathX = []
					var pathY = []
					pathX[0] = positionX
					pathY[0] = positionY
				check_range(other.maxRange-1,x,y,2,other.useTerrain,pathX,pathY)
				check_range(other.minRange-1,x,y,0,other.useTerrain,pathX,pathY)
				
				if(actionMax >= actionCurrent + other.cost)
					hover = 1
				else
					hover = 2
			}
		}
		if(block && touching != -1)
		{
		xSize = .5
		ySize = .5
		with(touching)
			{
					var pathX = []
					var pathY = []
					pathX[0] = positionX
					pathY[0] = positionY
				check_range(other.maxRange-1,x,y,3,other.useTerrain,pathX,pathY)
				check_range(other.minRange-1,x,y,0,other.useTerrain,pathX,pathY)
				
				if(actionMax >= actionCurrent + other.cost)
					hover = 1
				else
					hover = 2
			}
		}
	}
	else if(alarm_get(0) = -1)
	{
		alarm_set(0,1)	
	}
		
}