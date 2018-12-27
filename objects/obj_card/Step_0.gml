
/// @description Insert description here
// You can write your code in this editor
var hovering = 0
with(obj_card)
	if(hover && id != other.id)
		hovering = 1

if(!active && !hovering && collision_point(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id,false,false) && !mouse_check_button(mb_left) && device_mouse_y_to_gui(0) <display_get_gui_height())
{
	with(obj_card)
		hover = 0
	
	hover = 1
	image_xscale = 1
	image_yscale = 2
	while(bbox_bottom > display_get_gui_height())
		y--
	
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
	x = display_get_gui_width() - sprite_width*1.5
	y = display_get_gui_height()/4
	image_xscale = 1
	image_yscale = 2
	xSize = 2
	ySize = 2
	activeText = beginText + string(abs(attackDamage)) + " DMG"
}
