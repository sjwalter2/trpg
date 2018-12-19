/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_color(c_black)
draw_text(x,y,ds_list_size(deck))

with(obj_discard)
	draw_text(x,y,ds_list_size(other.discard))