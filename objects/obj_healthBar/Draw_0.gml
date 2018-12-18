/// @description Insert description here
// You can write your code in this editor
if(instance_exists(creator) && creator.selected)
{
	draw_set_color(c_black)
	draw_rectangle(creator.x - creator.sprite_width/2-2, creator.y - creator.sprite_width-2, creator.x + creator.sprite_width/2+2, creator.y - creator.sprite_width*5/6+2,0)
	draw_set_color(c_red)
	draw_rectangle(creator.x - creator.sprite_width/2, creator.y - creator.sprite_width, creator.x + creator.sprite_width/2, creator.y - creator.sprite_width*5/6,0)
	draw_set_color(c_green)
	draw_rectangle(creator.x - creator.sprite_width/2, creator.y - creator.sprite_width, creator.x - creator.sprite_width/2 + creator.sprite_width*(creator.currentHealth/creator.baseHealth), creator.y - creator.sprite_width*5/6,0)
}