var xx = argument0
var yy = argument1

var tile = instance_create_depth(border+xx*gridW + gridW/2,border+yy*gridH + gridH/2,-2,obj_tileMap)
	tile.posX = xx
	tile.posY = yy
	tile.height = height
	tile.width = width
	tile.border = border
	tile.gridW = gridW
	tile.gridH = gridH
	tile.hue = hue
	tile.sat = sat
	tile.val = val
	tile.chanceMax = chance+irandom_range(-chanceMin/2,chanceMin)
	tile.creator = creator
	tile.colorOff = colorOff
	tile.gridNum = gridNum
	tile.randHue = randHue + 1.5
	tile.randSat = randSat  + irandom_range(2,2)
	tile.randVal = randVal + irandom_range(1,1)
	tile.unlockVal = unlockVal
	
	if(capital > 0)
	{
		tile.capital = capital-1
		tile.capitalGroup = capitalGroup
	}

	creator.validGrid[yy,xx] = gridNum
	creator.tileGrid[yy,xx] = tile.id