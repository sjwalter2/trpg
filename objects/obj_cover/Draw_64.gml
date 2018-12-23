/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_set_font(font1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if(global.turn = 0)
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2, "Player Turn")
	
if(global.turn = 1)
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2, "Enemy Turn")
draw_set_alpha(1)