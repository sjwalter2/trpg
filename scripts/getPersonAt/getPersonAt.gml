var posX = argument0
var posY = argument1

if(position_meeting(global.offsetX  + posX*global.tileWidth,global.offsetY + posY*global.tileHeight,obj_character))
	return instance_position(global.offsetX  + posX*global.tileWidth,global.offsetY + posY*global.tileHeight,obj_character)
else
	return noone
	
