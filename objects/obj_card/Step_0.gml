/// @description Insert description here
// You can write your code in this editor
var hovering = 0
with(obj_card)
	if(hover && id != other.id)
		hovering = 1

if(!active && !hovering && position_meeting(mouse_x,mouse_y,id) && !mouse_check_button(mb_left) && device_mouse_y_to_gui(0) <display_get_gui_height() - 48)
{
	with(obj_card)
		hover = 0
	
	hover = 1
	image_xscale = 1
	image_yscale = 3
	y = yStart - sprite_height*.5
	xSize = 3
	ySize = 3
	depth = frontDepth
	
}
else 
{
	hover = 0
}

if(selected)
{
	image_xscale = .5
	image_yscale = .5
	xSize = .5
	ySize = .5
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

if(active && !selected)
{
	x = room_width + sprite_width+25
	y = room_height/4
	image_xscale = 1
	image_yscale = 3
	xSize = 3
	ySize = 3
	activeText = beginText + string(abs(attackDamage)) + " DMG"
}
