/// @description Insert description here
// You can write your code in this editor

if(posX > 0 && creator.validGrid[posY, posX - 1] = 1&& (irandom(chance) = 0 || capital > 0))
{
	l = 1
	newTileMap(posX-1,posY)
}
else if !(posX > 0 && creator.validGrid[posY, posX - 1] = 1)
	l = 1

if(posX < width - 1 && creator.validGrid[posY, posX + 1] = 1 && (irandom(chance) = 0|| capital > 0))
{
	r = 1
	newTileMap(posX+1,posY)
}
else if !(posX < width - 1 && creator.validGrid[posY, posX + 1] = 1)
	r = 1

if(posY > 0 && creator.validGrid[posY - 1, posX ] = 1&& (irandom(chance) = 0|| capital > 0))
{
	u = 1
	newTileMap(posX,posY-1)
}
else if !(posY > 0 && creator.validGrid[posY - 1, posX ] = 1)
	u = 1

if(posY < height - 1 && creator.validGrid[posY + 1, posX] = 1&& (irandom(chance) = 0|| capital > 0))
{
	d = 1
	newTileMap(posX,posY+1)
}
else if !(posY < height - 1 && creator.validGrid[posY + 1, posX] = 1)
	d = 1
	
if!(u && d && l && r)
{
	alarm_set(0,irandom_range(1,2))
	chance = irandom_range(chanceMin,chanceMax)	
}
