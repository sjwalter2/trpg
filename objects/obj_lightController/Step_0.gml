/// @description Insert description here
// You can write your code in this editor
var lightCount = 0
with(obj_light)
	lightCount++
if(irandom(100) = 0 && lightCount < 3)
{
	var s = irandom_range(20,60)
	with(instance_create_depth(irandom_range(s,room_width-s),irandom_range(s,room_height-s),15,obj_light))
	{
		size = s	
	}
	
	
}