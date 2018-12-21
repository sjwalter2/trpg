/// @description Insert description here
// You can write your code in this editor
if(hover || active)
{
	draw_set_font(font2)
	var offset = 0
	if(magic)
	{
		draw_sprite_ext(spr_magic,0, (x+(2*sprite_width-35))*global.guiMod,(y-(sprite_height/2)+10+18*offset)*global.guiMod,global.guiMod,global.guiMod,0,c_white,1)
		offset++
	}
	if(physical)
	{
		draw_sprite_ext(spr_physical,0, (x+(2*sprite_width-35))*global.guiMod,(y-(sprite_height/2)+10+18*offset)*global.guiMod,global.guiMod,global.guiMod,0,c_white,1)
		offset++
	}
	if(dexterity)
	{
		draw_sprite_ext(spr_dex,0, (x+(2*sprite_width-35))*global.guiMod,(y-(sprite_height/2)+10+18*offset)*global.guiMod,global.guiMod,global.guiMod,0,c_white,1)
		offset++
	}
	

	draw_sprite_ext(spr_hover,0, (x-(2*sprite_width)+34)*global.guiMod,(y-(sprite_height/2)+10)*global.guiMod,global.guiMod,global.guiMod,0,c_white,1)
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_text((x-(2*sprite_width)+42.5)*global.guiMod,(y-(sprite_height/2)+21)*global.guiMod,cost)
	draw_set_color(c_black)

	var textScale = 1
	if(string_width(cardText) > (2*sprite_width+20)*global.guiMod*1.5)
	{
		draw_set_font(font21)
		textScale+=.5
	}
	if(string_width(cardText) > (2*sprite_width+20)*global.guiMod*2)
	{
		draw_set_font(font22)
		textScale+=.5
	}
		

	
	
	if(active )
		draw_text_ext(x*global.guiMod,(y+sprite_height/4)*global.guiMod,activeText,(15)*global.guiMod/textScale,(2*sprite_width+30)*global.guiMod)
	else
		draw_text_ext(x*global.guiMod,(y+sprite_height/4)*global.guiMod,cardText,(15)*global.guiMod/textScale,(2*sprite_width+30)*global.guiMod)
	
}