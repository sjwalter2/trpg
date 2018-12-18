/// @description Insert description here
// You can write your code in this editor
global.turn++
	if(global.turn > teams)
		global.turn = 0
		
	var pathBlank = []
	with(obj_tiles)
	{
		inRange = 0
		rangeOf = 0
		pathX = pathBlank
		pathY = pathBlank
	}
	
	instance_activate_all()
	
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
	instance_activate_all()
	with(obj_aiControl)
	{
		currentAi = noone
		switchTo = 1	
		setAlarm = 0
	}
		