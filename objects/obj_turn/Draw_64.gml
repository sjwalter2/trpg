/// @description Insert description here
// You can write your code in this editor
draw_self()
draw_set_color(c_white)
draw_set_font(font0)
draw_text(0,0,global.turn)


with(obj_character)
	if(actionCurrent = 0 && noMove = 0 && global.turn != 0)
		move =1