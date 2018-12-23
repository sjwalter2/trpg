/// @description Insert description here
// You can write your code in this editor

if(upgrade)
	image_blend = c_green
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

if(hover || active)
{
	draw_set_font(font2)
	var offset = 0
	if(magic)
	{
		draw_sprite_ext(spr_magic,0, (x+(sprite_width - 15))*global.guiMod,(y-(sprite_height/2)+14+18*offset)*global.guiMod,global.guiMod,global.guiMod,0,c_white,1)
		offset++
	}
	if(physical)
	{
		draw_sprite_ext(spr_physical,0, (x+(sprite_width-15))*global.guiMod,(y-(sprite_height/2)+14+18*offset)*global.guiMod,global.guiMod,global.guiMod,0,c_white,1)
		offset++
	}
	if(dexterity)
	{
		draw_sprite_ext(spr_dex,0, (x+(sprite_width-15))*global.guiMod,(y-(sprite_height/2)+14+18*offset)*global.guiMod,global.guiMod,global.guiMod,0,c_white,1)
		offset++
	}
	

	draw_sprite_ext(spr_hover,0, (x-(sprite_width)+15)*global.guiMod,(y-(sprite_height/2)+14)*global.guiMod,global.guiMod,global.guiMod,0,c_white,1)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text((x-(sprite_width)+32)*global.guiMod,(y-(sprite_height/2)+35)*global.guiMod,cost)
	draw_set_color(c_black)

	var textScale = 1
	if(string_width(cardText) > (1*sprite_width+20)*global.guiMod*1.5)
	{
		draw_set_font(font21)
		textScale+=.5
	}
	if(string_width(cardText) > (1*sprite_width+20)*global.guiMod*2)
	{
		draw_set_font(font22)
		textScale+=.5
	}
		

	
	
	if(active )
		draw_text_ext(x*global.guiMod,(y+sprite_height/4)*global.guiMod,activeText,(36)*global.guiMod/textScale,(sprite_width+30)*global.guiMod)
	else
		draw_text_ext(x*global.guiMod,(y+sprite_height/4)*global.guiMod,cardText,(36)*global.guiMod/textScale,(sprite_width+30)*global.guiMod)
	
}