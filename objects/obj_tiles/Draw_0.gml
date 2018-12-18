/// @description Insert description here
// You can write your code in this editor


	
draw_self()



if(inRange = 1)
{
	if(position_meeting(x,y,obj_character))
	{
		var pathBlank = []
		inRange = 0
		rangeOf = 0
		pathX = pathBlank
		pathY = pathBlank

	}
	else
	{
		draw_sprite(spr_range,0,x,y)
	}
	
	
}
	
if(inRange = 2)
{
	if(position_meeting(x,y,obj_character) && instance_position(x,y,obj_character).attack)
	{
		var pathBlank = []
		inRange = 0
		rangeOf = 0
		pathX = pathBlank
		pathY = pathBlank

	}
	else
		draw_sprite(spr_range1,0,x,y)
	
}

if(target = 1 || (inRange = 1 && position_meeting(mouse_x,mouse_y,id)) && !mouse_check_button(mb_left))
{
	with(obj_tiles)
		target = 0
	target = 1
	depth = -5
	//for(var i = 0; i < array_length_1d(pathX); i++)
	//{
	//	draw_set_color(c_white)
	//	draw_circle(global.tileWidth/2 + global.tileWidth*pathX[i], global.tileHeight/2 + global.tileHeight*pathY[i], 6,0)	
	//	draw_set_color(c_black)
	//	draw_text(global.tileWidth/2 + global.tileWidth*pathX[i], global.tileHeight/2 + global.tileHeight*pathY[i],i)
	
	//}
	//draw_set_color(c_white)
	//draw_circle(global.tileWidth/2 + global.tileWidth*positionX, global.tileHeight/2 + global.tileHeight*positionY, 6,0)	
	with(obj_character)
	{
		if(selected)
		{
			arrow.pathX = other.pathX	
			arrow.pathY = other.pathY
			
			arrow.pathX[array_length_1d(arrow.pathX)] = other.positionX
			arrow.pathY[array_length_1d(arrow.pathY)] = other.positionY			
			arrow.count = array_length_1d(arrow.pathX) -1 
			currentMove = (actionMax - actionCurrent) - other.checkAmount
		}

	}
}
else
	depth = 0
	
	