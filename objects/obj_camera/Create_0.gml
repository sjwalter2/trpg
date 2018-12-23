/// @description Insert description here
// You can write your code in this editor
//Basic set up
camera_set_view_pos(view_camera[0], 0, 0);
camera_set_view_size(view_camera[0], 960, 540);

//Setting up object target information
camera_set_view_target(view_camera[0], id);
camera_set_view_speed(view_camera[0], -1, -1);
camera_set_view_border(view_camera[0], 32, 32);

zoom_level = 1;
//Get the starting view size to be used for interpolation later
default_zoom_width = camera_get_view_width(view_camera[0]);
default_zoom_height = camera_get_view_height(view_camera[0]);