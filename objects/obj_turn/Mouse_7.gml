/// @description Insert description here
// You can write your code in this editor


		
if(move)
	image_index = 0
if(image_index = 1 && global.turn = 0) 
{
	instance_create_depth(0,0,-100,obj_cover)
	alarm_set(2,10)
		global.turn++
	if(global.turn > teams)
		global.turn = 0
		

}