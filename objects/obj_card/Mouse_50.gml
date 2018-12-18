/// @description Insert description here
// You can write your code in this editor
if(selected)
{
	x = mouse_x
	y = mouse_y
	
	if(place_meeting(x,y,obj_character))
	{
		with(obj_character)
		{
			hover = 0
			if(place_meeting(x,y,other) && team = 0 && !attack)	
			{
				other.touching = id
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
				check_range(other.maxRange,x,y,2,other.useTerrain,pathX,pathY)
				check_range(other.minRange,x,y,0,other.useTerrain,pathX,pathY)
				
				if(actionMax >= actionCurrent + other.cost)
					hover = 1
				else
					hover = 2
			}
		}

	}
	else
	{
		xSize = 1
		ySize = 1
		with(touching)
			hover = 0
		touching = -1
		var pathBlank = []
		with(obj_tiles)
		{
			inRange = 0
			rangeOf = 0
			pathX = pathBlank
			pathY = pathBlank
		}
	}
		
}