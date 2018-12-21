var app = application_get_position();  
var w = (app[2]-app[0])/1336;  
var h = (app[3]-app[1])/864;  

display_set_gui_maximize(1,1,284,48)
global.guiMod =2