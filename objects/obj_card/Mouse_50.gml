/// @description Insert description here
// You can write your code in this editor
if(selected)
{
	x = mouse_x
	y = mouse_y
	image_xscale = 1
	image_yscale = 1	
	if(place_meeting(x,y,obj_character) && instance_place(x,y,obj_character).team = 0)
	{
		
		touching = instance_place(x,y,obj_character)
		if(touching.team != 0 || touching.attack)
			touching = -1
		
		if(attack && touching != -1)
		{
		with(touching)
			{
					var pathX = []
					var pathY = []
					pathX[0] = positionX
					pathY[0] = positionY
				check_range(other.maxRange,x,y,2,other.useTerrain,pathX,pathY)
				check_range(other.minRange,x,y,0,other.useTerrain,pathX,pathY)
			}
		}
		image_xscale = .5
		image_yscale = .5
	}
	else
	{
		image_xscale = 1
		image_yscale = 1
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