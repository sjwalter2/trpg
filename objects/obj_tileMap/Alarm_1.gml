/// @description Insert description here
// You can write your code in this editor
with(obj_tileMap)	
{
	if(gridNum = other.gridNum && posX = other.posX && capital = 0)	
		if(posY = other.posY - 1 || posY = other.posY+1)
			capital = 1
	if(gridNum = other.gridNum && posY = other.posY && capital = 0)	
		if(posX = other.posX - 1 || posX = other.posX+1)
			capital = 1	
}
if(!capitalSet)
{
capitalSet = 1
alarm_set(1,100)
}