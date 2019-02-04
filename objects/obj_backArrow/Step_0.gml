/// @description Insert description here
// You can write your code in this editor
with(obj_tileMapSpawner)
{
	if(zoom = 0 && other.image_alpha > 0)
		other.image_alpha -= .05
	else if(zoom != 0  && other.image_alpha < 1)	
		other.image_alpha += .05
}


if(position_meeting(mouse_x,mouse_y,id) && !mouse_check_button(mb_left) && sprite_index = spr_backArrow)
{
	sprite_index = spr_backArrowHoverLoop	
}
else if(!position_meeting(mouse_x,mouse_y,id))
{
	sprite_index = spr_backArrow
	image_index = 0
}
