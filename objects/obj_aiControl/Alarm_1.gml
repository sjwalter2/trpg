/// @description Insert description here
// You can write your code in this editor
var alarmSet = 0
with(obj_character)
	if(moving )
		alarmSet = 1
		
if(alarmSet)
	alarm_set(1,10)
else if(fire = 1)
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
			
	fire = 0
	attack = -1
	targets = 0
}