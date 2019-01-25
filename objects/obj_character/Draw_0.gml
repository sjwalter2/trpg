/// @description Insert description here
// You can write your code in this editor
var tile = instance_position(x,y,obj_tiles)


if global.gameLayer == levelLayer && tile.vision[levelLayer]{
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
	if(!selected)
		depth = -10
	else
		depth = -15
	
	
}
else if tile.vision[levelLayer]
{
	draw_sprite_ext(sprite_index,image_index,x-sprite_width/4,y-sprite_height/4,.35,.35,image_angle,image_blend,.8)
	depth = -11
}
