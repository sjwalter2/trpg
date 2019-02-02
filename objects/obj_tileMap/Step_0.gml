/// @description Insert description here
// You can write your code in this editor
if(mouse_x >= creator.startX + border + posX*gridW && mouse_y >= border+posY*gridH && mouse_x <= creator.startX + border + (posX+1)*gridW-1 && mouse_y <= border+(posY+1)*gridH-1)
{
	if(!hover && capital =0)
	with(obj_tileMap)
	{
		hover = 0

	}

	with(obj_tileMap)
	{
		if(gridNum == other.gridNum && creator == other.creator)
		{
			if(capital = 0)
			{
			hover = 1
			depth = -1
			}
		}
		else if !(gridNum == other.gridNum && creator == other.creator)
		{
			if(capital = 0)
				depth = -3
			hover = 0
		}
	}
}
if(hover && mouse_check_button(mb_left))
	room_goto_next()