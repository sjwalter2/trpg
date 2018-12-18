/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(.6)
draw_set_color(c_white)
if(touching != -1)
{
	if(touching.hover = 2)	
		draw_set_color(c_black)
	else	
		draw_set_color(c_yellow)
}
if(selected)
	draw_roundrect(x-xSize*sprite_width/2-5,y-ySize*sprite_height/2-5,x+xSize*sprite_width/2+4,y+ySize*sprite_height/2+4,0)
	
draw_set_alpha(1)
draw_sprite_ext(sprite_index,image_index,x,y,xSize,ySize,image_angle,image_blend,image_alpha)