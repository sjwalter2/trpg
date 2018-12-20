/// @description Insert description here
// You can write your code in this editor
if(position_meeting(mouse_x,mouse_y,id) && !mouse_check_button(mb_left))
{
	y = yStart - sprite_height*.58	
	hover = 1
}
else 
	hover = 0

if(selected)
{
	with(all)	
		selected = 0
	selected = 1
}
else if(!hover)
{
	x = xStart
	y = yStart
}

if(active)
{
	x = room_width + sprite_width*2
	y = room_height/8
}