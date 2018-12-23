/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black)
if(fadeIn)
{
	draw_set_alpha((60 - alarm_get(0))/10)
	if(alarm_get(0) < 50)
		fadeIn = 0
}
else
	draw_set_alpha(alarm_get(0)/10)
draw_rectangle(0,0-200,room_width,room_height+200,0)


