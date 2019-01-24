/// @description Insert description here
// You can write your code in this editor
if(global.turn = 0)
{
x = mouse_x
y = mouse_y
}
else
{
	with(obj_character)	
	{
		if(selected && image_alpha = 1)	
		{
			other.x = x
			other.y = y
			camera_set_view_pos(view_camera[0],other.x, other.y-275);
		}
	}
}

//Move the zoom level based on mouse scrolling. Clamp the value so stuff doesn't get too silly.
prevZoom = zoom_level
zoom_level = clamp(zoom_level + (((mouse_wheel_down() - mouse_wheel_up())) * 0.5), .5, 2);

//Get current size
var view_w = camera_get_view_width(view_camera[0]);
var view_h = camera_get_view_height(view_camera[0]);

//Set the rate of interpolation
var rate = 0.2;

//Get new sizes by interpolating current and target zoomed size
var new_w = lerp(view_w, zoom_level * default_zoom_width, rate);
var new_h = lerp(view_h, zoom_level * default_zoom_height, rate);

//Apply the new size
camera_set_view_size(view_camera[0], new_w, new_h);

//Get the shift necessary to re-align the view.
var shift_x = camera_get_view_x(view_camera[0]) - (new_w - view_w) * 0.5;
var shift_y = camera_get_view_y(view_camera[0]) - (new_h - view_h) * 0.5;

//Update the view position
camera_set_view_pos(view_camera[0],shift_x, shift_y);

camera_set_view_pos(view_camera[0],
                    clamp( camera_get_view_x(view_camera[0]), 0, room_width - camera_get_view_width(view_camera[0]) ),
                    clamp( camera_get_view_y(view_camera[0]), 0, room_height - camera_get_view_height(view_camera[0]) ));
					
					
camera_set_view_speed(view_camera[0],8*zoom_level,8*zoom_level)
camera_set_view_border(view_camera[0],10*zoom_level,10*zoom_level)


//Check if the mouse is clicked. If so, update the click position.
if(prevZoom != zoom_level)
{
    click_x = x;
    click_y = y;
	check = 40
}

if(check > 0)
{
//Get target view position and size. size is halved so the view will focus around its center
var vpos_x = camera_get_view_x(view_camera[0]);
var vpos_y = camera_get_view_y(view_camera[0]);
var vpos_w = camera_get_view_width(view_camera[0]) * 0.5;
var vpos_h = camera_get_view_height(view_camera[0]) * 0.5;

//The interpolation rate
var rate = 0.2;

//Interpolate the view position to the new, relative position.
var new_x = lerp(vpos_x, click_x - vpos_w, rate);
var new_y = lerp(vpos_y, click_y - vpos_h, rate);

//Update the view position
camera_set_view_pos(view_camera[0], new_x, new_y);
check--
}