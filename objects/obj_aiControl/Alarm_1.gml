var alarmSet = 0
with(currentAi)
{
	if(moving)	
		alarmSet = 1
}


if(alarmSet)
	alarm_set(1,30)
	
else if(fire = 1)
{
	attack = instance_create_depth(targets.x,targets.y,-30,obj_fire)
	attack.creator = currentAi.id
	currentAi.aiAttack = 1
	alarm_set(1,10)
	fire = 2
}
else if(fire = 2 && attack != noone)
{
	if(!instance_exists(attack))
		attack = noone
	alarm_set(1,10)
}
else 
{
	currentAi.aiAttack = 0
	alarm_set(2,30)
}