/// @description Insert description here
// You can write your code in this editor
var move = 0
with(obj_character)
	if(moving || attack)
		move = 1	

if(global.turn  = 0 && !move && image_index = 1)
{
	image_index = 0
	global.gameLayer = !global.gameLayer
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
}