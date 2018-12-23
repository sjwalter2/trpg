//var app = application_get_position();  
//var w = (app[2]-app[0])/1336;  
//var h = (app[3]-app[1])/864;  

//display_set_gui_maximize(1,1,284,48)
var _vx = camera_get_view_width(view_camera[0]);
var _vy = camera_get_view_height(view_camera[0]);
display_set_gui_size(_vx*2, _vy*2);

global.guiMod = 1