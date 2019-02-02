/// @description Insert description here
// You can write your code in this editor
var haveCapital = 0
with(obj_tileMap)	
{
	if(gridNum = other.gridNum && posX = other.posX && capital = 2)	
		if(posY = other.posY - 1 || posY = other.posY+1)
			haveCapital = 1
	if(gridNum = other.gridNum && posY = other.posY && capital = 2)	
		if(posX = other.posX - 1 || posX = other.posX+1)
			haveCapital = 1	
}
if(haveCapital = 0)
{
	capital = 0
	depth = -2	
}
	