/// @description Insert description here
// You can write your code in this editor
var alarmSet = 0
with(obj_character)
	if(moving )
		alarmSet = 1
		
if(alarmSet)
	alarm_set(1,10)
else
{
	with(obj_character)
		if((noMove || actionCurrent = 0) && global.turn = team)
			other.setAlarm = 0
	
}