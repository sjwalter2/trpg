/// @description Insert description here
// You can write your code in this editor

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
		moving = 0
		selected = 0
		noMove = 0
		arrow.pathX = []
		arrow.pathY = []
		arrow.count = 0
		actionCurrent = 0
		
		if(global.turn != team)
		{
			actionCurrent = 0	
			currentMove = 0
			rangeFound = 0
			
		}
	}
	with(obj_aiControl)
		{
			ready = 0
			alarm_set(3,40)
		}

	global.gameLayer = 0

		