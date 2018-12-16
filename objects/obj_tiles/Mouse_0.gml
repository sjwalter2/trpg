/// @description Insert description here
// You can write your code in this editor
with(obj_character)
{
	if(global.turn = team && attack && other.inRange = 2 && !attacked)
	{
		var ability = instance_create_depth(other.x,other.y,-30,obj_fire)
		ability.creator = id
		selected = 1
		rangeFound = 0
		attacked = 1
	}	
}

