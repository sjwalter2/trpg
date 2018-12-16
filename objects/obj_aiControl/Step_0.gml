/// @description Insert description here
// You can write your code in this editor


if(setAlarm = 0 && global.turn = 1)
{
with(obj_character)
	selected = 0

with(obj_character)
{
	if(global.turn = team && !noMove && actionCurrent = 0 && !other.setAlarm)	
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
}
if(global.turn = 0)
	setAlarm = 0