/// @description Insert description here
// You can write your code in this editor
var continuing = 0
var typeCount = []
var typeMax = 2
for(var i = 0; i < groups; i++)
	typeCount[i] = 0

for(var i = 0; i < height; i++)
		for(var j = 0; j < width; j++)
			{
				if (validGrid[i,j] = 1)
				{
					continuing=1
					break;
				}
			}
			
if(continuing)
	alarm_set(1,10)
else
{
with(obj_tileMapSpawner)
	if(id != other.id && finished)
		other.capitalsCreated = capitalsCreated + 1	
with(obj_tileMap)	
{	
	if(creator = other && capital = 0 && irandom(25) = 0 && edge = 0 && typeCount[gridNum-2] < typeMax)
	{
		var xCheck = 0
		var yCheck = 0
		var skip = 0
		for(var i = 1; i <= 12; i++)
		{	
			
			switch(i mod 4)
			{
				case 0:
					xCheck = 1
					yCheck = 0
				break;
				case 1:
					xCheck = -1
					yCheck = 0
				break;
				case 2:
					xCheck = 0
					yCheck = 1
				break;
				case 3:
					xCheck = 0
					yCheck = -1
				break;
			}
			xCheck*=ceil(i/4)
			yCheck*=ceil(i/4)
			var tile = getMapTileAt(posX+xCheck,posY+yCheck, creator)
			if(tile == noone || tile.edge || tile.capital != 0)
				skip = 1
				
		}
		
		if(!skip)
		{
			typeCount[gridNum - 2]++
			capital = 2
			capitalGroup = other.capitalsCreated
			tile = getMapTileAt(posX,posY+1, creator)
			tile.capital = 1
			tile.capitalGroup = other.capitalsCreated
			tile = getMapTileAt(posX,posY-1, creator)
			tile.capital = 1
			tile.capitalGroup = other.capitalsCreated
			tile = getMapTileAt(posX-1,posY, creator)
			tile.capital = 1
			tile.capitalGroup = other.capitalsCreated
			tile = getMapTileAt(posX+1,posY, creator)
			tile.capital = 1
			tile.capitalGroup = other.capitalsCreated
			
			tile = getMapTileAt(posX,posY+2, creator)
			tile.capitalGroup = other.capitalsCreated
			tile = getMapTileAt(posX,posY-2, creator)
			tile.capitalGroup = other.capitalsCreated
			tile = getMapTileAt(posX+2,posY, creator)
			tile.capitalGroup = other.capitalsCreated
			tile = getMapTileAt(posX-2,posY, creator)
			tile.capitalGroup = other.capitalsCreated
			
			tile = getMapTileAt(posX+1,posY+1, creator)
			tile.capitalGroup = other.capitalsCreated
			tile = getMapTileAt(posX-1,posY-1, creator)
			tile.capitalGroup = other.capitalsCreated
			tile = getMapTileAt(posX+1,posY-1, creator)
			tile.capitalGroup = other.capitalsCreated
			tile = getMapTileAt(posX-1,posY+1, creator)
			tile.capitalGroup = other.capitalsCreated
			other.capitalsCreated++
		}
		
	}
	
}
finished = 1	

}

var fin = 1
with(obj_tileMapSpawner)
	if !finished
		fin = 0
		
if(fin)
	with(obj_tileMap)
		finish = 1
		
if(fin)
{
	alarm_set(2,30)
}	