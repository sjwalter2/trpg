/// @description Insert description here
// You can write your code in this editor

show_debug_message(string(levelLayer));
if global.gameLayer == levelLayer {
	characterRange()


	draw_set_color(c_white)
	if(hover = 1)
		draw_set_color(c_yellow)
	else if(hover = 2)
		draw_set_color(c_black)
	draw_set_alpha(.8)
	if(selected || hover)
		draw_roundrect(x-sprite_width/2-2,y-sprite_height/2-2,x+sprite_width/2,y+sprite_height/2,0)
	draw_set_alpha(1)

	draw_self()
}