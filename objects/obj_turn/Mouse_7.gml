/// @description Insert description here
// You can write your code in this editor


		
if(move)
	image_index = 0
if(image_index = 1 && global.turn = 0) 
{
	image_index = 0
	global.gameLayer = 0
	instance_activate_all()
	with(obj_character)
	{
		selected = 0
		if(levelLayer != global.gameLayer)
			instance_deactivate_object(id)
	}
	var pathBlank = []
	with(obj_tiles)
	{
		inRange = 0
		rangeOf = 0
		pathX = pathBlank
		pathY = pathBlank
	}
	alarm_set(1,1)
	with(obj_character)
		actionCurrent = 0
}