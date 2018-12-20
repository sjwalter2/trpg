/// @description Insert description here
// You can write your code in this editor
draw_self()

draw_set_alpha(alarm_get(0)/10)
draw_set_font(font1)
var damage = creator.attackDamage
draw_set_color(c_red)
if(damage < 0)
{
	damage*=-1
	draw_set_color(make_color_rgb(0,255,255))
}

draw_text(x,bbox_top - (60-alarm_get(0)),damage)
draw_set_alpha(1)