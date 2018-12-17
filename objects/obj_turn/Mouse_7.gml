/// @description Insert description here
// You can write your code in this editor


		
if(move)
	image_index = 0
if(image_index = 1)
{
	image_index = 0
	global.turn++
	if(global.turn > teams)
		global.turn = 0
		
	with(obj_tiles)
		inRange = 0
	
	instance_activate_all()
	global.gameLayer = 0
	with(obj_character)
	{
		moving = 0
		selected = 0
		noMove = 0
		arrow.pathX = []
		arrow.pathY = []
		arrow.count = 0
		if(global.turn != team)
		{
			actionCurrent = 0	
			currentMove = 0
			rangeFound = 0
			
		}
	}
	with(obj_character)
		if(levelLayer != global.gameLayer)
			instance_deactivate_object(id)	
		
}