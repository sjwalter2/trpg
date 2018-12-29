instance_activate_all()
global.gameLayer = !global.gameLayer
with(obj_character)
{
	selected = 0
	arrow.pathX = []
	arrow.pathY = []
	arrow.count = 0
	if(levelLayer != global.gameLayer)
		instance_deactivate_object(id)
}