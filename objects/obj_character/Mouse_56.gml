/// @description Insert description here
// You can write your code in this editor


if(global.turn = 0 && currentMove > 0 && !moving && !attack && team = 0 && arrow.count >= 1)
{
	instance_deactivate_object(id)
	var xx = arrow.pathX[arrow.count]
	var yy = arrow.pathY[arrow.count]
	var tile = instance_position(global.offsetX  + xx*global.tileWidth,global.offsetY + yy*global.tileHeight,obj_tiles)
	
	if(global.turn = team && getPersonAt(xx,yy,global.gameLayer) == noone
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