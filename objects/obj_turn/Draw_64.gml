/// @description Insert description here
// You can write your code in this editor

draw_self()
draw_set_color(c_white)
draw_set_font(font0)
draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_text(x,y,"Turn: " + string(global.turn))

move = 0
with(obj_character)
	if moving || (actionCurrent = 0 && noMove = 0 && global.turn != 0)
		other.move = 1
		