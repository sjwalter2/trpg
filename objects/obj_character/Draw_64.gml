/// @description Insert description here
// You can write your code in this editor
draw_set_font(font1)
draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_set_color(c_white)
	if selected {
		draw_text(30, 10,name);
		draw_text(55 + string_width(string(name)) - string_width("-")/2, 10, "-");
		draw_text(80 +  string_width(string(name)), 10,type);
		
		draw_set_font(font2)
		draw_text(50, 60,"HP: "+ string(currentHealth) +"/" + string(baseHealth));
		draw_text(50, 100,"AP: "+ string(actionMax - actionCurrent) +"/" + string(actionMax));
		draw_text(50, 140,"Magic: "+ string(magic));
		draw_text(50, 180,"Physical: "+ string(physical));
		draw_text(50, 220,"Ranged: "+ string(dexterity));

		
		
	}
	