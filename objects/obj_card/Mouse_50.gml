/// @description Insert description here
// You can write your code in this editor
if(hover && collision_point(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id,false,false))
{
	var attacking = 0
	with(obj_character)
		if(attack)
			attacking = 1
	if(!attacking)
	{
	with(all)
		selected = 0


	selected = 1

	with(obj_character)
		if(attack || moving)
			other.selected = 0
	}
	arrangeHand()
}
if(selected)
{
	x = device_mouse_x_to_gui(0)
	y = device_mouse_y_to_gui(0)
	
	if((touching = -1 && collision_point(mouse_x,mouse_y,obj_character,false,false)) ||collision_point(mouse_x,mouse_y,touching,false,false)) 
	{
		alarm_set(0,-1)	
		if(touching = -1)
		{
			with(obj_character)
			{
				hover = 0
				if(position_meeting(mouse_x,mouse_y,id) && team = 0 && !attack)	
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