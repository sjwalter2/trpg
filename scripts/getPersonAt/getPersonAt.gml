var posX = argument0
var posY = argument1
var layertocheck = argument2

var returnobject = noone;

instance_activate_all();
with obj_character{
	show_debug_message(name + string(levelLayer))
}

if(position_meeting(global.offsetX  + posX*global.tileWidth,global.offsetY + posY*global.tileHeight,obj_character))
	{
		show_debug_message("collide")
		with obj_character{
//			if ((posX == positionX) && (posY == positionY) && (levelLayer == layertocheck)){
			if(position_meeting(global.offsetX  + posX*global.tileWidth,global.offsetY + posY*global.tileHeight,id)){
				show_debug_message(name);
				returnobject = id;
			}
		}
	}
with(obj_character){
	if(levelLayer != global.gameLayer)
		instance_deactivate_object(id)
}
return returnobject;
	


/*
if(position_meeting(global.offsetX  + posX*global.tileWidth,global.offsetY + posY*global.tileHeight,obj_character))
	return instance_position(global.offsetX  + posX*global.tileWidth,global.offsetY + posY*global.tileHeight,obj_character)
else
	return noone
*/	