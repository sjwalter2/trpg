/// @description Insert description here
// You can write your code in this editor
randomize()
height = 135
width = 120
border = 0
expand = 16
drawGrid = []
gridW = (room_width/2 - 2*border)/width
gridH = (room_height - 2*border)/height
var minimum = irandom_range(5,10)
var top = irandom_range(25,40)
var bot  = irandom_range(25,40)
var left = irandom_range(30,40)
var right  = irandom_range(30,40)
var iter = 15
row = [];
validGrid = []

for(var i = 0; i < height; i++)
		for(var j = 0; j < width; j++)
			{
				validGrid[i,j] = 0
			}
var rowSize = irandom_range(minimum,2*minimum)
row[top,0] = irandom_range(width/4,width - width/4 - rowSize)
row[top,1] = row[top,0] + rowSize

	for(var j = 0; j < width; j++)
	{
		if(row[top,0] <= j && row[top,1] >= j)
			validGrid[top,j] = 1
		else
			validGrid[top,j] = 0
	}

for(var i = top+1; i < height-bot; i++)
{
	var rowL = row[i-1,0] + irandom_range(-expand,expand)
	var rowR = row[i-1,1] + irandom_range(-expand,expand)
	while(rowR - rowL > width/2)
	{
		rowR--
		rowL++
	}
	while(rowR - rowL < minimum)
	{
		rowR++
		rowL--
	}
	while(rowL < left)
		rowL++
	while(rowR > width-right)
		rowR--
	while(rowL >= rowR)
		rowL-=2
	
		
	row[i,0] = rowL
	row[i,1] = rowR
	for(var j = 0; j < width; j++)
	{
		if(rowL <= j && rowR >= j)
			validGrid[i,j] = 1
		else
			validGrid[i,j] = 0
	}
}
for(var k = 0; k < iter; k++)
	for(var i = 1; i < height-1; i++)
		for(var j = 1; j < width-1; j++)
			{
				if(validGrid[i,j] = 1)
				{
					if(!validGrid[i-1,j] = 1 && irandom(4) = 0)
						validGrid[i-1,j] = 1
					if(!validGrid[i+1,j] = 1 && irandom(4) = 0)
						validGrid[i+1,j] = 1
					if(!validGrid[i,j-1] = 1 && irandom(4) = 0)
						validGrid[i,j-1] = 1
					if(!validGrid[i,j+1] = 1 && irandom(4) = 0)
						validGrid[i,j+1] = 1
				}

			}


var groups = irandom_range(5,8)
var colors = ds_list_create()
var colorCount = 0


for(var i = 0; i < groups; i++)
	 ds_list_add(colors, i*floor(255/(groups)))
	 
ds_list_shuffle(colors)

var checkArea = 12
for(var i = 2; i < groups+2; i++)
{
	var validStart = 0
	while(validStart = 0)
	{
		var xx = irandom_range(checkArea, width-checkArea)
		var yy = irandom_range(checkArea, height-checkArea)	
		validStart = 1
			for(var k = -checkArea; k < checkArea; k++)
				for(var l = -checkArea; l < checkArea; l++)
					if(validGrid[yy+k,xx+l] > 1 || validGrid[yy+floor(k/4),xx+floor(l/4)] = 0)
						validStart = 0
	}
	var tile = instance_create_depth(border+xx*gridW,border+yy*gridH,-1,obj_tileMap)
	tile.posX = xx
	tile.posY = yy
	tile.height = height
	tile.width = width
	tile.border = border
	tile.gridW = gridW
	tile.gridH = gridH
	tile.creator = id;
	tile.hue = ds_list_find_value(colors,i-2)
	tile.gridNum = i
	tile.capital = 3
	tile.colorOff = colorOff
	validGrid[yy,xx] = i
}
alarm_set(1,40)
drawGrid = validGrid