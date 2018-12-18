/// @description Insert description here
// You can write your code in this editor


with(obj_character)
{
	if(global.turn = team && attack && other.inRange = 2 && !attacked)
	{
		if(!position_meeting(other.x,other.y,obj_character) ||(position_meeting(other.x,other.y,obj_character) && instance_position(other.x,other.y,obj_character).team != team))
		{
			var ability = instance_create_depth(other.x,other.y,-30,card.object)
			ability.creator = id
			selected = 1
			rangeFound = 0
			attacked = 1
		}
	}	
}

