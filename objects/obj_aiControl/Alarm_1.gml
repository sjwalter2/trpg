/// @description Insert description here
// You can write your code in this editor
if(readyMove)
{
	readyMove = 0
	with(currentAi)	
		moving = 1
}
var targetX = currentAi.arrow.pathX[array_length_1d(currentAi.arrow.pathX)-1]
var targetY = currentAi.arrow.pathY[array_length_1d(currentAi.arrow.pathY)-1]
var goalX = 0
var goalY = 0
if(fire = 1)
{
	with(obj_check)	
	{
		var tile = instance_position(x,y,obj_tiles)
		goalX = tile.positionX
		goalY = tile.positionY
		var pathBlank = []
		with(obj_tiles)
		{
			inRange = 0
			rangeOf = 0
			pathX = pathBlank
			pathY = pathBlank
		}
	}
}


var alarmSet = 0
with(obj_character)
	if(moving )
		alarmSet = 1
		
if(alarmSet)
	alarm_set(1,10)
else if(fire = 1 && position_meeting(currentAi.x,currentAi.y,obj_check))
{
	
	attack = instance_create_depth(targets.x,targets.y,-30,obj_fire)
	attack.creator = currentAi.id
	alarm_set(1,10)
	fire = 2
}
else if(fire = 2 && attack != -1)
{
	if(!instance_exists(attack))
		attack = -1	
	alarm_set(1,10)
}
else 
{
	with(obj_character)
		if((noMove || actionCurrent = 0) && global.turn = team)
			other.setAlarm = 0
	setAlarm = 0		
	fire = 0
	attack = -1
	targets = 0
}

if(fire = 1 && goalX != targetX && currentAi.moving)
{
	currentAi.noMove = 0
	setAlarm = 0
	fire = 0
	currentAi = noone
	show_debug_message("reset")
}