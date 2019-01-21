/// @description Insert description here
// You can write your code in this editor
alarm_set(0,40)
creator = 0
depth = -40
var currentTile = instance_position(x,y,obj_tiles)
if(instance_exists(currentTile))
{
	positionX = currentTile.positionX
	positionY = currentTile.positionY
}
