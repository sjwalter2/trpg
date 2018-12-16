/// @description Insert description here
// You can write your code in this editor
if(!selected)
{
	selected = 1
	with(obj_character)
	{
		if(id != other.id && !moving && currentMove = actionCurrent)
		{
			if(attack || team = other.team && selected && (other.positionX = positionX xor other.positionY = positionY) && mouse_check_button(mb_left))
			{
				other.selected = 0	
			}
			else
			{
			selected = 0
			arrow.count = 0
			arrow.minArrow = 1
			currentMove = actionCurrent
			rangeFound = 0
			}
		}
		else if(id != other.id && moving || currentMove != actionCurrent && team = other.team)
			other.selected = 0
		else if(id != other.id && moving || currentMove != actionCurrent && team != other.team)
		{
			selected = 0
			arrow.count = 0
			arrow.minArrow = 1
			currentMove = actionCurrent
			rangeFound = 0
		}
	}
	
}