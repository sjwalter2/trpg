/// @description Insert description here
// You can write your code in this editor
var continuing = 0
for(var i = 0; i < height; i++)
		for(var j = 0; j < width; j++)
			{
				if (validGrid[i,j] = 1)
				{
					continuing = 1
					break;
				}
			}
			
if(continuing)
	alarm_set(1,40)
else
{
with(obj_tileMap)	
{
	if(creator = other && capital = 0 && irandom(300) = 0 && edge = 0)
	{
		capital = 2
		newTileMap(posX,posY+1)	
		newTileMap(posX,posY-1)	
		newTileMap(posX-1,posY)	
		newTileMap(posX+1,posY)	
		
	}
	
}
	
	
}