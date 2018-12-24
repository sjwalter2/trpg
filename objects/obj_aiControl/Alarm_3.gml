/// @description Insert description here
// You can write your code in this editor
ready = 1
setAlarm = 0
global.gameLayer = 0
instance_activate_all()
with(obj_character)
	{
		selected = 0
		aiMoved = 0
		if(levelLayer != global.gameLayer)
			instance_deactivate_object(id)
	}