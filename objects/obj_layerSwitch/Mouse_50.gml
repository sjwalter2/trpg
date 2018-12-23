/// @description Insert description here
// You can write your code in this editor
if collision_point(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),id,false,false)
{
		var move = 0
	with(obj_character)
		if(moving || attack)
			move = 1	

	if(global.turn  = 0 && !move)
		image_index = 1	
}
else
	image_index = 0