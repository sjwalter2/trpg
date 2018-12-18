/// @description Insert description here
// You can write your code in this editor
if(!selected)
{
	var pathBlank = []
	with(obj_tiles)
	{
		inRange = 0
		rangeOf = 0
		pathX = pathBlank
		pathY = pathBlank
	}
	with(obj_character)
	{
		selected = 0	
		if(id != other.id)
		{
			arrow.count = 0
			arrow.pathX = pathBlank
			arrow.pathY = pathBlank
			arrow.pathX[0] = positionX
			arrow.pathY[0] = positionY
		}
	}
	selected = 1
	
}