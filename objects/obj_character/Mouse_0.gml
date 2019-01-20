/// @description Insert description here
// You can write your code in this editor
var currentAttack = 0
if(global.turn = 0 && levelLayer == global.gameLayer)
{
with(obj_character)
	if(attack || moving)
		currentAttack = 1
		
if(!selected && !currentAttack)
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
			currentMove = 0
		}
		
	}
	selected = 1
	
}
}