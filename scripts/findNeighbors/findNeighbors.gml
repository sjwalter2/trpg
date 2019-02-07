var tile = argument0

if(tile != noone)
{
	var skip = 0
	for(var i = 0; i < array_length_1d(neighbors); i++)
	{
		if(tile.gridNum = neighbors[i] || tile.gridNum == gridNum)	
			skip = 1
	}
	if(!skip)
		neighbors[array_length_1d(neighbors)] = tile.gridNum
}
