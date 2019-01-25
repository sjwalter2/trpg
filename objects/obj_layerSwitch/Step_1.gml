/// @description Insert description here
// You can write your code in this editor
with(obj_tiles)
{
	vision[0] = 1
	vision[1] = 0
}
with(obj_character)
{
	var tile = instance_position(x,y,obj_tiles)
	if(team = 0)
	{
		check_vision_range(visionRange,x,y)	
	}
	if(aiAttack)
		tile.vision[levelLayer] = 1
}