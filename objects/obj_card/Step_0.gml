/// @description Insert description here
// You can write your code in this editor
var hovering = 0
with(obj_card)
	if(hover && id != other.id)
		hovering = 1

if(!active && !hovering && position_meeting(mouse_x,mouse_y,id) && !mouse_check_button(mb_left))
{
	with(obj_card)
		hover = 0
	y = yStart - sprite_height*.55	
	hover = 1
	image_xscale = 2
	image_yscale = 2
	xSize = 2
	ySize = 2
	depth = frontDepth
	
}
else 
{
	hover = 0
}

if(selected)
{
	image_xscale = 1
	image_yscale = 1
	with(all)	
		selected = 0
	selected = 1
}
else if(!hover)
{
	x = xStart
	y = yStart
	image_xscale = 1
	image_yscale = 1
	xSize = 1
	ySize = 1
	depth = baseDepth
}

if(active)
{
	x = room_width + sprite_width*2
	y = room_height/8
}
