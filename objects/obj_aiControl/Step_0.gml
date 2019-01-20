/// @description Insert description here
// You can write your code in this editor

if(global.turn != 0 && currentAi = noone && ready)
{

	with(obj_character)
	{
		selected = 0
	}
	with(obj_character)	
	{
		if(levelLayer = global.gameLayer && ai && !aiMoved && team = global.turn)
		{
			other.currentAi = id;
			other.setAlarm = 1 
			selected = 1
			break;
		}
	}
	
	
	if(currentAi = noone && global.gameLayer = 0)
	{
		global.gameLayer = 1	
	}
	else if(currentAi = noone && global.gameLayer = 1)
	{
		global.turn = 0	
		ready = 0
		instance_create_depth(0,0,-100,obj_cover)
		var pathBlank = []
		with(obj_tiles)
		{
			inRange = 0
			rangeOf = 0
			pathX = pathBlank
			pathY = pathBlank
		}

		global.gameLayer = 0
		with(obj_character)
		{
			moving = 0
			selected = 0
			aiMoved = 0
			arrow.pathX = []
			arrow.pathY = []
			arrow.count = 0
			
				actionCurrent = 0	
				currentMove = 0
				rangeFound = 0
			
			
		}
	}
}

if(setAlarm)
{
	setAlarm = 0
	alarm_set(0,1)
}

