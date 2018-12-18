/// @description Insert description here
// You can write your code in this editor


if(currentMove > 0 && !moving && !attack && team = 0 && arrow.count >= 1)
{
	instance_deactivate_object(id)
	var xx = arrow.pathX[arrow.count]
	var yy = arrow.pathY[arrow.count]
	var tile = instance_position(global.tileWidth/2 + xx*global.tileWidth,global.tileHeight/2 + yy*global.tileHeight,obj_tiles)
	
	if(global.turn = team && !position_meeting(global.tileWidth/2 + xx*global.tileWidth,global.tileHeight/2 + yy*global.tileHeight,obj_character) 
	&& position_meeting(mouse_x,mouse_y,tile))
	{
		moving = 1
		with(obj_tiles)
			target = 0
	}
	else
	{
		selected = 0
		arrow.count = 0
		arrow.minArrow = 1
		currentMove = actionCurrent
	}
	
	instance_activate_object(id)
}