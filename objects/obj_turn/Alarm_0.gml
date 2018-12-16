/// @description Insert description here
// You can write your code in this editor
move = 0
global.turn++
	if(global.turn > teams)
		global.turn = 0
		
	with(obj_tiles)
		inRange = 0
		
		
	with(obj_character)
	{
		moving = 0
		selected = 0
		noMove = 0
		arrow.pathX = []
		arrow.pathY = []
		arrow.count = 0
		if(global.turn != team)
		{
			actionCurrent = 0	
			currentMove = 0
			rangeFound = 0
			
		}
	}