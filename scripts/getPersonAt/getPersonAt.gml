var posX = argument0
var posY = argument1
var layertocheck = argument2

var returnobject = noone;


if(position_meeting(global.offsetX  + posX*global.tileWidth,global.offsetY + posY*global.tileHeight,obj_character))
	{
		with obj_character{
//			if ((posX == positionX) && (posY == positionY) && (levelLayer == layertocheck)){
			if(position_meeting(global.offsetX + posX*global.tileWidth,global.offsetY + posY*global.tileHeight,id) && (levelLayer == layertocheck)){
				returnobject = id;
			}
		}
	}
return returnobject;
	


/*
if(position_meeting(global.offsetX  + posX*global.tileWidth,global.offsetY + posY*global.tileHeight,obj_character))
	return instance_position(global.offsetX  + posX*global.tileWidth,global.offsetY + posY*global.tileHeight,obj_character)
else
	return noone
*/	