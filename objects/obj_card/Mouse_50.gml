/// @description Insert description here
// You can write your code in this editor
if(selected)
{
	x = mouse_x
	y = mouse_y
	
	if	((touching = -1 && position_meeting(mouse_x,mouse_y,obj_character)  && 
		instance_position(mouse_x,mouse_y,obj_character).team = 0) || 
		position_meeting(mouse_x,mouse_y,touching))
	{
		alarm_set(0,-1)	
		if(touching = -1)
		{
			with(obj_character)
			{
				hover = 0
				if(position_meeting(x,y,other) && team = 0 && !attack)	
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

}