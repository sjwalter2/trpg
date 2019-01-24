/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator) && ((creator.selected || position_meeting(mouse_x,mouse_y,creator)) && creator.levelLayer == global.gameLayer)) 
{
	draw_set_color(c_black)
	draw_rectangle(creator.x - creator.sprite_width/2, creator.y - creator.sprite_height-2, creator.x + creator.sprite_width/2+1, creator.y - creator.sprite_height*5/6+1,0)
	draw_set_color(c_red)
	draw_rectangle(creator.x - creator.sprite_width/2+2, creator.y - creator.sprite_height, creator.x + creator.sprite_width/2-3, creator.y - creator.sprite_height*5/6,0)
	draw_set_color(make_color_rgb(0,255,255))
	draw_rectangle(creator.x - creator.sprite_width/2+2, creator.y - creator.sprite_height, creator.x - creator.sprite_width/2 + (creator.sprite_width-3)*(creator.currentHealth/creator.baseHealth), creator.y - creator.sprite_height*5/6,0)
	draw_set_color(c_black)
	for(var i = 5; i < creator.baseHealth; i+=5)
		draw_line(creator.x - creator.sprite_width/2 + (creator.sprite_width-3)*(i/creator.baseHealth),creator.y - creator.sprite_height-1,creator.x - creator.sprite_width/2 + (creator.sprite_width-3)*(i/creator.baseHealth),creator.y - creator.sprite_height*21/24)
}