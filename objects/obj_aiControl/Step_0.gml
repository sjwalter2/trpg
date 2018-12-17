/// @description Insert description here
// You can write your code in this editor


if(setAlarm = 0 && global.turn = 1)
{
currentAi = noone
with(obj_character)
	selected = 0

with(obj_character)
{
	if(levelLayer != global.gameLayer)
		instance_deactivate_object(id)
	else if(global.turn = team && !noMove && actionCurrent = 0 && !other.setAlarm)	
	{
		selected = 1
		other.setAlarm = 1
		other.currentAi = id
	}
	
}

	var pathBlank = []
	with(obj_tiles)
	{
		inRange = 0
		rangeOf = 0
		pathX = pathBlank
		pathY = pathBlank
	}

if(setAlarm)
{
	alarm_set(0,3)	
}
else if(currentAi = noone && global.gameLayer = 0)
{
	global.gameLayer = 1	
	instance_activate_all()
	with(obj_character)
		if(levelLayer != global.gameLayer)
			instance_deactivate_object(id)
}
else if(currentAi = noone && global.gameLayer = 1)
{
	global.turn = 0	
	with(obj_tiles)
		inRange = 0
	
	instance_activate_all()
	global.gameLayer = 0
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
	with(obj_character)
		if(levelLayer != global.gameLayer)
			instance_deactivate_object(id)	
}
}
if(global.turn = 0)
	setAlarm = 0